// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geolocation_entity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeolocationEntityDTO {

@JsonKey(name: 'formattedAddress') String get formattedAddress;@JsonKey(name: 'streetName') String get streetName;@JsonKey(name: 'streetNumber') String? get streetNumber;@JsonKey(name: 'city') String? get city;@JsonKey(name: 'countryCode') String get countryCode;@JsonKey(name: 'zipcode') String get zipCode;@JsonKey(name: 'administrativeLevels') AdministrativeLevelsDTO? get advinistrativeLevels;@JsonKey(name: 'extra') ExtraDTO? get extra;
/// Create a copy of GeolocationEntityDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeolocationEntityDTOCopyWith<GeolocationEntityDTO> get copyWith => _$GeolocationEntityDTOCopyWithImpl<GeolocationEntityDTO>(this as GeolocationEntityDTO, _$identity);

  /// Serializes this GeolocationEntityDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeolocationEntityDTO&&(identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress)&&(identical(other.streetName, streetName) || other.streetName == streetName)&&(identical(other.streetNumber, streetNumber) || other.streetNumber == streetNumber)&&(identical(other.city, city) || other.city == city)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.advinistrativeLevels, advinistrativeLevels) || other.advinistrativeLevels == advinistrativeLevels)&&(identical(other.extra, extra) || other.extra == extra));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,formattedAddress,streetName,streetNumber,city,countryCode,zipCode,advinistrativeLevels,extra);

@override
String toString() {
  return 'GeolocationEntityDTO(formattedAddress: $formattedAddress, streetName: $streetName, streetNumber: $streetNumber, city: $city, countryCode: $countryCode, zipCode: $zipCode, advinistrativeLevels: $advinistrativeLevels, extra: $extra)';
}


}

/// @nodoc
abstract mixin class $GeolocationEntityDTOCopyWith<$Res>  {
  factory $GeolocationEntityDTOCopyWith(GeolocationEntityDTO value, $Res Function(GeolocationEntityDTO) _then) = _$GeolocationEntityDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'formattedAddress') String formattedAddress,@JsonKey(name: 'streetName') String streetName,@JsonKey(name: 'streetNumber') String? streetNumber,@JsonKey(name: 'city') String? city,@JsonKey(name: 'countryCode') String countryCode,@JsonKey(name: 'zipcode') String zipCode,@JsonKey(name: 'administrativeLevels') AdministrativeLevelsDTO? advinistrativeLevels,@JsonKey(name: 'extra') ExtraDTO? extra
});


$AdministrativeLevelsDTOCopyWith<$Res>? get advinistrativeLevels;$ExtraDTOCopyWith<$Res>? get extra;

}
/// @nodoc
class _$GeolocationEntityDTOCopyWithImpl<$Res>
    implements $GeolocationEntityDTOCopyWith<$Res> {
  _$GeolocationEntityDTOCopyWithImpl(this._self, this._then);

  final GeolocationEntityDTO _self;
  final $Res Function(GeolocationEntityDTO) _then;

/// Create a copy of GeolocationEntityDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? formattedAddress = null,Object? streetName = null,Object? streetNumber = freezed,Object? city = freezed,Object? countryCode = null,Object? zipCode = null,Object? advinistrativeLevels = freezed,Object? extra = freezed,}) {
  return _then(_self.copyWith(
formattedAddress: null == formattedAddress ? _self.formattedAddress : formattedAddress // ignore: cast_nullable_to_non_nullable
as String,streetName: null == streetName ? _self.streetName : streetName // ignore: cast_nullable_to_non_nullable
as String,streetNumber: freezed == streetNumber ? _self.streetNumber : streetNumber // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,advinistrativeLevels: freezed == advinistrativeLevels ? _self.advinistrativeLevels : advinistrativeLevels // ignore: cast_nullable_to_non_nullable
as AdministrativeLevelsDTO?,extra: freezed == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as ExtraDTO?,
  ));
}
/// Create a copy of GeolocationEntityDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdministrativeLevelsDTOCopyWith<$Res>? get advinistrativeLevels {
    if (_self.advinistrativeLevels == null) {
    return null;
  }

  return $AdministrativeLevelsDTOCopyWith<$Res>(_self.advinistrativeLevels!, (value) {
    return _then(_self.copyWith(advinistrativeLevels: value));
  });
}/// Create a copy of GeolocationEntityDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtraDTOCopyWith<$Res>? get extra {
    if (_self.extra == null) {
    return null;
  }

  return $ExtraDTOCopyWith<$Res>(_self.extra!, (value) {
    return _then(_self.copyWith(extra: value));
  });
}
}


/// Adds pattern-matching-related methods to [GeolocationEntityDTO].
extension GeolocationEntityDTOPatterns on GeolocationEntityDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeolocationEntityDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeolocationEntityDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeolocationEntityDTO value)  $default,){
final _that = this;
switch (_that) {
case _GeolocationEntityDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeolocationEntityDTO value)?  $default,){
final _that = this;
switch (_that) {
case _GeolocationEntityDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'formattedAddress')  String formattedAddress, @JsonKey(name: 'streetName')  String streetName, @JsonKey(name: 'streetNumber')  String? streetNumber, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'countryCode')  String countryCode, @JsonKey(name: 'zipcode')  String zipCode, @JsonKey(name: 'administrativeLevels')  AdministrativeLevelsDTO? advinistrativeLevels, @JsonKey(name: 'extra')  ExtraDTO? extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeolocationEntityDTO() when $default != null:
return $default(_that.formattedAddress,_that.streetName,_that.streetNumber,_that.city,_that.countryCode,_that.zipCode,_that.advinistrativeLevels,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'formattedAddress')  String formattedAddress, @JsonKey(name: 'streetName')  String streetName, @JsonKey(name: 'streetNumber')  String? streetNumber, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'countryCode')  String countryCode, @JsonKey(name: 'zipcode')  String zipCode, @JsonKey(name: 'administrativeLevels')  AdministrativeLevelsDTO? advinistrativeLevels, @JsonKey(name: 'extra')  ExtraDTO? extra)  $default,) {final _that = this;
switch (_that) {
case _GeolocationEntityDTO():
return $default(_that.formattedAddress,_that.streetName,_that.streetNumber,_that.city,_that.countryCode,_that.zipCode,_that.advinistrativeLevels,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'formattedAddress')  String formattedAddress, @JsonKey(name: 'streetName')  String streetName, @JsonKey(name: 'streetNumber')  String? streetNumber, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'countryCode')  String countryCode, @JsonKey(name: 'zipcode')  String zipCode, @JsonKey(name: 'administrativeLevels')  AdministrativeLevelsDTO? advinistrativeLevels, @JsonKey(name: 'extra')  ExtraDTO? extra)?  $default,) {final _that = this;
switch (_that) {
case _GeolocationEntityDTO() when $default != null:
return $default(_that.formattedAddress,_that.streetName,_that.streetNumber,_that.city,_that.countryCode,_that.zipCode,_that.advinistrativeLevels,_that.extra);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _GeolocationEntityDTO extends GeolocationEntityDTO {
   _GeolocationEntityDTO({@JsonKey(name: 'formattedAddress') required this.formattedAddress, @JsonKey(name: 'streetName') required this.streetName, @JsonKey(name: 'streetNumber') required this.streetNumber, @JsonKey(name: 'city') required this.city, @JsonKey(name: 'countryCode') required this.countryCode, @JsonKey(name: 'zipcode') required this.zipCode, @JsonKey(name: 'administrativeLevels') required this.advinistrativeLevels, @JsonKey(name: 'extra') required this.extra}): super._();
  factory _GeolocationEntityDTO.fromJson(Map<String, dynamic> json) => _$GeolocationEntityDTOFromJson(json);

@override@JsonKey(name: 'formattedAddress') final  String formattedAddress;
@override@JsonKey(name: 'streetName') final  String streetName;
@override@JsonKey(name: 'streetNumber') final  String? streetNumber;
@override@JsonKey(name: 'city') final  String? city;
@override@JsonKey(name: 'countryCode') final  String countryCode;
@override@JsonKey(name: 'zipcode') final  String zipCode;
@override@JsonKey(name: 'administrativeLevels') final  AdministrativeLevelsDTO? advinistrativeLevels;
@override@JsonKey(name: 'extra') final  ExtraDTO? extra;

/// Create a copy of GeolocationEntityDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeolocationEntityDTOCopyWith<_GeolocationEntityDTO> get copyWith => __$GeolocationEntityDTOCopyWithImpl<_GeolocationEntityDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeolocationEntityDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeolocationEntityDTO&&(identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress)&&(identical(other.streetName, streetName) || other.streetName == streetName)&&(identical(other.streetNumber, streetNumber) || other.streetNumber == streetNumber)&&(identical(other.city, city) || other.city == city)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.advinistrativeLevels, advinistrativeLevels) || other.advinistrativeLevels == advinistrativeLevels)&&(identical(other.extra, extra) || other.extra == extra));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,formattedAddress,streetName,streetNumber,city,countryCode,zipCode,advinistrativeLevels,extra);

@override
String toString() {
  return 'GeolocationEntityDTO(formattedAddress: $formattedAddress, streetName: $streetName, streetNumber: $streetNumber, city: $city, countryCode: $countryCode, zipCode: $zipCode, advinistrativeLevels: $advinistrativeLevels, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$GeolocationEntityDTOCopyWith<$Res> implements $GeolocationEntityDTOCopyWith<$Res> {
  factory _$GeolocationEntityDTOCopyWith(_GeolocationEntityDTO value, $Res Function(_GeolocationEntityDTO) _then) = __$GeolocationEntityDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'formattedAddress') String formattedAddress,@JsonKey(name: 'streetName') String streetName,@JsonKey(name: 'streetNumber') String? streetNumber,@JsonKey(name: 'city') String? city,@JsonKey(name: 'countryCode') String countryCode,@JsonKey(name: 'zipcode') String zipCode,@JsonKey(name: 'administrativeLevels') AdministrativeLevelsDTO? advinistrativeLevels,@JsonKey(name: 'extra') ExtraDTO? extra
});


@override $AdministrativeLevelsDTOCopyWith<$Res>? get advinistrativeLevels;@override $ExtraDTOCopyWith<$Res>? get extra;

}
/// @nodoc
class __$GeolocationEntityDTOCopyWithImpl<$Res>
    implements _$GeolocationEntityDTOCopyWith<$Res> {
  __$GeolocationEntityDTOCopyWithImpl(this._self, this._then);

  final _GeolocationEntityDTO _self;
  final $Res Function(_GeolocationEntityDTO) _then;

/// Create a copy of GeolocationEntityDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formattedAddress = null,Object? streetName = null,Object? streetNumber = freezed,Object? city = freezed,Object? countryCode = null,Object? zipCode = null,Object? advinistrativeLevels = freezed,Object? extra = freezed,}) {
  return _then(_GeolocationEntityDTO(
formattedAddress: null == formattedAddress ? _self.formattedAddress : formattedAddress // ignore: cast_nullable_to_non_nullable
as String,streetName: null == streetName ? _self.streetName : streetName // ignore: cast_nullable_to_non_nullable
as String,streetNumber: freezed == streetNumber ? _self.streetNumber : streetNumber // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String,advinistrativeLevels: freezed == advinistrativeLevels ? _self.advinistrativeLevels : advinistrativeLevels // ignore: cast_nullable_to_non_nullable
as AdministrativeLevelsDTO?,extra: freezed == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as ExtraDTO?,
  ));
}

/// Create a copy of GeolocationEntityDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdministrativeLevelsDTOCopyWith<$Res>? get advinistrativeLevels {
    if (_self.advinistrativeLevels == null) {
    return null;
  }

  return $AdministrativeLevelsDTOCopyWith<$Res>(_self.advinistrativeLevels!, (value) {
    return _then(_self.copyWith(advinistrativeLevels: value));
  });
}/// Create a copy of GeolocationEntityDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExtraDTOCopyWith<$Res>? get extra {
    if (_self.extra == null) {
    return null;
  }

  return $ExtraDTOCopyWith<$Res>(_self.extra!, (value) {
    return _then(_self.copyWith(extra: value));
  });
}
}


/// @nodoc
mixin _$AdministrativeLevelsDTO {

@JsonKey(name: 'level2long') String? get state;
/// Create a copy of AdministrativeLevelsDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdministrativeLevelsDTOCopyWith<AdministrativeLevelsDTO> get copyWith => _$AdministrativeLevelsDTOCopyWithImpl<AdministrativeLevelsDTO>(this as AdministrativeLevelsDTO, _$identity);

  /// Serializes this AdministrativeLevelsDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdministrativeLevelsDTO&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'AdministrativeLevelsDTO(state: $state)';
}


}

/// @nodoc
abstract mixin class $AdministrativeLevelsDTOCopyWith<$Res>  {
  factory $AdministrativeLevelsDTOCopyWith(AdministrativeLevelsDTO value, $Res Function(AdministrativeLevelsDTO) _then) = _$AdministrativeLevelsDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'level2long') String? state
});




}
/// @nodoc
class _$AdministrativeLevelsDTOCopyWithImpl<$Res>
    implements $AdministrativeLevelsDTOCopyWith<$Res> {
  _$AdministrativeLevelsDTOCopyWithImpl(this._self, this._then);

  final AdministrativeLevelsDTO _self;
  final $Res Function(AdministrativeLevelsDTO) _then;

/// Create a copy of AdministrativeLevelsDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? state = freezed,}) {
  return _then(_self.copyWith(
state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdministrativeLevelsDTO].
extension AdministrativeLevelsDTOPatterns on AdministrativeLevelsDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdministrativeLevelsDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdministrativeLevelsDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdministrativeLevelsDTO value)  $default,){
final _that = this;
switch (_that) {
case _AdministrativeLevelsDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdministrativeLevelsDTO value)?  $default,){
final _that = this;
switch (_that) {
case _AdministrativeLevelsDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'level2long')  String? state)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdministrativeLevelsDTO() when $default != null:
return $default(_that.state);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'level2long')  String? state)  $default,) {final _that = this;
switch (_that) {
case _AdministrativeLevelsDTO():
return $default(_that.state);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'level2long')  String? state)?  $default,) {final _that = this;
switch (_that) {
case _AdministrativeLevelsDTO() when $default != null:
return $default(_that.state);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _AdministrativeLevelsDTO extends AdministrativeLevelsDTO {
   _AdministrativeLevelsDTO({@JsonKey(name: 'level2long') required this.state}): super._();
  factory _AdministrativeLevelsDTO.fromJson(Map<String, dynamic> json) => _$AdministrativeLevelsDTOFromJson(json);

@override@JsonKey(name: 'level2long') final  String? state;

/// Create a copy of AdministrativeLevelsDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdministrativeLevelsDTOCopyWith<_AdministrativeLevelsDTO> get copyWith => __$AdministrativeLevelsDTOCopyWithImpl<_AdministrativeLevelsDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdministrativeLevelsDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdministrativeLevelsDTO&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'AdministrativeLevelsDTO(state: $state)';
}


}

/// @nodoc
abstract mixin class _$AdministrativeLevelsDTOCopyWith<$Res> implements $AdministrativeLevelsDTOCopyWith<$Res> {
  factory _$AdministrativeLevelsDTOCopyWith(_AdministrativeLevelsDTO value, $Res Function(_AdministrativeLevelsDTO) _then) = __$AdministrativeLevelsDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'level2long') String? state
});




}
/// @nodoc
class __$AdministrativeLevelsDTOCopyWithImpl<$Res>
    implements _$AdministrativeLevelsDTOCopyWith<$Res> {
  __$AdministrativeLevelsDTOCopyWithImpl(this._self, this._then);

  final _AdministrativeLevelsDTO _self;
  final $Res Function(_AdministrativeLevelsDTO) _then;

/// Create a copy of AdministrativeLevelsDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? state = freezed,}) {
  return _then(_AdministrativeLevelsDTO(
state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ExtraDTO {

@JsonKey(name: 'subpremise') String? get subpremise;
/// Create a copy of ExtraDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtraDTOCopyWith<ExtraDTO> get copyWith => _$ExtraDTOCopyWithImpl<ExtraDTO>(this as ExtraDTO, _$identity);

  /// Serializes this ExtraDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtraDTO&&(identical(other.subpremise, subpremise) || other.subpremise == subpremise));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subpremise);

@override
String toString() {
  return 'ExtraDTO(subpremise: $subpremise)';
}


}

/// @nodoc
abstract mixin class $ExtraDTOCopyWith<$Res>  {
  factory $ExtraDTOCopyWith(ExtraDTO value, $Res Function(ExtraDTO) _then) = _$ExtraDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'subpremise') String? subpremise
});




}
/// @nodoc
class _$ExtraDTOCopyWithImpl<$Res>
    implements $ExtraDTOCopyWith<$Res> {
  _$ExtraDTOCopyWithImpl(this._self, this._then);

  final ExtraDTO _self;
  final $Res Function(ExtraDTO) _then;

/// Create a copy of ExtraDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subpremise = freezed,}) {
  return _then(_self.copyWith(
subpremise: freezed == subpremise ? _self.subpremise : subpremise // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExtraDTO].
extension ExtraDTOPatterns on ExtraDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExtraDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExtraDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExtraDTO value)  $default,){
final _that = this;
switch (_that) {
case _ExtraDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExtraDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ExtraDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'subpremise')  String? subpremise)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExtraDTO() when $default != null:
return $default(_that.subpremise);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'subpremise')  String? subpremise)  $default,) {final _that = this;
switch (_that) {
case _ExtraDTO():
return $default(_that.subpremise);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'subpremise')  String? subpremise)?  $default,) {final _that = this;
switch (_that) {
case _ExtraDTO() when $default != null:
return $default(_that.subpremise);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ExtraDTO extends ExtraDTO {
   _ExtraDTO({@JsonKey(name: 'subpremise') required this.subpremise}): super._();
  factory _ExtraDTO.fromJson(Map<String, dynamic> json) => _$ExtraDTOFromJson(json);

@override@JsonKey(name: 'subpremise') final  String? subpremise;

/// Create a copy of ExtraDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtraDTOCopyWith<_ExtraDTO> get copyWith => __$ExtraDTOCopyWithImpl<_ExtraDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExtraDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtraDTO&&(identical(other.subpremise, subpremise) || other.subpremise == subpremise));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subpremise);

@override
String toString() {
  return 'ExtraDTO(subpremise: $subpremise)';
}


}

/// @nodoc
abstract mixin class _$ExtraDTOCopyWith<$Res> implements $ExtraDTOCopyWith<$Res> {
  factory _$ExtraDTOCopyWith(_ExtraDTO value, $Res Function(_ExtraDTO) _then) = __$ExtraDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'subpremise') String? subpremise
});




}
/// @nodoc
class __$ExtraDTOCopyWithImpl<$Res>
    implements _$ExtraDTOCopyWith<$Res> {
  __$ExtraDTOCopyWithImpl(this._self, this._then);

  final _ExtraDTO _self;
  final $Res Function(_ExtraDTO) _then;

/// Create a copy of ExtraDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subpremise = freezed,}) {
  return _then(_ExtraDTO(
subpremise: freezed == subpremise ? _self.subpremise : subpremise // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
