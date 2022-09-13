import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/pais_dto.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_dto.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/infrastructure/usuario_service.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/infrastructure/database.dart';
import '../domain/get_cliente_alrededor_arg.dart';

final clientesAlrededorRepositoryProvider =
    Provider.autoDispose<ClienteAlrededorRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

final ubicacionActualProvider = FutureProvider.autoDispose<Position>((ref) {
  final clientesAlrededorRepository =
      ref.watch(clientesAlrededorRepositoryProvider);

  return clientesAlrededorRepository.getUbicacionActual();
});

final clientesAlrededorListStream = StreamProvider.autoDispose
    .family<List<Cliente>, GetClienteAlrededorArg>(
        (ref, clienteAlrededorArg) async* {
  final clientesAlrededorRepository =
      ref.watch(clientesAlrededorRepositoryProvider);
  final usuarioService = ref.watch(usuarioServiceProvider);
  final usuario = await usuarioService.getSignedInUsuario();
  yield* clientesAlrededorRepository.getClientesAlrededorLista(
      usuarioId: usuario!.id, clienteAlrededorArg: clienteAlrededorArg);
});

class ClienteAlrededorRepository {
  AppDatabase db;

  ClienteAlrededorRepository(this.db);

  Future<Position> getUbicacionActual() async {
    try {
      await checkPermission();
      return Geolocator.getCurrentPosition();
    } catch (e) {
      rethrow;
    }
  }

  Stream<List<Cliente>> getClientesAlrededorLista(
      {required String usuarioId,
      required GetClienteAlrededorArg clienteAlrededorArg}) {
    try {
      final query =
          // db.select(db.clienteTable).join([
          //   innerJoin(db.clienteUsuarioTable,
          //       db.clienteUsuarioTable.clienteId.equalsExp(db.clienteTable.id)),
          //   innerJoin(db.paisTable,
          //       db.paisTable.id.equalsExp(db.clienteTable.paisFiscalId)),
          //   innerJoin(db.divisaTable,
          //       db.divisaTable.id.equalsExp(db.clienteTable.divisaId)),
          //   innerJoin(
          //       db.metodoDeCobroTable,
          //       db.metodoDeCobroTable.id
          //           .equalsExp(db.clienteTable.metodoDeCobroId)),
          //   innerJoin(db.plazoDeCobroTable,
          //       db.plazoDeCobroTable.id.equalsExp(db.clienteTable.plazoDeCobroId))
          // ]);

          db.customSelect('''SELECT c.*, paises.*
        from CLIENTES c
        INNER JOIN CLIENTES_USUARIO u ON c.cliente_id = u.cliente_id
        INNER JOIN PAISES paises ON c.pais_id_fiscal = paises.pais_id
        WHERE c.latitud_fiscal is not null AND c.longitud_fiscal is not null AND(
          SELECT (12742 * ASIN(SQRT(0.5 - COS((c.latitud_fiscal - :latitud) * :p) /2 + COS(:latitud * :p) * COS(c.latitud_fiscal * :p) * (1 - COS((c.longitud_fiscal - :longitud) * :p)) / 2)))
          as distanceKm
          ) < :radiusKm
          ''', variables: [
        Variable.withReal(clienteAlrededorArg.position.latitude),
        Variable.withReal(0.017453292519943295),
        Variable.withReal(clienteAlrededorArg.position.longitude),
        Variable.withReal(clienteAlrededorArg.radiusDistance / 1000),
      ], readsFrom: {
        db.clienteTable,
        db.clienteUsuarioTable,
        db.paisTable,
      });

      return query.map((rows) {
        final clienteDTO = ClienteDTO.fromJson(rows.data);
        final paisDTO =
            (rows.data['PAIS_ID'] != null) ? PaisDTO.fromJson(rows.data) : null;

        // final metodoDeCobroDTO = row.readTableOrNull(db.metodoDeCobroTable);
        // final plazoDeCobroDTO = row.readTableOrNull(db.plazoDeCobroTable);

        final cliente = clienteDTO.toDomain(
          paisFiscal: paisDTO?.toDomain(),
          divisa: null,
          metodoDeCobro: null,
          plazoDeCobro: null,
        );
        return cliente;
      }).watch();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<void> checkPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    try {
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          permission = await Geolocator.requestPermission();
          return Future.error('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        throw 'Location permissions are permanently denied, we cannot request permissions.';
      }
    } catch (e) {
      rethrow;
    }
  }
}
