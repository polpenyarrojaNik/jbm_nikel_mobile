import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente_modificacion_param.freezed.dart';

@freezed
class ClienteModificacionParam with _$ClienteModificacionParam {
  const ClienteModificacionParam._();
  const factory ClienteModificacionParam(
    String clienteId,
    String? id,
    bool tratado,
  ) = _ClienteModificacionParam;
}
