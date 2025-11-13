import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/exceptions/get_api_error.dart';
import '../../../core/helpers/error_logger.dart';
import '../../../core/infrastructure/remote_database.dart';
import '../../../core/presentation/app.dart';
import '../../usuario/application/usuario_notifier.dart';
import '../../usuario/domain/usuario.dart';
import '../domain/expedicion.dart';
import 'expedicion_dto.dart';

part 'expedicion_repository.g.dart';

typedef Json = Map<String, dynamic>;

@riverpod
ExpedicionRepository expedicionRepository(Ref ref) => ExpedicionRepository(
  ref.watch(dioProvider),
  ref.watch(usuarioNotifierProvider)!,
  ref.watch(appRemoteDatabaseProvider),
  ref.watch(errorLoggerProvider),
);

class ExpedicionRepository {
  static const pageSize = 100;
  final Dio dio;
  final Usuario usuario;
  final RemoteAppDatabase _remoteDb;
  final ErrorLogger logger;

  ExpedicionRepository(this.dio, this.usuario, this._remoteDb, this.logger);

  Future<List<Expedicion>> getExpedicionDTOLista({
    required String searchText,
  }) async {
    final query = searchText.isNotEmpty ? {'busqueda': searchText} : null;

    final expedicionDTOList = await _remoteExpedicionDTOList(
      requestUri: (usuario.test)
          ? Uri.http(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/online/expediciones',
              query,
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/online/expediciones',
              query,
            ),
      jsonDataSelector: (json) => json['data'] as List<dynamic>,
      provisionalToken: usuario.provisionalToken,
    );

    return Future.wait(
      expedicionDTOList.map((dto) async {
        final paisDto = await (_remoteDb.select(
          _remoteDb.paisTable,
        )..where((tbl) => tbl.id.equalsNullable(dto.paisId))).getSingleOrNull();
        final divisaDto = await (_remoteDb.select(
          _remoteDb.divisaTable,
        )..where((tbl) => tbl.id.equals(dto.divisaId))).getSingle();

        final pedidoVentaEstadoDto = await (_remoteDb.select(
          _remoteDb.pedidoVentaEstadoTable,
        )..where((tbl) => tbl.id.equals(dto.pedidoVentaEstadoId))).getSingle();
        final trackingEstodoDto = await (_remoteDb.select(
          _remoteDb.trackingEstadoTable,
        )..where((tbl) => tbl.id.equals(dto.estadoTrackingId))).getSingle();

        return dto.toDomain(
          pais: paisDto?.toDomain(),
          divisa: divisaDto.toDomain(),
          pedidoVentaEstado: pedidoVentaEstadoDto.toDomain(),
          trackingEstado: trackingEstodoDto.toDomain(),
        );
      }).toList(),
    );
  }

  Future<List<ExpedicionDTO>> _remoteExpedicionDTOList({
    required Uri requestUri,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
    required String provisionalToken,
  }) async {
    try {
      final response = await dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDataSelector(response.data);
        return data.map((e) => ExpedicionDTO.fromJson(e as Json)).toList();
      }
      throw AppException.restApiFailure(
        response.statusCode ?? 400,
        response.statusMessage ?? '',
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(getApiError(e, stackTrace, logger), stackTrace);
    }
  }
}
