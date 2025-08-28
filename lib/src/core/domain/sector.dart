import 'package:freezed_annotation/freezed_annotation.dart';

part 'sector.freezed.dart';

@freezed
abstract class Sector with _$Sector {
  const Sector._();
  const factory Sector({
    required String id,
    required bool isAlta,
    required String descripcion,
    required DateTime lastUpdate,
    required bool deleted,
  }) = _Sector;
}
