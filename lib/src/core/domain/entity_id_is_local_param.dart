import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_id_is_local_param.freezed.dart';

@freezed
class EntityIdIsLocalParam with _$EntityIdIsLocalParam {
  const EntityIdIsLocalParam._();
  const factory EntityIdIsLocalParam({
    String? id,
    required bool isLocal,
  }) = _EntityIdIsLocalParam;
}
