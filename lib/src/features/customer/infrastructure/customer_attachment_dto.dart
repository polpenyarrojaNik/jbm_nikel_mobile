import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/customer/domain/customer_attachment.dart';

part 'customer_attachment_dto.freezed.dart';
part 'customer_attachment_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class CustomerAttachmentDTO with _$CustomerAttachmentDTO {
  const CustomerAttachmentDTO._();
  const factory CustomerAttachmentDTO({
    @JsonKey(name: 'CLIENTE_ID') required String customerId,
    @JsonKey(name: 'NOMBRE_ARCHIVO') required String attachmentName,
  }) = _CustomerAttachmentDTO;

  factory CustomerAttachmentDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerAttachmentDTOFromJson(json);

  CustomerAttachment toDomain() {
    return CustomerAttachment(
      customerId: customerId,
      attachmentName: attachmentName,
    );
  }
}
