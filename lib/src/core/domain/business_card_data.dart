import 'package:freezed_annotation/freezed_annotation.dart';

import 'pais.dart';
import 'provincia.dart';

part 'business_card_data.freezed.dart';

@freezed
abstract class BusinessCardData with _$BusinessCardData {
  const BusinessCardData._();
  const factory BusinessCardData({
    required String? contactName,
    required String? contactSurname,
    required String? phone,
    required String? email,
    required String? streetAddress,
    required String? zipCode,
    required String? city,
    required Provincia? province,
    required Pais? country,
    required String? companyName,
  }) = _BusinessCardData;

  String get fullName {
    final name = contactName ?? '';
    final surname = contactSurname ?? '';
    return '$name $surname'.trim();
  }

  bool get hasAddressData =>
      streetAddress != null ||
      zipCode != null ||
      city != null ||
      province != null ||
      country != null;

  bool get hasContactData =>
      contactName != null ||
      contactSurname != null ||
      phone != null ||
      email != null;

  bool get hasCompanyName => companyName != null;

  bool get hasData => hasContactData || hasAddressData || hasCompanyName;
}

enum BusinessCardInputOption { qr, camera }
