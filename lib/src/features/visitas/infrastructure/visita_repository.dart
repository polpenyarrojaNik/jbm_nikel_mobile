import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/dio_extension.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/infrastructure/visita_local_dto.dart';

import '../../../core/domain/default_list_params.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/presentation/app.dart';
import '../../usuario/domain/usuario.dart';
import '../domain/visita.dart';
import '../../../core/domain/entity_id_is_local_param.dart';

final visitaRepositoryProvider = Provider.autoDispose<VisitaRepository>(
  (ref) {
    final db = ref.watch(appDatabaseProvider);
    final dio = ref.watch(dioProvider);
    final user = ref.watch(usuarioNotifierProvider);
    return VisitaRepository(db, dio, user);
  },
);

final visitasSearchProvider =
    FutureProvider.autoDispose.family<List<Visita>, DefaultListParams>(
  (ref, defaultListParams) async {
    print('Searching: ${defaultListParams.searchText}');

    final visitaRepository = ref.watch(visitaRepositoryProvider);
    return visitaRepository.getVisitaList(
        page: defaultListParams.page, searchText: defaultListParams.searchText);
  },
);

final visitaProvider = FutureProvider.autoDispose
    .family<Visita, EntityIdIsLocalParam>((ref, visitaIdIsLocalParam) {
  final visitaRepository = ref.watch(visitaRepositoryProvider);
  return visitaRepository.getVisitaById(
      visitaIdIsLocalParam: visitaIdIsLocalParam);
});

const pageSize = 100;
List<Visita> visitasList = [];

class VisitaRepository {
  final AppDatabase _db;
  final Dio _dio;
  final Usuario? _usuario;

  VisitaRepository(this._db, this._dio, this._usuario);

  Future<List<Visita>> getVisitaList(
      {required int page, required String searchText}) async {
    try {
      if (page == 1) {
        visitasList.clear();
        final visitasLocal = await getVisitasLocal();
        visitasList.addAll(visitasLocal);
      }
      final visitas = await getVisitas(
          usuarioId: _usuario!.id, page: page, searchText: searchText);

      visitasList.addAll(visitas);
      return visitasList;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<Visita> getVisitaById(
      {required EntityIdIsLocalParam visitaIdIsLocalParam}) async {
    try {
      if (!visitaIdIsLocalParam.isLocal) {
        return getVisita(visitaId: visitaIdIsLocalParam.id);
      } else {
        return getVisitaLocal(visitaAppId: visitaIdIsLocalParam.id);
      }
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<void> deleteVisita(String visitaId) async {
    //TODO Delete method
  }

  Future<void> upsertVisita(Visita visitaLocal) async {
    try {
      final visitaLocalDto = VisitaLocalDTO.fromDomain(visitaLocal);
      await insertVisitaInDb(visitaLocalDto);
      try {
        final visitaLocalEnviada =
            await _remoteCreateVisita(visitaLocalDto, _usuario!.test);
        await updateVisitaInDB(visitaLocalDto: visitaLocalEnviada);
      } catch (e) {
        if (e is AppException) {
          e.maybeWhen(
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
      (_db.update(_db.visitaLocalTable)
            ..where(
                (tbl) => tbl.visitaAppId.equals(visitaLocalDto.visitaAppId!)))
          .write(
              VisitaLocalTableCompanion(errorSyncMessage: Value(errorMessage)));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> insertVisitaInDb(VisitaLocalDTO visitaLocalDto) async {
    try {
      await _db
          .into(_db.visitaLocalTable)
          .insertOnConflictUpdate(visitaLocalDto);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<VisitaLocalDTO> _remoteCreateVisita(
      VisitaLocalDTO visitaLocalDto, bool test) async {
    try {
      final json = jsonEncode(visitaLocalDto.toJson());
      print(json);
      final requestUri = Uri.http(
        dotenv.get((test) ? 'URLTEST' : 'URL', fallback: 'localhost:3001'),
        'api/v1/online/visitas',
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
    } on DioError catch (e) {
      String? errorDetalle;
      if (e.isNoConnectionError) {
        throw const AppException.notConnection();
      }
      final responseErrorJson = (e.response?.data is List<int>)
          ? e.response?.statusMessage
          : e.response?.data['detalle'] ?? e.response?.data['message'];
      if (responseErrorJson != null) {
        errorDetalle = responseErrorJson;

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
      await _db.update(_db.visitaLocalTable).replace(visitaLocalDto);
    } catch (e) {
      throw AppException.insertDataFailure(e.toString());
    }
  }

  Future<List<Visita>> getVisitasLocal() async {
    final query = _db.select(_db.visitaLocalTable).join([
      innerJoin(
        _db.clienteTable,
        _db.clienteTable.id.equalsExp(_db.visitaLocalTable.clienteId),
      ),
    ]);

    query.orderBy([
      OrderingTerm.asc(_db.visitaLocalTable.enviada),
      OrderingTerm.desc(_db.visitaLocalTable.fecha),
    ]);

    return query.map((row) {
      final clienteDTO = row.readTable(_db.clienteTable);
      final visitaLocalDTO = row.readTable(_db.visitaLocalTable);
      return visitaLocalDTO.toDomain(nombreCliente: clienteDTO.nombreCliente);
    }).get();
  }

  Future<List<Visita>> getVisitas(
      {required String usuarioId,
      required int page,
      required String searchText}) async {
    final query = _db.select(_db.visitaTable).join([
      innerJoin(
        _db.clienteTable,
        _db.clienteTable.id.equalsExp(_db.visitaTable.clienteId),
      ),
      innerJoin(
        _db.clienteUsuarioTable,
        _db.clienteUsuarioTable.clienteId.equalsExp(_db.clienteTable.id),
      )
    ]);

    if (searchText != '') {
      query.where(
        _db.clienteUsuarioTable.usuarioId.equals(usuarioId) &
            (_db.visitaTable.resumen.like('%$searchText%') |
                _db.visitaTable.clienteId.like('%$searchText%') |
                _db.visitaTable.contacto.like('%$searchText%')),
      );
    } else {
      query.where(_db.clienteUsuarioTable.usuarioId.equals(usuarioId));
    }

    query.orderBy([
      OrderingTerm.desc(_db.visitaTable.fecha),
    ]);

    return query.asyncMap((row) async {
      final clienteDTO = row.readTable(_db.clienteTable);

      final visitaDTO = row.readTable(_db.visitaTable);
      return visitaDTO.toDomain(nombreCliente: clienteDTO.nombreCliente);
    }).get();
  }

  Future<Visita> getVisita({required String visitaId}) async {
    final query = _db.select(_db.visitaTable).join([
      innerJoin(
        _db.clienteTable,
        _db.clienteTable.id.equalsExp(_db.visitaTable.clienteId),
      )
    ]);
    query.where(_db.visitaTable.id.equals(visitaId));

    return query.asyncMap((row) async {
      final clienteDTO = row.readTable(_db.clienteTable);

      final visitaDTO = row.readTable(_db.visitaTable);
      return visitaDTO.toDomain(nombreCliente: clienteDTO.nombreCliente);
    }).getSingle();
  }

  Future<Visita> getVisitaLocal({required String visitaAppId}) async {
    final query = _db.select(_db.visitaLocalTable).join([
      innerJoin(
        _db.clienteTable,
        _db.clienteTable.id.equalsExp(_db.visitaLocalTable.clienteId),
      )
    ]);
    query.where(_db.visitaLocalTable.visitaAppId.equals(visitaAppId));

    return query.asyncMap((row) async {
      final clienteDTO = row.readTable(_db.clienteTable);

      final visitaDTO = row.readTable(_db.visitaLocalTable);
      return visitaDTO.toDomain(nombreCliente: clienteDTO.nombreCliente);
    }).getSingle();
  }
}
