// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notificacion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Notificacion {

 String get notificationId; DateTime get fecha; String get usuarioId; bool get leidoSN; String get mensaje;
/// Create a copy of Notificacion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificacionCopyWith<Notificacion> get copyWith => _$NotificacionCopyWithImpl<Notificacion>(this as Notificacion, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notificacion&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.leidoSN, leidoSN) || other.leidoSN == leidoSN)&&(identical(other.mensaje, mensaje) || other.mensaje == mensaje));
}


@override
int get hashCode => Object.hash(runtimeType,notificationId,fecha,usuarioId,leidoSN,mensaje);

@override
String toString() {
  return 'Notificacion(notificationId: $notificationId, fecha: $fecha, usuarioId: $usuarioId, leidoSN: $leidoSN, mensaje: $mensaje)';
}


}

/// @nodoc
abstract mixin class $NotificacionCopyWith<$Res>  {
  factory $NotificacionCopyWith(Notificacion value, $Res Function(Notificacion) _then) = _$NotificacionCopyWithImpl;
@useResult
$Res call({
 String notificationId, DateTime fecha, String usuarioId, bool leidoSN, String mensaje
});




}
/// @nodoc
class _$NotificacionCopyWithImpl<$Res>
    implements $NotificacionCopyWith<$Res> {
  _$NotificacionCopyWithImpl(this._self, this._then);

  final Notificacion _self;
  final $Res Function(Notificacion) _then;

/// Create a copy of Notificacion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notificationId = null,Object? fecha = null,Object? usuarioId = null,Object? leidoSN = null,Object? mensaje = null,}) {
  return _then(_self.copyWith(
notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,leidoSN: null == leidoSN ? _self.leidoSN : leidoSN // ignore: cast_nullable_to_non_nullable
as bool,mensaje: null == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Notificacion].
extension NotificacionPatterns on Notificacion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Notificacion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Notificacion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Notificacion value)  $default,){
final _that = this;
switch (_that) {
case _Notificacion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Notificacion value)?  $default,){
final _that = this;
switch (_that) {
case _Notificacion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String notificationId,  DateTime fecha,  String usuarioId,  bool leidoSN,  String mensaje)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Notificacion() when $default != null:
return $default(_that.notificationId,_that.fecha,_that.usuarioId,_that.leidoSN,_that.mensaje);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String notificationId,  DateTime fecha,  String usuarioId,  bool leidoSN,  String mensaje)  $default,) {final _that = this;
switch (_that) {
case _Notificacion():
return $default(_that.notificationId,_that.fecha,_that.usuarioId,_that.leidoSN,_that.mensaje);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String notificationId,  DateTime fecha,  String usuarioId,  bool leidoSN,  String mensaje)?  $default,) {final _that = this;
switch (_that) {
case _Notificacion() when $default != null:
return $default(_that.notificationId,_that.fecha,_that.usuarioId,_that.leidoSN,_that.mensaje);case _:
  return null;

}
}

}

/// @nodoc


class _Notificacion extends Notificacion {
  const _Notificacion({required this.notificationId, required this.fecha, required this.usuarioId, required this.leidoSN, required this.mensaje}): super._();
  

@override final  String notificationId;
@override final  DateTime fecha;
@override final  String usuarioId;
@override final  bool leidoSN;
@override final  String mensaje;

/// Create a copy of Notificacion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificacionCopyWith<_Notificacion> get copyWith => __$NotificacionCopyWithImpl<_Notificacion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Notificacion&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.leidoSN, leidoSN) || other.leidoSN == leidoSN)&&(identical(other.mensaje, mensaje) || other.mensaje == mensaje));
}


@override
int get hashCode => Object.hash(runtimeType,notificationId,fecha,usuarioId,leidoSN,mensaje);

@override
String toString() {
  return 'Notificacion(notificationId: $notificationId, fecha: $fecha, usuarioId: $usuarioId, leidoSN: $leidoSN, mensaje: $mensaje)';
}


}

/// @nodoc
abstract mixin class _$NotificacionCopyWith<$Res> implements $NotificacionCopyWith<$Res> {
  factory _$NotificacionCopyWith(_Notificacion value, $Res Function(_Notificacion) _then) = __$NotificacionCopyWithImpl;
@override @useResult
$Res call({
 String notificationId, DateTime fecha, String usuarioId, bool leidoSN, String mensaje
});




}
/// @nodoc
class __$NotificacionCopyWithImpl<$Res>
    implements _$NotificacionCopyWith<$Res> {
  __$NotificacionCopyWithImpl(this._self, this._then);

  final _Notificacion _self;
  final $Res Function(_Notificacion) _then;

/// Create a copy of Notificacion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notificationId = null,Object? fecha = null,Object? usuarioId = null,Object? leidoSN = null,Object? mensaje = null,}) {
  return _then(_Notificacion(
notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,leidoSN: null == leidoSN ? _self.leidoSN : leidoSN // ignore: cast_nullable_to_non_nullable
as bool,mensaje: null == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
