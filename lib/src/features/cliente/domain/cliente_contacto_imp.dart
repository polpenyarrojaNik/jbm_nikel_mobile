import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente_contacto_imp.freezed.dart';

@freezed
class ClienteContactoImp with _$ClienteContactoImp {
  const ClienteContactoImp._();
  const factory ClienteContactoImp({
    required String id,
    required DateTime fecha,
    required String usuarioId,
    required String clienteId,
    required String? contactoId,
    String? observaciones,
    String? nombre,
    String? apellido1,
    String? apellido2,
    String? telefono1,
    String? telefono2,
    String? email,
    required bool enviado,
    required bool borrar,
  }) = _ClienteContactoImp;

  String? getName(String? nombre, String? apellido1, String? apellido2) {
    if (nombre != null && apellido1 != null && apellido2 != null) {
      return '$nombre $apellido1 $apellido2';
    } else if (nombre != null && apellido1 != null) {
      return '$nombre $apellido1';
    } else if (nombre != null) {
      return nombre;
    }
    return null;
  }
}
