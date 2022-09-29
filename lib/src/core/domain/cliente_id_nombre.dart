import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente_id_nombre.freezed.dart';

@freezed
class ClienteIdNombre with _$ClienteIdNombre {
  const ClienteIdNombre._();
  const factory ClienteIdNombre({
    required String id,
    required String? nombreCliente,
  }) = _ClienteIdNombre;
}
