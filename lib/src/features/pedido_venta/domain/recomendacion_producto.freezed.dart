// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recomendacion_producto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecomendacionProducto {

 String get articuloId; String? get descripcion; double get probabilidad; String get motivo;
/// Create a copy of RecomendacionProducto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecomendacionProductoCopyWith<RecomendacionProducto> get copyWith => _$RecomendacionProductoCopyWithImpl<RecomendacionProducto>(this as RecomendacionProducto, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RecomendacionProducto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecomendacionProducto&&(identical(other.articuloId, _this.articuloId) || other.articuloId == _this.articuloId)&&(identical(other.descripcion, _this.descripcion) || other.descripcion == _this.descripcion)&&(identical(other.probabilidad, _this.probabilidad) || other.probabilidad == _this.probabilidad)&&(identical(other.motivo, _this.motivo) || other.motivo == _this.motivo));
}


@override
int get hashCode {
  final _this = this as RecomendacionProducto;
  return Object.hash(runtimeType,_this.articuloId,_this.descripcion,_this.probabilidad,_this.motivo);
}

@override
String toString() {
  final _this = this as RecomendacionProducto;
  return 'RecomendacionProducto(articuloId: ${_this.articuloId}, descripcion: ${_this.descripcion}, probabilidad: ${_this.probabilidad}, motivo: ${_this.motivo})';
}


}

/// @nodoc
abstract mixin class $RecomendacionProductoCopyWith<$Res>  {
  factory $RecomendacionProductoCopyWith(RecomendacionProducto value, $Res Function(RecomendacionProducto) _then) = _$RecomendacionProductoCopyWithImpl;
@useResult
$Res call({
 String articuloId, String? descripcion, double probabilidad, String motivo
});




}
/// @nodoc
class _$RecomendacionProductoCopyWithImpl<$Res>
    implements $RecomendacionProductoCopyWith<$Res> {
  _$RecomendacionProductoCopyWithImpl(this._self, this._then);

  final RecomendacionProducto _self;
  final $Res Function(RecomendacionProducto) _then;

/// Create a copy of RecomendacionProducto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? descripcion = freezed,Object? probabilidad = null,Object? motivo = null,}) {
  return _then(RecomendacionProducto(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,descripcion: freezed == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String?,probabilidad: null == probabilidad ? _self.probabilidad : probabilidad // ignore: cast_nullable_to_non_nullable
as double,motivo: null == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RecomendacionProducto].
extension RecomendacionProductoPatterns on RecomendacionProducto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecomendacionProducto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecomendacionProducto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecomendacionProducto value)  $default,){
final _that = this;
switch (_that) {
case _RecomendacionProducto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecomendacionProducto value)?  $default,){
final _that = this;
switch (_that) {
case _RecomendacionProducto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String articuloId,  String? descripcion,  double probabilidad,  String motivo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecomendacionProducto() when $default != null:
return $default(_that.articuloId,_that.descripcion,_that.probabilidad,_that.motivo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String articuloId,  String? descripcion,  double probabilidad,  String motivo)  $default,) {final _that = this;
switch (_that) {
case _RecomendacionProducto():
return $default(_that.articuloId,_that.descripcion,_that.probabilidad,_that.motivo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String articuloId,  String? descripcion,  double probabilidad,  String motivo)?  $default,) {final _that = this;
switch (_that) {
case _RecomendacionProducto() when $default != null:
return $default(_that.articuloId,_that.descripcion,_that.probabilidad,_that.motivo);case _:
  return null;

}
}

}

/// @nodoc


class _RecomendacionProducto extends RecomendacionProducto {
  const _RecomendacionProducto({required this.articuloId, required this.descripcion, required this.probabilidad, required this.motivo}): super._();
  

@override final  String articuloId;
@override final  String? descripcion;
@override final  double probabilidad;
@override final  String motivo;

/// Create a copy of RecomendacionProducto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecomendacionProductoCopyWith<_RecomendacionProducto> get copyWith => __$RecomendacionProductoCopyWithImpl<_RecomendacionProducto>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecomendacionProducto&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.probabilidad, probabilidad) || other.probabilidad == probabilidad)&&(identical(other.motivo, motivo) || other.motivo == motivo));
}


@override
int get hashCode {
    return Object.hash(runtimeType,articuloId,descripcion,probabilidad,motivo);
}

@override
String toString() {
    return 'RecomendacionProducto(articuloId: $articuloId, descripcion: $descripcion, probabilidad: $probabilidad, motivo: $motivo)';
}


}

/// @nodoc
abstract mixin class _$RecomendacionProductoCopyWith<$Res> implements $RecomendacionProductoCopyWith<$Res> {
  factory _$RecomendacionProductoCopyWith(_RecomendacionProducto value, $Res Function(_RecomendacionProducto) _then) = __$RecomendacionProductoCopyWithImpl;
@override @useResult
$Res call({
 String articuloId, String? descripcion, double probabilidad, String motivo
});




}
/// @nodoc
class __$RecomendacionProductoCopyWithImpl<$Res>
    implements _$RecomendacionProductoCopyWith<$Res> {
  __$RecomendacionProductoCopyWithImpl(this._self, this._then);

  final _RecomendacionProducto _self;
  final $Res Function(_RecomendacionProducto) _then;

/// Create a copy of RecomendacionProducto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? descripcion = freezed,Object? probabilidad = null,Object? motivo = null,}) {
  return _then(_RecomendacionProducto(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,descripcion: freezed == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String?,probabilidad: null == probabilidad ? _self.probabilidad : probabilidad // ignore: cast_nullable_to_non_nullable
as double,motivo: null == motivo ? _self.motivo : motivo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
