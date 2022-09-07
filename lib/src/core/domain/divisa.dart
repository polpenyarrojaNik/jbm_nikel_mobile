import 'package:freezed_annotation/freezed_annotation.dart';

part 'divisa.freezed.dart';

@freezed
class Divisa with _$Divisa {
  const Divisa._();
  const factory Divisa(
      {required String id,
      required String abv,
      required String? simbolo,
      required double? redondeo,
      required String descripcion,
      required DateTime lastUpdate,
      required bool deleted}) = _Divisa;
}
