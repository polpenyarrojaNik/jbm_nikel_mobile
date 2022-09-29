import 'package:freezed_annotation/freezed_annotation.dart';

part 'visita_id_is_local_param.freezed.dart';

@freezed
class VisitaIdIsLocalParam with _$VisitaIdIsLocalParam {
  const VisitaIdIsLocalParam._();
  const factory VisitaIdIsLocalParam({
    String? id,
    required bool isLocal,
  }) = _VisitaIdIsLocalParam;
}
