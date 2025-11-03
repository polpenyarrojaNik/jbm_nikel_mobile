// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_precio_tarifa_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticuloPrecioTarifaDTO {

@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'TARIFA_ID') String get tarifaId;@JsonKey(name: 'TARIFA_DESCRIPCION') String? get tarifaDescripcion;@JsonKey(name: 'CANTIDAD_DESDE') int get cantidadDesde;@JsonKey(name: 'PRECIO') double get precio;@JsonKey(name: 'DIVISA_ID') String get divisaId;@JsonKey(name: 'TIPO_PRECIO') int get tipoPrecio;@JsonKey(name: 'VISIBLE_SN') String get visibleSN;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ArticuloPrecioTarifaDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloPrecioTarifaDTOCopyWith<ArticuloPrecioTarifaDTO> get copyWith => _$ArticuloPrecioTarifaDTOCopyWithImpl<ArticuloPrecioTarifaDTO>(this as ArticuloPrecioTarifaDTO, _$identity);

  /// Serializes this ArticuloPrecioTarifaDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloPrecioTarifaDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.tarifaId, tarifaId) || other.tarifaId == tarifaId)&&(identical(other.tarifaDescripcion, tarifaDescripcion) || other.tarifaDescripcion == tarifaDescripcion)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.visibleSN, visibleSN) || other.visibleSN == visibleSN)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,tarifaId,tarifaDescripcion,cantidadDesde,precio,divisaId,tipoPrecio,visibleSN,lastUpdated,deleted);

@override
String toString() {
  return 'ArticuloPrecioTarifaDTO(articuloId: $articuloId, tarifaId: $tarifaId, tarifaDescripcion: $tarifaDescripcion, cantidadDesde: $cantidadDesde, precio: $precio, divisaId: $divisaId, tipoPrecio: $tipoPrecio, visibleSN: $visibleSN, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ArticuloPrecioTarifaDTOCopyWith<$Res>  {
  factory $ArticuloPrecioTarifaDTOCopyWith(ArticuloPrecioTarifaDTO value, $Res Function(ArticuloPrecioTarifaDTO) _then) = _$ArticuloPrecioTarifaDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'TARIFA_ID') String tarifaId,@JsonKey(name: 'TARIFA_DESCRIPCION') String? tarifaDescripcion,@JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,@JsonKey(name: 'PRECIO') double precio,@JsonKey(name: 'DIVISA_ID') String divisaId,@JsonKey(name: 'TIPO_PRECIO') int tipoPrecio,@JsonKey(name: 'VISIBLE_SN') String visibleSN,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ArticuloPrecioTarifaDTOCopyWithImpl<$Res>
    implements $ArticuloPrecioTarifaDTOCopyWith<$Res> {
  _$ArticuloPrecioTarifaDTOCopyWithImpl(this._self, this._then);

  final ArticuloPrecioTarifaDTO _self;
  final $Res Function(ArticuloPrecioTarifaDTO) _then;

/// Create a copy of ArticuloPrecioTarifaDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? tarifaId = null,Object? tarifaDescripcion = freezed,Object? cantidadDesde = null,Object? precio = null,Object? divisaId = null,Object? tipoPrecio = null,Object? visibleSN = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,tarifaId: null == tarifaId ? _self.tarifaId : tarifaId // ignore: cast_nullable_to_non_nullable
as String,tarifaDescripcion: freezed == tarifaDescripcion ? _self.tarifaDescripcion : tarifaDescripcion // ignore: cast_nullable_to_non_nullable
as String?,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as double,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,visibleSN: null == visibleSN ? _self.visibleSN : visibleSN // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloPrecioTarifaDTO].
extension ArticuloPrecioTarifaDTOPatterns on ArticuloPrecioTarifaDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloPrecioTarifaDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloPrecioTarifaDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloPrecioTarifaDTO value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloPrecioTarifaDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloPrecioTarifaDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloPrecioTarifaDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'TARIFA_ID')  String tarifaId, @JsonKey(name: 'TARIFA_DESCRIPCION')  String? tarifaDescripcion, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'PRECIO')  double precio, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'TIPO_PRECIO')  int tipoPrecio, @JsonKey(name: 'VISIBLE_SN')  String visibleSN, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloPrecioTarifaDTO() when $default != null:
return $default(_that.articuloId,_that.tarifaId,_that.tarifaDescripcion,_that.cantidadDesde,_that.precio,_that.divisaId,_that.tipoPrecio,_that.visibleSN,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'TARIFA_ID')  String tarifaId, @JsonKey(name: 'TARIFA_DESCRIPCION')  String? tarifaDescripcion, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'PRECIO')  double precio, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'TIPO_PRECIO')  int tipoPrecio, @JsonKey(name: 'VISIBLE_SN')  String visibleSN, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ArticuloPrecioTarifaDTO():
return $default(_that.articuloId,_that.tarifaId,_that.tarifaDescripcion,_that.cantidadDesde,_that.precio,_that.divisaId,_that.tipoPrecio,_that.visibleSN,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'TARIFA_ID')  String tarifaId, @JsonKey(name: 'TARIFA_DESCRIPCION')  String? tarifaDescripcion, @JsonKey(name: 'CANTIDAD_DESDE')  int cantidadDesde, @JsonKey(name: 'PRECIO')  double precio, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'TIPO_PRECIO')  int tipoPrecio, @JsonKey(name: 'VISIBLE_SN')  String visibleSN, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloPrecioTarifaDTO() when $default != null:
return $default(_that.articuloId,_that.tarifaId,_that.tarifaDescripcion,_that.cantidadDesde,_that.precio,_that.divisaId,_that.tipoPrecio,_that.visibleSN,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticuloPrecioTarifaDTO extends ArticuloPrecioTarifaDTO {
  const _ArticuloPrecioTarifaDTO({@JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'TARIFA_ID') required this.tarifaId, @JsonKey(name: 'TARIFA_DESCRIPCION') this.tarifaDescripcion, @JsonKey(name: 'CANTIDAD_DESDE') required this.cantidadDesde, @JsonKey(name: 'PRECIO') required this.precio, @JsonKey(name: 'DIVISA_ID') required this.divisaId, @JsonKey(name: 'TIPO_PRECIO') required this.tipoPrecio, @JsonKey(name: 'VISIBLE_SN') required this.visibleSN, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _ArticuloPrecioTarifaDTO.fromJson(Map<String, dynamic> json) => _$ArticuloPrecioTarifaDTOFromJson(json);

@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'TARIFA_ID') final  String tarifaId;
@override@JsonKey(name: 'TARIFA_DESCRIPCION') final  String? tarifaDescripcion;
@override@JsonKey(name: 'CANTIDAD_DESDE') final  int cantidadDesde;
@override@JsonKey(name: 'PRECIO') final  double precio;
@override@JsonKey(name: 'DIVISA_ID') final  String divisaId;
@override@JsonKey(name: 'TIPO_PRECIO') final  int tipoPrecio;
@override@JsonKey(name: 'VISIBLE_SN') final  String visibleSN;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ArticuloPrecioTarifaDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloPrecioTarifaDTOCopyWith<_ArticuloPrecioTarifaDTO> get copyWith => __$ArticuloPrecioTarifaDTOCopyWithImpl<_ArticuloPrecioTarifaDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticuloPrecioTarifaDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloPrecioTarifaDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.tarifaId, tarifaId) || other.tarifaId == tarifaId)&&(identical(other.tarifaDescripcion, tarifaDescripcion) || other.tarifaDescripcion == tarifaDescripcion)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.precio, precio) || other.precio == precio)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.visibleSN, visibleSN) || other.visibleSN == visibleSN)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,tarifaId,tarifaDescripcion,cantidadDesde,precio,divisaId,tipoPrecio,visibleSN,lastUpdated,deleted);

@override
String toString() {
  return 'ArticuloPrecioTarifaDTO(articuloId: $articuloId, tarifaId: $tarifaId, tarifaDescripcion: $tarifaDescripcion, cantidadDesde: $cantidadDesde, precio: $precio, divisaId: $divisaId, tipoPrecio: $tipoPrecio, visibleSN: $visibleSN, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ArticuloPrecioTarifaDTOCopyWith<$Res> implements $ArticuloPrecioTarifaDTOCopyWith<$Res> {
  factory _$ArticuloPrecioTarifaDTOCopyWith(_ArticuloPrecioTarifaDTO value, $Res Function(_ArticuloPrecioTarifaDTO) _then) = __$ArticuloPrecioTarifaDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'TARIFA_ID') String tarifaId,@JsonKey(name: 'TARIFA_DESCRIPCION') String? tarifaDescripcion,@JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,@JsonKey(name: 'PRECIO') double precio,@JsonKey(name: 'DIVISA_ID') String divisaId,@JsonKey(name: 'TIPO_PRECIO') int tipoPrecio,@JsonKey(name: 'VISIBLE_SN') String visibleSN,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ArticuloPrecioTarifaDTOCopyWithImpl<$Res>
    implements _$ArticuloPrecioTarifaDTOCopyWith<$Res> {
  __$ArticuloPrecioTarifaDTOCopyWithImpl(this._self, this._then);

  final _ArticuloPrecioTarifaDTO _self;
  final $Res Function(_ArticuloPrecioTarifaDTO) _then;

/// Create a copy of ArticuloPrecioTarifaDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? tarifaId = null,Object? tarifaDescripcion = freezed,Object? cantidadDesde = null,Object? precio = null,Object? divisaId = null,Object? tipoPrecio = null,Object? visibleSN = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ArticuloPrecioTarifaDTO(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,tarifaId: null == tarifaId ? _self.tarifaId : tarifaId // ignore: cast_nullable_to_non_nullable
as String,tarifaDescripcion: freezed == tarifaDescripcion ? _self.tarifaDescripcion : tarifaDescripcion // ignore: cast_nullable_to_non_nullable
as String?,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,precio: null == precio ? _self.precio : precio // ignore: cast_nullable_to_non_nullable
as double,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,visibleSN: null == visibleSN ? _self.visibleSN : visibleSN // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
