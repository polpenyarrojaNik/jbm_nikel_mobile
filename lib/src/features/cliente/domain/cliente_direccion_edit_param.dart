import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente_direccion_edit_param.freezed.dart';

@freezed
class ClienteDireccionEditParam with _$ClienteDireccionEditParam {
  const ClienteDireccionEditParam._();
  const factory ClienteDireccionEditParam(
    String? clienteDireccionId,
    bool tratado,
  ) = _ClienteDireccionEditParam;
}
