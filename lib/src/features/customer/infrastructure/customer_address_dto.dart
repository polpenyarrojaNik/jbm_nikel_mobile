import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/country.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/customer/domain/customer_address.dart';

import '../../../core/infrastructure/country_dto.dart';

part 'customer_address_dto.freezed.dart';
part 'customer_address_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class CustomerAddressDTO
    with _$CustomerAddressDTO
    implements Insertable<CustomerAddressDTO> {
  const CustomerAddressDTO._();
  const factory CustomerAddressDTO({
    @JsonKey(name: 'CLIENTE_ID') required String customerId,
    @JsonKey(name: 'DIRECCION_ID') required String addressId,
    @JsonKey(name: 'NOMBRE') String? name,
    @JsonKey(name: 'DIRECCION1') String? address1,
    @JsonKey(name: 'DIRECCION2') String? address2,
    @JsonKey(name: 'CODIGO_POSTAL') String? zipCode,
    @JsonKey(name: 'POBLACION') String? city,
    @JsonKey(name: 'PROVINCIA') String? state,
    @JsonKey(name: 'PAIS_ID') String? countryId,
    @JsonKey(name: 'LATITUD') required double latitude,
    @JsonKey(name: 'LONGUITUD') required double longitude,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _CustomerAddressDTO;

  factory CustomerAddressDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerAddressDTOFromJson(json);

  CustomerAddress toDomain({required Country country}) {
    return CustomerAddress(
      customerId: customerId,
      addressId: addressId,
      name: name,
      address1: address1,
      address2: address2,
      zipCode: zipCode,
      city: city,
      state: state,
      country: country,
      latitude: latitude,
      longitude: longitude,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return CustomerAddressTableCompanion(
      customerId: Value(customerId),
      addressId: Value(addressId),
      name: Value(name),
      address1: Value(address1),
      address2: Value(address2),
      zipCode: Value(zipCode),
      city: Value(city),
      state: Value(state),
      countryId: Value(countryId),
      latitude: Value(latitude),
      longitude: Value(longitude),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(CustomerAddressDTO)
class CustomerAddressTable extends Table {
  @override
  String get tableName => 'CLIENTES_DIRECCIONES_ENVIO';

  @override
  Set<Column> get primaryKey => {customerId, addressId};

  TextColumn get customerId => text().named('CLIENTE_ID')();
  TextColumn get addressId => text().named('DIRECCION_ID')();
  TextColumn get name => text().nullable().named('NOMBRE')();
  TextColumn get address1 => text().nullable().named('DIRECCION1')();
  TextColumn get address2 => text().nullable().named('DIRECCION2')();
  TextColumn get zipCode => text().nullable().named('CODIGO_POSTAL')();
  TextColumn get city => text().nullable().named('POBLACION')();
  TextColumn get state => text().nullable().named('PROVINCIA')();
  TextColumn get countryId =>
      text().nullable().references(CountryTable, #id).named('PAIS_ID')();
  RealColumn get latitude => real().named('LATITUD')();
  RealColumn get longitude => real().named('LONGITUD')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
