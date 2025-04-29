// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geolocation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GeolocationEntity {
  String get streetAddress1 => throw _privateConstructorUsedError;
  String? get streetAddress2 => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  Provincia? get state => throw _privateConstructorUsedError;
  Pais? get country => throw _privateConstructorUsedError;

  /// Create a copy of GeolocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeolocationEntityCopyWith<GeolocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeolocationEntityCopyWith<$Res> {
  factory $GeolocationEntityCopyWith(
    GeolocationEntity value,
    $Res Function(GeolocationEntity) then,
  ) = _$GeolocationEntityCopyWithImpl<$Res, GeolocationEntity>;
  @useResult
  $Res call({
    String streetAddress1,
    String? streetAddress2,
    String? zipCode,
    String? city,
    Provincia? state,
    Pais? country,
  });

  $ProvinciaCopyWith<$Res>? get state;
  $PaisCopyWith<$Res>? get country;
}

/// @nodoc
class _$GeolocationEntityCopyWithImpl<$Res, $Val extends GeolocationEntity>
    implements $GeolocationEntityCopyWith<$Res> {
  _$GeolocationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeolocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetAddress1 = null,
    Object? streetAddress2 = freezed,
    Object? zipCode = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
  }) {
    return _then(
      _value.copyWith(
            streetAddress1:
                null == streetAddress1
                    ? _value.streetAddress1
                    : streetAddress1 // ignore: cast_nullable_to_non_nullable
                        as String,
            streetAddress2:
                freezed == streetAddress2
                    ? _value.streetAddress2
                    : streetAddress2 // ignore: cast_nullable_to_non_nullable
                        as String?,
            zipCode:
                freezed == zipCode
                    ? _value.zipCode
                    : zipCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            city:
                freezed == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
                        as String?,
            state:
                freezed == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as Provincia?,
            country:
                freezed == country
                    ? _value.country
                    : country // ignore: cast_nullable_to_non_nullable
                        as Pais?,
          )
          as $Val,
    );
  }

  /// Create a copy of GeolocationEntity
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

  /// Create a copy of GeolocationEntity
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
abstract class _$$GeolocationEntityImplCopyWith<$Res>
    implements $GeolocationEntityCopyWith<$Res> {
  factory _$$GeolocationEntityImplCopyWith(
    _$GeolocationEntityImpl value,
    $Res Function(_$GeolocationEntityImpl) then,
  ) = __$$GeolocationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String streetAddress1,
    String? streetAddress2,
    String? zipCode,
    String? city,
    Provincia? state,
    Pais? country,
  });

  @override
  $ProvinciaCopyWith<$Res>? get state;
  @override
  $PaisCopyWith<$Res>? get country;
}

/// @nodoc
class __$$GeolocationEntityImplCopyWithImpl<$Res>
    extends _$GeolocationEntityCopyWithImpl<$Res, _$GeolocationEntityImpl>
    implements _$$GeolocationEntityImplCopyWith<$Res> {
  __$$GeolocationEntityImplCopyWithImpl(
    _$GeolocationEntityImpl _value,
    $Res Function(_$GeolocationEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GeolocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streetAddress1 = null,
    Object? streetAddress2 = freezed,
    Object? zipCode = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
  }) {
    return _then(
      _$GeolocationEntityImpl(
        streetAddress1:
            null == streetAddress1
                ? _value.streetAddress1
                : streetAddress1 // ignore: cast_nullable_to_non_nullable
                    as String,
        streetAddress2:
            freezed == streetAddress2
                ? _value.streetAddress2
                : streetAddress2 // ignore: cast_nullable_to_non_nullable
                    as String?,
        zipCode:
            freezed == zipCode
                ? _value.zipCode
                : zipCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        city:
            freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                    as String?,
        state:
            freezed == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as Provincia?,
        country:
            freezed == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                    as Pais?,
      ),
    );
  }
}

/// @nodoc

class _$GeolocationEntityImpl extends _GeolocationEntity {
  _$GeolocationEntityImpl({
    required this.streetAddress1,
    required this.streetAddress2,
    required this.zipCode,
    required this.city,
    required this.state,
    required this.country,
  }) : super._();

  @override
  final String streetAddress1;
  @override
  final String? streetAddress2;
  @override
  final String? zipCode;
  @override
  final String? city;
  @override
  final Provincia? state;
  @override
  final Pais? country;

  @override
  String toString() {
    return 'GeolocationEntity(streetAddress1: $streetAddress1, streetAddress2: $streetAddress2, zipCode: $zipCode, city: $city, state: $state, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeolocationEntityImpl &&
            (identical(other.streetAddress1, streetAddress1) ||
                other.streetAddress1 == streetAddress1) &&
            (identical(other.streetAddress2, streetAddress2) ||
                other.streetAddress2 == streetAddress2) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    streetAddress1,
    streetAddress2,
    zipCode,
    city,
    state,
    country,
  );

  /// Create a copy of GeolocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeolocationEntityImplCopyWith<_$GeolocationEntityImpl> get copyWith =>
      __$$GeolocationEntityImplCopyWithImpl<_$GeolocationEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _GeolocationEntity extends GeolocationEntity {
  factory _GeolocationEntity({
    required final String streetAddress1,
    required final String? streetAddress2,
    required final String? zipCode,
    required final String? city,
    required final Provincia? state,
    required final Pais? country,
  }) = _$GeolocationEntityImpl;
  _GeolocationEntity._() : super._();

  @override
  String get streetAddress1;
  @override
  String? get streetAddress2;
  @override
  String? get zipCode;
  @override
  String? get city;
  @override
  Provincia? get state;
  @override
  Pais? get country;

  /// Create a copy of GeolocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeolocationEntityImplCopyWith<_$GeolocationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
