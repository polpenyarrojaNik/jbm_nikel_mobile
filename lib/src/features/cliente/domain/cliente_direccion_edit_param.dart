import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/pais.dart';

part 'cliente_direccion_edit_param.freezed.dart';

@freezed
class ClienteDireccionEditParam with _$ClienteDireccionEditParam {
  const ClienteDireccionEditParam._();
  const factory ClienteDireccionEditParam(
    String clienteId,
    String? clienteDireccionId,
    Pais? paisCliente,
    bool tratado,
  ) = _ClienteDireccionEditParam;
}
