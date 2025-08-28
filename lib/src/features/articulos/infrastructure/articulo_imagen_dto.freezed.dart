// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_imagen_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticuloImagenDTO {

@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'NOMBRE_ARCHIVO') String get nombreArchivo;
/// Create a copy of ArticuloImagenDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloImagenDTOCopyWith<ArticuloImagenDTO> get copyWith => _$ArticuloImagenDTOCopyWithImpl<ArticuloImagenDTO>(this as ArticuloImagenDTO, _$identity);

  /// Serializes this ArticuloImagenDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloImagenDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.nombreArchivo, nombreArchivo) || other.nombreArchivo == nombreArchivo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,nombreArchivo);

@override
String toString() {
  return 'ArticuloImagenDTO(articuloId: $articuloId, nombreArchivo: $nombreArchivo)';
}


}

/// @nodoc
abstract mixin class $ArticuloImagenDTOCopyWith<$Res>  {
  factory $ArticuloImagenDTOCopyWith(ArticuloImagenDTO value, $Res Function(ArticuloImagenDTO) _then) = _$ArticuloImagenDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'NOMBRE_ARCHIVO') String nombreArchivo
});




}
/// @nodoc
class _$ArticuloImagenDTOCopyWithImpl<$Res>
    implements $ArticuloImagenDTOCopyWith<$Res> {
  _$ArticuloImagenDTOCopyWithImpl(this._self, this._then);

  final ArticuloImagenDTO _self;
  final $Res Function(ArticuloImagenDTO) _then;

/// Create a copy of ArticuloImagenDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? nombreArchivo = null,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,nombreArchivo: null == nombreArchivo ? _self.nombreArchivo : nombreArchivo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloImagenDTO].
extension ArticuloImagenDTOPatterns on ArticuloImagenDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloImagenDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloImagenDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloImagenDTO value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloImagenDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloImagenDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloImagenDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'NOMBRE_ARCHIVO')  String nombreArchivo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloImagenDTO() when $default != null:
return $default(_that.articuloId,_that.nombreArchivo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'NOMBRE_ARCHIVO')  String nombreArchivo)  $default,) {final _that = this;
switch (_that) {
case _ArticuloImagenDTO():
return $default(_that.articuloId,_that.nombreArchivo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'NOMBRE_ARCHIVO')  String nombreArchivo)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloImagenDTO() when $default != null:
return $default(_that.articuloId,_that.nombreArchivo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticuloImagenDTO extends ArticuloImagenDTO {
  const _ArticuloImagenDTO({@JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'NOMBRE_ARCHIVO') required this.nombreArchivo}): super._();
  factory _ArticuloImagenDTO.fromJson(Map<String, dynamic> json) => _$ArticuloImagenDTOFromJson(json);

@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'NOMBRE_ARCHIVO') final  String nombreArchivo;

/// Create a copy of ArticuloImagenDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloImagenDTOCopyWith<_ArticuloImagenDTO> get copyWith => __$ArticuloImagenDTOCopyWithImpl<_ArticuloImagenDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticuloImagenDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloImagenDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.nombreArchivo, nombreArchivo) || other.nombreArchivo == nombreArchivo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,nombreArchivo);

@override
String toString() {
  return 'ArticuloImagenDTO(articuloId: $articuloId, nombreArchivo: $nombreArchivo)';
}


}

/// @nodoc
abstract mixin class _$ArticuloImagenDTOCopyWith<$Res> implements $ArticuloImagenDTOCopyWith<$Res> {
  factory _$ArticuloImagenDTOCopyWith(_ArticuloImagenDTO value, $Res Function(_ArticuloImagenDTO) _then) = __$ArticuloImagenDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'NOMBRE_ARCHIVO') String nombreArchivo
});




}
/// @nodoc
class __$ArticuloImagenDTOCopyWithImpl<$Res>
    implements _$ArticuloImagenDTOCopyWith<$Res> {
  __$ArticuloImagenDTOCopyWithImpl(this._self, this._then);

  final _ArticuloImagenDTO _self;
  final $Res Function(_ArticuloImagenDTO) _then;

/// Create a copy of ArticuloImagenDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? nombreArchivo = null,}) {
  return _then(_ArticuloImagenDTO(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,nombreArchivo: null == nombreArchivo ? _self.nombreArchivo : nombreArchivo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
