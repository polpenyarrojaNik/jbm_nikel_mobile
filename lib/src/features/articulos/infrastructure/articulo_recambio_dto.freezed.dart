// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_recambio_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticuloRecambioDTO {

@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'RECAMBIO_ID') String get id;@JsonKey(name: 'DESCRIPCION') String get descripcion;@JsonKey(name: 'CANTIDAD') int get cantidad;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ArticuloRecambioDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloRecambioDTOCopyWith<ArticuloRecambioDTO> get copyWith => _$ArticuloRecambioDTOCopyWithImpl<ArticuloRecambioDTO>(this as ArticuloRecambioDTO, _$identity);

  /// Serializes this ArticuloRecambioDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloRecambioDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.id, id) || other.id == id)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.cantidad, cantidad) || other.cantidad == cantidad)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,id,descripcion,cantidad,lastUpdated,deleted);

@override
String toString() {
  return 'ArticuloRecambioDTO(articuloId: $articuloId, id: $id, descripcion: $descripcion, cantidad: $cantidad, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ArticuloRecambioDTOCopyWith<$Res>  {
  factory $ArticuloRecambioDTOCopyWith(ArticuloRecambioDTO value, $Res Function(ArticuloRecambioDTO) _then) = _$ArticuloRecambioDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'RECAMBIO_ID') String id,@JsonKey(name: 'DESCRIPCION') String descripcion,@JsonKey(name: 'CANTIDAD') int cantidad,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ArticuloRecambioDTOCopyWithImpl<$Res>
    implements $ArticuloRecambioDTOCopyWith<$Res> {
  _$ArticuloRecambioDTOCopyWithImpl(this._self, this._then);

  final ArticuloRecambioDTO _self;
  final $Res Function(ArticuloRecambioDTO) _then;

/// Create a copy of ArticuloRecambioDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? id = null,Object? descripcion = null,Object? cantidad = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,cantidad: null == cantidad ? _self.cantidad : cantidad // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloRecambioDTO].
extension ArticuloRecambioDTOPatterns on ArticuloRecambioDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloRecambioDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloRecambioDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloRecambioDTO value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloRecambioDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloRecambioDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloRecambioDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'RECAMBIO_ID')  String id, @JsonKey(name: 'DESCRIPCION')  String descripcion, @JsonKey(name: 'CANTIDAD')  int cantidad, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloRecambioDTO() when $default != null:
return $default(_that.articuloId,_that.id,_that.descripcion,_that.cantidad,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'RECAMBIO_ID')  String id, @JsonKey(name: 'DESCRIPCION')  String descripcion, @JsonKey(name: 'CANTIDAD')  int cantidad, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ArticuloRecambioDTO():
return $default(_that.articuloId,_that.id,_that.descripcion,_that.cantidad,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'RECAMBIO_ID')  String id, @JsonKey(name: 'DESCRIPCION')  String descripcion, @JsonKey(name: 'CANTIDAD')  int cantidad, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloRecambioDTO() when $default != null:
return $default(_that.articuloId,_that.id,_that.descripcion,_that.cantidad,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticuloRecambioDTO extends ArticuloRecambioDTO {
  const _ArticuloRecambioDTO({@JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'RECAMBIO_ID') required this.id, @JsonKey(name: 'DESCRIPCION') required this.descripcion, @JsonKey(name: 'CANTIDAD') required this.cantidad, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _ArticuloRecambioDTO.fromJson(Map<String, dynamic> json) => _$ArticuloRecambioDTOFromJson(json);

@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'RECAMBIO_ID') final  String id;
@override@JsonKey(name: 'DESCRIPCION') final  String descripcion;
@override@JsonKey(name: 'CANTIDAD') final  int cantidad;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ArticuloRecambioDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloRecambioDTOCopyWith<_ArticuloRecambioDTO> get copyWith => __$ArticuloRecambioDTOCopyWithImpl<_ArticuloRecambioDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticuloRecambioDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloRecambioDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.id, id) || other.id == id)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.cantidad, cantidad) || other.cantidad == cantidad)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,id,descripcion,cantidad,lastUpdated,deleted);

@override
String toString() {
  return 'ArticuloRecambioDTO(articuloId: $articuloId, id: $id, descripcion: $descripcion, cantidad: $cantidad, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ArticuloRecambioDTOCopyWith<$Res> implements $ArticuloRecambioDTOCopyWith<$Res> {
  factory _$ArticuloRecambioDTOCopyWith(_ArticuloRecambioDTO value, $Res Function(_ArticuloRecambioDTO) _then) = __$ArticuloRecambioDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'RECAMBIO_ID') String id,@JsonKey(name: 'DESCRIPCION') String descripcion,@JsonKey(name: 'CANTIDAD') int cantidad,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ArticuloRecambioDTOCopyWithImpl<$Res>
    implements _$ArticuloRecambioDTOCopyWith<$Res> {
  __$ArticuloRecambioDTOCopyWithImpl(this._self, this._then);

  final _ArticuloRecambioDTO _self;
  final $Res Function(_ArticuloRecambioDTO) _then;

/// Create a copy of ArticuloRecambioDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? id = null,Object? descripcion = null,Object? cantidad = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ArticuloRecambioDTO(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,cantidad: null == cantidad ? _self.cantidad : cantidad // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
