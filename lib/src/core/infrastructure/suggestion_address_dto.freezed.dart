// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggestion_address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuggestionAddressDTO {

@JsonKey(name: 'DIRECCION') String? get direccion;@JsonKey(name: 'CODIGO_POSTAL') String? get codigoPostal;@JsonKey(name: 'POBLACION') String? get poblacion;@JsonKey(name: 'PROVINCIA_ID') String? get provinciaId;@JsonKey(name: 'PROVINCIA_NOMBRE') String? get provinciaNombre;@JsonKey(name: 'PAIS_ID') String? get paisId;@JsonKey(name: 'DIRECCION_FORMATEADA') String? get formattedAddress;@JsonKey(name: 'FORMATTED_ADDRESS_RESULT') String? get formattedAddressResult;
/// Create a copy of SuggestionAddressDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuggestionAddressDTOCopyWith<SuggestionAddressDTO> get copyWith => _$SuggestionAddressDTOCopyWithImpl<SuggestionAddressDTO>(this as SuggestionAddressDTO, _$identity);

  /// Serializes this SuggestionAddressDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuggestionAddressDTO&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provinciaId, provinciaId) || other.provinciaId == provinciaId)&&(identical(other.provinciaNombre, provinciaNombre) || other.provinciaNombre == provinciaNombre)&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress)&&(identical(other.formattedAddressResult, formattedAddressResult) || other.formattedAddressResult == formattedAddressResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,direccion,codigoPostal,poblacion,provinciaId,provinciaNombre,paisId,formattedAddress,formattedAddressResult);

@override
String toString() {
  return 'SuggestionAddressDTO(direccion: $direccion, codigoPostal: $codigoPostal, poblacion: $poblacion, provinciaId: $provinciaId, provinciaNombre: $provinciaNombre, paisId: $paisId, formattedAddress: $formattedAddress, formattedAddressResult: $formattedAddressResult)';
}


}

/// @nodoc
abstract mixin class $SuggestionAddressDTOCopyWith<$Res>  {
  factory $SuggestionAddressDTOCopyWith(SuggestionAddressDTO value, $Res Function(SuggestionAddressDTO) _then) = _$SuggestionAddressDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'DIRECCION') String? direccion,@JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,@JsonKey(name: 'POBLACION') String? poblacion,@JsonKey(name: 'PROVINCIA_ID') String? provinciaId,@JsonKey(name: 'PROVINCIA_NOMBRE') String? provinciaNombre,@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'DIRECCION_FORMATEADA') String? formattedAddress,@JsonKey(name: 'FORMATTED_ADDRESS_RESULT') String? formattedAddressResult
});




}
/// @nodoc
class _$SuggestionAddressDTOCopyWithImpl<$Res>
    implements $SuggestionAddressDTOCopyWith<$Res> {
  _$SuggestionAddressDTOCopyWithImpl(this._self, this._then);

  final SuggestionAddressDTO _self;
  final $Res Function(SuggestionAddressDTO) _then;

/// Create a copy of SuggestionAddressDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? direccion = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provinciaId = freezed,Object? provinciaNombre = freezed,Object? paisId = freezed,Object? formattedAddress = freezed,Object? formattedAddressResult = freezed,}) {
  return _then(SuggestionAddressDTO(
direccion: freezed == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provinciaId: freezed == provinciaId ? _self.provinciaId : provinciaId // ignore: cast_nullable_to_non_nullable
as String?,provinciaNombre: freezed == provinciaNombre ? _self.provinciaNombre : provinciaNombre // ignore: cast_nullable_to_non_nullable
as String?,paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,formattedAddress: freezed == formattedAddress ? _self.formattedAddress : formattedAddress // ignore: cast_nullable_to_non_nullable
as String?,formattedAddressResult: freezed == formattedAddressResult ? _self.formattedAddressResult : formattedAddressResult // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SuggestionAddressDTO].
extension SuggestionAddressDTOPatterns on SuggestionAddressDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SuggestionAddressDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SuggestionAddressDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SuggestionAddressDTO value)  $default,){
final _that = this;
switch (_that) {
case _SuggestionAddressDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SuggestionAddressDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SuggestionAddressDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'DIRECCION')  String? direccion, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA_ID')  String? provinciaId, @JsonKey(name: 'PROVINCIA_NOMBRE')  String? provinciaNombre, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'DIRECCION_FORMATEADA')  String? formattedAddress, @JsonKey(name: 'FORMATTED_ADDRESS_RESULT')  String? formattedAddressResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SuggestionAddressDTO() when $default != null:
return $default(_that.direccion,_that.codigoPostal,_that.poblacion,_that.provinciaId,_that.provinciaNombre,_that.paisId,_that.formattedAddress,_that.formattedAddressResult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'DIRECCION')  String? direccion, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA_ID')  String? provinciaId, @JsonKey(name: 'PROVINCIA_NOMBRE')  String? provinciaNombre, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'DIRECCION_FORMATEADA')  String? formattedAddress, @JsonKey(name: 'FORMATTED_ADDRESS_RESULT')  String? formattedAddressResult)  $default,) {final _that = this;
switch (_that) {
case _SuggestionAddressDTO():
return $default(_that.direccion,_that.codigoPostal,_that.poblacion,_that.provinciaId,_that.provinciaNombre,_that.paisId,_that.formattedAddress,_that.formattedAddressResult);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'DIRECCION')  String? direccion, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA_ID')  String? provinciaId, @JsonKey(name: 'PROVINCIA_NOMBRE')  String? provinciaNombre, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'DIRECCION_FORMATEADA')  String? formattedAddress, @JsonKey(name: 'FORMATTED_ADDRESS_RESULT')  String? formattedAddressResult)?  $default,) {final _that = this;
switch (_that) {
case _SuggestionAddressDTO() when $default != null:
return $default(_that.direccion,_that.codigoPostal,_that.poblacion,_that.provinciaId,_that.provinciaNombre,_that.paisId,_that.formattedAddress,_that.formattedAddressResult);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _SuggestionAddressDTO extends SuggestionAddressDTO {
   _SuggestionAddressDTO({@JsonKey(name: 'DIRECCION') this.direccion, @JsonKey(name: 'CODIGO_POSTAL') this.codigoPostal, @JsonKey(name: 'POBLACION') this.poblacion, @JsonKey(name: 'PROVINCIA_ID') this.provinciaId, @JsonKey(name: 'PROVINCIA_NOMBRE') this.provinciaNombre, @JsonKey(name: 'PAIS_ID') this.paisId, @JsonKey(name: 'DIRECCION_FORMATEADA') this.formattedAddress, @JsonKey(name: 'FORMATTED_ADDRESS_RESULT') this.formattedAddressResult}): super._();
  factory _SuggestionAddressDTO.fromJson(Map<String, dynamic> json) => _$SuggestionAddressDTOFromJson(json);

@override@JsonKey(name: 'DIRECCION') final  String? direccion;
@override@JsonKey(name: 'CODIGO_POSTAL') final  String? codigoPostal;
@override@JsonKey(name: 'POBLACION') final  String? poblacion;
@override@JsonKey(name: 'PROVINCIA_ID') final  String? provinciaId;
@override@JsonKey(name: 'PROVINCIA_NOMBRE') final  String? provinciaNombre;
@override@JsonKey(name: 'PAIS_ID') final  String? paisId;
@override@JsonKey(name: 'DIRECCION_FORMATEADA') final  String? formattedAddress;
@override@JsonKey(name: 'FORMATTED_ADDRESS_RESULT') final  String? formattedAddressResult;

/// Create a copy of SuggestionAddressDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuggestionAddressDTOCopyWith<_SuggestionAddressDTO> get copyWith => __$SuggestionAddressDTOCopyWithImpl<_SuggestionAddressDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SuggestionAddressDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuggestionAddressDTO&&(identical(other.direccion, direccion) || other.direccion == direccion)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provinciaId, provinciaId) || other.provinciaId == provinciaId)&&(identical(other.provinciaNombre, provinciaNombre) || other.provinciaNombre == provinciaNombre)&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress)&&(identical(other.formattedAddressResult, formattedAddressResult) || other.formattedAddressResult == formattedAddressResult));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,direccion,codigoPostal,poblacion,provinciaId,provinciaNombre,paisId,formattedAddress,formattedAddressResult);

@override
String toString() {
  return 'SuggestionAddressDTO(direccion: $direccion, codigoPostal: $codigoPostal, poblacion: $poblacion, provinciaId: $provinciaId, provinciaNombre: $provinciaNombre, paisId: $paisId, formattedAddress: $formattedAddress, formattedAddressResult: $formattedAddressResult)';
}


}

/// @nodoc
abstract mixin class _$SuggestionAddressDTOCopyWith<$Res> implements $SuggestionAddressDTOCopyWith<$Res> {
  factory _$SuggestionAddressDTOCopyWith(_SuggestionAddressDTO value, $Res Function(_SuggestionAddressDTO) _then) = __$SuggestionAddressDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'DIRECCION') String? direccion,@JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,@JsonKey(name: 'POBLACION') String? poblacion,@JsonKey(name: 'PROVINCIA_ID') String? provinciaId,@JsonKey(name: 'PROVINCIA_NOMBRE') String? provinciaNombre,@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'DIRECCION_FORMATEADA') String? formattedAddress,@JsonKey(name: 'FORMATTED_ADDRESS_RESULT') String? formattedAddressResult
});




}
/// @nodoc
class __$SuggestionAddressDTOCopyWithImpl<$Res>
    implements _$SuggestionAddressDTOCopyWith<$Res> {
  __$SuggestionAddressDTOCopyWithImpl(this._self, this._then);

  final _SuggestionAddressDTO _self;
  final $Res Function(_SuggestionAddressDTO) _then;

/// Create a copy of SuggestionAddressDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? direccion = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provinciaId = freezed,Object? provinciaNombre = freezed,Object? paisId = freezed,Object? formattedAddress = freezed,Object? formattedAddressResult = freezed,}) {
  return _then(_SuggestionAddressDTO(
direccion: freezed == direccion ? _self.direccion : direccion // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provinciaId: freezed == provinciaId ? _self.provinciaId : provinciaId // ignore: cast_nullable_to_non_nullable
as String?,provinciaNombre: freezed == provinciaNombre ? _self.provinciaNombre : provinciaNombre // ignore: cast_nullable_to_non_nullable
as String?,paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,formattedAddress: freezed == formattedAddress ? _self.formattedAddress : formattedAddress // ignore: cast_nullable_to_non_nullable
as String?,formattedAddressResult: freezed == formattedAddressResult ? _self.formattedAddressResult : formattedAddressResult // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
