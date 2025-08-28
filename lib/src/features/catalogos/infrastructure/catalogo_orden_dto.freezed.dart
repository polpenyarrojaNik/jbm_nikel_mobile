// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalogo_orden_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogoOrdenDTO {

@JsonKey(name: 'CATALOGO_ID') int get catalogoId;@JsonKey(name: 'FECHA_ABIERTO') DateTime get fechaAbierto;
/// Create a copy of CatalogoOrdenDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogoOrdenDTOCopyWith<CatalogoOrdenDTO> get copyWith => _$CatalogoOrdenDTOCopyWithImpl<CatalogoOrdenDTO>(this as CatalogoOrdenDTO, _$identity);

  /// Serializes this CatalogoOrdenDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogoOrdenDTO&&(identical(other.catalogoId, catalogoId) || other.catalogoId == catalogoId)&&(identical(other.fechaAbierto, fechaAbierto) || other.fechaAbierto == fechaAbierto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catalogoId,fechaAbierto);

@override
String toString() {
  return 'CatalogoOrdenDTO(catalogoId: $catalogoId, fechaAbierto: $fechaAbierto)';
}


}

/// @nodoc
abstract mixin class $CatalogoOrdenDTOCopyWith<$Res>  {
  factory $CatalogoOrdenDTOCopyWith(CatalogoOrdenDTO value, $Res Function(CatalogoOrdenDTO) _then) = _$CatalogoOrdenDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CATALOGO_ID') int catalogoId,@JsonKey(name: 'FECHA_ABIERTO') DateTime fechaAbierto
});




}
/// @nodoc
class _$CatalogoOrdenDTOCopyWithImpl<$Res>
    implements $CatalogoOrdenDTOCopyWith<$Res> {
  _$CatalogoOrdenDTOCopyWithImpl(this._self, this._then);

  final CatalogoOrdenDTO _self;
  final $Res Function(CatalogoOrdenDTO) _then;

/// Create a copy of CatalogoOrdenDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catalogoId = null,Object? fechaAbierto = null,}) {
  return _then(_self.copyWith(
catalogoId: null == catalogoId ? _self.catalogoId : catalogoId // ignore: cast_nullable_to_non_nullable
as int,fechaAbierto: null == fechaAbierto ? _self.fechaAbierto : fechaAbierto // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogoOrdenDTO].
extension CatalogoOrdenDTOPatterns on CatalogoOrdenDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogoOrdenDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogoOrdenDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogoOrdenDTO value)  $default,){
final _that = this;
switch (_that) {
case _CatalogoOrdenDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogoOrdenDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogoOrdenDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CATALOGO_ID')  int catalogoId, @JsonKey(name: 'FECHA_ABIERTO')  DateTime fechaAbierto)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogoOrdenDTO() when $default != null:
return $default(_that.catalogoId,_that.fechaAbierto);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CATALOGO_ID')  int catalogoId, @JsonKey(name: 'FECHA_ABIERTO')  DateTime fechaAbierto)  $default,) {final _that = this;
switch (_that) {
case _CatalogoOrdenDTO():
return $default(_that.catalogoId,_that.fechaAbierto);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CATALOGO_ID')  int catalogoId, @JsonKey(name: 'FECHA_ABIERTO')  DateTime fechaAbierto)?  $default,) {final _that = this;
switch (_that) {
case _CatalogoOrdenDTO() when $default != null:
return $default(_that.catalogoId,_that.fechaAbierto);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CatalogoOrdenDTO extends CatalogoOrdenDTO {
  const _CatalogoOrdenDTO({@JsonKey(name: 'CATALOGO_ID') required this.catalogoId, @JsonKey(name: 'FECHA_ABIERTO') required this.fechaAbierto}): super._();
  factory _CatalogoOrdenDTO.fromJson(Map<String, dynamic> json) => _$CatalogoOrdenDTOFromJson(json);

@override@JsonKey(name: 'CATALOGO_ID') final  int catalogoId;
@override@JsonKey(name: 'FECHA_ABIERTO') final  DateTime fechaAbierto;

/// Create a copy of CatalogoOrdenDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogoOrdenDTOCopyWith<_CatalogoOrdenDTO> get copyWith => __$CatalogoOrdenDTOCopyWithImpl<_CatalogoOrdenDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogoOrdenDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogoOrdenDTO&&(identical(other.catalogoId, catalogoId) || other.catalogoId == catalogoId)&&(identical(other.fechaAbierto, fechaAbierto) || other.fechaAbierto == fechaAbierto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catalogoId,fechaAbierto);

@override
String toString() {
  return 'CatalogoOrdenDTO(catalogoId: $catalogoId, fechaAbierto: $fechaAbierto)';
}


}

/// @nodoc
abstract mixin class _$CatalogoOrdenDTOCopyWith<$Res> implements $CatalogoOrdenDTOCopyWith<$Res> {
  factory _$CatalogoOrdenDTOCopyWith(_CatalogoOrdenDTO value, $Res Function(_CatalogoOrdenDTO) _then) = __$CatalogoOrdenDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CATALOGO_ID') int catalogoId,@JsonKey(name: 'FECHA_ABIERTO') DateTime fechaAbierto
});




}
/// @nodoc
class __$CatalogoOrdenDTOCopyWithImpl<$Res>
    implements _$CatalogoOrdenDTOCopyWith<$Res> {
  __$CatalogoOrdenDTOCopyWithImpl(this._self, this._then);

  final _CatalogoOrdenDTO _self;
  final $Res Function(_CatalogoOrdenDTO) _then;

/// Create a copy of CatalogoOrdenDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catalogoId = null,Object? fechaAbierto = null,}) {
  return _then(_CatalogoOrdenDTO(
catalogoId: null == catalogoId ? _self.catalogoId : catalogoId // ignore: cast_nullable_to_non_nullable
as int,fechaAbierto: null == fechaAbierto ? _self.fechaAbierto : fechaAbierto // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
