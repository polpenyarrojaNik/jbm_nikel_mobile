import 'package:freezed_annotation/freezed_annotation.dart';

import 'cliente_contacto_imp.dart';

part 'cliente_contacto.freezed.dart';

@freezed
class ClienteContacto with _$ClienteContacto {
  const ClienteContacto._();
  const factory ClienteContacto({
    required String clienteId,
    required String? contactoId,
    required String? contactoImpGuid,
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
    required bool deleted,
  }) = _ClienteContacto;

  factory ClienteContacto.fromClienteContactoImp(ClienteContactoImp _) {
    return ClienteContacto(
      clienteId: _.clienteId,
      contactoId: _.contactoId,
      contactoImpGuid: _.id,
      observaciones: _.observaciones,
      nombre: _.nombre,
      apellido1: _.apellido1,
      apellido2: _.apellido2,
      telefono1: _.telefono1,
      telefono2: _.telefono2,
      email: _.email,
      lastUpdated: DateTime.now().toUtc(),
      enviado: _.enviado,
      tratado: false,
      deleted: _.borrar,
    );
  }

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
