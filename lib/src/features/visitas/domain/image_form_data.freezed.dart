// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_form_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageFormData {
  String? get name => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get cargo => throw _privateConstructorUsedError;
  List<String> get phoneList => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError; // String? website,
  String? get streetAddress1 => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  Provincia? get state => throw _privateConstructorUsedError;
  Pais? get country => throw _privateConstructorUsedError;
  String? get referenceStreetAddress => throw _privateConstructorUsedError;

  /// Create a copy of ImageFormData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageFormDataCopyWith<ImageFormData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageFormDataCopyWith<$Res> {
  factory $ImageFormDataCopyWith(
          ImageFormData value, $Res Function(ImageFormData) then) =
      _$ImageFormDataCopyWithImpl<$Res, ImageFormData>;
  @useResult
  $Res call(
      {String? name,
      String? company,
      String? cargo,
      List<String> phoneList,
      String? email,
      String? streetAddress1,
      String? zipCode,
      String? city,
      Provincia? state,
      Pais? country,
      String? referenceStreetAddress});

  $ProvinciaCopyWith<$Res>? get state;
  $PaisCopyWith<$Res>? get country;
}

/// @nodoc
class _$ImageFormDataCopyWithImpl<$Res, $Val extends ImageFormData>
    implements $ImageFormDataCopyWith<$Res> {
  _$ImageFormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageFormData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? company = freezed,
    Object? cargo = freezed,
    Object? phoneList = null,
    Object? email = freezed,
    Object? streetAddress1 = freezed,
    Object? zipCode = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? referenceStreetAddress = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      cargo: freezed == cargo
          ? _value.cargo
          : cargo // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneList: null == phoneList
          ? _value.phoneList
          : phoneList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress1: freezed == streetAddress1
          ? _value.streetAddress1
          : streetAddress1 // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as Provincia?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Pais?,
      referenceStreetAddress: freezed == referenceStreetAddress
          ? _value.referenceStreetAddress
          : referenceStreetAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ImageFormData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProvinciaCopyWith<$Res>? get state {
    if (_value.state == null) {
      return null;
    }

    return $ProvinciaCopyWith<$Res>(_value.state!, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }

  /// Create a copy of ImageFormData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaisCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $PaisCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImageFormDataImplCopyWith<$Res>
    implements $ImageFormDataCopyWith<$Res> {
  factory _$$ImageFormDataImplCopyWith(
          _$ImageFormDataImpl value, $Res Function(_$ImageFormDataImpl) then) =
      __$$ImageFormDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? company,
      String? cargo,
      List<String> phoneList,
      String? email,
      String? streetAddress1,
      String? zipCode,
      String? city,
      Provincia? state,
      Pais? country,
      String? referenceStreetAddress});

  @override
  $ProvinciaCopyWith<$Res>? get state;
  @override
  $PaisCopyWith<$Res>? get country;
}

/// @nodoc
class __$$ImageFormDataImplCopyWithImpl<$Res>
    extends _$ImageFormDataCopyWithImpl<$Res, _$ImageFormDataImpl>
    implements _$$ImageFormDataImplCopyWith<$Res> {
  __$$ImageFormDataImplCopyWithImpl(
      _$ImageFormDataImpl _value, $Res Function(_$ImageFormDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageFormData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? company = freezed,
    Object? cargo = freezed,
    Object? phoneList = null,
    Object? email = freezed,
    Object? streetAddress1 = freezed,
    Object? zipCode = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? referenceStreetAddress = freezed,
  }) {
    return _then(_$ImageFormDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      cargo: freezed == cargo
          ? _value.cargo
          : cargo // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneList: null == phoneList
          ? _value._phoneList
          : phoneList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress1: freezed == streetAddress1
          ? _value.streetAddress1
          : streetAddress1 // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as Provincia?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Pais?,
      referenceStreetAddress: freezed == referenceStreetAddress
          ? _value.referenceStreetAddress
          : referenceStreetAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ImageFormDataImpl implements _ImageFormData {
  _$ImageFormDataImpl(
      {this.name,
      this.company,
      this.cargo,
      required final List<String> phoneList,
      this.email,
      this.streetAddress1,
      this.zipCode,
      this.city,
      this.state,
      this.country,
      this.referenceStreetAddress})
      : _phoneList = phoneList;

  @override
  final String? name;
  @override
  final String? company;
  @override
  final String? cargo;
  final List<String> _phoneList;
  @override
  List<String> get phoneList {
    if (_phoneList is EqualUnmodifiableListView) return _phoneList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phoneList);
  }

  @override
  final String? email;
// String? website,
  @override
  final String? streetAddress1;
  @override
  final String? zipCode;
  @override
  final String? city;
  @override
  final Provincia? state;
  @override
  final Pais? country;
  @override
  final String? referenceStreetAddress;

  @override
  String toString() {
    return 'ImageFormData(name: $name, company: $company, cargo: $cargo, phoneList: $phoneList, email: $email, streetAddress1: $streetAddress1, zipCode: $zipCode, city: $city, state: $state, country: $country, referenceStreetAddress: $referenceStreetAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageFormDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.cargo, cargo) || other.cargo == cargo) &&
            const DeepCollectionEquality()
                .equals(other._phoneList, _phoneList) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.streetAddress1, streetAddress1) ||
                other.streetAddress1 == streetAddress1) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.referenceStreetAddress, referenceStreetAddress) ||
                other.referenceStreetAddress == referenceStreetAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      company,
      cargo,
      const DeepCollectionEquality().hash(_phoneList),
      email,
      streetAddress1,
      zipCode,
      city,
      state,
      country,
      referenceStreetAddress);

  /// Create a copy of ImageFormData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageFormDataImplCopyWith<_$ImageFormDataImpl> get copyWith =>
      __$$ImageFormDataImplCopyWithImpl<_$ImageFormDataImpl>(this, _$identity);
}

abstract class _ImageFormData implements ImageFormData {
  factory _ImageFormData(
      {final String? name,
      final String? company,
      final String? cargo,
      required final List<String> phoneList,
      final String? email,
      final String? streetAddress1,
      final String? zipCode,
      final String? city,
      final Provincia? state,
      final Pais? country,
      final String? referenceStreetAddress}) = _$ImageFormDataImpl;

  @override
  String? get name;
  @override
  String? get company;
  @override
  String? get cargo;
  @override
  List<String> get phoneList;
  @override
  String? get email; // String? website,
  @override
  String? get streetAddress1;
  @override
  String? get zipCode;
  @override
  String? get city;
  @override
  Provincia? get state;
  @override
  Pais? get country;
  @override
  String? get referenceStreetAddress;

  /// Create a copy of ImageFormData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageFormDataImplCopyWith<_$ImageFormDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
