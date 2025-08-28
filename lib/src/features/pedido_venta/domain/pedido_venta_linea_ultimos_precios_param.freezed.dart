// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_venta_linea_ultimos_precios_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UltimosPreciosParam {

 String get clienteId; String get articuloId;
/// Create a copy of UltimosPreciosParam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UltimosPreciosParamCopyWith<UltimosPreciosParam> get copyWith => _$UltimosPreciosParamCopyWithImpl<UltimosPreciosParam>(this as UltimosPreciosParam, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UltimosPreciosParam&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,articuloId);

@override
String toString() {
  return 'UltimosPreciosParam(clienteId: $clienteId, articuloId: $articuloId)';
}


}

/// @nodoc
abstract mixin class $UltimosPreciosParamCopyWith<$Res>  {
  factory $UltimosPreciosParamCopyWith(UltimosPreciosParam value, $Res Function(UltimosPreciosParam) _then) = _$UltimosPreciosParamCopyWithImpl;
@useResult
$Res call({
 String clienteId, String articuloId
});




}
/// @nodoc
class _$UltimosPreciosParamCopyWithImpl<$Res>
    implements $UltimosPreciosParamCopyWith<$Res> {
  _$UltimosPreciosParamCopyWithImpl(this._self, this._then);

  final UltimosPreciosParam _self;
  final $Res Function(UltimosPreciosParam) _then;

/// Create a copy of UltimosPreciosParam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? articuloId = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UltimosPreciosParam].
extension UltimosPreciosParamPatterns on UltimosPreciosParam {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UltimosPreciosParam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UltimosPreciosParam() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UltimosPreciosParam value)  $default,){
final _that = this;
switch (_that) {
case _UltimosPreciosParam():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UltimosPreciosParam value)?  $default,){
final _that = this;
switch (_that) {
case _UltimosPreciosParam() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  String articuloId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UltimosPreciosParam() when $default != null:
return $default(_that.clienteId,_that.articuloId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  String articuloId)  $default,) {final _that = this;
switch (_that) {
case _UltimosPreciosParam():
return $default(_that.clienteId,_that.articuloId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  String articuloId)?  $default,) {final _that = this;
switch (_that) {
case _UltimosPreciosParam() when $default != null:
return $default(_that.clienteId,_that.articuloId);case _:
  return null;

}
}

}

/// @nodoc


class _UltimosPreciosParam extends UltimosPreciosParam {
  const _UltimosPreciosParam({required this.clienteId, required this.articuloId}): super._();
  

@override final  String clienteId;
@override final  String articuloId;

/// Create a copy of UltimosPreciosParam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UltimosPreciosParamCopyWith<_UltimosPreciosParam> get copyWith => __$UltimosPreciosParamCopyWithImpl<_UltimosPreciosParam>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UltimosPreciosParam&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,articuloId);

@override
String toString() {
  return 'UltimosPreciosParam(clienteId: $clienteId, articuloId: $articuloId)';
}


}

/// @nodoc
abstract mixin class _$UltimosPreciosParamCopyWith<$Res> implements $UltimosPreciosParamCopyWith<$Res> {
  factory _$UltimosPreciosParamCopyWith(_UltimosPreciosParam value, $Res Function(_UltimosPreciosParam) _then) = __$UltimosPreciosParamCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, String articuloId
});




}
/// @nodoc
class __$UltimosPreciosParamCopyWithImpl<$Res>
    implements _$UltimosPreciosParamCopyWith<$Res> {
  __$UltimosPreciosParamCopyWithImpl(this._self, this._then);

  final _UltimosPreciosParam _self;
  final $Res Function(_UltimosPreciosParam) _then;

/// Create a copy of UltimosPreciosParam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? articuloId = null,}) {
  return _then(_UltimosPreciosParam(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
