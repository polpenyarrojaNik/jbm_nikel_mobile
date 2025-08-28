// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/pais.dart';
import '../../../core/domain/provincia.dart';

part 'geolocation_entity.freezed.dart';

@freezed
abstract class GeolocationEntity with _$GeolocationEntity {
  factory GeolocationEntity({
    required String streetAddress1,
    required String? streetAddress2,
    required String? zipCode,
    required String? city,
    required Provincia? state,
    required Pais? country,
  }) = _GeolocationEntity;

  const GeolocationEntity._();
}
