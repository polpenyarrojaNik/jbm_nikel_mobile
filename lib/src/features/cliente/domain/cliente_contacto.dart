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
      String? telefono1,
      String? telefono2,
      String? email,
      required DateTime lastUpdated,
      required bool deleted}) = _ClienteContacto;
}
