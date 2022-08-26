// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerAddressDTO _$CustomerAddressDTOFromJson(Map<String, dynamic> json) {
  return _CustomerAddressDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerAddressDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION_ID')
  String get addressId => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION1')
  String? get address1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION2')
  String? get address2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'CODIGO_POSTAL')
  String? get zipCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'POBLACION')
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'PROVINCIA')
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'PAIS_ID')
  String? get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'LATITUD')
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'LONGITUD')
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerAddressDTOCopyWith<CustomerAddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAddressDTOCopyWith<$Res> {
  factory $CustomerAddressDTOCopyWith(
          CustomerAddressDTO value, $Res Function(CustomerAddressDTO) then) =
      _$CustomerAddressDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'DIRECCION_ID') String addressId,
      @JsonKey(name: 'NOMBRE') String? name,
      @JsonKey(name: 'DIRECCION1') String? address1,
      @JsonKey(name: 'DIRECCION2') String? address2,
      @JsonKey(name: 'CODIGO_POSTAL') String? zipCode,
      @JsonKey(name: 'POBLACION') String? city,
      @JsonKey(name: 'PROVINCIA') String? state,
      @JsonKey(name: 'PAIS_ID') String? countryId,
      @JsonKey(name: 'LATITUD') double latitude,
      @JsonKey(name: 'LONGITUD') double longitude,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$CustomerAddressDTOCopyWithImpl<$Res>
    implements $CustomerAddressDTOCopyWith<$Res> {
  _$CustomerAddressDTOCopyWithImpl(this._value, this._then);

  final CustomerAddressDTO _value;
  // ignore: unused_field
  final $Res Function(CustomerAddressDTO) _then;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? addressId = freezed,
    Object? name = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? zipCode = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? countryId = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: addressId == freezed
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: address1 == freezed
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: address2 == freezed
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: zipCode == freezed
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CustomerAddressDTOCopyWith<$Res>
    implements $CustomerAddressDTOCopyWith<$Res> {
  factory _$$_CustomerAddressDTOCopyWith(_$_CustomerAddressDTO value,
          $Res Function(_$_CustomerAddressDTO) then) =
      __$$_CustomerAddressDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'DIRECCION_ID') String addressId,
      @JsonKey(name: 'NOMBRE') String? name,
      @JsonKey(name: 'DIRECCION1') String? address1,
      @JsonKey(name: 'DIRECCION2') String? address2,
      @JsonKey(name: 'CODIGO_POSTAL') String? zipCode,
      @JsonKey(name: 'POBLACION') String? city,
      @JsonKey(name: 'PROVINCIA') String? state,
      @JsonKey(name: 'PAIS_ID') String? countryId,
      @JsonKey(name: 'LATITUD') double latitude,
      @JsonKey(name: 'LONGITUD') double longitude,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_CustomerAddressDTOCopyWithImpl<$Res>
    extends _$CustomerAddressDTOCopyWithImpl<$Res>
    implements _$$_CustomerAddressDTOCopyWith<$Res> {
  __$$_CustomerAddressDTOCopyWithImpl(
      _$_CustomerAddressDTO _value, $Res Function(_$_CustomerAddressDTO) _then)
      : super(_value, (v) => _then(v as _$_CustomerAddressDTO));

  @override
  _$_CustomerAddressDTO get _value => super._value as _$_CustomerAddressDTO;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? addressId = freezed,
    Object? name = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? zipCode = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? countryId = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_CustomerAddressDTO(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: addressId == freezed
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: address1 == freezed
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: address2 == freezed
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: zipCode == freezed
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerAddressDTO extends _CustomerAddressDTO {
  const _$_CustomerAddressDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.customerId,
      @JsonKey(name: 'DIRECCION_ID') required this.addressId,
      @JsonKey(name: 'NOMBRE') this.name,
      @JsonKey(name: 'DIRECCION1') this.address1,
      @JsonKey(name: 'DIRECCION2') this.address2,
      @JsonKey(name: 'CODIGO_POSTAL') this.zipCode,
      @JsonKey(name: 'POBLACION') this.city,
      @JsonKey(name: 'PROVINCIA') this.state,
      @JsonKey(name: 'PAIS_ID') this.countryId,
      @JsonKey(name: 'LATITUD') required this.latitude,
      @JsonKey(name: 'LONGITUD') required this.longitude,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_CustomerAddressDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerAddressDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String customerId;
  @override
  @JsonKey(name: 'DIRECCION_ID')
  final String addressId;
  @override
  @JsonKey(name: 'NOMBRE')
  final String? name;
  @override
  @JsonKey(name: 'DIRECCION1')
  final String? address1;
  @override
  @JsonKey(name: 'DIRECCION2')
  final String? address2;
  @override
  @JsonKey(name: 'CODIGO_POSTAL')
  final String? zipCode;
  @override
  @JsonKey(name: 'POBLACION')
  final String? city;
  @override
  @JsonKey(name: 'PROVINCIA')
  final String? state;
  @override
  @JsonKey(name: 'PAIS_ID')
  final String? countryId;
  @override
  @JsonKey(name: 'LATITUD')
  final double latitude;
  @override
  @JsonKey(name: 'LONGITUD')
  final double longitude;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'CustomerAddressDTO(customerId: $customerId, addressId: $addressId, name: $name, address1: $address1, address2: $address2, zipCode: $zipCode, city: $city, state: $state, countryId: $countryId, latitude: $latitude, longitude: $longitude, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerAddressDTO &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.addressId, addressId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.address1, address1) &&
            const DeepCollectionEquality().equals(other.address2, address2) &&
            const DeepCollectionEquality().equals(other.zipCode, zipCode) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.countryId, countryId) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(addressId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(address1),
      const DeepCollectionEquality().hash(address2),
      const DeepCollectionEquality().hash(zipCode),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(countryId),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerAddressDTOCopyWith<_$_CustomerAddressDTO> get copyWith =>
      __$$_CustomerAddressDTOCopyWithImpl<_$_CustomerAddressDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerAddressDTOToJson(
      this,
    );
  }
}

abstract class _CustomerAddressDTO extends CustomerAddressDTO {
  const factory _CustomerAddressDTO(
      {@JsonKey(name: 'CLIENTE_ID') required final String customerId,
      @JsonKey(name: 'DIRECCION_ID') required final String addressId,
      @JsonKey(name: 'NOMBRE') final String? name,
      @JsonKey(name: 'DIRECCION1') final String? address1,
      @JsonKey(name: 'DIRECCION2') final String? address2,
      @JsonKey(name: 'CODIGO_POSTAL') final String? zipCode,
      @JsonKey(name: 'POBLACION') final String? city,
      @JsonKey(name: 'PROVINCIA') final String? state,
      @JsonKey(name: 'PAIS_ID') final String? countryId,
      @JsonKey(name: 'LATITUD') required final double latitude,
      @JsonKey(name: 'LONGITUD') required final double longitude,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_CustomerAddressDTO;
  const _CustomerAddressDTO._() : super._();

  factory _CustomerAddressDTO.fromJson(Map<String, dynamic> json) =
      _$_CustomerAddressDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId;
  @override
  @JsonKey(name: 'DIRECCION_ID')
  String get addressId;
  @override
  @JsonKey(name: 'NOMBRE')
  String? get name;
  @override
  @JsonKey(name: 'DIRECCION1')
  String? get address1;
  @override
  @JsonKey(name: 'DIRECCION2')
  String? get address2;
  @override
  @JsonKey(name: 'CODIGO_POSTAL')
  String? get zipCode;
  @override
  @JsonKey(name: 'POBLACION')
  String? get city;
  @override
  @JsonKey(name: 'PROVINCIA')
  String? get state;
  @override
  @JsonKey(name: 'PAIS_ID')
  String? get countryId;
  @override
  @JsonKey(name: 'LATITUD')
  double get latitude;
  @override
  @JsonKey(name: 'LONGITUD')
  double get longitude;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerAddressDTOCopyWith<_$_CustomerAddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
