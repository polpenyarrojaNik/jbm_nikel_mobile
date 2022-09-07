import 'package:freezed_annotation/freezed_annotation.dart';

part 'plazo_cobro.freezed.dart';

@freezed
class PlazoDeCobro with _$PlazoDeCobro {
  const PlazoDeCobro._();
  const factory PlazoDeCobro(
      {required String id,
      required String descripcion,
      required DateTime lastUpdate,
      required bool deleted}) = _PlazoDeCobro;
}
