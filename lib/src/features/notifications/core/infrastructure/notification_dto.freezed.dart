// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationDto {

@JsonKey(name: 'NOTIFICACION_GUID') String get notificacionId;@JsonKey(name: 'F_ALTA') DateTime get fecha;@JsonKey(name: 'USUARIO_ID') String get usuarioId;@JsonKey(name: 'LEIDO_SN') String get leidoSN;@JsonKey(name: 'MENSAJE_MARKDOWN') String get mensaje;
/// Create a copy of NotificationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationDtoCopyWith<NotificationDto> get copyWith => _$NotificationDtoCopyWithImpl<NotificationDto>(this as NotificationDto, _$identity);

  /// Serializes this NotificationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationDto&&(identical(other.notificacionId, notificacionId) || other.notificacionId == notificacionId)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.leidoSN, leidoSN) || other.leidoSN == leidoSN)&&(identical(other.mensaje, mensaje) || other.mensaje == mensaje));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notificacionId,fecha,usuarioId,leidoSN,mensaje);

@override
String toString() {
  return 'NotificationDto(notificacionId: $notificacionId, fecha: $fecha, usuarioId: $usuarioId, leidoSN: $leidoSN, mensaje: $mensaje)';
}


}

/// @nodoc
abstract mixin class $NotificationDtoCopyWith<$Res>  {
  factory $NotificationDtoCopyWith(NotificationDto value, $Res Function(NotificationDto) _then) = _$NotificationDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'NOTIFICACION_GUID') String notificacionId,@JsonKey(name: 'F_ALTA') DateTime fecha,@JsonKey(name: 'USUARIO_ID') String usuarioId,@JsonKey(name: 'LEIDO_SN') String leidoSN,@JsonKey(name: 'MENSAJE_MARKDOWN') String mensaje
});




}
/// @nodoc
class _$NotificationDtoCopyWithImpl<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  _$NotificationDtoCopyWithImpl(this._self, this._then);

  final NotificationDto _self;
  final $Res Function(NotificationDto) _then;

/// Create a copy of NotificationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notificacionId = null,Object? fecha = null,Object? usuarioId = null,Object? leidoSN = null,Object? mensaje = null,}) {
  return _then(_self.copyWith(
notificacionId: null == notificacionId ? _self.notificacionId : notificacionId // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,leidoSN: null == leidoSN ? _self.leidoSN : leidoSN // ignore: cast_nullable_to_non_nullable
as String,mensaje: null == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationDto].
extension NotificationDtoPatterns on NotificationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationDto value)  $default,){
final _that = this;
switch (_that) {
case _NotificationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationDto value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'NOTIFICACION_GUID')  String notificacionId, @JsonKey(name: 'F_ALTA')  DateTime fecha, @JsonKey(name: 'USUARIO_ID')  String usuarioId, @JsonKey(name: 'LEIDO_SN')  String leidoSN, @JsonKey(name: 'MENSAJE_MARKDOWN')  String mensaje)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationDto() when $default != null:
return $default(_that.notificacionId,_that.fecha,_that.usuarioId,_that.leidoSN,_that.mensaje);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'NOTIFICACION_GUID')  String notificacionId, @JsonKey(name: 'F_ALTA')  DateTime fecha, @JsonKey(name: 'USUARIO_ID')  String usuarioId, @JsonKey(name: 'LEIDO_SN')  String leidoSN, @JsonKey(name: 'MENSAJE_MARKDOWN')  String mensaje)  $default,) {final _that = this;
switch (_that) {
case _NotificationDto():
return $default(_that.notificacionId,_that.fecha,_that.usuarioId,_that.leidoSN,_that.mensaje);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'NOTIFICACION_GUID')  String notificacionId, @JsonKey(name: 'F_ALTA')  DateTime fecha, @JsonKey(name: 'USUARIO_ID')  String usuarioId, @JsonKey(name: 'LEIDO_SN')  String leidoSN, @JsonKey(name: 'MENSAJE_MARKDOWN')  String mensaje)?  $default,) {final _that = this;
switch (_that) {
case _NotificationDto() when $default != null:
return $default(_that.notificacionId,_that.fecha,_that.usuarioId,_that.leidoSN,_that.mensaje);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationDto extends NotificationDto {
  const _NotificationDto({@JsonKey(name: 'NOTIFICACION_GUID') required this.notificacionId, @JsonKey(name: 'F_ALTA') required this.fecha, @JsonKey(name: 'USUARIO_ID') required this.usuarioId, @JsonKey(name: 'LEIDO_SN') required this.leidoSN, @JsonKey(name: 'MENSAJE_MARKDOWN') required this.mensaje}): super._();
  factory _NotificationDto.fromJson(Map<String, dynamic> json) => _$NotificationDtoFromJson(json);

@override@JsonKey(name: 'NOTIFICACION_GUID') final  String notificacionId;
@override@JsonKey(name: 'F_ALTA') final  DateTime fecha;
@override@JsonKey(name: 'USUARIO_ID') final  String usuarioId;
@override@JsonKey(name: 'LEIDO_SN') final  String leidoSN;
@override@JsonKey(name: 'MENSAJE_MARKDOWN') final  String mensaje;

/// Create a copy of NotificationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationDtoCopyWith<_NotificationDto> get copyWith => __$NotificationDtoCopyWithImpl<_NotificationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationDto&&(identical(other.notificacionId, notificacionId) || other.notificacionId == notificacionId)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.leidoSN, leidoSN) || other.leidoSN == leidoSN)&&(identical(other.mensaje, mensaje) || other.mensaje == mensaje));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notificacionId,fecha,usuarioId,leidoSN,mensaje);

@override
String toString() {
  return 'NotificationDto(notificacionId: $notificacionId, fecha: $fecha, usuarioId: $usuarioId, leidoSN: $leidoSN, mensaje: $mensaje)';
}


}

/// @nodoc
abstract mixin class _$NotificationDtoCopyWith<$Res> implements $NotificationDtoCopyWith<$Res> {
  factory _$NotificationDtoCopyWith(_NotificationDto value, $Res Function(_NotificationDto) _then) = __$NotificationDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'NOTIFICACION_GUID') String notificacionId,@JsonKey(name: 'F_ALTA') DateTime fecha,@JsonKey(name: 'USUARIO_ID') String usuarioId,@JsonKey(name: 'LEIDO_SN') String leidoSN,@JsonKey(name: 'MENSAJE_MARKDOWN') String mensaje
});




}
/// @nodoc
class __$NotificationDtoCopyWithImpl<$Res>
    implements _$NotificationDtoCopyWith<$Res> {
  __$NotificationDtoCopyWithImpl(this._self, this._then);

  final _NotificationDto _self;
  final $Res Function(_NotificationDto) _then;

/// Create a copy of NotificationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notificacionId = null,Object? fecha = null,Object? usuarioId = null,Object? leidoSN = null,Object? mensaje = null,}) {
  return _then(_NotificationDto(
notificacionId: null == notificacionId ? _self.notificacionId : notificacionId // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,leidoSN: null == leidoSN ? _self.leidoSN : leidoSN // ignore: cast_nullable_to_non_nullable
as String,mensaje: null == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
