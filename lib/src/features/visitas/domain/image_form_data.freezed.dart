// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_form_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageFormData {

 String? get name; String? get company; String? get cargo; List<String> get phoneList; String? get email;// String? website,
 String? get streetAddress1; String? get zipCode; String? get city; Provincia? get state; Pais? get country; String? get referenceStreetAddress;
/// Create a copy of ImageFormData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageFormDataCopyWith<ImageFormData> get copyWith => _$ImageFormDataCopyWithImpl<ImageFormData>(this as ImageFormData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageFormData&&(identical(other.name, name) || other.name == name)&&(identical(other.company, company) || other.company == company)&&(identical(other.cargo, cargo) || other.cargo == cargo)&&const DeepCollectionEquality().equals(other.phoneList, phoneList)&&(identical(other.email, email) || other.email == email)&&(identical(other.streetAddress1, streetAddress1) || other.streetAddress1 == streetAddress1)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.referenceStreetAddress, referenceStreetAddress) || other.referenceStreetAddress == referenceStreetAddress));
}


@override
int get hashCode => Object.hash(runtimeType,name,company,cargo,const DeepCollectionEquality().hash(phoneList),email,streetAddress1,zipCode,city,state,country,referenceStreetAddress);

@override
String toString() {
  return 'ImageFormData(name: $name, company: $company, cargo: $cargo, phoneList: $phoneList, email: $email, streetAddress1: $streetAddress1, zipCode: $zipCode, city: $city, state: $state, country: $country, referenceStreetAddress: $referenceStreetAddress)';
}


}

/// @nodoc
abstract mixin class $ImageFormDataCopyWith<$Res>  {
  factory $ImageFormDataCopyWith(ImageFormData value, $Res Function(ImageFormData) _then) = _$ImageFormDataCopyWithImpl;
@useResult
$Res call({
 String? name, String? company, String? cargo, List<String> phoneList, String? email, String? streetAddress1, String? zipCode, String? city, Provincia? state, Pais? country, String? referenceStreetAddress
});


$ProvinciaCopyWith<$Res>? get state;$PaisCopyWith<$Res>? get country;

}
/// @nodoc
class _$ImageFormDataCopyWithImpl<$Res>
    implements $ImageFormDataCopyWith<$Res> {
  _$ImageFormDataCopyWithImpl(this._self, this._then);

  final ImageFormData _self;
  final $Res Function(ImageFormData) _then;

/// Create a copy of ImageFormData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? company = freezed,Object? cargo = freezed,Object? phoneList = null,Object? email = freezed,Object? streetAddress1 = freezed,Object? zipCode = freezed,Object? city = freezed,Object? state = freezed,Object? country = freezed,Object? referenceStreetAddress = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,cargo: freezed == cargo ? _self.cargo : cargo // ignore: cast_nullable_to_non_nullable
as String?,phoneList: null == phoneList ? _self.phoneList : phoneList // ignore: cast_nullable_to_non_nullable
as List<String>,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,streetAddress1: freezed == streetAddress1 ? _self.streetAddress1 : streetAddress1 // ignore: cast_nullable_to_non_nullable
as String?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as Provincia?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as Pais?,referenceStreetAddress: freezed == referenceStreetAddress ? _self.referenceStreetAddress : referenceStreetAddress // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ImageFormData
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
}/// Create a copy of ImageFormData
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


/// Adds pattern-matching-related methods to [ImageFormData].
extension ImageFormDataPatterns on ImageFormData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageFormData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageFormData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageFormData value)  $default,){
final _that = this;
switch (_that) {
case _ImageFormData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageFormData value)?  $default,){
final _that = this;
switch (_that) {
case _ImageFormData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? company,  String? cargo,  List<String> phoneList,  String? email,  String? streetAddress1,  String? zipCode,  String? city,  Provincia? state,  Pais? country,  String? referenceStreetAddress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageFormData() when $default != null:
return $default(_that.name,_that.company,_that.cargo,_that.phoneList,_that.email,_that.streetAddress1,_that.zipCode,_that.city,_that.state,_that.country,_that.referenceStreetAddress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? company,  String? cargo,  List<String> phoneList,  String? email,  String? streetAddress1,  String? zipCode,  String? city,  Provincia? state,  Pais? country,  String? referenceStreetAddress)  $default,) {final _that = this;
switch (_that) {
case _ImageFormData():
return $default(_that.name,_that.company,_that.cargo,_that.phoneList,_that.email,_that.streetAddress1,_that.zipCode,_that.city,_that.state,_that.country,_that.referenceStreetAddress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? company,  String? cargo,  List<String> phoneList,  String? email,  String? streetAddress1,  String? zipCode,  String? city,  Provincia? state,  Pais? country,  String? referenceStreetAddress)?  $default,) {final _that = this;
switch (_that) {
case _ImageFormData() when $default != null:
return $default(_that.name,_that.company,_that.cargo,_that.phoneList,_that.email,_that.streetAddress1,_that.zipCode,_that.city,_that.state,_that.country,_that.referenceStreetAddress);case _:
  return null;

}
}

}

/// @nodoc


class _ImageFormData implements ImageFormData {
   _ImageFormData({this.name, this.company, this.cargo, required final  List<String> phoneList, this.email, this.streetAddress1, this.zipCode, this.city, this.state, this.country, this.referenceStreetAddress}): _phoneList = phoneList;
  

@override final  String? name;
@override final  String? company;
@override final  String? cargo;
 final  List<String> _phoneList;
@override List<String> get phoneList {
  if (_phoneList is EqualUnmodifiableListView) return _phoneList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_phoneList);
}

@override final  String? email;
// String? website,
@override final  String? streetAddress1;
@override final  String? zipCode;
@override final  String? city;
@override final  Provincia? state;
@override final  Pais? country;
@override final  String? referenceStreetAddress;

/// Create a copy of ImageFormData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageFormDataCopyWith<_ImageFormData> get copyWith => __$ImageFormDataCopyWithImpl<_ImageFormData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageFormData&&(identical(other.name, name) || other.name == name)&&(identical(other.company, company) || other.company == company)&&(identical(other.cargo, cargo) || other.cargo == cargo)&&const DeepCollectionEquality().equals(other._phoneList, _phoneList)&&(identical(other.email, email) || other.email == email)&&(identical(other.streetAddress1, streetAddress1) || other.streetAddress1 == streetAddress1)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.referenceStreetAddress, referenceStreetAddress) || other.referenceStreetAddress == referenceStreetAddress));
}


@override
int get hashCode => Object.hash(runtimeType,name,company,cargo,const DeepCollectionEquality().hash(_phoneList),email,streetAddress1,zipCode,city,state,country,referenceStreetAddress);

@override
String toString() {
  return 'ImageFormData(name: $name, company: $company, cargo: $cargo, phoneList: $phoneList, email: $email, streetAddress1: $streetAddress1, zipCode: $zipCode, city: $city, state: $state, country: $country, referenceStreetAddress: $referenceStreetAddress)';
}


}

/// @nodoc
abstract mixin class _$ImageFormDataCopyWith<$Res> implements $ImageFormDataCopyWith<$Res> {
  factory _$ImageFormDataCopyWith(_ImageFormData value, $Res Function(_ImageFormData) _then) = __$ImageFormDataCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? company, String? cargo, List<String> phoneList, String? email, String? streetAddress1, String? zipCode, String? city, Provincia? state, Pais? country, String? referenceStreetAddress
});


@override $ProvinciaCopyWith<$Res>? get state;@override $PaisCopyWith<$Res>? get country;

}
/// @nodoc
class __$ImageFormDataCopyWithImpl<$Res>
    implements _$ImageFormDataCopyWith<$Res> {
  __$ImageFormDataCopyWithImpl(this._self, this._then);

  final _ImageFormData _self;
  final $Res Function(_ImageFormData) _then;

/// Create a copy of ImageFormData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? company = freezed,Object? cargo = freezed,Object? phoneList = null,Object? email = freezed,Object? streetAddress1 = freezed,Object? zipCode = freezed,Object? city = freezed,Object? state = freezed,Object? country = freezed,Object? referenceStreetAddress = freezed,}) {
  return _then(_ImageFormData(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,cargo: freezed == cargo ? _self.cargo : cargo // ignore: cast_nullable_to_non_nullable
as String?,phoneList: null == phoneList ? _self._phoneList : phoneList // ignore: cast_nullable_to_non_nullable
as List<String>,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,streetAddress1: freezed == streetAddress1 ? _self.streetAddress1 : streetAddress1 // ignore: cast_nullable_to_non_nullable
as String?,zipCode: freezed == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as Provincia?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as Pais?,referenceStreetAddress: freezed == referenceStreetAddress ? _self.referenceStreetAddress : referenceStreetAddress // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ImageFormData
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
}/// Create a copy of ImageFormData
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
