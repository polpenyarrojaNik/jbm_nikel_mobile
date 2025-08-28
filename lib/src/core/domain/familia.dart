import 'package:freezed_annotation/freezed_annotation.dart';

part 'familia.freezed.dart';

@freezed
abstract class Familia with _$Familia {
  const Familia._();
  const factory Familia({
    required String id,
    required String descripcion,
    required DateTime lastUpdate,
    required bool deleted,
  }) = _Familia;
}
