import 'package:freezed_annotation/freezed_annotation.dart';

import 'sector.dart';

part 'subsector.freezed.dart';

@freezed
abstract class Subsector with _$Subsector {
  const Subsector._();
  const factory Subsector({
    required String subsectorId,
    required Sector sector,
    required String descripcion,
    required DateTime lastUpdate,
    required bool deleted,
  }) = _Subsector;
}
