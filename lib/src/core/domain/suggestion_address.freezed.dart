// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggestion_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SuggestionAddress {

 String? get direccion; String? get codigoPostal; String? get poblacion; Provincia? get provincia; Pais? get pais; String? get formattedAddress; String? get formattedAddressResult;
/// Create a copy of SuggestionAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuggestionAddressCopyWith<SuggestionAddress> get copyWith => _$SuggestionAddressCopyWithImpl<SuggestionAddress>(this as SuggestionAddress, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuggestionAddress&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.pais, pais) || other.pais == pais)&&(identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress)&&(identical(other.formattedAddressResult, formattedAddressResult) || other.formattedAddressResult == formattedAddressResult));
}


@override
int get hashCode => Object.hash(runtimeType,direccion,codigoPostal,poblacion,provincia,pais,formattedAddress,formattedAddressResult);

@override
String toString() {
  return 'SuggestionAddress(direccion: $direccion, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, pais: $pais, formattedAddress: $formattedAddress, formattedAddressResult: $formattedAddressResult)';
}


}

/// @nodoc
abstract mixin class $SuggestionAddressCopyWith<$Res>  {
  factory $SuggestionAddressCopyWith(SuggestionAddress value, $Res Function(SuggestionAddress) _then) = _$SuggestionAddressCopyWithImpl;
@useResult
$Res call({
 String? direccion, String? codigoPostal, String? poblacion, Provincia? provincia, Pais? pais, String? formattedAddress, String? formattedAddressResult
});


$ProvinciaCopyWith<$Res>? get provincia;$PaisCopyWith<$Res>? get pais;

}
/// @nodoc
class _$SuggestionAddressCopyWithImpl<$Res>
    implements $SuggestionAddressCopyWith<$Res> {
  _$SuggestionAddressCopyWithImpl(this._self, this._then);

  final SuggestionAddress _self;
  final $Res Function(SuggestionAddress) _then;

/// Create a copy of SuggestionAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? direccion = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? pais = freezed,Object? formattedAddress = freezed,Object? formattedAddressResult = freezed,}) {
  return _then(SuggestionAddress(
direccion: freezed == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as Provincia?,pais: freezed == pais ? _self.pais : pais // ignore: cast_nullable_to_non_nullable
as Pais?,formattedAddress: freezed == formattedAddress ? _self.formattedAddress : formattedAddress // ignore: cast_nullable_to_non_nullable
as String?,formattedAddressResult: freezed == formattedAddressResult ? _self.formattedAddressResult : formattedAddressResult // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SuggestionAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvinciaCopyWith<$Res>? get provincia {
    if (_self.provincia == null) {
    return null;
  }

  return $ProvinciaCopyWith<$Res>(_self.provincia!, (value) {
    return _then(_self.copyWith(provincia: value));
  });
}/// Create a copy of SuggestionAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaisCopyWith<$Res>? get pais {
    if (_self.pais == null) {
    return null;
  }

  return $PaisCopyWith<$Res>(_self.pais!, (value) {
    return _then(_self.copyWith(pais: value));
  });
}
}


/// Adds pattern-matching-related methods to [SuggestionAddress].
extension SuggestionAddressPatterns on SuggestionAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SuggestionAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SuggestionAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SuggestionAddress value)  $default,){
final _that = this;
switch (_that) {
case _SuggestionAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SuggestionAddress value)?  $default,){
final _that = this;
switch (_that) {
case _SuggestionAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? direccion,  String? codigoPostal,  String? poblacion,  Provincia? provincia,  Pais? pais,  String? formattedAddress,  String? formattedAddressResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SuggestionAddress() when $default != null:
return $default(_that.direccion,_that.codigoPostal,_that.poblacion,_that.provincia,_that.pais,_that.formattedAddress,_that.formattedAddressResult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? direccion,  String? codigoPostal,  String? poblacion,  Provincia? provincia,  Pais? pais,  String? formattedAddress,  String? formattedAddressResult)  $default,) {final _that = this;
switch (_that) {
case _SuggestionAddress():
return $default(_that.direccion,_that.codigoPostal,_that.poblacion,_that.provincia,_that.pais,_that.formattedAddress,_that.formattedAddressResult);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? direccion,  String? codigoPostal,  String? poblacion,  Provincia? provincia,  Pais? pais,  String? formattedAddress,  String? formattedAddressResult)?  $default,) {final _that = this;
switch (_that) {
case _SuggestionAddress() when $default != null:
return $default(_that.direccion,_that.codigoPostal,_that.poblacion,_that.provincia,_that.pais,_that.formattedAddress,_that.formattedAddressResult);case _:
  return null;

}
}

}

/// @nodoc


class _SuggestionAddress implements SuggestionAddress {
   _SuggestionAddress({required this.direccion, required this.codigoPostal, required this.poblacion, required this.provincia, required this.pais, required this.formattedAddress, required this.formattedAddressResult});
  

@override final  String? direccion;
@override final  String? codigoPostal;
@override final  String? poblacion;
@override final  Provincia? provincia;
@override final  Pais? pais;
@override final  String? formattedAddress;
@override final  String? formattedAddressResult;

/// Create a copy of SuggestionAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuggestionAddressCopyWith<_SuggestionAddress> get copyWith => __$SuggestionAddressCopyWithImpl<_SuggestionAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuggestionAddress&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.pais, pais) || other.pais == pais)&&(identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress)&&(identical(other.formattedAddressResult, formattedAddressResult) || other.formattedAddressResult == formattedAddressResult));
}


@override
int get hashCode => Object.hash(runtimeType,direccion,codigoPostal,poblacion,provincia,pais,formattedAddress,formattedAddressResult);

@override
String toString() {
  return 'SuggestionAddress(direccion: $direccion, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, pais: $pais, formattedAddress: $formattedAddress, formattedAddressResult: $formattedAddressResult)';
}


}

/// @nodoc
abstract mixin class _$SuggestionAddressCopyWith<$Res> implements $SuggestionAddressCopyWith<$Res> {
  factory _$SuggestionAddressCopyWith(_SuggestionAddress value, $Res Function(_SuggestionAddress) _then) = __$SuggestionAddressCopyWithImpl;
@override @useResult
$Res call({
 String? direccion, String? codigoPostal, String? poblacion, Provincia? provincia, Pais? pais, String? formattedAddress, String? formattedAddressResult
});


@override $ProvinciaCopyWith<$Res>? get provincia;@override $PaisCopyWith<$Res>? get pais;

}
/// @nodoc
class __$SuggestionAddressCopyWithImpl<$Res>
    implements _$SuggestionAddressCopyWith<$Res> {
  __$SuggestionAddressCopyWithImpl(this._self, this._then);

  final _SuggestionAddress _self;
  final $Res Function(_SuggestionAddress) _then;

/// Create a copy of SuggestionAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? direccion = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? pais = freezed,Object? formattedAddress = freezed,Object? formattedAddressResult = freezed,}) {
  return _then(_SuggestionAddress(
direccion: freezed == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as Provincia?,pais: freezed == pais ? _self.pais : pais // ignore: cast_nullable_to_non_nullable
as Pais?,formattedAddress: freezed == formattedAddress ? _self.formattedAddress : formattedAddress // ignore: cast_nullable_to_non_nullable
as String?,formattedAddressResult: freezed == formattedAddressResult ? _self.formattedAddressResult : formattedAddressResult // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SuggestionAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProvinciaCopyWith<$Res>? get provincia {
    if (_self.provincia == null) {
    return null;
  }

  return $ProvinciaCopyWith<$Res>(_self.provincia!, (value) {
    return _then(_self.copyWith(provincia: value));
  });
}/// Create a copy of SuggestionAddress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaisCopyWith<$Res>? get pais {
    if (_self.pais == null) {
    return null;
  }

  return $PaisCopyWith<$Res>(_self.pais!, (value) {
    return _then(_self.copyWith(pais: value));
  });
}
}

// dart format on
