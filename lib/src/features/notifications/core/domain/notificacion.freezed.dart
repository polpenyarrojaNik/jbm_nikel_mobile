// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notificacion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Notificacion {

 String get notificationId; DateTime get fecha; bool get leidoSN; String get mensaje; List<NotificationAdjunto> get adjuntos;
/// Create a copy of Notificacion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificacionCopyWith<Notificacion> get copyWith => _$NotificacionCopyWithImpl<Notificacion>(this as Notificacion, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notificacion&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.leidoSN, leidoSN) || other.leidoSN == leidoSN)&&(identical(other.mensaje, mensaje) || other.mensaje == mensaje)&&const DeepCollectionEquality().equals(other.adjuntos, adjuntos));
}


@override
int get hashCode => Object.hash(runtimeType,notificationId,fecha,leidoSN,mensaje,const DeepCollectionEquality().hash(adjuntos));

@override
String toString() {
  return 'Notificacion(notificationId: $notificationId, fecha: $fecha, leidoSN: $leidoSN, mensaje: $mensaje, adjuntos: $adjuntos)';
}


}

/// @nodoc
abstract mixin class $NotificacionCopyWith<$Res>  {
  factory $NotificacionCopyWith(Notificacion value, $Res Function(Notificacion) _then) = _$NotificacionCopyWithImpl;
@useResult
$Res call({
 String notificationId, DateTime fecha, bool leidoSN, String mensaje, List<NotificationAdjunto> adjuntos
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
@pragma('vm:prefer-inline') @override $Res call({Object? notificationId = null,Object? fecha = null,Object? leidoSN = null,Object? mensaje = null,Object? adjuntos = null,}) {
  return _then(Notificacion(
notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,leidoSN: null == leidoSN ? _self.leidoSN : leidoSN // ignore: cast_nullable_to_non_nullable
as bool,mensaje: null == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String,adjuntos: null == adjuntos ? _self.adjuntos : adjuntos // ignore: cast_nullable_to_non_nullable
as List<NotificationAdjunto>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String notificationId,  DateTime fecha,  bool leidoSN,  String mensaje,  List<NotificationAdjunto> adjuntos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Notificacion() when $default != null:
return $default(_that.notificationId,_that.fecha,_that.leidoSN,_that.mensaje,_that.adjuntos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String notificationId,  DateTime fecha,  bool leidoSN,  String mensaje,  List<NotificationAdjunto> adjuntos)  $default,) {final _that = this;
switch (_that) {
case _Notificacion():
return $default(_that.notificationId,_that.fecha,_that.leidoSN,_that.mensaje,_that.adjuntos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String notificationId,  DateTime fecha,  bool leidoSN,  String mensaje,  List<NotificationAdjunto> adjuntos)?  $default,) {final _that = this;
switch (_that) {
case _Notificacion() when $default != null:
return $default(_that.notificationId,_that.fecha,_that.leidoSN,_that.mensaje,_that.adjuntos);case _:
  return null;

}
}

}

/// @nodoc


class _Notificacion extends Notificacion {
  const _Notificacion({required this.notificationId, required this.fecha, required this.leidoSN, required this.mensaje, required  List<NotificationAdjunto> adjuntos}): _adjuntos = adjuntos,super._();
  

@override final  String notificationId;
@override final  DateTime fecha;
@override final  bool leidoSN;
@override final  String mensaje;
 final  List<NotificationAdjunto> _adjuntos;
@override List<NotificationAdjunto> get adjuntos {
  if (_adjuntos is EqualUnmodifiableListView) return _adjuntos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_adjuntos);
}


/// Create a copy of Notificacion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificacionCopyWith<_Notificacion> get copyWith => __$NotificacionCopyWithImpl<_Notificacion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Notificacion&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.leidoSN, leidoSN) || other.leidoSN == leidoSN)&&(identical(other.mensaje, mensaje) || other.mensaje == mensaje)&&const DeepCollectionEquality().equals(other._adjuntos, _adjuntos));
}


@override
int get hashCode => Object.hash(runtimeType,notificationId,fecha,leidoSN,mensaje,const DeepCollectionEquality().hash(_adjuntos));

@override
String toString() {
  return 'Notificacion(notificationId: $notificationId, fecha: $fecha, leidoSN: $leidoSN, mensaje: $mensaje, adjuntos: $adjuntos)';
}


}

/// @nodoc
abstract mixin class _$NotificacionCopyWith<$Res> implements $NotificacionCopyWith<$Res> {
  factory _$NotificacionCopyWith(_Notificacion value, $Res Function(_Notificacion) _then) = __$NotificacionCopyWithImpl;
@override @useResult
$Res call({
 String notificationId, DateTime fecha, bool leidoSN, String mensaje, List<NotificationAdjunto> adjuntos
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
@override @pragma('vm:prefer-inline') $Res call({Object? notificationId = null,Object? fecha = null,Object? leidoSN = null,Object? mensaje = null,Object? adjuntos = null,}) {
  return _then(_Notificacion(
notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,leidoSN: null == leidoSN ? _self.leidoSN : leidoSN // ignore: cast_nullable_to_non_nullable
as bool,mensaje: null == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String,adjuntos: null == adjuntos ? _self._adjuntos : adjuntos // ignore: cast_nullable_to_non_nullable
as List<NotificationAdjunto>,
  ));
}


}

// dart format on
