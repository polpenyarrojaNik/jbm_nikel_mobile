import 'package:freezed_annotation/freezed_annotation.dart';

part 'informe.freezed.dart';

@freezed
abstract class Informe with _$Informe {
  const factory Informe({
    required int codReport,
    required String nombre,
    required String url,
  }) = _Informe;
}
