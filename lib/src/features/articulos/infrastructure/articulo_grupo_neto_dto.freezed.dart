// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_grupo_neto_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticuloGrupoNetoDTO {

@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'GRUPO_NETO_ID') String get grupoNetoId;@JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String get grupoNetoDescripcion;@JsonKey(name: 'CANTIDAD_DESDE') int get cantidadDesde;@JsonKey(name: 'PRECIO') double get precio;@JsonKey(name: 'DIVISA_ID') String get divisaId;@JsonKey(name: 'TIPO_PRECIO') int get tipoPrecio;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ArticuloGrupoNetoDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloGrupoNetoDTOCopyWith<ArticuloGrupoNetoDTO> get copyWith => _$ArticuloGrupoNetoDTOCopyWithImpl<ArticuloGrupoNetoDTO>(this as ArticuloGrupoNetoDTO, _$identity);

  /// Serializes this ArticuloGrupoNetoDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloGrupoNetoDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.grupoNetoId, grupoNetoId) || other.grupoNetoId == grupoNetoId)&&(identical(other.grupoNetoDescripcion, grupoNetoDescripcion) || other.grupoNetoDescripcion == grupoNetoDescripcion)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,grupoNetoId,grupoNetoDescripcion,cantidadDesde,precio,divisaId,tipoPrecio,lastUpdated,deleted);

@override
String toString() {
  return 'ArticuloGrupoNetoDTO(articuloId: $articuloId, grupoNetoId: $grupoNetoId, grupoNetoDescripcion: $grupoNetoDescripcion, cantidadDesde: $cantidadDesde, precio: $precio, divisaId: $divisaId, tipoPrecio: $tipoPrecio, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ArticuloGrupoNetoDTOCopyWith<$Res>  {
  factory $ArticuloGrupoNetoDTOCopyWith(ArticuloGrupoNetoDTO value, $Res Function(ArticuloGrupoNetoDTO) _then) = _$ArticuloGrupoNetoDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'GRUPO_NETO_ID') String grupoNetoId,@JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String grupoNetoDescripcion,@JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,@JsonKey(name: 'PRECIO') double precio,@JsonKey(name: 'DIVISA_ID') String divisaId,@JsonKey(name: 'TIPO_PRECIO') int tipoPrecio,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ArticuloGrupoNetoDTOCopyWithImpl<$Res>
    implements $ArticuloGrupoNetoDTOCopyWith<$Res> {
  _$ArticuloGrupoNetoDTOCopyWithImpl(this._self, this._then);

  final ArticuloGrupoNetoDTO _self;
  final $Res Function(ArticuloGrupoNetoDTO) _then;

/// Create a copy of ArticuloGrupoNetoDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? grupoNetoId = null,Object? grupoNetoDescripcion = null,Object? cantidadDesde = null,Object? precio = null,Object? divisaId = null,Object? tipoPrecio = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,grupoNetoId: null == grupoNetoId ? _self.grupoNetoId : grupoNetoId // ignore: cast_nullable_to_non_nullable
as String,grupoNetoDescripcion: null == grupoNetoDescripcion ? _self.grupoNetoDescripcion : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
as String,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as double,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloGrupoNetoDTO].
extension ArticuloGrupoNetoDTOPatterns on ArticuloGrupoNetoDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloGrupoNetoDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloGrupoNetoDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloGrupoNetoDTO value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloGrupoNetoDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloGrupoNetoDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloGrupoNetoDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'GRUPO_NETO_ID')  String grupoNetoId, @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')  String grupoNetoDescripcion, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'PRECIO')  double precio, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'TIPO_PRECIO')  int tipoPrecio, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloGrupoNetoDTO() when $default != null:
return $default(_that.articuloId,_that.grupoNetoId,_that.grupoNetoDescripcion,_that.cantidadDesde,_that.precio,_that.divisaId,_that.tipoPrecio,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'GRUPO_NETO_ID')  String grupoNetoId, @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')  String grupoNetoDescripcion, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'PRECIO')  double precio, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'TIPO_PRECIO')  int tipoPrecio, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ArticuloGrupoNetoDTO():
return $default(_that.articuloId,_that.grupoNetoId,_that.grupoNetoDescripcion,_that.cantidadDesde,_that.precio,_that.divisaId,_that.tipoPrecio,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'GRUPO_NETO_ID')  String grupoNetoId, @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')  String grupoNetoDescripcion, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'PRECIO')  double precio, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'TIPO_PRECIO')  int tipoPrecio, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloGrupoNetoDTO() when $default != null:
return $default(_that.articuloId,_that.grupoNetoId,_that.grupoNetoDescripcion,_that.cantidadDesde,_that.precio,_that.divisaId,_that.tipoPrecio,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticuloGrupoNetoDTO extends ArticuloGrupoNetoDTO {
  const _ArticuloGrupoNetoDTO({@JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'GRUPO_NETO_ID') required this.grupoNetoId, @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') required this.grupoNetoDescripcion, @JsonKey(name: 'CANTIDAD_DESDE') required this.cantidadDesde, @JsonKey(name: 'PRECIO') required this.precio, @JsonKey(name: 'DIVISA_ID') required this.divisaId, @JsonKey(name: 'TIPO_PRECIO') required this.tipoPrecio, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _ArticuloGrupoNetoDTO.fromJson(Map<String, dynamic> json) => _$ArticuloGrupoNetoDTOFromJson(json);

@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'GRUPO_NETO_ID') final  String grupoNetoId;
@override@JsonKey(name: 'GRUPO_NETO_DESCRIPCION') final  String grupoNetoDescripcion;
@override@JsonKey(name: 'CANTIDAD_DESDE') final  int cantidadDesde;
@override@JsonKey(name: 'PRECIO') final  double precio;
@override@JsonKey(name: 'DIVISA_ID') final  String divisaId;
@override@JsonKey(name: 'TIPO_PRECIO') final  int tipoPrecio;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ArticuloGrupoNetoDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloGrupoNetoDTOCopyWith<_ArticuloGrupoNetoDTO> get copyWith => __$ArticuloGrupoNetoDTOCopyWithImpl<_ArticuloGrupoNetoDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticuloGrupoNetoDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloGrupoNetoDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.grupoNetoId, grupoNetoId) || other.grupoNetoId == grupoNetoId)&&(identical(other.grupoNetoDescripcion, grupoNetoDescripcion) || other.grupoNetoDescripcion == grupoNetoDescripcion)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,grupoNetoId,grupoNetoDescripcion,cantidadDesde,precio,divisaId,tipoPrecio,lastUpdated,deleted);

@override
String toString() {
  return 'ArticuloGrupoNetoDTO(articuloId: $articuloId, grupoNetoId: $grupoNetoId, grupoNetoDescripcion: $grupoNetoDescripcion, cantidadDesde: $cantidadDesde, precio: $precio, divisaId: $divisaId, tipoPrecio: $tipoPrecio, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ArticuloGrupoNetoDTOCopyWith<$Res> implements $ArticuloGrupoNetoDTOCopyWith<$Res> {
  factory _$ArticuloGrupoNetoDTOCopyWith(_ArticuloGrupoNetoDTO value, $Res Function(_ArticuloGrupoNetoDTO) _then) = __$ArticuloGrupoNetoDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'GRUPO_NETO_ID') String grupoNetoId,@JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String grupoNetoDescripcion,@JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,@JsonKey(name: 'PRECIO') double precio,@JsonKey(name: 'DIVISA_ID') String divisaId,@JsonKey(name: 'TIPO_PRECIO') int tipoPrecio,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ArticuloGrupoNetoDTOCopyWithImpl<$Res>
    implements _$ArticuloGrupoNetoDTOCopyWith<$Res> {
  __$ArticuloGrupoNetoDTOCopyWithImpl(this._self, this._then);

  final _ArticuloGrupoNetoDTO _self;
  final $Res Function(_ArticuloGrupoNetoDTO) _then;

/// Create a copy of ArticuloGrupoNetoDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? grupoNetoId = null,Object? grupoNetoDescripcion = null,Object? cantidadDesde = null,Object? precio = null,Object? divisaId = null,Object? tipoPrecio = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ArticuloGrupoNetoDTO(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,grupoNetoId: null == grupoNetoId ? _self.grupoNetoId : grupoNetoId // ignore: cast_nullable_to_non_nullable
as String,grupoNetoDescripcion: null == grupoNetoDescripcion ? _self.grupoNetoDescripcion : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
as String,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as double,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
