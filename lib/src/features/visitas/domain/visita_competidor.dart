import 'package:freezed_annotation/freezed_annotation.dart';

part 'visita_competidor.freezed.dart';

@freezed
abstract class VisitaCompetidor with _$VisitaCompetidor {
  const VisitaCompetidor._();
  const factory VisitaCompetidor({
    required int id,
    required String descripcion,
    required DateTime lastUpdate,
    required bool deleted,
  }) = _VisitaCompetidor;
}
