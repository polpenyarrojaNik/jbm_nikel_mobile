import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/customer/domain/customer_contact.dart';

part 'customer_contact_dto.freezed.dart';
part 'customer_contact_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class CustomerContactDTO
    with _$CustomerContactDTO
    implements Insertable<CustomerContactDTO> {
  const CustomerContactDTO._();
  const factory CustomerContactDTO({
    @JsonKey(name: 'CLIENTE_ID') required String customerId,
    @JsonKey(name: 'CONTACTO_ID') required String contactId,
    @JsonKey(name: 'OBSERVACIONES') String? remarks,
    @JsonKey(name: 'NOMBRE') String? name,
    @JsonKey(name: 'APELLIDO1') String? lastName1,
    @JsonKey(name: 'APELLIDO2') String? lastName2,
    @JsonKey(name: 'TELEFONO1') String? phone1,
    @JsonKey(name: 'TELEFONO2') String? phone2,
    @JsonKey(name: 'EMAIL') String? email,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _CustomerContactDTO;

  factory CustomerContactDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerContactDTOFromJson(json);

  CustomerContact toDomain() {
    return CustomerContact(
      customerId: customerId,
      contactId: contactId,
      remarks: remarks,
      name: name,
      lastName1: lastName1,
      lastName2: lastName2,
      phone1: phone1,
      phone2: phone2,
      email: email,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return CustomerContactTableCompanion(
      customerId: Value(customerId),
      contactId: Value(contactId),
      remarks: Value(remarks),
      name: Value(name),
      lastName1: Value(lastName1),
      lastName2: Value(lastName2),
      phone1: Value(phone1),
      phone2: Value(phone2),
      email: Value(email),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(CustomerContactDTO)
class CustomerContactTable extends Table {
  @override
  String get tableName => 'CLIENTES_CONTACTOS';

  @override
  Set<Column> get primaryKey => {customerId, contactId};

  TextColumn get customerId => text().named('CLIENTE_ID')();
  TextColumn get contactId => text().named('CONTACTO_ID')();
  TextColumn get remarks => text().nullable().named('OBSERVACIONES')();
  TextColumn get name => text().nullable().named('NOMBRE')();
  TextColumn get lastName1 => text().nullable().named('APELLIDO1')();
  TextColumn get lastName2 => text().nullable().named('APELLIDO12')();
  TextColumn get phone1 => text().nullable().named('TELEFONO1')();
  TextColumn get phone2 => text().nullable().named('TELEFONO2')();
  TextColumn get email => text().nullable().named('EMAIL')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
