// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_contact_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerContactDTO _$CustomerContactDTOFromJson(Map<String, dynamic> json) {
  return _CustomerContactDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerContactDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CONTACTO_ID')
  String get contactId => throw _privateConstructorUsedError;
  @JsonKey(name: 'OBSERVACIONES')
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'APELLIDO1')
  String? get lastName1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'APELLIDO2')
  String? get lastName2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'TELEFONO1')
  String? get phone1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'TELEFONO2')
  String? get phone2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'EMAIL')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerContactDTOCopyWith<CustomerContactDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerContactDTOCopyWith<$Res> {
  factory $CustomerContactDTOCopyWith(
          CustomerContactDTO value, $Res Function(CustomerContactDTO) then) =
      _$CustomerContactDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'CONTACTO_ID') String contactId,
      @JsonKey(name: 'OBSERVACIONES') String? remarks,
      @JsonKey(name: 'NOMBRE') String? name,
      @JsonKey(name: 'APELLIDO1') String? lastName1,
      @JsonKey(name: 'APELLIDO2') String? lastName2,
      @JsonKey(name: 'TELEFONO1') String? phone1,
      @JsonKey(name: 'TELEFONO2') String? phone2,
      @JsonKey(name: 'EMAIL') String? email,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$CustomerContactDTOCopyWithImpl<$Res>
    implements $CustomerContactDTOCopyWith<$Res> {
  _$CustomerContactDTOCopyWithImpl(this._value, this._then);

  final CustomerContactDTO _value;
  // ignore: unused_field
  final $Res Function(CustomerContactDTO) _then;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? contactId = freezed,
    Object? remarks = freezed,
    Object? name = freezed,
    Object? lastName1 = freezed,
    Object? lastName2 = freezed,
    Object? phone1 = freezed,
    Object? phone2 = freezed,
    Object? email = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      contactId: contactId == freezed
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName1: lastName1 == freezed
          ? _value.lastName1
          : lastName1 // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName2: lastName2 == freezed
          ? _value.lastName2
          : lastName2 // ignore: cast_nullable_to_non_nullable
              as String?,
      phone1: phone1 == freezed
          ? _value.phone1
          : phone1 // ignore: cast_nullable_to_non_nullable
              as String?,
      phone2: phone2 == freezed
          ? _value.phone2
          : phone2 // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_CustomerContactDTOCopyWith<$Res>
    implements $CustomerContactDTOCopyWith<$Res> {
  factory _$$_CustomerContactDTOCopyWith(_$_CustomerContactDTO value,
          $Res Function(_$_CustomerContactDTO) then) =
      __$$_CustomerContactDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'CONTACTO_ID') String contactId,
      @JsonKey(name: 'OBSERVACIONES') String? remarks,
      @JsonKey(name: 'NOMBRE') String? name,
      @JsonKey(name: 'APELLIDO1') String? lastName1,
      @JsonKey(name: 'APELLIDO2') String? lastName2,
      @JsonKey(name: 'TELEFONO1') String? phone1,
      @JsonKey(name: 'TELEFONO2') String? phone2,
      @JsonKey(name: 'EMAIL') String? email,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_CustomerContactDTOCopyWithImpl<$Res>
    extends _$CustomerContactDTOCopyWithImpl<$Res>
    implements _$$_CustomerContactDTOCopyWith<$Res> {
  __$$_CustomerContactDTOCopyWithImpl(
      _$_CustomerContactDTO _value, $Res Function(_$_CustomerContactDTO) _then)
      : super(_value, (v) => _then(v as _$_CustomerContactDTO));

  @override
  _$_CustomerContactDTO get _value => super._value as _$_CustomerContactDTO;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? contactId = freezed,
    Object? remarks = freezed,
    Object? name = freezed,
    Object? lastName1 = freezed,
    Object? lastName2 = freezed,
    Object? phone1 = freezed,
    Object? phone2 = freezed,
    Object? email = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_CustomerContactDTO(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      contactId: contactId == freezed
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName1: lastName1 == freezed
          ? _value.lastName1
          : lastName1 // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName2: lastName2 == freezed
          ? _value.lastName2
          : lastName2 // ignore: cast_nullable_to_non_nullable
              as String?,
      phone1: phone1 == freezed
          ? _value.phone1
          : phone1 // ignore: cast_nullable_to_non_nullable
              as String?,
      phone2: phone2 == freezed
          ? _value.phone2
          : phone2 // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_CustomerContactDTO extends _CustomerContactDTO {
  const _$_CustomerContactDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.customerId,
      @JsonKey(name: 'CONTACTO_ID') required this.contactId,
      @JsonKey(name: 'OBSERVACIONES') this.remarks,
      @JsonKey(name: 'NOMBRE') this.name,
      @JsonKey(name: 'APELLIDO1') this.lastName1,
      @JsonKey(name: 'APELLIDO2') this.lastName2,
      @JsonKey(name: 'TELEFONO1') this.phone1,
      @JsonKey(name: 'TELEFONO2') this.phone2,
      @JsonKey(name: 'EMAIL') this.email,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_CustomerContactDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerContactDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String customerId;
  @override
  @JsonKey(name: 'CONTACTO_ID')
  final String contactId;
  @override
  @JsonKey(name: 'OBSERVACIONES')
  final String? remarks;
  @override
  @JsonKey(name: 'NOMBRE')
  final String? name;
  @override
  @JsonKey(name: 'APELLIDO1')
  final String? lastName1;
  @override
  @JsonKey(name: 'APELLIDO2')
  final String? lastName2;
  @override
  @JsonKey(name: 'TELEFONO1')
  final String? phone1;
  @override
  @JsonKey(name: 'TELEFONO2')
  final String? phone2;
  @override
  @JsonKey(name: 'EMAIL')
  final String? email;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'CustomerContactDTO(customerId: $customerId, contactId: $contactId, remarks: $remarks, name: $name, lastName1: $lastName1, lastName2: $lastName2, phone1: $phone1, phone2: $phone2, email: $email, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerContactDTO &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.contactId, contactId) &&
            const DeepCollectionEquality().equals(other.remarks, remarks) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.lastName1, lastName1) &&
            const DeepCollectionEquality().equals(other.lastName2, lastName2) &&
            const DeepCollectionEquality().equals(other.phone1, phone1) &&
            const DeepCollectionEquality().equals(other.phone2, phone2) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(contactId),
      const DeepCollectionEquality().hash(remarks),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(lastName1),
      const DeepCollectionEquality().hash(lastName2),
      const DeepCollectionEquality().hash(phone1),
      const DeepCollectionEquality().hash(phone2),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerContactDTOCopyWith<_$_CustomerContactDTO> get copyWith =>
      __$$_CustomerContactDTOCopyWithImpl<_$_CustomerContactDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerContactDTOToJson(
      this,
    );
  }
}

abstract class _CustomerContactDTO extends CustomerContactDTO {
  const factory _CustomerContactDTO(
      {@JsonKey(name: 'CLIENTE_ID') required final String customerId,
      @JsonKey(name: 'CONTACTO_ID') required final String contactId,
      @JsonKey(name: 'OBSERVACIONES') final String? remarks,
      @JsonKey(name: 'NOMBRE') final String? name,
      @JsonKey(name: 'APELLIDO1') final String? lastName1,
      @JsonKey(name: 'APELLIDO2') final String? lastName2,
      @JsonKey(name: 'TELEFONO1') final String? phone1,
      @JsonKey(name: 'TELEFONO2') final String? phone2,
      @JsonKey(name: 'EMAIL') final String? email,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_CustomerContactDTO;
  const _CustomerContactDTO._() : super._();

  factory _CustomerContactDTO.fromJson(Map<String, dynamic> json) =
      _$_CustomerContactDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId;
  @override
  @JsonKey(name: 'CONTACTO_ID')
  String get contactId;
  @override
  @JsonKey(name: 'OBSERVACIONES')
  String? get remarks;
  @override
  @JsonKey(name: 'NOMBRE')
  String? get name;
  @override
  @JsonKey(name: 'APELLIDO1')
  String? get lastName1;
  @override
  @JsonKey(name: 'APELLIDO2')
  String? get lastName2;
  @override
  @JsonKey(name: 'TELEFONO1')
  String? get phone1;
  @override
  @JsonKey(name: 'TELEFONO2')
  String? get phone2;
  @override
  @JsonKey(name: 'EMAIL')
  String? get email;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerContactDTOCopyWith<_$_CustomerContactDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
