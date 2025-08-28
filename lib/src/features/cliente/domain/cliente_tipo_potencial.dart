import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente_tipo_potencial.freezed.dart';

@freezed
abstract class ClienteTipoPotencial with _$ClienteTipoPotencial {
  const ClienteTipoPotencial._();
  const factory ClienteTipoPotencial({
    required String id,
    required String descripcionES,
    String? descripcionEN,
    String? descripcionFR,
    String? descripcionDE,
    String? descripcionCA,
    String? descripcionGB,
    String? descripcionHU,
    String? descripcionIT,
    String? descripcionNL,
    String? descripcionPL,
    String? descripcionPT,
    String? descripcionRO,
    String? descripcionRU,
    String? descripcionCN,
    String? descripcionEL,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _ClienteTipoPotencial;
}
