// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ocr_recognized_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OcrRecognizedText _$OcrRecognizedTextFromJson(Map<String, dynamic> json) =>
    _OcrRecognizedText(
      json['TEXT'] as String,
      $enumDecode(_$RecognizedTextTypeEnumMap, json['TIPO']),
      dischargeDate:
          json['ORDEN_TIPO'] == null
              ? null
              : DateTime.parse(json['ORDEN_TIPO'] as String),
      telfText: json['TELF_TEXT'] as String?,
      emailText: json['EMAIL_TEXT'] as String?,
      websiteText: json['WEBSITE_TEXT'] as String?,
    );

Map<String, dynamic> _$OcrRecognizedTextToJson(_OcrRecognizedText instance) =>
    <String, dynamic>{
      'TEXT': instance.text,
      'TIPO': _$RecognizedTextTypeEnumMap[instance.type]!,
      'ORDEN_TIPO': instance.dischargeDate?.toIso8601String(),
      'TELF_TEXT': instance.telfText,
      'EMAIL_TEXT': instance.emailText,
      'WEBSITE_TEXT': instance.websiteText,
    };

const _$RecognizedTextTypeEnumMap = {
  RecognizedTextType.name: 'name',
  RecognizedTextType.company: 'company',
  RecognizedTextType.cargo: 'cargo',
  RecognizedTextType.address: 'address',
  RecognizedTextType.telf: 'telf',
  RecognizedTextType.email: 'email',
  RecognizedTextType.website: 'website',
  RecognizedTextType.unknown: 'unknown',
};
