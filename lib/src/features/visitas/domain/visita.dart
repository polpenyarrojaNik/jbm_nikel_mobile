import 'package:freezed_annotation/freezed_annotation.dart';

part 'visita.freezed.dart';

@freezed
class Visita with _$Visita {
  const Visita._();
  const factory Visita(
      {required String id,
      required String clienteId,
      required DateTime fecha,
      required String numEmpl,
      String? contacto,
      String? resumen,
      required double latitud,
      required double longitud,
      required DateTime lastUpdated,
      required bool deleted}) = _Visita;
}
