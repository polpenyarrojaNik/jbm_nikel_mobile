import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente_contacto_edit_param.freezed.dart';

@freezed
class ClienteContactoEditParam with _$ClienteContactoEditParam {
  const ClienteContactoEditParam._();
  const factory ClienteContactoEditParam(
    String clienteId,
    String? clienteContactoId,
    bool tratado,
  ) = _ClienteContactoEditParam;
}
