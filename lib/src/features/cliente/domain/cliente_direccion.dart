import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/pais.dart';
import 'cliente_direccion_imp.dart';

part 'cliente_direccion.freezed.dart';

@freezed
abstract class ClienteDireccion with _$ClienteDireccion {
  const ClienteDireccion._();
  const factory ClienteDireccion({
    required String clienteId,
    required String? direccionId,
    required String? direccionImpGuid,
    String? nombre,
    String? direccion1,
    String? direccion2,
    String? codigoPostal,
    String? poblacion,
    String? provincia,
    Pais? pais,
    String? telefono,
    required double latitud,
    required double longitud,
    required bool predeterminada,
    required DateTime lastUpdated,
    required bool enviada,
    required bool tratada,
    required bool deleted,
  }) = _ClienteDireccion;

  factory ClienteDireccion.fromClienteDireccionImp(
    ClienteDireccionImp clienteDireccionImp,
  ) {
    return ClienteDireccion(
      clienteId: clienteDireccionImp.clienteId,
      direccionId: clienteDireccionImp.direccionId,
      direccionImpGuid: clienteDireccionImp.id,
      nombre: clienteDireccionImp.nombre,
      direccion1: clienteDireccionImp.direccion1,
      direccion2: clienteDireccionImp.direccion2,
      codigoPostal: clienteDireccionImp.codigoPostal,
      poblacion: clienteDireccionImp.poblacion,
      provincia: clienteDireccionImp.provincia,
      pais: clienteDireccionImp.pais,
      latitud: 0,
      longitud: 0,
      predeterminada: false,
      telefono: clienteDireccionImp.telefono,
      lastUpdated: DateTime.now().toUtc(),
      enviada: clienteDireccionImp.enviada,
      tratada: false,
      deleted: clienteDireccionImp.borrar,
    );
  }
}
