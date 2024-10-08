import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/pais.dart';
import '../../../core/domain/provincia.dart';

part 'image_form_data.freezed.dart';

@freezed
class ImageFormData with _$ImageFormData {
  factory ImageFormData({
    String? name,
    String? company,
    String? cargo,
    required List<String> phoneList,
    String? email,
    // String? website,
    String? streetAddress1,
    String? zipCode,
    String? city,
    Provincia? state,
    Pais? country,
    String? referenceStreetAddress,
  }) = _ImageFormData;
}
