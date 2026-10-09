import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/notification_type_preference.dart';

part 'notification_type_preference_dto.freezed.dart';
part 'notification_type_preference_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class NotificationTypePreferenceDTO
    with _$NotificationTypePreferenceDTO {
  const NotificationTypePreferenceDTO._();
  const factory NotificationTypePreferenceDTO({
    @JsonKey(name: 'COD_TIPO') required String codTipo,
    @JsonKey(name: 'ABRIR_SN') required String abrirSN,
  }) = _NotificationTypePreferenceDTO;

  factory NotificationTypePreferenceDTO.fromJson(Map<String, dynamic> json) =>
      _$NotificationTypePreferenceDTOFromJson(json);

  factory NotificationTypePreferenceDTO.fromDomain(
    NotificationTypePreference preference,
  ) {
    return NotificationTypePreferenceDTO(
      codTipo: preference.codTipo,
      abrirSN: preference.abrirSN ? 'S' : 'N',
    );
  }

  NotificationTypePreference toDomain() {
    return NotificationTypePreference(
      codTipo: codTipo,
      abrirSN: abrirSN == 'S',
    );
  }
}
