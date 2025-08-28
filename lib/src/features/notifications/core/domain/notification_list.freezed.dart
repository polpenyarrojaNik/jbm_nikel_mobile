// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationList {

 String get notificationId; DateTime get fecha; bool get leidoSN; String get mensaje;
/// Create a copy of NotificationList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationListCopyWith<NotificationList> get copyWith => _$NotificationListCopyWithImpl<NotificationList>(this as NotificationList, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationList&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.leidoSN, leidoSN) || other.leidoSN == leidoSN)&&(identical(other.mensaje, mensaje) || other.mensaje == mensaje));
}


@override
int get hashCode => Object.hash(runtimeType,notificationId,fecha,leidoSN,mensaje);

@override
String toString() {
  return 'NotificationList(notificationId: $notificationId, fecha: $fecha, leidoSN: $leidoSN, mensaje: $mensaje)';
}


}

/// @nodoc
abstract mixin class $NotificationListCopyWith<$Res>  {
  factory $NotificationListCopyWith(NotificationList value, $Res Function(NotificationList) _then) = _$NotificationListCopyWithImpl;
@useResult
$Res call({
 String notificationId, DateTime fecha, bool leidoSN, String mensaje
});




}
/// @nodoc
class _$NotificationListCopyWithImpl<$Res>
    implements $NotificationListCopyWith<$Res> {
  _$NotificationListCopyWithImpl(this._self, this._then);

  final NotificationList _self;
  final $Res Function(NotificationList) _then;

/// Create a copy of NotificationList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notificationId = null,Object? fecha = null,Object? leidoSN = null,Object? mensaje = null,}) {
  return _then(_self.copyWith(
notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,leidoSN: null == leidoSN ? _self.leidoSN : leidoSN // ignore: cast_nullable_to_non_nullable
as bool,mensaje: null == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationList].
extension NotificationListPatterns on NotificationList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationList value)  $default,){
final _that = this;
switch (_that) {
case _NotificationList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationList value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String notificationId,  DateTime fecha,  bool leidoSN,  String mensaje)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationList() when $default != null:
return $default(_that.notificationId,_that.fecha,_that.leidoSN,_that.mensaje);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String notificationId,  DateTime fecha,  bool leidoSN,  String mensaje)  $default,) {final _that = this;
switch (_that) {
case _NotificationList():
return $default(_that.notificationId,_that.fecha,_that.leidoSN,_that.mensaje);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String notificationId,  DateTime fecha,  bool leidoSN,  String mensaje)?  $default,) {final _that = this;
switch (_that) {
case _NotificationList() when $default != null:
return $default(_that.notificationId,_that.fecha,_that.leidoSN,_that.mensaje);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationList extends NotificationList {
  const _NotificationList({required this.notificationId, required this.fecha, required this.leidoSN, required this.mensaje}): super._();
  

@override final  String notificationId;
@override final  DateTime fecha;
@override final  bool leidoSN;
@override final  String mensaje;

/// Create a copy of NotificationList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationListCopyWith<_NotificationList> get copyWith => __$NotificationListCopyWithImpl<_NotificationList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationList&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.leidoSN, leidoSN) || other.leidoSN == leidoSN)&&(identical(other.mensaje, mensaje) || other.mensaje == mensaje));
}


@override
int get hashCode => Object.hash(runtimeType,notificationId,fecha,leidoSN,mensaje);

@override
String toString() {
  return 'NotificationList(notificationId: $notificationId, fecha: $fecha, leidoSN: $leidoSN, mensaje: $mensaje)';
}


}

/// @nodoc
abstract mixin class _$NotificationListCopyWith<$Res> implements $NotificationListCopyWith<$Res> {
  factory _$NotificationListCopyWith(_NotificationList value, $Res Function(_NotificationList) _then) = __$NotificationListCopyWithImpl;
@override @useResult
$Res call({
 String notificationId, DateTime fecha, bool leidoSN, String mensaje
});




}
/// @nodoc
class __$NotificationListCopyWithImpl<$Res>
    implements _$NotificationListCopyWith<$Res> {
  __$NotificationListCopyWithImpl(this._self, this._then);

  final _NotificationList _self;
  final $Res Function(_NotificationList) _then;

/// Create a copy of NotificationList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notificationId = null,Object? fecha = null,Object? leidoSN = null,Object? mensaje = null,}) {
  return _then(_NotificationList(
notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,leidoSN: null == leidoSN ? _self.leidoSN : leidoSN // ignore: cast_nullable_to_non_nullable
as bool,mensaje: null == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
