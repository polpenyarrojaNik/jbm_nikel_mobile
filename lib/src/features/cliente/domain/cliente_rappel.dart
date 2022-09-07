import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente_rappel.freezed.dart';

@freezed
class ClienteRappel with _$ClienteRappel {
  const ClienteRappel._();
  const factory ClienteRappel(
      {required String clienteId,
      required String rappelId,
      required String descripcion,
      required DateTime fechaDesDe,
      DateTime? fechaHasta,
      required DateTime lastUpdated,
      required bool deleted}) = _ClienteRappel;
}
