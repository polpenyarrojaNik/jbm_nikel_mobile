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
  (ref) {
    final db = ref.watch(appDatabaseProvider);
    return ClienteAlrededorRepository(db);
  },
);

final ubicacionActualProvider = FutureProvider.autoDispose<Position>((ref) {
  final clientesAlrededorRepository =
      ref.watch(clientesAlrededorRepositoryProvider);

  return clientesAlrededorRepository.getUbicacionActual();
});

final clientesAlrededorListStream = FutureProvider.autoDispose
    .family<List<Cliente>, GetClienteAlrededorArg>(
        (ref, clienteAlrededorArg) async {
  final clientesAlrededorRepository =
      ref.watch(clientesAlrededorRepositoryProvider);
  final usuarioService = ref.watch(usuarioServiceProvider);
  final usuario = await usuarioService.getSignedInUsuario();
  return clientesAlrededorRepository.getClientesAlrededorLista(
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

  Future<List<Cliente>> getClientesAlrededorLista(
      {required String usuarioId,
      required GetClienteAlrededorArg clienteAlrededorArg}) {
    try {
      final query = db.customSelect('''SELECT c.*, paises.*
        from CLIENTES_USUARIO cUsuario
        INNER JOIN CLIENTES c ON c.cliente_id = cUsuario.cliente_id
        INNER JOIN PAISES paises ON c.pais_id_fiscal = paises.pais_id
        WHERE (cUsuario.USUARIO_ID = :usuarioId AND c.latitud_fiscal is not null AND c.longitud_fiscal is not null) AND(
          SELECT (12742 * ASIN(SQRT(0.5 - COS((c.latitud_fiscal - :latitud) * :p) /2 + COS(:latitud * :p) * COS(c.latitud_fiscal * :p) * (1 - COS((c.longitud_fiscal - :longitud) * :p)) / 2)))
          as distanceKm
          ) < :radiusKm
          ''', variables: [
        Variable.withString(usuarioId),
        Variable.withReal(clienteAlrededorArg.latLng.latitude),
        Variable.withReal(0.017453292519943295),
        Variable.withReal(clienteAlrededorArg.latLng.longitude),
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

        final cliente = clienteDTO.toDomain(
          paisFiscal: paisDTO?.toDomain(),
          divisa: null,
          metodoDeCobro: null,
          plazoDeCobro: null,
          clienteEstadoPotencial: null,
          clienteTipoPotencial: null,
        );
        return cliente;
      }).get();
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
