// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geolocation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GeolocationEntity {

 String get streetAddress1; String? get streetAddress2; String? get zipCode; String? get city; Provincia? get state; Pais? get country;
/// Create a copy of GeolocationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeolocationEntityCopyWith<GeolocationEntity> get copyWith => _$GeolocationEntityCopyWithImpl<GeolocationEntity>(this as GeolocationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeolocationEntity&&(identical(other.streetAddress1, streetAddress1) || other.streetAddress1 == streetAddress1)&&(identical(other.streetAddress2, streetAddress2) || other.streetAddress2 == streetAddress2)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country));
}


@override
int get hashCode => Object.hash(runtimeType,streetAddress1,streetAddress2,zipCode,city,state,country);

@override
String toString() {
  return 'GeolocationEntity(streetAddress1: $streetAddress1, streetAddress2: $streetAddress2, zipCode: $zipCode, city: $city, state: $state, country: $country)';
}


}

/// @nodoc
abstract mixin class $GeolocationEntityCopyWith<$Res>  {
  factory $GeolocationEntityCopyWith(GeolocationEntity value, $Res Function(GeolocationEntity) _then) = _$GeolocationEntityCopyWithImpl;
@useResult
$Res call({
 String streetAddress1, String? streetAddress2, String? zipCode, String? city, Provincia? state, Pais? country
});


$ProvinciaCopyWith<$Res>? get state;$PaisCopyWith<$Res>? get country;

}
/// @nodoc
class _$GeolocationEntityCopyWithImpl<$Res>
    implements $GeolocationEntityCopyWith<$Res> {
  _$GeolocationEntityCopyWithImpl(this._self, this._then);

  final GeolocationEntity _self;
  final $Res Function(GeolocationEntity) _then;

/// Create a copy of GeolocationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? streetAddress1 = null,Object? streetAddress2 = freezed,Object? zipCode = freezed,Object? city = freezed,Object? state = freezed,Object? country = freezed,}) {
  return _then(_self.copyWith(
streetAddress1: null == streetAddress1 ? _self.streetAddress1 : streetAddress1 // ignore: cast_nullable_to_non_nullable
as String,streetAddress2: freezed == streetAddress2 ? _self.streetAddress2 : streetAddress2 // ignore: cast_nullable_to_non_nullable
as String?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as Provincia?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as Pais?,
  ));
}
/// Create a copy of GeolocationEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvinciaCopyWith<$Res>? get state {
    if (_self.state == null) {
    return null;
  }

  return $ProvinciaCopyWith<$Res>(_self.state!, (value) {
    return _then(_self.copyWith(state: value));
  });
}/// Create a copy of GeolocationEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaisCopyWith<$Res>? get country {
    if (_self.country == null) {
    return null;
  }

  return $PaisCopyWith<$Res>(_self.country!, (value) {
    return _then(_self.copyWith(country: value));
  });
}
}


/// Adds pattern-matching-related methods to [GeolocationEntity].
extension GeolocationEntityPatterns on GeolocationEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeolocationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeolocationEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeolocationEntity value)  $default,){
final _that = this;
switch (_that) {
case _GeolocationEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeolocationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _GeolocationEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String streetAddress1,  String? streetAddress2,  String? zipCode,  String? city,  Provincia? state,  Pais? country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeolocationEntity() when $default != null:
return $default(_that.streetAddress1,_that.streetAddress2,_that.zipCode,_that.city,_that.state,_that.country);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String streetAddress1,  String? streetAddress2,  String? zipCode,  String? city,  Provincia? state,  Pais? country)  $default,) {final _that = this;
switch (_that) {
case _GeolocationEntity():
return $default(_that.streetAddress1,_that.streetAddress2,_that.zipCode,_that.city,_that.state,_that.country);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String streetAddress1,  String? streetAddress2,  String? zipCode,  String? city,  Provincia? state,  Pais? country)?  $default,) {final _that = this;
switch (_that) {
case _GeolocationEntity() when $default != null:
return $default(_that.streetAddress1,_that.streetAddress2,_that.zipCode,_that.city,_that.state,_that.country);case _:
  return null;

}
}

}

/// @nodoc


class _GeolocationEntity extends GeolocationEntity {
   _GeolocationEntity({required this.streetAddress1, required this.streetAddress2, required this.zipCode, required this.city, required this.state, required this.country}): super._();
  

@override final  String streetAddress1;
@override final  String? streetAddress2;
@override final  String? zipCode;
@override final  String? city;
@override final  Provincia? state;
@override final  Pais? country;

/// Create a copy of GeolocationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeolocationEntityCopyWith<_GeolocationEntity> get copyWith => __$GeolocationEntityCopyWithImpl<_GeolocationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeolocationEntity&&(identical(other.streetAddress1, streetAddress1) || other.streetAddress1 == streetAddress1)&&(identical(other.streetAddress2, streetAddress2) || other.streetAddress2 == streetAddress2)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country));
}


@override
int get hashCode => Object.hash(runtimeType,streetAddress1,streetAddress2,zipCode,city,state,country);

@override
String toString() {
  return 'GeolocationEntity(streetAddress1: $streetAddress1, streetAddress2: $streetAddress2, zipCode: $zipCode, city: $city, state: $state, country: $country)';
}


}

/// @nodoc
abstract mixin class _$GeolocationEntityCopyWith<$Res> implements $GeolocationEntityCopyWith<$Res> {
  factory _$GeolocationEntityCopyWith(_GeolocationEntity value, $Res Function(_GeolocationEntity) _then) = __$GeolocationEntityCopyWithImpl;
@override @useResult
$Res call({
 String streetAddress1, String? streetAddress2, String? zipCode, String? city, Provincia? state, Pais? country
});


@override $ProvinciaCopyWith<$Res>? get state;@override $PaisCopyWith<$Res>? get country;

}
/// @nodoc
class __$GeolocationEntityCopyWithImpl<$Res>
    implements _$GeolocationEntityCopyWith<$Res> {
  __$GeolocationEntityCopyWithImpl(this._self, this._then);

  final _GeolocationEntity _self;
  final $Res Function(_GeolocationEntity) _then;

/// Create a copy of GeolocationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? streetAddress1 = null,Object? streetAddress2 = freezed,Object? zipCode = freezed,Object? city = freezed,Object? state = freezed,Object? country = freezed,}) {
  return _then(_GeolocationEntity(
streetAddress1: null == streetAddress1 ? _self.streetAddress1 : streetAddress1 // ignore: cast_nullable_to_non_nullable
as String,streetAddress2: freezed == streetAddress2 ? _self.streetAddress2 : streetAddress2 // ignore: cast_nullable_to_non_nullable
as String?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as Provincia?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as Pais?,
  ));
}

/// Create a copy of GeolocationEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvinciaCopyWith<$Res>? get state {
    if (_self.state == null) {
    return null;
  }

  return $ProvinciaCopyWith<$Res>(_self.state!, (value) {
    return _then(_self.copyWith(state: value));
  });
}/// Create a copy of GeolocationEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaisCopyWith<$Res>? get country {
    if (_self.country == null) {
    return null;
  }

  return $PaisCopyWith<$Res>(_self.country!, (value) {
    return _then(_self.copyWith(country: value));
  });
}
}

// dart format on
