// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'recognized_text_type.dart';

part 'ocr_recognized_text.freezed.dart';
part 'ocr_recognized_text.g.dart';

@freezed
abstract class OcrRecognizedText with _$OcrRecognizedText {
  @JsonSerializable(explicitToJson: true)
  factory OcrRecognizedText(
    @JsonKey(name: 'TEXT') String text,
    @JsonKey(name: 'TIPO') RecognizedTextType type, {
    @JsonKey(name: 'ORDEN_TIPO') DateTime? dischargeDate,
    @JsonKey(name: 'TELF_TEXT') String? telfText,
    @JsonKey(name: 'EMAIL_TEXT') String? emailText,
    @JsonKey(name: 'WEBSITE_TEXT') String? websiteText,
  }) = _OcrRecognizedText;

  const OcrRecognizedText._();

  factory OcrRecognizedText.fromJson(Map<String, dynamic> json) =>
      _$OcrRecognizedTextFromJson(json);
}
