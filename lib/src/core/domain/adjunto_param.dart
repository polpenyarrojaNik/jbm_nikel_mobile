import 'package:freezed_annotation/freezed_annotation.dart';

part 'adjunto_param.freezed.dart';

@freezed
class AdjuntoParam with _$AdjuntoParam {
  const AdjuntoParam._();
  const factory AdjuntoParam({
    required String id,
    required String? nombreArchivo,
  }) = _AdjuntoParam;
}
