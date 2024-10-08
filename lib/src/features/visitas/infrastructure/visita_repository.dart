// ignore_for_file: prefer_single_quotes

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:google_mlkit_entity_extraction/google_mlkit_entity_extraction.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

import '../../../core/application/log_service.dart';
import '../../../core/domain/pais.dart';
import '../../../core/domain/provincia.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/infrastructure/dio_extension.dart';
import '../../../core/infrastructure/local_database.dart' as local;
import '../../../core/infrastructure/pais_dto.dart';
import '../../../core/infrastructure/provincia_dto.dart';
import '../../../core/infrastructure/remote_database.dart';
import '../../../core/presentation/app.dart';
import '../../usuario/application/usuario_notifier.dart';
import '../../usuario/domain/usuario.dart';
import '../domain/geolocation_entity.dart';
import '../domain/image_form_data.dart';
import '../domain/ocr_recognized_text.dart';
import '../domain/recognized_text_type.dart';
import '../domain/visita.dart';
import '../domain/visita_competidor.dart';
import '../domain/visita_id_param.dart';
import '../domain/visita_motivos_no_venta.dart';
import '../domain/visita_sector.dart';
import 'geolocation_entity_dto.dart';
import 'visita_local_dto.dart';

final visitaRepositoryProvider = Provider.autoDispose<VisitaRepository>(
  (ref) {
    final remoteDb = ref.watch(appRemoteDatabaseProvider);
    final localDb = ref.watch(local.appLocalDatabaseProvider);

    final dio = ref.watch(dioProvider);
    final user = ref.watch(usuarioNotifierProvider);
    return VisitaRepository(remoteDb, localDb, dio, user);
  },
);

final visitaLastSyncDateProvider =
    FutureProvider.autoDispose<DateTime>((ref) async {
  final visitaRepository = ref.watch(visitaRepositoryProvider);
  return visitaRepository.getLastSyncDate();
});

final visitaProvider = FutureProvider.autoDispose
    .family<Visita, VisitaIdIsLocalParam>((ref, visitaIdIsLocalParam) {
  final visitaRepository = ref.watch(visitaRepositoryProvider);
  return visitaRepository.getVisitaById(
      visitaIdIsLocalParam: visitaIdIsLocalParam);
});

class VisitaRepository {
  static const pageSize = 100;
  final RemoteAppDatabase _remoteDb;
  final local.LocalAppDatabase _localDb;

  final Dio _dio;
  final Usuario? _usuario;

  VisitaRepository(this._remoteDb, this._localDb, this._dio, this._usuario);

  Future<List<Visita>> getVisitaList({
    required int page,
    required String searchText,
  }) async {
    try {
      final visitas = <Visita>[];
      if (page == 0) {
        final visitasLocal = await getVisitasLocal(
          searchText: searchText,
          usuarioId: _usuario!.id,
        );
        visitas.addAll(visitasLocal);
      }
      final visitasSync = await getVisitas(
          usuarioId: _usuario!.id, page: page, searchText: searchText);

      visitas.addAll(visitasSync);
      return visitas;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<int> getVisitasCountList({
    required String searchText,
  }) async {
    try {
      final visitasLocalCount = await getVisitasLocalCount(
        searchText: searchText,
        usuarioId: _usuario!.id,
      );

      final visitasSyncCount =
          await getVisitasCount(usuarioId: _usuario.id, searchText: searchText);

      return visitasLocalCount + visitasSyncCount;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<Visita>> getVisitaListByCliente({
    required String clienteId,
  }) async {
    try {
      final vistiasListByCliente = <Visita>[];
      final visitasLocal = await getVisitasLocal(
        searchText: '',
        usuarioId: _usuario!.id,
        clienteId: clienteId,
      );
      vistiasListByCliente.addAll(visitasLocal);

      final visitas = await getVisitas(
          usuarioId: _usuario.id,
          page: 0,
          searchText: '',
          clienteId: clienteId);

      vistiasListByCliente.addAll(visitas);
      return vistiasListByCliente;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<Visita> getVisitaById(
      {required VisitaIdIsLocalParam visitaIdIsLocalParam}) async {
    try {
      if (!visitaIdIsLocalParam.isLocal) {
        return await getVisita(visitaId: visitaIdIsLocalParam.id);
      } else {
        return await getVisitaLocal(visitaAppId: visitaIdIsLocalParam.id);
      }
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<void> deleteVisita(String visitaAppId) async {
    (_localDb.delete(_localDb.visitaLocalTable))
        .where((tbl) => tbl.visitaAppId.equals(visitaAppId));
  }

  Future<void> upsertVisita(Visita visitaLocal) async {
    try {
      final visitaLocalDto = VisitaLocalDTO.fromDomain(visitaLocal);
      final json = jsonEncode(visitaLocalDto.toJson());
      log.d(json);
      await insertVisitaInDb(visitaLocalDto);

      try {
        final visitaLocalEnviada =
            await _remoteCreateVisita(visitaLocalDto, _usuario!.test);
        await updateVisitaInDB(visitaLocalDto: visitaLocalEnviada);
      } catch (e) {
        if (e is AppException) {
          await e.maybeWhen(
              orElse: () {},
              notConnection: () =>
                  updateWithError(visitaLocalDto, e.details.message),
              restApiFailure: (error, _) =>
                  updateWithError(visitaLocalDto, e.details.message));
          return;
        }
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateWithError(
      VisitaLocalDTO visitaLocalDto, String errorMessage) async {
    try {
      await (_localDb.update(_localDb.visitaLocalTable)
            ..where(
                (tbl) => tbl.visitaAppId.equals(visitaLocalDto.visitaAppId!)))
          .write(local.VisitaLocalTableCompanion(
              errorSyncMessage: Value(errorMessage)));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> insertVisitaInDb(VisitaLocalDTO visitaLocalDto) async {
    try {
      await _localDb
          .into(_localDb.visitaLocalTable)
          .insertOnConflictUpdate(visitaLocalDto);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<VisitaLocalDTO> _remoteCreateVisita(
      VisitaLocalDTO visitaLocalDto, bool test) async {
    try {
      final requestUri = (test)
          ? Uri.http(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v5/online/visitas',
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v5/online/visitas',
            );

      final response = await _dio.postUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${_usuario?.provisionalToken}'},
        ),
        data: jsonEncode(visitaLocalDto.toJson()),
      );
      if (response.statusCode == 200) {
        final json = response.data['data'] as Map<String, dynamic>;

        return VisitaLocalDTO.fromJson(json);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } on DioException catch (e) {
      String? errorDetalle;
      if (e.isNoConnectionError) {
        throw const AppException.notConnection();
      }
      final responseErrorJson = (e.response?.data is List<int>)
          ? e.response?.statusMessage
          : e.response?.data['detalle'] ?? e.response?.data['message'];
      if (responseErrorJson != null) {
        errorDetalle = responseErrorJson as String?;

        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, errorDetalle ?? '');
      } else {
        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, e.response?.statusMessage ?? '');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateVisitaInDB(
      {required VisitaLocalDTO visitaLocalDto}) async {
    try {
      await _localDb.update(_localDb.visitaLocalTable).replace(visitaLocalDto);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<List<Visita>> getVisitasLocal(
      {required String searchText,
      required String usuarioId,
      String? clienteId}) async {
    try {
      final visitaLocalList = <Visita>[];
      final query = _localDb.select(_localDb.visitaLocalTable)..join([]);

      query.where((tbl) => tbl.tratada.equals('N'));

      if (searchText != '') {
        final busqueda = searchText.toUpperCase().split(' ');
        Expression<bool>? predicate;
        for (var i = 0; i < busqueda.length; i++) {
          if (predicate == null) {
            predicate =
                (_localDb.visitaLocalTable.resumen.like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteId.like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteProvisionalNombre
                        .like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteProvisionalEmail
                        .like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteProvisionalTelefono
                        .like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteProvisionalPoblacion
                        .like('%$searchText%') |
                    _localDb.visitaLocalTable.contacto.like('%$searchText%'));
          } else {
            predicate = predicate &
                (_localDb.visitaLocalTable.resumen.like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteId.like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteProvisionalNombre
                        .like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteProvisionalEmail
                        .like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteProvisionalTelefono
                        .like('%$searchText%') |
                    _localDb.visitaLocalTable.clienteProvisionalPoblacion
                        .like('%$searchText%') |
                    _localDb.visitaLocalTable.contacto.like('%$searchText%'));
          }
        }
        query.where((tbl) => predicate!);
      }

      if (clienteId != null) {
        query.where((tbl) => tbl.clienteId.equals(clienteId));
      }

      query.orderBy([
        (tbl) => OrderingTerm.asc(tbl.enviada),
        (tbl) => OrderingTerm.desc(tbl.fecha),
      ]);

      final visitaLocalDTOList = await query.get();

      for (var i = 0; i < visitaLocalDTOList.length; i++) {
        final visitaLocalDTO = visitaLocalDTOList[i];
        final clienteUsuarioDTO =
            await (_remoteDb.select(_remoteDb.clienteUsuarioTable)
                  ..where((tbl) =>
                      tbl.clienteId.equalsNullable(visitaLocalDTO.clienteId) &
                      tbl.usuarioId.equals(usuarioId)))
                .getSingleOrNull();

        if (clienteUsuarioDTO != null ||
            (visitaLocalDTO.numEmpl == usuarioId &&
                visitaLocalDTO.clienteId == null)) {
          final clienteDTO = await (_remoteDb.select(_remoteDb.clienteTable)
                ..where(
                    (tbl) => tbl.id.equalsNullable(visitaLocalDTO.clienteId)))
              .getSingleOrNull();

          final provinciaDTO = await (_remoteDb.select(_remoteDb.provinciaTable)
                ..where((tbl) => tbl.provinciaId.equalsNullable(
                    visitaLocalDTO.clienteProvisionalProvinciaId)))
              .getSingleOrNull();

          final paisDTO = await (_remoteDb.select(_remoteDb.paisTable)
                ..where((tbl) => tbl.id
                    .equalsNullable(visitaLocalDTO.clienteProvisionalPaisId)))
              .getSingleOrNull();

          final motivoNoInteresDTO =
              await (_remoteDb.select(_remoteDb.visitaMotivoNoVentaTable)
                    ..where((tbl) => tbl.id
                        .equalsNullable(visitaLocalDTO.codigoMotivoNoInteres)))
                  .getSingleOrNull();

          final motivoNoPedidoDTO = await (_remoteDb
                  .select(_remoteDb.visitaMotivoNoVentaTable)
                ..where((tbl) =>
                    tbl.id.equalsNullable(visitaLocalDTO.codigoMotivoNoPedido)))
              .getSingleOrNull();

          final visitaSectorDTO =
              await (_remoteDb.select(_remoteDb.visitaSectorTable)
                    ..where((tbl) =>
                        tbl.id.equalsNullable(visitaLocalDTO.codigoSector)))
                  .getSingleOrNull();

          final visitaCompetenciaDTO = await (_remoteDb
                  .select(_remoteDb.visitaCompetidorTable)
                ..where((tbl) =>
                    tbl.id.equalsNullable(visitaLocalDTO.codigoCompetencia)))
              .getSingleOrNull();

          visitaLocalList.add(visitaLocalDTO.toDomain(
            nombreCliente: clienteDTO?.nombreCliente,
            provincia: provinciaDTO?.toDomain(),
            pais: paisDTO?.toDomain(),
            motivoNoInteres: motivoNoInteresDTO?.toDomain(),
            motivoNoPedido: motivoNoPedidoDTO?.toDomain(),
            sector: visitaSectorDTO?.toDomain(),
            competencia: visitaCompetenciaDTO?.toDomain(),
          ));
        }
      }

      return visitaLocalList;
    } catch (e) {
      rethrow;
    }
  }

  Future<int> getVisitasLocalCount(
      {required String searchText,
      required String usuarioId,
      String? clienteId}) async {
    try {
      //TODO Count visita correctamente.

      // final countExp = _localDb.visitaLocalTable.visitaAppId.count();

      // final query = _remoteDb.selectOnly(_remoteDb.visitaLocalTable).join([
      //   leftOuterJoin(
      //     _remoteDb.clienteTable,
      //     _remoteDb.clienteTable.id
      //         .equalsExp(_remoteDb.visitaLocalTable.clienteId),
      //   ),
      //   leftOuterJoin(
      //     _remoteDb.clienteUsuarioTable,
      //     _remoteDb.clienteUsuarioTable.clienteId
      //         .equalsExp(_remoteDb.clienteTable.id),
      //   )
      // ]);

      // query.where(_remoteDb.visitaLocalTable.tratada.equals('N') &
      //     (_remoteDb.clienteUsuarioTable.usuarioId.equals(usuarioId) |
      //         (_remoteDb.visitaLocalTable.numEmpl.equals(usuarioId) &
      //             _remoteDb.visitaLocalTable.clienteId.isNull())));

      // if (searchText != '') {
      //   final busqueda = searchText.split(' ');
      //   Expression<bool>? predicate;
      //   for (var i = 0; i < busqueda.length; i++) {
      //     if (predicate == null) {
      //       predicate =
      //           (_remoteDb.visitaLocalTable.resumen.like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteId.like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteProvisionalNombre
      //                   .like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteProvisionalEmail
      //                   .like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteProvisionalTelefono
      //                   .like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteProvisionalPoblacion
      //                   .like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.contacto.like('%$searchText%'));
      //     } else {
      //       predicate = predicate &
      //           (_remoteDb.visitaLocalTable.resumen.like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteId.like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteProvisionalNombre
      //                   .like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteProvisionalEmail
      //                   .like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteProvisionalTelefono
      //                   .like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.clienteProvisionalPoblacion
      //                   .like('%$searchText%') |
      //               _remoteDb.visitaLocalTable.contacto.like('%$searchText%'));
      //     }
      //   }
      //   query.where(predicate!);
      // }

      // if (clienteId != null) {
      //   query.where(_remoteDb.visitaLocalTable.clienteId.equals(clienteId));
      // }

      // query.addColumns([countExp]);

      // final count = await query.map((row) => row.read(countExp)).getSingle();
      // return count ?? 0;

      final visitaLocalList = await getVisitasLocal(
        searchText: searchText,
        usuarioId: usuarioId,
        clienteId: clienteId,
      );
      return visitaLocalList.length;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Visita>> getVisitas(
      {required String usuarioId,
      required int page,
      required String searchText,
      String? clienteId}) async {
    final query = _remoteDb.select(_remoteDb.visitaTable).join(
      [
        innerJoin(
          _remoteDb.clienteTable,
          _remoteDb.clienteTable.id.equalsExp(_remoteDb.visitaTable.clienteId),
        ),
      ],
    );

    query.where(_remoteDb.visitaTable.numEmpl.equals(usuarioId) |
        existsQuery(_remoteDb.select(_remoteDb.clienteUsuarioTable)
          ..where((tbl) =>
              tbl.usuarioId.equals(usuarioId) &
              tbl.clienteId.equalsExp(_remoteDb.visitaTable.clienteId))));

    if (searchText != '') {
      final busqueda = searchText.toUpperCase().split(' ');
      Expression<bool>? predicate;
      for (var i = 0; i < busqueda.length; i++) {
        if (predicate == null) {
          predicate = (_remoteDb.visitaTable.resumen.like('%$searchText%') |
              _remoteDb.visitaTable.clienteId.like('%$searchText%') |
              _remoteDb.clienteTable.nombreCliente.like('%$searchText%') |
              _remoteDb.clienteTable.nombreFiscal.like('%$searchText%') |
              _remoteDb.visitaTable.clienteProvisionalNombre
                  .like('%$searchText%') |
              _remoteDb.visitaTable.clienteProvisionalEmail
                  .like('%$searchText%') |
              _remoteDb.visitaTable.clienteProvisionalTelefono
                  .like('%$searchText%') |
              _remoteDb.visitaTable.clienteProvisionalPoblacion
                  .like('%$searchText%') |
              _remoteDb.visitaTable.contacto.like('%$searchText%'));
        } else {
          predicate = predicate &
              (_remoteDb.visitaTable.resumen.like('%$searchText%') |
                  _remoteDb.visitaTable.clienteId.like('%$searchText%') |
                  _remoteDb.clienteTable.nombreCliente.like('%$searchText%') |
                  _remoteDb.clienteTable.nombreFiscal.like('%$searchText%') |
                  _remoteDb.visitaTable.clienteProvisionalNombre
                      .like('%$searchText%') |
                  _remoteDb.visitaTable.clienteProvisionalEmail
                      .like('%$searchText%') |
                  _remoteDb.visitaTable.clienteProvisionalTelefono
                      .like('%$searchText%') |
                  _remoteDb.visitaTable.clienteProvisionalPoblacion
                      .like('%$searchText%') |
                  _remoteDb.visitaTable.contacto.like('%$searchText%'));
        }
      }
      query.where(predicate!);
    }

    if (clienteId != null) {
      query.where(_remoteDb.visitaTable.clienteId.equals(clienteId));
    }

    query.limit(pageSize, offset: page * pageSize);

    query.orderBy([
      OrderingTerm.desc(_remoteDb.visitaTable.fecha),
    ]);

    return query.asyncMap((row) async {
      final clienteDTO = row.readTableOrNull(_remoteDb.clienteTable);

      final visitaDTO = row.readTable(_remoteDb.visitaTable);
      return visitaDTO.toDomain(
        nombreCliente: clienteDTO?.nombreCliente,
        motivoNoInteres: null,
        motivoNoPedido: null,
        sector: null,
        competencia: null,
      );
    }).get();
  }

  Future<int> getVisitasCount(
      {required String usuarioId,
      required String searchText,
      String? clienteId}) async {
    final countExp = _remoteDb.visitaTable.id.count();

    final query = _remoteDb.selectOnly(_remoteDb.visitaTable).join([
      innerJoin(
        _remoteDb.clienteTable,
        _remoteDb.clienteTable.id.equalsExp(_remoteDb.visitaTable.clienteId),
      ),
    ]);

    query.where(_remoteDb.visitaTable.numEmpl.equals(usuarioId) |
        existsQuery(_remoteDb.select(_remoteDb.clienteUsuarioTable)
          ..where((tbl) =>
              tbl.usuarioId.equals(usuarioId) &
              tbl.clienteId.equalsExp(_remoteDb.visitaTable.clienteId))));

    if (searchText != '') {
      final busqueda = searchText.toUpperCase().split(' ');
      Expression<bool>? predicate;
      for (var i = 0; i < busqueda.length; i++) {
        if (predicate == null) {
          predicate = (_remoteDb.visitaTable.resumen.like('%$searchText%') |
              _remoteDb.visitaTable.clienteId.like('%$searchText%') |
              _remoteDb.clienteTable.nombreCliente.like('%$searchText%') |
              _remoteDb.clienteTable.nombreFiscal.like('%$searchText%') |
              _remoteDb.visitaTable.clienteProvisionalNombre
                  .like('%$searchText%') |
              _remoteDb.visitaTable.clienteProvisionalEmail
                  .like('%$searchText%') |
              _remoteDb.visitaTable.clienteProvisionalTelefono
                  .like('%$searchText%') |
              _remoteDb.visitaTable.clienteProvisionalPoblacion
                  .like('%$searchText%') |
              _remoteDb.visitaTable.contacto.like('%$searchText%'));
        } else {
          predicate = predicate &
              (_remoteDb.visitaTable.resumen.like('%$searchText%') |
                  _remoteDb.visitaTable.clienteId.like('%$searchText%') |
                  _remoteDb.clienteTable.nombreCliente.like('%$searchText%') |
                  _remoteDb.clienteTable.nombreFiscal.like('%$searchText%') |
                  _remoteDb.visitaTable.clienteProvisionalNombre
                      .like('%$searchText%') |
                  _remoteDb.visitaTable.clienteProvisionalEmail
                      .like('%$searchText%') |
                  _remoteDb.visitaTable.clienteProvisionalTelefono
                      .like('%$searchText%') |
                  _remoteDb.visitaTable.clienteProvisionalPoblacion
                      .like('%$searchText%') |
                  _remoteDb.visitaTable.contacto.like('%$searchText%'));
        }
      }
      query.where(predicate!);
    }

    if (clienteId != null) {
      query.where(_remoteDb.visitaTable.clienteId.equals(clienteId));
    }

    query.addColumns([countExp]);

    final count = await query.map((row) => row.read(countExp)).getSingle();
    return count ?? 0;
  }

  Future<Visita> getVisita({required String visitaId}) async {
    final query = _remoteDb.select(_remoteDb.visitaTable).join([
      leftOuterJoin(
        _remoteDb.clienteTable,
        _remoteDb.clienteTable.id.equalsExp(_remoteDb.visitaTable.clienteId),
      ),
      leftOuterJoin(
        _remoteDb.visitaCompetidorTable,
        _remoteDb.visitaCompetidorTable.id
            .equalsExp(_remoteDb.visitaTable.codigoCompetencia),
      ),
      leftOuterJoin(
        _remoteDb.visitaSectorTable,
        _remoteDb.visitaSectorTable.id
            .equalsExp(_remoteDb.visitaTable.codigoSector),
      ),
      leftOuterJoin(
        _remoteDb.visitaMotivoNoVentaTable,
        _remoteDb.visitaMotivoNoVentaTable.id
                .equalsExp(_remoteDb.visitaTable.codigoMotivoNoPedido) |
            _remoteDb.visitaMotivoNoVentaTable.id
                .equalsExp(_remoteDb.visitaTable.codigoMotivoNoInteres),
      ),
    ]);
    query.where(_remoteDb.visitaTable.id.equals(visitaId));

    return query.asyncMap((row) async {
      final clienteDTO = row.readTableOrNull(_remoteDb.clienteTable);

      final visitaDTO = row.readTable(_remoteDb.visitaTable);
      return visitaDTO.toDomain(
        nombreCliente: clienteDTO?.nombreCliente,
        motivoNoInteres: null,
        motivoNoPedido: null,
        sector: null,
        competencia: null,
      );
    }).getSingle();
  }

  Future<Visita> getVisitaLocal({required String visitaAppId}) async {
    final visitaDTO = await (_localDb.select(_localDb.visitaLocalTable)
          ..where((tbl) => tbl.visitaAppId.equals(visitaAppId)))
        .getSingle();

    final clienteDTO = await (_remoteDb.select(_remoteDb.clienteTable)
          ..where((tbl) => tbl.id.equalsNullable(visitaDTO.clienteId)))
        .getSingleOrNull();

    final provinciaDTO = await (_remoteDb.select(_remoteDb.provinciaTable)
          ..where((tbl) => tbl.provinciaId
              .equalsNullable(visitaDTO.clienteProvisionalProvinciaId)))
        .getSingleOrNull();

    final paisDTO = await (_remoteDb.select(_remoteDb.paisTable)
          ..where((tbl) =>
              tbl.id.equalsNullable(visitaDTO.clienteProvisionalPaisId)))
        .getSingleOrNull();

    final motivoNoInteresDTO = await (_remoteDb
            .select(_remoteDb.visitaMotivoNoVentaTable)
          ..where(
              (tbl) => tbl.id.equalsNullable(visitaDTO.codigoMotivoNoInteres)))
        .getSingleOrNull();

    final motivoNoPedidoDTO = await (_remoteDb
            .select(_remoteDb.visitaMotivoNoVentaTable)
          ..where(
              (tbl) => tbl.id.equalsNullable(visitaDTO.codigoMotivoNoPedido)))
        .getSingleOrNull();

    final visitaSectorDTO = await (_remoteDb.select(_remoteDb.visitaSectorTable)
          ..where((tbl) => tbl.id.equalsNullable(visitaDTO.codigoSector)))
        .getSingleOrNull();

    final visitaCompetenciaDTO = await (_remoteDb
            .select(_remoteDb.visitaCompetidorTable)
          ..where((tbl) => tbl.id.equalsNullable(visitaDTO.codigoCompetencia)))
        .getSingleOrNull();

    return visitaDTO.toDomain(
      nombreCliente: clienteDTO?.nombreCliente,
      provincia: provinciaDTO?.toDomain(),
      pais: paisDTO?.toDomain(),
      motivoNoInteres: motivoNoInteresDTO?.toDomain(),
      motivoNoPedido: motivoNoPedidoDTO?.toDomain(),
      sector: visitaSectorDTO?.toDomain(),
      competencia: visitaCompetenciaDTO?.toDomain(),
    );
  }

  Future<List<Pais>> getPaises(String searchText) async {
    final query = await _remoteDb.customSelect('''
          SELECT *
          FROM PAISES
          WHERE ${descripcionSegunLocale(searchText)}
          ORDER BY CASE
            WHEN  PAIS_ID = 'ES' THEN 0
            ELSE ${orderyBySegunLocal()}
          END

''', readsFrom: {
      _remoteDb.paisTable,
    }).get();

    return Future.wait(query.map((row) async {
      final paisDTO = PaisDTO.fromJson(row.data);
      return paisDTO.toDomain();
    }).toList());
  }

  Future<List<Provincia>> getProvincias(
      String? paisId, String searchText) async {
    var queryText = '''SELECT *
          FROM PROVINCIAS
          WHERE (PROVINCIA LIKE '%$searchText%' OR PROVINCIA_ID LIKE '%$searchText%') ''';

    if (paisId != null) {
      queryText += '''AND PAIS_ID = '$paisId' ''';
    }

    queryText += 'ORDER BY PROVINCIA, PROVINCIA_ID';
    final query = await _remoteDb.customSelect(queryText, readsFrom: {
      _remoteDb.paisTable,
    }).get();

    return Future.wait(query.map((row) async {
      final provinciaDTO = ProvinciaDTO.fromJson(row.data);
      return provinciaDTO.toDomain();
    }).toList());
  }

  Future<DateTime> getLastSyncDate() async {
    try {
      final lastSyncDTO =
          await _localDb.select(_localDb.syncDateTimeTable).getSingle();
      return lastSyncDTO.visitaUltimaSync;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> existClientePotencialPhone(String phoneValue) async {
    try {
      final visitasList = await (_remoteDb.select(_remoteDb.visitaTable)
            ..where((tbl) => tbl.clienteProvisionalTelefono.equals(phoneValue)))
          .get();

      final clienteContactoList =
          await (_remoteDb.select(_remoteDb.clienteContactoTable)
                ..where((tbl) =>
                    tbl.telefono1.equals(phoneValue) |
                    tbl.telefono2.equals(phoneValue)))
              .get();

      return visitasList.isNotEmpty || clienteContactoList.isNotEmpty;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> existClientePotencialEmail(String emailValue) async {
    try {
      final visitasList = await (_remoteDb.select(_remoteDb.visitaTable)
            ..where((tbl) => tbl.clienteProvisionalEmail.equals(emailValue)))
          .get();

      final clienteContactoList =
          await (_remoteDb.select(_remoteDb.clienteContactoTable)
                ..where((tbl) => tbl.email.equals(emailValue)))
              .get();

      return visitasList.isNotEmpty || clienteContactoList.isNotEmpty;
    } catch (e) {
      rethrow;
    }
  }

  String descripcionSegunLocale(String searchText) {
    final currentLocale = Intl.getCurrentLocale();

    switch (currentLocale) {
      case 'es':
        return "DESCRIPCION_ES LIKE '%$searchText%'";
      case 'en':
        return "DESCRIPCION_EN LIKE '%$searchText%' OR DESCRIPCION_ES LIKE '%$searchText%'";
      case 'fr':
        return "DESCRIPCION_FR LIKE '%$searchText%' OR DESCRIPCION_ES LIKE '%$searchText%'";
      case 'de':
        return "DESCRIPCION_EN LIKE '%$searchText%' OR DESCRIPCION_ES LIKE '%$searchText%'";

      case 'it':
        return "DESCRIPCION_IT LIKE '%$searchText%' OR DESCRIPCION_ES LIKE '%$searchText%'";

      default:
        return "DESCRIPCION_ES LIKE '%$searchText%'";
    }
  }

  String orderyBySegunLocal() {
    final currentLocale = Intl.getCurrentLocale();

    switch (currentLocale) {
      case 'es':
        return "DESCRIPCION_ES";
      case 'en':
        return "DESCRIPCION_ES";
      case 'fr':
        return "DESCRIPCION_ES";
      case 'de':
        return "DESCRIPCION_ES";

      case 'it':
        return "DESCRIPCION_ES";

      default:
        return "DESCRIPCION_ES";
    }
  }

  Future<void> deleteVisitasLocalAntiguas() async {
    final currentDate = DateTime.now();
    final visitaLocalList =
        await (_localDb.select(_localDb.visitaLocalTable)).get();

    for (var i = 0; i < visitaLocalList.length; i++) {
      if (visitaLocalList[i].tratada == 'S' &&
          visitaLocalList[i]
              .fecha
              .add(const Duration(days: 30))
              .isBefore(currentDate)) {
        await (_localDb.delete(_localDb.visitaLocalTable)
              ..where((tbl) => tbl.fecha.equals(visitaLocalList[i].fecha)))
            .go();
      }
    }
  }

  Future<List<VisitaSector>> getVisitaSectores() async {
    final visitaSectoresDTOList =
        await (_remoteDb.select(_remoteDb.visitaSectorTable)).get();

    return visitaSectoresDTOList.map((e) => e.toDomain()).toList();
  }

  Future<List<VisitaCompetidor>> getVisitaCompetidores() async {
    final visitaCompetidoresDTOList =
        await (_remoteDb.select(_remoteDb.visitaCompetidorTable)).get();

    return visitaCompetidoresDTOList.map((e) => e.toDomain()).toList();
  }

  Future<List<VisitaMotivoNoVenta>> getVisitaMotivosNoVenta() async {
    final visitaMotivosNoVentaDTOList =
        await (_remoteDb.select(_remoteDb.visitaMotivoNoVentaTable)).get();

    return visitaMotivosNoVentaDTOList.map((e) => e.toDomain()).toList();
  }

  Future<List<OcrRecognizedText>> reconginzedImage(File imageFile) async {
    final ocrReconginzedTextList = <OcrRecognizedText>[];

    final recognizedLines = <String>[];

    final visionImage = InputImage.fromFile(imageFile);

    final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);

    final reconizedText = await textRecognizer.processImage(visionImage);

    final entityExtractor =
        EntityExtractor(language: EntityExtractorLanguage.spanish);

    for (var block in reconizedText.blocks) {
      for (var line in block.lines) {
        recognizedLines.add(line.text);
      }
    }

    for (var i = 0; i < recognizedLines.length; i++) {
      final annotations =
          await entityExtractor.annotateText(recognizedLines[i]);

      if (annotations.isNotEmpty) {
        for (final annotation in annotations) {
          for (final entity in annotation.entities) {
            if (entity.type == EntityType.phone) {
              ocrReconginzedTextList.add(
                OcrRecognizedText(
                  annotation.text,
                  RecognizedTextType.telf,
                  telfText: annotation.text,
                ),
              );
            } else if (entity.type == EntityType.email) {
              ocrReconginzedTextList.add(
                OcrRecognizedText(
                  annotation.text,
                  RecognizedTextType.email,
                  emailText: annotation.text,
                ),
              );
            } else if (entity.type == EntityType.url) {
              ocrReconginzedTextList.add(
                OcrRecognizedText(
                  annotation.text,
                  RecognizedTextType.website,
                  websiteText: annotation.text,
                ),
              );
            } else if (entity.type == EntityType.address) {
              ocrReconginzedTextList.add(
                OcrRecognizedText(
                  annotation.text,
                  RecognizedTextType.address,
                ),
              );
            } else {
              ocrReconginzedTextList.add(
                OcrRecognizedText(
                  annotation.text,
                  RecognizedTextType.unknown,
                ),
              );
            }
          }
        }
      } else {
        ocrReconginzedTextList.add(
          OcrRecognizedText(
            recognizedLines[i],
            RecognizedTextType.unknown,
          ),
        );
      }
    }

    return ocrReconginzedTextList;
  }

  Future<ImageFormData> setImageFormData(
    String? name,
    String? company,
    String? cargo,
    List<String> address,
    String? email,
    List<String> phoneList,
    // String? website,
  ) async {
    final addressString = _getAddressString(address);

    var imageFormData = ImageFormData(
      name: name,
      company: company,
      cargo: cargo,
      phoneList: phoneList,
      email: email,
      streetAddress1: addressString,
      referenceStreetAddress: addressString,
    );

    if (addressString != null) {
      final geolocationEntity = await getAddress(addressString);

      if (geolocationEntity != null) {
        imageFormData = imageFormData.copyWith(
          streetAddress1: geolocationEntity.streetAddress1,
          zipCode: geolocationEntity.zipCode,
          city: geolocationEntity.city,
          state: geolocationEntity.state,
          country: geolocationEntity.country,
        );
      }
    }
    return imageFormData;
  }

  Future<GeolocationEntity?> getAddress(String addressString) async {
    try {
      final geolocationEntityDTO =
          await _remoteGetSuggestionAddress(addressString);

      final paisDto = await (_remoteDb.select(_remoteDb.paisTable)
            ..where((tbl) => tbl.id.equals(geolocationEntityDTO.countryCode)))
          .getSingleOrNull();

      final provinciaDto = await (_remoteDb.select(_remoteDb.provinciaTable)
            ..where((tbl) =>
                tbl.paisId.equals(geolocationEntityDTO.countryCode) &
                tbl.provincia.equalsNullable(
                    geolocationEntityDTO.advinistrativeLevels?.state)))
          .getSingleOrNull();

      return geolocationEntityDTO.toDomain(
          provinciaDto?.toDomain(), paisDto?.toDomain());
    } catch (e) {
      return null;
    }
  }

  Future<GeolocationEntityDTO> _remoteGetSuggestionAddress(
      String addressString) async {
    try {
      final requestUri = Uri.http(
        dotenv.get('URL', fallback: 'localhost:3001'),
        'api/v1/online/geo/address',
        {'addressString': addressString},
      );

      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${_usuario?.provisionalToken}'},
        ),
      );
      if (response.statusCode == 200) {
        final json = response.data['data'] as Map<String, dynamic>;

        return GeolocationEntityDTO.fromJson(json);
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } on DioException catch (e) {
      String? errorDetalle;
      if (e.isNoConnectionError) {
        throw const AppException.notConnection();
      }
      final responseErrorJson = (e.response?.data is List<int>)
          ? e.response?.statusMessage
          : e.response?.data['detalle'] ?? e.response?.data['message'];
      if (responseErrorJson != null) {
        errorDetalle = responseErrorJson as String?;

        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, errorDetalle ?? '');
      } else {
        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, e.response?.statusMessage ?? '');
      }
    } catch (e) {
      rethrow;
    }
  }

  String? _getAddressString(List<String> addressList) {
    var addressString = '';
    for (var i = 0; i < addressList.length; i++) {
      if (i == addressList.length - 1) {
        addressString += addressList[i];
      } else {
        addressString += '${addressList[i]}, ';
      }
    }
    return addressString.isNotEmpty ? addressString : null;
  }
}
