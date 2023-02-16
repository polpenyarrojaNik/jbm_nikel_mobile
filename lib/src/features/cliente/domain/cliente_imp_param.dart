import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/pais.dart';

part 'cliente_imp_param.freezed.dart';

@freezed
class ClienteImpParam with _$ClienteImpParam {
  const ClienteImpParam._();
  const factory ClienteImpParam(
    String clienteId, {
    String? id,
    String? impId,
    Pais? clientePais,
  }) = _ClienteImpParam;
}
