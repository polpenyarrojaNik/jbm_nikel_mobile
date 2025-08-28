import 'package:freezed_annotation/freezed_annotation.dart';

part 'provincia.freezed.dart';

@freezed
abstract class Provincia with _$Provincia {
  const Provincia._();
  const factory Provincia({
    required String paisId,
    required String regionId,
    required String provinciaId,
    String? provincia,
    required DateTime lastUpdate,
    required bool deleted,
  }) = _Provincia;
}
