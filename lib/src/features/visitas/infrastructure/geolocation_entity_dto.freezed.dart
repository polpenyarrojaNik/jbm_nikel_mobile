// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geolocation_entity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeolocationEntityDTO _$GeolocationEntityDTOFromJson(Map<String, dynamic> json) {
  return _GeolocationEntityDTO.fromJson(json);
}

/// @nodoc
mixin _$GeolocationEntityDTO {
  @JsonKey(name: 'formattedAddress')
  String get formattedAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'streetName')
  String get streetName => throw _privateConstructorUsedError;
  @JsonKey(name: 'streetNumber')
  String? get streetNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'countryCode')
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'zipcode')
  String get zipCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'administrativeLevels')
  AdministrativeLevelsDTO? get advinistrativeLevels =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'extra')
  ExtraDTO? get extra => throw _privateConstructorUsedError;

  /// Serializes this GeolocationEntityDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeolocationEntityDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeolocationEntityDTOCopyWith<GeolocationEntityDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeolocationEntityDTOCopyWith<$Res> {
  factory $GeolocationEntityDTOCopyWith(GeolocationEntityDTO value,
          $Res Function(GeolocationEntityDTO) then) =
      _$GeolocationEntityDTOCopyWithImpl<$Res, GeolocationEntityDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'formattedAddress') String formattedAddress,
      @JsonKey(name: 'streetName') String streetName,
      @JsonKey(name: 'streetNumber') String? streetNumber,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'countryCode') String countryCode,
      @JsonKey(name: 'zipcode') String zipCode,
      @JsonKey(name: 'administrativeLevels')
      AdministrativeLevelsDTO? advinistrativeLevels,
      @JsonKey(name: 'extra') ExtraDTO? extra});

  $AdministrativeLevelsDTOCopyWith<$Res>? get advinistrativeLevels;
  $ExtraDTOCopyWith<$Res>? get extra;
}

/// @nodoc
class _$GeolocationEntityDTOCopyWithImpl<$Res,
        $Val extends GeolocationEntityDTO>
    implements $GeolocationEntityDTOCopyWith<$Res> {
  _$GeolocationEntityDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeolocationEntityDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formattedAddress = null,
    Object? streetName = null,
    Object? streetNumber = freezed,
    Object? city = freezed,
    Object? countryCode = null,
    Object? zipCode = null,
    Object? advinistrativeLevels = freezed,
    Object? extra = freezed,
  }) {
    return _then(_value.copyWith(
      formattedAddress: null == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      streetName: null == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      streetNumber: freezed == streetNumber
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      advinistrativeLevels: freezed == advinistrativeLevels
          ? _value.advinistrativeLevels
          : advinistrativeLevels // ignore: cast_nullable_to_non_nullable
              as AdministrativeLevelsDTO?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as ExtraDTO?,
    ) as $Val);
  }

  /// Create a copy of GeolocationEntityDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdministrativeLevelsDTOCopyWith<$Res>? get advinistrativeLevels {
    if (_value.advinistrativeLevels == null) {
      return null;
    }

    return $AdministrativeLevelsDTOCopyWith<$Res>(_value.advinistrativeLevels!,
        (value) {
      return _then(_value.copyWith(advinistrativeLevels: value) as $Val);
    });
  }

  /// Create a copy of GeolocationEntityDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtraDTOCopyWith<$Res>? get extra {
    if (_value.extra == null) {
      return null;
    }

    return $ExtraDTOCopyWith<$Res>(_value.extra!, (value) {
      return _then(_value.copyWith(extra: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GeolocationEntityDTOImplCopyWith<$Res>
    implements $GeolocationEntityDTOCopyWith<$Res> {
  factory _$$GeolocationEntityDTOImplCopyWith(_$GeolocationEntityDTOImpl value,
          $Res Function(_$GeolocationEntityDTOImpl) then) =
      __$$GeolocationEntityDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'formattedAddress') String formattedAddress,
      @JsonKey(name: 'streetName') String streetName,
      @JsonKey(name: 'streetNumber') String? streetNumber,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'countryCode') String countryCode,
      @JsonKey(name: 'zipcode') String zipCode,
      @JsonKey(name: 'administrativeLevels')
      AdministrativeLevelsDTO? advinistrativeLevels,
      @JsonKey(name: 'extra') ExtraDTO? extra});

  @override
  $AdministrativeLevelsDTOCopyWith<$Res>? get advinistrativeLevels;
  @override
  $ExtraDTOCopyWith<$Res>? get extra;
}

/// @nodoc
class __$$GeolocationEntityDTOImplCopyWithImpl<$Res>
    extends _$GeolocationEntityDTOCopyWithImpl<$Res, _$GeolocationEntityDTOImpl>
    implements _$$GeolocationEntityDTOImplCopyWith<$Res> {
  __$$GeolocationEntityDTOImplCopyWithImpl(_$GeolocationEntityDTOImpl _value,
      $Res Function(_$GeolocationEntityDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeolocationEntityDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formattedAddress = null,
    Object? streetName = null,
    Object? streetNumber = freezed,
    Object? city = freezed,
    Object? countryCode = null,
    Object? zipCode = null,
    Object? advinistrativeLevels = freezed,
    Object? extra = freezed,
  }) {
    return _then(_$GeolocationEntityDTOImpl(
      formattedAddress: null == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      streetName: null == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      streetNumber: freezed == streetNumber
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      advinistrativeLevels: freezed == advinistrativeLevels
          ? _value.advinistrativeLevels
          : advinistrativeLevels // ignore: cast_nullable_to_non_nullable
              as AdministrativeLevelsDTO?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as ExtraDTO?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$GeolocationEntityDTOImpl extends _GeolocationEntityDTO {
  _$GeolocationEntityDTOImpl(
      {@JsonKey(name: 'formattedAddress') required this.formattedAddress,
      @JsonKey(name: 'streetName') required this.streetName,
      @JsonKey(name: 'streetNumber') required this.streetNumber,
      @JsonKey(name: 'city') required this.city,
      @JsonKey(name: 'countryCode') required this.countryCode,
      @JsonKey(name: 'zipcode') required this.zipCode,
      @JsonKey(name: 'administrativeLevels') required this.advinistrativeLevels,
      @JsonKey(name: 'extra') required this.extra})
      : super._();

  factory _$GeolocationEntityDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeolocationEntityDTOImplFromJson(json);

  @override
  @JsonKey(name: 'formattedAddress')
  final String formattedAddress;
  @override
  @JsonKey(name: 'streetName')
  final String streetName;
  @override
  @JsonKey(name: 'streetNumber')
  final String? streetNumber;
  @override
  @JsonKey(name: 'city')
  final String? city;
  @override
  @JsonKey(name: 'countryCode')
  final String countryCode;
  @override
  @JsonKey(name: 'zipcode')
  final String zipCode;
  @override
  @JsonKey(name: 'administrativeLevels')
  final AdministrativeLevelsDTO? advinistrativeLevels;
  @override
  @JsonKey(name: 'extra')
  final ExtraDTO? extra;

  @override
  String toString() {
    return 'GeolocationEntityDTO(formattedAddress: $formattedAddress, streetName: $streetName, streetNumber: $streetNumber, city: $city, countryCode: $countryCode, zipCode: $zipCode, advinistrativeLevels: $advinistrativeLevels, extra: $extra)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeolocationEntityDTOImpl &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            (identical(other.streetName, streetName) ||
                other.streetName == streetName) &&
            (identical(other.streetNumber, streetNumber) ||
                other.streetNumber == streetNumber) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.advinistrativeLevels, advinistrativeLevels) ||
                other.advinistrativeLevels == advinistrativeLevels) &&
            (identical(other.extra, extra) || other.extra == extra));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, formattedAddress, streetName,
      streetNumber, city, countryCode, zipCode, advinistrativeLevels, extra);

  /// Create a copy of GeolocationEntityDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeolocationEntityDTOImplCopyWith<_$GeolocationEntityDTOImpl>
      get copyWith =>
          __$$GeolocationEntityDTOImplCopyWithImpl<_$GeolocationEntityDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeolocationEntityDTOImplToJson(
      this,
    );
  }
}

abstract class _GeolocationEntityDTO extends GeolocationEntityDTO {
  factory _GeolocationEntityDTO(
          {@JsonKey(name: 'formattedAddress')
          required final String formattedAddress,
          @JsonKey(name: 'streetName') required final String streetName,
          @JsonKey(name: 'streetNumber') required final String? streetNumber,
          @JsonKey(name: 'city') required final String? city,
          @JsonKey(name: 'countryCode') required final String countryCode,
          @JsonKey(name: 'zipcode') required final String zipCode,
          @JsonKey(name: 'administrativeLevels')
          required final AdministrativeLevelsDTO? advinistrativeLevels,
          @JsonKey(name: 'extra') required final ExtraDTO? extra}) =
      _$GeolocationEntityDTOImpl;
  _GeolocationEntityDTO._() : super._();

  factory _GeolocationEntityDTO.fromJson(Map<String, dynamic> json) =
      _$GeolocationEntityDTOImpl.fromJson;

  @override
  @JsonKey(name: 'formattedAddress')
  String get formattedAddress;
  @override
  @JsonKey(name: 'streetName')
  String get streetName;
  @override
  @JsonKey(name: 'streetNumber')
  String? get streetNumber;
  @override
  @JsonKey(name: 'city')
  String? get city;
  @override
  @JsonKey(name: 'countryCode')
  String get countryCode;
  @override
  @JsonKey(name: 'zipcode')
  String get zipCode;
  @override
  @JsonKey(name: 'administrativeLevels')
  AdministrativeLevelsDTO? get advinistrativeLevels;
  @override
  @JsonKey(name: 'extra')
  ExtraDTO? get extra;

  /// Create a copy of GeolocationEntityDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeolocationEntityDTOImplCopyWith<_$GeolocationEntityDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdministrativeLevelsDTO _$AdministrativeLevelsDTOFromJson(
    Map<String, dynamic> json) {
  return _AdministrativeLevelsDTO.fromJson(json);
}

/// @nodoc
mixin _$AdministrativeLevelsDTO {
  @JsonKey(name: 'level2long')
  String? get state => throw _privateConstructorUsedError;

  /// Serializes this AdministrativeLevelsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdministrativeLevelsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdministrativeLevelsDTOCopyWith<AdministrativeLevelsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdministrativeLevelsDTOCopyWith<$Res> {
  factory $AdministrativeLevelsDTOCopyWith(AdministrativeLevelsDTO value,
          $Res Function(AdministrativeLevelsDTO) then) =
      _$AdministrativeLevelsDTOCopyWithImpl<$Res, AdministrativeLevelsDTO>;
  @useResult
  $Res call({@JsonKey(name: 'level2long') String? state});
}

/// @nodoc
class _$AdministrativeLevelsDTOCopyWithImpl<$Res,
        $Val extends AdministrativeLevelsDTO>
    implements $AdministrativeLevelsDTOCopyWith<$Res> {
  _$AdministrativeLevelsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdministrativeLevelsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdministrativeLevelsDTOImplCopyWith<$Res>
    implements $AdministrativeLevelsDTOCopyWith<$Res> {
  factory _$$AdministrativeLevelsDTOImplCopyWith(
          _$AdministrativeLevelsDTOImpl value,
          $Res Function(_$AdministrativeLevelsDTOImpl) then) =
      __$$AdministrativeLevelsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'level2long') String? state});
}

/// @nodoc
class __$$AdministrativeLevelsDTOImplCopyWithImpl<$Res>
    extends _$AdministrativeLevelsDTOCopyWithImpl<$Res,
        _$AdministrativeLevelsDTOImpl>
    implements _$$AdministrativeLevelsDTOImplCopyWith<$Res> {
  __$$AdministrativeLevelsDTOImplCopyWithImpl(
      _$AdministrativeLevelsDTOImpl _value,
      $Res Function(_$AdministrativeLevelsDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdministrativeLevelsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_$AdministrativeLevelsDTOImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AdministrativeLevelsDTOImpl extends _AdministrativeLevelsDTO {
  _$AdministrativeLevelsDTOImpl(
      {@JsonKey(name: 'level2long') required this.state})
      : super._();

  factory _$AdministrativeLevelsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdministrativeLevelsDTOImplFromJson(json);

  @override
  @JsonKey(name: 'level2long')
  final String? state;

  @override
  String toString() {
    return 'AdministrativeLevelsDTO(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdministrativeLevelsDTOImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of AdministrativeLevelsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdministrativeLevelsDTOImplCopyWith<_$AdministrativeLevelsDTOImpl>
      get copyWith => __$$AdministrativeLevelsDTOImplCopyWithImpl<
          _$AdministrativeLevelsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdministrativeLevelsDTOImplToJson(
      this,
    );
  }
}

abstract class _AdministrativeLevelsDTO extends AdministrativeLevelsDTO {
  factory _AdministrativeLevelsDTO(
          {@JsonKey(name: 'level2long') required final String? state}) =
      _$AdministrativeLevelsDTOImpl;
  _AdministrativeLevelsDTO._() : super._();

  factory _AdministrativeLevelsDTO.fromJson(Map<String, dynamic> json) =
      _$AdministrativeLevelsDTOImpl.fromJson;

  @override
  @JsonKey(name: 'level2long')
  String? get state;

  /// Create a copy of AdministrativeLevelsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdministrativeLevelsDTOImplCopyWith<_$AdministrativeLevelsDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExtraDTO _$ExtraDTOFromJson(Map<String, dynamic> json) {
  return _ExtraDTO.fromJson(json);
}

/// @nodoc
mixin _$ExtraDTO {
  @JsonKey(name: 'subpremise')
  String? get subpremise => throw _privateConstructorUsedError;

  /// Serializes this ExtraDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExtraDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtraDTOCopyWith<ExtraDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraDTOCopyWith<$Res> {
  factory $ExtraDTOCopyWith(ExtraDTO value, $Res Function(ExtraDTO) then) =
      _$ExtraDTOCopyWithImpl<$Res, ExtraDTO>;
  @useResult
  $Res call({@JsonKey(name: 'subpremise') String? subpremise});
}

/// @nodoc
class _$ExtraDTOCopyWithImpl<$Res, $Val extends ExtraDTO>
    implements $ExtraDTOCopyWith<$Res> {
  _$ExtraDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExtraDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subpremise = freezed,
  }) {
    return _then(_value.copyWith(
      subpremise: freezed == subpremise
          ? _value.subpremise
          : subpremise // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtraDTOImplCopyWith<$Res>
    implements $ExtraDTOCopyWith<$Res> {
  factory _$$ExtraDTOImplCopyWith(
          _$ExtraDTOImpl value, $Res Function(_$ExtraDTOImpl) then) =
      __$$ExtraDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'subpremise') String? subpremise});
}

/// @nodoc
class __$$ExtraDTOImplCopyWithImpl<$Res>
    extends _$ExtraDTOCopyWithImpl<$Res, _$ExtraDTOImpl>
    implements _$$ExtraDTOImplCopyWith<$Res> {
  __$$ExtraDTOImplCopyWithImpl(
      _$ExtraDTOImpl _value, $Res Function(_$ExtraDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExtraDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subpremise = freezed,
  }) {
    return _then(_$ExtraDTOImpl(
      subpremise: freezed == subpremise
          ? _value.subpremise
          : subpremise // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ExtraDTOImpl extends _ExtraDTO {
  _$ExtraDTOImpl({@JsonKey(name: 'subpremise') required this.subpremise})
      : super._();

  factory _$ExtraDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtraDTOImplFromJson(json);

  @override
  @JsonKey(name: 'subpremise')
  final String? subpremise;

  @override
  String toString() {
    return 'ExtraDTO(subpremise: $subpremise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtraDTOImpl &&
            (identical(other.subpremise, subpremise) ||
                other.subpremise == subpremise));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subpremise);

  /// Create a copy of ExtraDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtraDTOImplCopyWith<_$ExtraDTOImpl> get copyWith =>
      __$$ExtraDTOImplCopyWithImpl<_$ExtraDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtraDTOImplToJson(
      this,
    );
  }
}

abstract class _ExtraDTO extends ExtraDTO {
  factory _ExtraDTO(
          {@JsonKey(name: 'subpremise') required final String? subpremise}) =
      _$ExtraDTOImpl;
  _ExtraDTO._() : super._();

  factory _ExtraDTO.fromJson(Map<String, dynamic> json) =
      _$ExtraDTOImpl.fromJson;

  @override
  @JsonKey(name: 'subpremise')
  String? get subpremise;

  /// Create a copy of ExtraDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtraDTOImplCopyWith<_$ExtraDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
