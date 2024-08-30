import 'package:freezed_annotation/freezed_annotation.dart';

part 'visita_sector.freezed.dart';

@freezed
class VisitaSector with _$VisitaSector {
  const VisitaSector._();
  const factory VisitaSector({
    required int id,
    required String descripcion,
    required DateTime lastUpdate,
    required bool deleted,
  }) = _VisitaSector;
}
