import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_contact.freezed.dart';

@freezed
class CustomerContact with _$CustomerContact {
  const CustomerContact._();
  const factory CustomerContact(
      {required String customerId,
      required String contactId,
      String? remarks,
      String? name,
      String? lastName1,
      String? lastName2,
      String? phone1,
      String? phone2,
      String? email,
      required DateTime lastUpdated,
      required bool deleted}) = _CustomerContact;
}
