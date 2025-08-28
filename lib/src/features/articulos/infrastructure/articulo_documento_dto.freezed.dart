// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_documento_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticuloDocumentoDTO {

@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'NOMBRE_ARCHIVO') String? get nombreArchivo;@JsonKey(name: 'IDIOMA_ID') String get idiomaId;@JsonKey(name: 'OBSERVACIONES') String? get observaciones;
/// Create a copy of ArticuloDocumentoDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloDocumentoDTOCopyWith<ArticuloDocumentoDTO> get copyWith => _$ArticuloDocumentoDTOCopyWithImpl<ArticuloDocumentoDTO>(this as ArticuloDocumentoDTO, _$identity);

  /// Serializes this ArticuloDocumentoDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloDocumentoDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.nombreArchivo, nombreArchivo) || other.nombreArchivo == nombreArchivo)&&(identical(other.idiomaId, idiomaId) || other.idiomaId == idiomaId)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,nombreArchivo,idiomaId,observaciones);

@override
String toString() {
  return 'ArticuloDocumentoDTO(articuloId: $articuloId, nombreArchivo: $nombreArchivo, idiomaId: $idiomaId, observaciones: $observaciones)';
}


}

/// @nodoc
abstract mixin class $ArticuloDocumentoDTOCopyWith<$Res>  {
  factory $ArticuloDocumentoDTOCopyWith(ArticuloDocumentoDTO value, $Res Function(ArticuloDocumentoDTO) _then) = _$ArticuloDocumentoDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'NOMBRE_ARCHIVO') String? nombreArchivo,@JsonKey(name: 'IDIOMA_ID') String idiomaId,@JsonKey(name: 'OBSERVACIONES') String? observaciones
});




}
/// @nodoc
class _$ArticuloDocumentoDTOCopyWithImpl<$Res>
    implements $ArticuloDocumentoDTOCopyWith<$Res> {
  _$ArticuloDocumentoDTOCopyWithImpl(this._self, this._then);

  final ArticuloDocumentoDTO _self;
  final $Res Function(ArticuloDocumentoDTO) _then;

/// Create a copy of ArticuloDocumentoDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? nombreArchivo = freezed,Object? idiomaId = null,Object? observaciones = freezed,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,nombreArchivo: freezed == nombreArchivo ? _self.nombreArchivo : nombreArchivo // ignore: cast_nullable_to_non_nullable
as String?,idiomaId: null == idiomaId ? _self.idiomaId : idiomaId // ignore: cast_nullable_to_non_nullable
as String,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloDocumentoDTO].
extension ArticuloDocumentoDTOPatterns on ArticuloDocumentoDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloDocumentoDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloDocumentoDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloDocumentoDTO value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloDocumentoDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloDocumentoDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloDocumentoDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'NOMBRE_ARCHIVO')  String? nombreArchivo, @JsonKey(name: 'IDIOMA_ID')  String idiomaId, @JsonKey(name: 'OBSERVACIONES')  String? observaciones)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloDocumentoDTO() when $default != null:
return $default(_that.articuloId,_that.nombreArchivo,_that.idiomaId,_that.observaciones);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'NOMBRE_ARCHIVO')  String? nombreArchivo, @JsonKey(name: 'IDIOMA_ID')  String idiomaId, @JsonKey(name: 'OBSERVACIONES')  String? observaciones)  $default,) {final _that = this;
switch (_that) {
case _ArticuloDocumentoDTO():
return $default(_that.articuloId,_that.nombreArchivo,_that.idiomaId,_that.observaciones);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'NOMBRE_ARCHIVO')  String? nombreArchivo, @JsonKey(name: 'IDIOMA_ID')  String idiomaId, @JsonKey(name: 'OBSERVACIONES')  String? observaciones)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloDocumentoDTO() when $default != null:
return $default(_that.articuloId,_that.nombreArchivo,_that.idiomaId,_that.observaciones);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticuloDocumentoDTO extends ArticuloDocumentoDTO {
  const _ArticuloDocumentoDTO({@JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'NOMBRE_ARCHIVO') this.nombreArchivo, @JsonKey(name: 'IDIOMA_ID') required this.idiomaId, @JsonKey(name: 'OBSERVACIONES') this.observaciones}): super._();
  factory _ArticuloDocumentoDTO.fromJson(Map<String, dynamic> json) => _$ArticuloDocumentoDTOFromJson(json);

@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'NOMBRE_ARCHIVO') final  String? nombreArchivo;
@override@JsonKey(name: 'IDIOMA_ID') final  String idiomaId;
@override@JsonKey(name: 'OBSERVACIONES') final  String? observaciones;

/// Create a copy of ArticuloDocumentoDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloDocumentoDTOCopyWith<_ArticuloDocumentoDTO> get copyWith => __$ArticuloDocumentoDTOCopyWithImpl<_ArticuloDocumentoDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticuloDocumentoDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloDocumentoDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.nombreArchivo, nombreArchivo) || other.nombreArchivo == nombreArchivo)&&(identical(other.idiomaId, idiomaId) || other.idiomaId == idiomaId)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,nombreArchivo,idiomaId,observaciones);

@override
String toString() {
  return 'ArticuloDocumentoDTO(articuloId: $articuloId, nombreArchivo: $nombreArchivo, idiomaId: $idiomaId, observaciones: $observaciones)';
}


}

/// @nodoc
abstract mixin class _$ArticuloDocumentoDTOCopyWith<$Res> implements $ArticuloDocumentoDTOCopyWith<$Res> {
  factory _$ArticuloDocumentoDTOCopyWith(_ArticuloDocumentoDTO value, $Res Function(_ArticuloDocumentoDTO) _then) = __$ArticuloDocumentoDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'NOMBRE_ARCHIVO') String? nombreArchivo,@JsonKey(name: 'IDIOMA_ID') String idiomaId,@JsonKey(name: 'OBSERVACIONES') String? observaciones
});




}
/// @nodoc
class __$ArticuloDocumentoDTOCopyWithImpl<$Res>
    implements _$ArticuloDocumentoDTOCopyWith<$Res> {
  __$ArticuloDocumentoDTOCopyWithImpl(this._self, this._then);

  final _ArticuloDocumentoDTO _self;
  final $Res Function(_ArticuloDocumentoDTO) _then;

/// Create a copy of ArticuloDocumentoDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? nombreArchivo = freezed,Object? idiomaId = null,Object? observaciones = freezed,}) {
  return _then(_ArticuloDocumentoDTO(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,nombreArchivo: freezed == nombreArchivo ? _self.nombreArchivo : nombreArchivo // ignore: cast_nullable_to_non_nullable
as String?,idiomaId: null == idiomaId ? _self.idiomaId : idiomaId // ignore: cast_nullable_to_non_nullable
as String,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
