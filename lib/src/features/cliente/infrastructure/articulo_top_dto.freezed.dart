// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_top_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticuloTopDTO {

@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'DESCRIPCION_ES') String get descripcion;@JsonKey(name: 'VENTAS_TOTAL') double get ventasTotal;@JsonKey(name: 'VENTAS_CLIENTE') double get ventasCliente;@JsonKey(name: 'DIVISA_ID') String get divisaId;
/// Create a copy of ArticuloTopDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloTopDTOCopyWith<ArticuloTopDTO> get copyWith => _$ArticuloTopDTOCopyWithImpl<ArticuloTopDTO>(this as ArticuloTopDTO, _$identity);

  /// Serializes this ArticuloTopDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloTopDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.ventasTotal, ventasTotal) || other.ventasTotal == ventasTotal)&&(identical(other.ventasCliente, ventasCliente) || other.ventasCliente == ventasCliente)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,descripcion,ventasTotal,ventasCliente,divisaId);

@override
String toString() {
  return 'ArticuloTopDTO(articuloId: $articuloId, descripcion: $descripcion, ventasTotal: $ventasTotal, ventasCliente: $ventasCliente, divisaId: $divisaId)';
}


}

/// @nodoc
abstract mixin class $ArticuloTopDTOCopyWith<$Res>  {
  factory $ArticuloTopDTOCopyWith(ArticuloTopDTO value, $Res Function(ArticuloTopDTO) _then) = _$ArticuloTopDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'DESCRIPCION_ES') String descripcion,@JsonKey(name: 'VENTAS_TOTAL') double ventasTotal,@JsonKey(name: 'VENTAS_CLIENTE') double ventasCliente,@JsonKey(name: 'DIVISA_ID') String divisaId
});




}
/// @nodoc
class _$ArticuloTopDTOCopyWithImpl<$Res>
    implements $ArticuloTopDTOCopyWith<$Res> {
  _$ArticuloTopDTOCopyWithImpl(this._self, this._then);

  final ArticuloTopDTO _self;
  final $Res Function(ArticuloTopDTO) _then;

/// Create a copy of ArticuloTopDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? descripcion = null,Object? ventasTotal = null,Object? ventasCliente = null,Object? divisaId = null,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,ventasTotal: null == ventasTotal ? _self.ventasTotal : ventasTotal // ignore: cast_nullable_to_non_nullable
as double,ventasCliente: null == ventasCliente ? _self.ventasCliente : ventasCliente // ignore: cast_nullable_to_non_nullable
as double,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloTopDTO].
extension ArticuloTopDTOPatterns on ArticuloTopDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloTopDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloTopDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloTopDTO value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloTopDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloTopDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloTopDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'DESCRIPCION_ES')  String descripcion, @JsonKey(name: 'VENTAS_TOTAL')  double ventasTotal, @JsonKey(name: 'VENTAS_CLIENTE')  double ventasCliente, @JsonKey(name: 'DIVISA_ID')  String divisaId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloTopDTO() when $default != null:
return $default(_that.articuloId,_that.descripcion,_that.ventasTotal,_that.ventasCliente,_that.divisaId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'DESCRIPCION_ES')  String descripcion, @JsonKey(name: 'VENTAS_TOTAL')  double ventasTotal, @JsonKey(name: 'VENTAS_CLIENTE')  double ventasCliente, @JsonKey(name: 'DIVISA_ID')  String divisaId)  $default,) {final _that = this;
switch (_that) {
case _ArticuloTopDTO():
return $default(_that.articuloId,_that.descripcion,_that.ventasTotal,_that.ventasCliente,_that.divisaId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'DESCRIPCION_ES')  String descripcion, @JsonKey(name: 'VENTAS_TOTAL')  double ventasTotal, @JsonKey(name: 'VENTAS_CLIENTE')  double ventasCliente, @JsonKey(name: 'DIVISA_ID')  String divisaId)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloTopDTO() when $default != null:
return $default(_that.articuloId,_that.descripcion,_that.ventasTotal,_that.ventasCliente,_that.divisaId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticuloTopDTO extends ArticuloTopDTO {
  const _ArticuloTopDTO({@JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'DESCRIPCION_ES') required this.descripcion, @JsonKey(name: 'VENTAS_TOTAL') required this.ventasTotal, @JsonKey(name: 'VENTAS_CLIENTE') required this.ventasCliente, @JsonKey(name: 'DIVISA_ID') required this.divisaId}): super._();
  factory _ArticuloTopDTO.fromJson(Map<String, dynamic> json) => _$ArticuloTopDTOFromJson(json);

@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'DESCRIPCION_ES') final  String descripcion;
@override@JsonKey(name: 'VENTAS_TOTAL') final  double ventasTotal;
@override@JsonKey(name: 'VENTAS_CLIENTE') final  double ventasCliente;
@override@JsonKey(name: 'DIVISA_ID') final  String divisaId;

/// Create a copy of ArticuloTopDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloTopDTOCopyWith<_ArticuloTopDTO> get copyWith => __$ArticuloTopDTOCopyWithImpl<_ArticuloTopDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticuloTopDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloTopDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.ventasTotal, ventasTotal) || other.ventasTotal == ventasTotal)&&(identical(other.ventasCliente, ventasCliente) || other.ventasCliente == ventasCliente)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,descripcion,ventasTotal,ventasCliente,divisaId);

@override
String toString() {
  return 'ArticuloTopDTO(articuloId: $articuloId, descripcion: $descripcion, ventasTotal: $ventasTotal, ventasCliente: $ventasCliente, divisaId: $divisaId)';
}


}

/// @nodoc
abstract mixin class _$ArticuloTopDTOCopyWith<$Res> implements $ArticuloTopDTOCopyWith<$Res> {
  factory _$ArticuloTopDTOCopyWith(_ArticuloTopDTO value, $Res Function(_ArticuloTopDTO) _then) = __$ArticuloTopDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'DESCRIPCION_ES') String descripcion,@JsonKey(name: 'VENTAS_TOTAL') double ventasTotal,@JsonKey(name: 'VENTAS_CLIENTE') double ventasCliente,@JsonKey(name: 'DIVISA_ID') String divisaId
});




}
/// @nodoc
class __$ArticuloTopDTOCopyWithImpl<$Res>
    implements _$ArticuloTopDTOCopyWith<$Res> {
  __$ArticuloTopDTOCopyWithImpl(this._self, this._then);

  final _ArticuloTopDTO _self;
  final $Res Function(_ArticuloTopDTO) _then;

/// Create a copy of ArticuloTopDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? descripcion = null,Object? ventasTotal = null,Object? ventasCliente = null,Object? divisaId = null,}) {
  return _then(_ArticuloTopDTO(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,ventasTotal: null == ventasTotal ? _self.ventasTotal : ventasTotal // ignore: cast_nullable_to_non_nullable
as double,ventasCliente: null == ventasCliente ? _self.ventasCliente : ventasCliente // ignore: cast_nullable_to_non_nullable
as double,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
