import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente_adjunto.freezed.dart';

@freezed
class ClienteAdjunto with _$ClienteAdjunto {
  const ClienteAdjunto._();
  const factory ClienteAdjunto({
    required String clienteId,
    required String nombreAdjunto,
  }) = _ClienteAdjunto;
}
