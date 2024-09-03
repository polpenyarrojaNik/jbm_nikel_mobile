import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:jbm_nikel_mobile/src/core/exceptions/app_exception.dart';
import 'package:jbm_nikel_mobile/src/core/exceptions/get_api_error.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/remote_database.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/app.dart';
import 'package:jbm_nikel_mobile/src/features/expediciones/domain/expedicion.dart';
import 'package:jbm_nikel_mobile/src/features/expediciones/infrastructure/expedicion_dto.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../usuario/domain/usuario.dart';

part 'expedicion_repository.g.dart';

@riverpod
@riverpod
ExpedicionRepository expedicionRepository(ExpedicionRepositoryRef ref) =>
    ExpedicionRepository(
        ref.watch(dioProvider),
        ref.watch(usuarioNotifierProvider)!,
        ref.watch(appRemoteDatabaseProvider));

class ExpedicionRepository {
  static const pageSize = 100;
  final Dio dio;
  final Usuario usuario;
  final RemoteAppDatabase _remoteDb;

  ExpedicionRepository(this.dio, this.usuario, this._remoteDb);

  Future<List<Expedicion>> getExpedicionDTOLista(
      {required String searchText}) async {
    final Map<String, dynamic> query =
        searchText.isNotEmpty ? {'busqueda': searchText} : {};

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

    return Future.wait(expedicionDTOList.map((dto) async {
      final paisDto = await (_remoteDb.select(_remoteDb.paisTable)
            ..where((tbl) => tbl.id.equalsNullable(dto.paisId)))
          .getSingleOrNull();
      final divisaDto = await (_remoteDb.select(_remoteDb.divisaTable)
            ..where((tbl) => tbl.id.equals(dto.divisaId)))
          .getSingle();

      final pedidoVentaEstadoDto =
          await (_remoteDb.select(_remoteDb.pedidoVentaEstadoTable)
                ..where((tbl) => tbl.id.equals(dto.pedidoVentaEstadoId)))
              .getSingle();
      final trackingEstodoDto =
          await (_remoteDb.select(_remoteDb.trackingEstadoTable)
                ..where((tbl) => tbl.id.equals(dto.estadoTrackingId)))
              .getSingle();

      return dto.toDomain(
          pais: paisDto?.toDomain(),
          divisa: divisaDto.toDomain(),
          pedidoVentaEstado: pedidoVentaEstadoDto.toDomain(),
          trackingEstado: trackingEstodoDto.toDomain());
    }).toList());

//     try {
//       String querySelect = '''
//         SELECT
//         PEDIDOS.EMPRESA_ID.
//         PEDIDOS.PEDIDO_ID,
//         PEDIDOS.FECHA_PEDIDO,
//         PEDIDOS.CLIENTE_ID,
//         PEDIDOS.NOMBRE_CLIENTE,
//         PEDIDOS.POBLACION,
//         PEDIDOS.CODIGO_POSTAL,
//         PEDIDOS.PROVINCIA,
//         PEDIDOS.PAIS_ID,
//         PEDIDOS.DIVISA_ID,
//         PEDIDOS.ESTADO_PEDIDO_ID,
//         PEDIDOS.BASE_IMPONIBLE,
//         PEDIDOS.ESTADO_PEDIDO_ID,
//         PEDIDOS_ALBARANES.ESTADO_TRACKING,
//         PEDIDOS_ALBARANES.TRACK_ID,
//         PEDIDOS.OFERTA_SN,
//         PEDIDOS.LAST_UPDATED,
//         PEDIDOS.DELETED
//         FROM PEDIDOS
//         INNER JOIN CLIENTES_USUSARIO ON PEDIDOS.CLIENTE_ID = CLIENTES_USUSARIO.CLIENTE_ID
//         INNER JOIN PEDIDOS_ALBARANES ON PEDIDOS.PEDIDO_ID = PEDIDOS_ALBARANES.PEDIDO_ID
//         AND PEDIDOS.EMPRESA_ID = PEDIDOS_ALBARANES.EMPRESA_ID
//         WHERE CLIENTES_USUSARIO.USUARIO_ID = :usuario_id
//         AND (PEDIDOS_ALBARANES.ESTADO_TRAKING = '00'
//         OR PEDIDOS_ALBARANES.ESTADO_TRAKING = '01'
//         OR PEDIDOS_ALBARANES.ESTADO_TRAKING = '02'
//         OR PEDIDOS_ALBARANES.ESTADO_TRAKING = '03')
//         AND PEDIDOS_ALBARANES.FECHA_ALBARAN > SYSDATE +30

// ''';

//       if (searchText != '') {
//         final searchWordList = searchText.toUpperCase().split(' ');
//         for (var i = 0; i < searchWordList.length; i++) {
//           final searchWord = searchWordList[i].toUpperCase();

//           querySelect += ''' AND (UPPER(PEDIDOS.PEDIDO_ID) LIKE '%$searchWord%'
//             OR UPPER(PEDIDOS.NOMBRE_CLIENTE) LIKE '%$searchWord%'
//             OR UPPER(PEDIDOS.CLIENTE_ID) LIKE '%$searchWord%'
//             OR UPPER(PEDIDOS.POBLACION) LIKE '%$searchWord%'
//             OR UPPER(PEDIDOS.CODIGO_POSTAL) LIKE '%$searchWord%'
//             OR UPPER(PEDIDOS.PROVINCIA) LIKE '%$searchWord%'
//             )
//              ''';
//         }
//       }

//       querySelect += ' ORDER BY PEDIDOS.FECHA_PEDIDO DESC, PEDIDOS_PEDIDO ASC';

//       log.d(querySelect);

//       final queryRowList =
//           await _remoteDb.customSelect(querySelect, variables: [
//         Variable(usuario.id),
//       ], readsFrom: {
//         _remoteDb.pedidoVentaTable,
//         _remoteDb.pedidoAlbaranTable,
//         _remoteDb.clienteUsuarioTable,
//       }).get();

//       if (searchText != '') {
//         final busqueda = searchText.toUpperCase().split(' ');
//         Expression<bool>? predicate;
//         for (var i = 0; i < busqueda.length; i++) {
//           if (predicate == null) {
//             predicate = (_remoteDb.pedidoVentaTable.pedidoVentaId
//                     .like('%${busqueda[i]}%') |
//                 _remoteDb.pedidoVentaTable.nombreCliente
//                     .like('%${busqueda[i]}%') |
//                 _remoteDb.pedidoVentaTable.clienteId.like('%${busqueda[i]}%') |
//                 _remoteDb.pedidoVentaTable.pedidoVentaId
//                     .like('%${busqueda[i]}%') |
//                 _remoteDb.pedidoVentaTable.poblacion.like('%${busqueda[i]}%') |
//                 _remoteDb.pedidoVentaTable.codigoPostal
//                     .like('%${busqueda[i]}%') |
//                 _remoteDb.pedidoVentaTable.provincia.like('%${busqueda[i]}%'));
//           } else {
//             predicate = predicate &
//                 (_remoteDb.pedidoVentaTable.pedidoVentaId
//                         .like('%${busqueda[i]}%') |
//                     (_remoteDb.pedidoVentaTable.nombreCliente
//                             .like('%${busqueda[i]}%') |
//                         _remoteDb.pedidoVentaTable.pedidoVentaId
//                             .like('%${busqueda[i]}%') |
//                         _remoteDb.pedidoVentaTable.clienteId
//                             .like('%${busqueda[i]}%') |
//                         _remoteDb.pedidoVentaTable.poblacion
//                             .like('%${busqueda[i]}%') |
//                         _remoteDb.pedidoVentaTable.codigoPostal
//                             .like('%${busqueda[i]}%') |
//                         _remoteDb.pedidoVentaTable.provincia
//                             .like('%${busqueda[i]}%')));
//           }
//         }
//       }

//       return await Future.wait(queryRowList.map((row) async {
//         final pedidoVentaExpedicionDto = ExpedicionDTO.fromJson(row.data);
//         final paisDTO = await (_remoteDb.select(_remoteDb.paisTable)
//               ..where((t) => t.id.equals(row.data['PAIS_ID'] ?? '')))
//             .getSingleOrNull();
//         final divisaDTO = await (_remoteDb.select(_remoteDb.divisaTable)
//               ..where((t) => t.id.equals(row.data['DIVISA_ID'] ?? '')))
//             .getSingle();
//         final pedidoVentaEstadoDTO = await (_remoteDb
//                 .select(_remoteDb.pedidoVentaEstadoTable)
//               ..where((t) => t.id.equals(row.data['ESTADO_PEDIDO_ID'] ?? '')))
//             .getSingle();
//         final trackingEstadoDTO =
//             await (_remoteDb.select(_remoteDb.trackingEstadoTable)
//                   ..where((t) => t.id.equals(row.data['TRACK_ID'] ?? '')))
//                 .getSingle();
//         return pedidoVentaExpedicionDto.toDomain(
//           pais: paisDTO?.toDomain(),
//           divisa: divisaDTO.toDomain(),
//           pedidoVentaEstado: pedidoVentaEstadoDTO.toDomain(),
//           trackingEstado: trackingEstadoDTO.toDomain(),
//         );
//       }).toList());
//     } catch (e) {
//       throw AppException.fetchLocalDataFailure(e.toString());
//     }
  }

  Future<List<ExpedicionDTO>> _remoteExpedicionDTOList(
      {required Uri requestUri,
      required List Function(dynamic json) jsonDataSelector,
      required String provisionalToken}) async {
    try {
      final response = await dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDataSelector(response.data);
        return data.map((e) => ExpedicionDTO.fromJson(e)).toList();
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } catch (e) {
      throw getApiError(e);
    }
  }
}
