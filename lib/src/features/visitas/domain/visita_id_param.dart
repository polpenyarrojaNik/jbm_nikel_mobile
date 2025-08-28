import 'package:freezed_annotation/freezed_annotation.dart';

part 'visita_id_param.freezed.dart';

@freezed
abstract class VisitaIdIsLocalParam with _$VisitaIdIsLocalParam {
  const VisitaIdIsLocalParam._();
  const factory VisitaIdIsLocalParam({
    required String id,
    required bool isLocal,
    String? createVisitaFromClienteId,
  }) = _VisitaIdIsLocalParam;
}
