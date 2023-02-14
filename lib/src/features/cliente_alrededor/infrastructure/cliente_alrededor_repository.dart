import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/pais_dto.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_direccion_dto.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_dto.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/domain/usuario.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/infrastructure/remote_database.dart';
import '../domain/cliente_alrededor.dart';
import '../domain/get_cliente_alrededor_arg.dart';
import 'cliente_alrededor_dto.dart';

final clientesAlrededorRepositoryProvider =
    Provider.autoDispose<ClienteAlrededorRepository>(
  (ref) {
    final remoteDb = ref.watch(appRemoteDatabaseProvider);
    final usuario = ref.watch(usuarioNotifierProvider);
    return ClienteAlrededorRepository(remoteDb, usuario!);
  },
);

final ubicacionActualProvider = FutureProvider.autoDispose<Position>((ref) {
  final clientesAlrededorRepository =
      ref.watch(clientesAlrededorRepositoryProvider);

  return clientesAlrededorRepository.getUbicacionActual();
});

final clientesDireccionesAlrededorListStream = FutureProvider.autoDispose
    .family<List<ClienteAlrededor>, GetClienteAlrededorArg>(
        (ref, clienteAlrededorArg) async {
  final clientesAlrededorRepository =
      ref.watch(clientesAlrededorRepositoryProvider);
  return clientesAlrededorRepository.getClienteAlrededoresLista(
      clienteAlrededorArg: clienteAlrededorArg);
});

class ClienteAlrededorRepository {
  RemoteAppDatabase remoteDb;
  Usuario usuario;

  ClienteAlrededorRepository(this.remoteDb, this.usuario);

  Future<Position> getUbicacionActual() async {
    try {
      await checkPermission();
      return Geolocator.getCurrentPosition();
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ClienteAlrededor>> getClienteAlrededoresLista(
      {required GetClienteAlrededorArg clienteAlrededorArg}) async {
    final List<ClienteAlrededor> clienteAlrededorList = [];
    try {
      final clienteDireccionesFiscalesAlrededorList =
          await _getClienteDireccionesFiscalesList(clienteAlrededorArg);
      clienteAlrededorList.addAll(clienteDireccionesFiscalesAlrededorList);

      if (clienteAlrededorArg.showDireccionesEnvio) {
        final clienteDireccionesAlrededorList =
            await _getClienteDireccionesAlrededorList(clienteAlrededorArg);

        clienteAlrededorList.addAll(clienteDireccionesAlrededorList);
      }

      return clienteAlrededorList;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ClienteAlrededor>> _getClienteDireccionesFiscalesList(
      GetClienteAlrededorArg clienteAlrededorArg) async {
    try {
      final query = remoteDb.customSelect('''SELECT c.*, paises.*
        from CLIENTES_USUARIO cUsuario
        INNER JOIN CLIENTES c ON c.cliente_id = cUsuario.cliente_id
        INNER JOIN PAISES paises ON c.pais_id_fiscal = paises.pais_id
        WHERE (cUsuario.USUARIO_ID = :usuarioId AND c.latitud_fiscal is not null AND c.longitud_fiscal is not null) AND(
          SELECT (12742 * ASIN(SQRT(0.5 - COS((c.latitud_fiscal - :latitud) * :p) /2 + COS(:latitud * :p) * COS(c.latitud_fiscal * :p) * (1 - COS((c.longitud_fiscal - :longitud) * :p)) / 2)))
          as distanceKm
          ) < :radiusKm
          ''', variables: [
        Variable.withString(usuario.id),
        Variable.withReal(clienteAlrededorArg.latLng.latitude),
        Variable.withReal(0.017453292519943295),
        Variable.withReal(clienteAlrededorArg.latLng.longitude),
        Variable.withReal(clienteAlrededorArg.radiusDistance / 1000),
      ], readsFrom: {
        remoteDb.clienteTable,
        remoteDb.clienteUsuarioTable,
        remoteDb.paisTable,
      });

      return await query.map((rows) {
        final paisDTO =
            (rows.data['PAIS_ID'] != null) ? PaisDTO.fromJson(rows.data) : null;
        final clienteDTO = ClienteDTO.fromJson(rows.data);

        final clienteAlerdedorDTO =
            ClienteAlrededorDTO.fromClienteDTO(clienteDTO);

        return clienteAlerdedorDTO.toDomain(pais: paisDTO?.toDomain());
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<List<ClienteAlrededor>> _getClienteDireccionesAlrededorList(
      GetClienteAlrededorArg clienteAlrededorArg) async {
    try {
      final query = remoteDb.customSelect('''SELECT cd.*, paises.*
        FROM CLIENTES_USUARIO cUsuario
        INNER JOIN CLIENTES_DIRECCIONES_ENVIO cd ON cd.cliente_id = cUsuario.cliente_id
        INNER JOIN PAISES paises ON cd.pais_id = paises.pais_id
        WHERE (cUsuario.USUARIO_ID = :usuarioId AND cd.latitud is not null AND cd.longitud is not null) AND(
          SELECT (12742 * ASIN(SQRT(0.5 - COS((cd.latitud - :latitud) * :p) /2 + COS(:latitud * :p) * COS(cd.latitud * :p) * (1 - COS((cd.longitud - :longitud) * :p)) / 2)))
          as distanceKm
          ) < :radiusKm
          ''', variables: [
        Variable.withString(usuario.id),
        Variable.withReal(clienteAlrededorArg.latLng.latitude),
        Variable.withReal(0.017453292519943295),
        Variable.withReal(clienteAlrededorArg.latLng.longitude),
        Variable.withReal(clienteAlrededorArg.radiusDistance / 1000),
      ], readsFrom: {
        remoteDb.clienteDireccionTable,
        remoteDb.clienteUsuarioTable,
        remoteDb.paisTable,
      });

      return await query.asyncMap((rows) async {
        final paisDTO =
            (rows.data['PAIS_ID'] != null) ? PaisDTO.fromJson(rows.data) : null;
        final clienteDireccionDto = ClienteDireccionDTO.fromJson(rows.data);
        final clienteDto =
            await _getClienteDtoById(clienteDireccionDto.clienteId);
        await _getClienteDtoById(clienteDireccionDto.clienteId);
        final clienteAlrededorDto = ClienteAlrededorDTO.fromClienteDireccionDTO(
          clienteDireccionDto,
          clienteDto.ventasAnyoActual,
          clienteDto.porcentajeAbonos,
          clienteDto.representante1Nombre,
          clienteDto.representante2Nombre,
        );

        return clienteAlrededorDto.toDomain(pais: paisDTO?.toDomain());
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

  Future<ClienteDTO> _getClienteDtoById(
    String clienteId,
  ) async {
    try {
      final query = (remoteDb.select(remoteDb.clienteTable)
        ..where((t) => t.id.equals(clienteId)));

      return query.getSingle();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }
}
