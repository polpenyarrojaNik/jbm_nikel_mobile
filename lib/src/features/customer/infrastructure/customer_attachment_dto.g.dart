// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_attachment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerAttachmentDTO _$$_CustomerAttachmentDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerAttachmentDTO(
      customerId: json['CLIENTE_ID'] as String,
      attachmentName: json['NOMBRE_ARCHIVO'] as String,
    );

Map<String, dynamic> _$$_CustomerAttachmentDTOToJson(
        _$_CustomerAttachmentDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.customerId,
      'NOMBRE_ARCHIVO': instance.attachmentName,
    };
