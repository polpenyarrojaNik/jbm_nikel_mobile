// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recomendacion_producto_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecomendacionProductoDTO {

@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'PROBABILIDAD') double get probabilidad;@JsonKey(name: 'MOTIVO') String get motivo;
/// Create a copy of RecomendacionProductoDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecomendacionProductoDTOCopyWith<RecomendacionProductoDTO> get copyWith => _$RecomendacionProductoDTOCopyWithImpl<RecomendacionProductoDTO>(this as RecomendacionProductoDTO, _$identity);

  /// Serializes this RecomendacionProductoDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecomendacionProductoDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.probabilidad, probabilidad) || other.probabilidad == probabilidad)&&(identical(other.motivo, motivo) || other.motivo == motivo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,probabilidad,motivo);

@override
String toString() {
  return 'RecomendacionProductoDTO(articuloId: $articuloId, probabilidad: $probabilidad, motivo: $motivo)';
}


}

/// @nodoc
abstract mixin class $RecomendacionProductoDTOCopyWith<$Res>  {
  factory $RecomendacionProductoDTOCopyWith(RecomendacionProductoDTO value, $Res Function(RecomendacionProductoDTO) _then) = _$RecomendacionProductoDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'PROBABILIDAD') double probabilidad,@JsonKey(name: 'MOTIVO') String motivo
});




}
/// @nodoc
class _$RecomendacionProductoDTOCopyWithImpl<$Res>
    implements $RecomendacionProductoDTOCopyWith<$Res> {
  _$RecomendacionProductoDTOCopyWithImpl(this._self, this._then);

  final RecomendacionProductoDTO _self;
  final $Res Function(RecomendacionProductoDTO) _then;

/// Create a copy of RecomendacionProductoDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? probabilidad = null,Object? motivo = null,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,probabilidad: null == probabilidad ? _self.probabilidad : probabilidad // ignore: cast_nullable_to_non_nullable
as double,motivo: null == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RecomendacionProductoDTO].
extension RecomendacionProductoDTOPatterns on RecomendacionProductoDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecomendacionProductoDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecomendacionProductoDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecomendacionProductoDTO value)  $default,){
final _that = this;
switch (_that) {
case _RecomendacionProductoDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecomendacionProductoDTO value)?  $default,){
final _that = this;
switch (_that) {
case _RecomendacionProductoDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'PROBABILIDAD')  double probabilidad, @JsonKey(name: 'MOTIVO')  String motivo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecomendacionProductoDTO() when $default != null:
return $default(_that.articuloId,_that.probabilidad,_that.motivo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'PROBABILIDAD')  double probabilidad, @JsonKey(name: 'MOTIVO')  String motivo)  $default,) {final _that = this;
switch (_that) {
case _RecomendacionProductoDTO():
return $default(_that.articuloId,_that.probabilidad,_that.motivo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'PROBABILIDAD')  double probabilidad, @JsonKey(name: 'MOTIVO')  String motivo)?  $default,) {final _that = this;
switch (_that) {
case _RecomendacionProductoDTO() when $default != null:
return $default(_that.articuloId,_that.probabilidad,_that.motivo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecomendacionProductoDTO extends RecomendacionProductoDTO {
  const _RecomendacionProductoDTO({@JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'PROBABILIDAD') required this.probabilidad, @JsonKey(name: 'MOTIVO') required this.motivo}): super._();
  factory _RecomendacionProductoDTO.fromJson(Map<String, dynamic> json) => _$RecomendacionProductoDTOFromJson(json);

@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'PROBABILIDAD') final  double probabilidad;
@override@JsonKey(name: 'MOTIVO') final  String motivo;

/// Create a copy of RecomendacionProductoDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecomendacionProductoDTOCopyWith<_RecomendacionProductoDTO> get copyWith => __$RecomendacionProductoDTOCopyWithImpl<_RecomendacionProductoDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecomendacionProductoDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecomendacionProductoDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.probabilidad, probabilidad) || other.probabilidad == probabilidad)&&(identical(other.motivo, motivo) || other.motivo == motivo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,probabilidad,motivo);

@override
String toString() {
  return 'RecomendacionProductoDTO(articuloId: $articuloId, probabilidad: $probabilidad, motivo: $motivo)';
}


}

/// @nodoc
abstract mixin class _$RecomendacionProductoDTOCopyWith<$Res> implements $RecomendacionProductoDTOCopyWith<$Res> {
  factory _$RecomendacionProductoDTOCopyWith(_RecomendacionProductoDTO value, $Res Function(_RecomendacionProductoDTO) _then) = __$RecomendacionProductoDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'PROBABILIDAD') double probabilidad,@JsonKey(name: 'MOTIVO') String motivo
});




}
/// @nodoc
class __$RecomendacionProductoDTOCopyWithImpl<$Res>
    implements _$RecomendacionProductoDTOCopyWith<$Res> {
  __$RecomendacionProductoDTOCopyWithImpl(this._self, this._then);

  final _RecomendacionProductoDTO _self;
  final $Res Function(_RecomendacionProductoDTO) _then;

/// Create a copy of RecomendacionProductoDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? probabilidad = null,Object? motivo = null,}) {
  return _then(_RecomendacionProductoDTO(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,probabilidad: null == probabilidad ? _self.probabilidad : probabilidad // ignore: cast_nullable_to_non_nullable
as double,motivo: null == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
