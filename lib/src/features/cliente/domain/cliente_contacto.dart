import 'package:freezed_annotation/freezed_annotation.dart';

import 'cliente_contacto_imp.dart';

part 'cliente_contacto.freezed.dart';

@freezed
abstract class ClienteContacto with _$ClienteContacto {
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

  factory ClienteContacto.fromClienteContactoImp(
    ClienteContactoImp clienteContactoImp,
  ) {
    return ClienteContacto(
      clienteId: clienteContactoImp.clienteId,
      contactoId: clienteContactoImp.contactoId,
      contactoImpGuid: clienteContactoImp.id,
      observaciones: clienteContactoImp.observaciones,
      nombre: clienteContactoImp.nombre,
      apellido1: clienteContactoImp.apellido1,
      apellido2: clienteContactoImp.apellido2,
      telefono1: clienteContactoImp.telefono1,
      telefono2: clienteContactoImp.telefono2,
      email: clienteContactoImp.email,
      lastUpdated: DateTime.now().toUtc(),
      enviado: clienteContactoImp.enviado,
      tratado: false,
      deleted: clienteContactoImp.borrar,
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
