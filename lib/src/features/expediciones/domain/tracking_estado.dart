import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracking_estado.freezed.dart';

@freezed
class TrackingEstado with _$TrackingEstado {
  const TrackingEstado._();
  const factory TrackingEstado({
    required String id,
    required String descripcion,
    required DateTime lastUpdate,
    required bool deleted,
  }) = _TrackingEstado;
}
