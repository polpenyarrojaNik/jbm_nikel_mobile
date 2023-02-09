import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente_contacto.freezed.dart';

@freezed
class ClienteContacto with _$ClienteContacto {
  const ClienteContacto._();
  const factory ClienteContacto(
      {required String clienteId,
      required String contactoId,
      String? observaciones,
      String? nombre,
      String? apellido1,
      String? apellido2,
      String? telefono1,
      String? telefono2,
      String? email,
      required DateTime lastUpdated,
      required bool enviado,
      required bool tratado,
      required bool deleted}) = _ClienteContacto;

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
