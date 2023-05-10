import 'package:freezed_annotation/freezed_annotation.dart';

part 'visita_id_param.freezed.dart';

@freezed
class VisitaIdIsLocalParam with _$VisitaIdIsLocalParam {
  const VisitaIdIsLocalParam._();
  const factory VisitaIdIsLocalParam({
    required String id,
    required bool isLocal,
    required bool isNew,
    String? createVisitaFromClienteId,
  }) = _VisitaIdIsLocalParam;
}
