import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/pais.dart';

import 'cliente_direccion_imp.dart';

part 'cliente_direccion.freezed.dart';

@freezed
class ClienteDireccion with _$ClienteDireccion {
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
    required double latitud,
    required double longitud,
    required bool predeterminada,
    required DateTime lastUpdated,
    required bool enviada,
    required bool tratada,
    required bool deleted,
  }) = _ClienteDireccion;

  factory ClienteDireccion.fromClienteDireccionImp(ClienteDireccionImp _) {
    return ClienteDireccion(
      clienteId: _.clienteId,
      direccionId: _.direccionId,
      direccionImpGuid: _.id,
      nombre: _.nombre,
      direccion1: _.direccion1,
      direccion2: _.direccion2,
      codigoPostal: _.codigoPostal,
      poblacion: _.poblacion,
      provincia: _.provincia,
      pais: _.pais,
      latitud: 0,
      longitud: 0,
      predeterminada: false,
      lastUpdated: DateTime.now().toUtc(),
      enviada: _.enviada,
      tratada: false,
      deleted: _.borrar,
    );
  }
}
