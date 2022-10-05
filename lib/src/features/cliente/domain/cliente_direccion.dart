import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/pais.dart';

part 'cliente_direccion.freezed.dart';

@freezed
class ClienteDireccion with _$ClienteDireccion {
  const ClienteDireccion._();
  const factory ClienteDireccion(
      {required String clienteId,
      required String direccionId,
      String? nombre,
      String? direccion1,
      String? direccion2,
      String? codigoPostal,
      String? poblacion,
      String? provincia,
      Pais? pais,
      required double latitud,
      required double longitud,
      // required bool predeterminada,
      required DateTime lastUpdated,
      required bool deleted}) = _ClienteDireccion;
}
