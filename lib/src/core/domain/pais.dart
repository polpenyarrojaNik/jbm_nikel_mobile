import 'package:freezed_annotation/freezed_annotation.dart';

part 'pais.freezed.dart';

@freezed
abstract class Pais with _$Pais {
  const Pais._();
  const factory Pais({
    required String id,
    required String? isoCode,
    required String descripcion,
    required DateTime lastUpdate,
    required bool deleted,
  }) = _Pais;
}
