import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/informe.dart';

part 'informe_dto.freezed.dart';
part 'informe_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
abstract class InformeDTO with _$InformeDTO {
  const InformeDTO._();
  const factory InformeDTO({
    @JsonKey(name: 'COD_REPORT') required int codReport,
    @JsonKey(name: 'NOMBRE') required String nombre,
    @JsonKey(name: 'URL') required String url,
  }) = _InformeDTO;

  factory InformeDTO.fromJson(Map<String, dynamic> json) =>
      _$InformeDTOFromJson(json);

  Informe toDomain() {
    return Informe(codReport: codReport, nombre: nombre, url: url);
  }
}
