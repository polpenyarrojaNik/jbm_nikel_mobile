import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/notification_type.dart';

part 'notification_type_dto.freezed.dart';
part 'notification_type_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class NotificationTypeDto with _$NotificationTypeDto {
  const NotificationTypeDto._();
  const factory NotificationTypeDto({
    @JsonKey(name: 'COD_TIPO') required String codTipo,
    @JsonKey(name: 'DESCRIPCION') required String descripcion,
    @JsonKey(name: 'ABRIR_SN') required String abrirSN,
  }) = _NotificationTypeDto;

  factory NotificationTypeDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationTypeDtoFromJson(json);

  NotificationType toDomain() {
    return NotificationType(
      codTipo: codTipo,
      descripcion: descripcion,
      abrirSN: abrirSN == 'S',
    );
  }
}
