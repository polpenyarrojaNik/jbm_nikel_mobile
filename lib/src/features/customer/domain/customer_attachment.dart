import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_attachment.freezed.dart';

@freezed
class CustomerAttachment with _$CustomerAttachment {
  const CustomerAttachment._();
  const factory CustomerAttachment({
    required String customerId,
    required String attachmentName,
  }) = _CustomerAttachment;
}
