import 'package:freezed_annotation/freezed_annotation.dart';

part 'metodo_cobro.freezed.dart';

@freezed
class MetodoDeCobro with _$MetodoDeCobro {
  const MetodoDeCobro._();
  const factory MetodoDeCobro(
      {required String id,
      required String descripcion,
      required DateTime lastUpdate,
      required bool deleted}) = _MetodoDeCobro;
}
