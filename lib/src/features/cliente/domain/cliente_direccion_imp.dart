import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/pais.dart';

part 'cliente_direccion_imp.freezed.dart';

@freezed
class ClienteDireccionImp with _$ClienteDireccionImp {
  const ClienteDireccionImp._();
  const factory ClienteDireccionImp({
    required String id,
    required DateTime fecha,
    required String usuarioId,
    required String clienteId,
    required String? direccionId,
    String? nombre,
    String? direccion1,
    String? direccion2,
    String? codigoPostal,
    String? poblacion,
    String? provincia,
    Pais? pais,
    required bool enviada,
    required bool borrar,
  }) = _ClienteDireccionImp;
}
