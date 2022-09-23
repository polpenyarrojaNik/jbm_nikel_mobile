import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente_estado_potencial.freezed.dart';

@freezed
class ClienteEstadoPotencial with _$ClienteEstadoPotencial {
  const ClienteEstadoPotencial._();
  const factory ClienteEstadoPotencial({
    required String id,
    String? descripcionES,
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
  }) = _ClienteEstadoPotencial;
}
