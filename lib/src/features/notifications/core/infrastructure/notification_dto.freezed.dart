// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationDTO {

@JsonKey(name: 'NOTIFICACION_GUID') String get notificacionId;@JsonKey(name: 'F_ALTA') DateTime get fecha;@JsonKey(name: 'LEIDO_SN') String get leidoSN;@JsonKey(name: 'MENSAJE_MARKDOWN') String get mensaje;@JsonKey(name: 'NOTIFICACION_ADJUNTO') List<NotificationAdjuntoDTO> get adjuntos;@JsonKey(name: 'ABRIR_SN') String get abrirSN;
/// Create a copy of NotificationDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationDTOCopyWith<NotificationDTO> get copyWith => _$NotificationDTOCopyWithImpl<NotificationDTO>(this as NotificationDTO, _$identity);

  /// Serializes this NotificationDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as NotificationDTO;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationDTO&&(identical(other.notificacionId, _this.notificacionId) || other.notificacionId == _this.notificacionId)&&(identical(other.fecha, _this.fecha) || other.fecha == _this.fecha)&&(identical(other.leidoSN, _this.leidoSN) || other.leidoSN == _this.leidoSN)&&(identical(other.mensaje, _this.mensaje) || other.mensaje == _this.mensaje)&&const DeepCollectionEquality().equals(other.adjuntos, _this.adjuntos)&&(identical(other.abrirSN, _this.abrirSN) || other.abrirSN == _this.abrirSN));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as NotificationDTO;
  return Object.hash(runtimeType,_this.notificacionId,_this.fecha,_this.leidoSN,_this.mensaje,const DeepCollectionEquality().hash(_this.adjuntos),_this.abrirSN);
}

@override
String toString() {
  final _this = this as NotificationDTO;
  return 'NotificationDTO(notificacionId: ${_this.notificacionId}, fecha: ${_this.fecha}, leidoSN: ${_this.leidoSN}, mensaje: ${_this.mensaje}, adjuntos: ${_this.adjuntos}, abrirSN: ${_this.abrirSN})';
}


}

/// @nodoc
abstract mixin class $NotificationDTOCopyWith<$Res>  {
  factory $NotificationDTOCopyWith(NotificationDTO value, $Res Function(NotificationDTO) _then) = _$NotificationDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'NOTIFICACION_GUID') String notificacionId,@JsonKey(name: 'F_ALTA') DateTime fecha,@JsonKey(name: 'LEIDO_SN') String leidoSN,@JsonKey(name: 'MENSAJE_MARKDOWN') String mensaje,@JsonKey(name: 'NOTIFICACION_ADJUNTO') List<NotificationAdjuntoDTO> adjuntos,@JsonKey(name: 'ABRIR_SN') String abrirSN
});




}
/// @nodoc
class _$NotificationDTOCopyWithImpl<$Res>
    implements $NotificationDTOCopyWith<$Res> {
  _$NotificationDTOCopyWithImpl(this._self, this._then);

  final NotificationDTO _self;
  final $Res Function(NotificationDTO) _then;

/// Create a copy of NotificationDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notificacionId = null,Object? fecha = null,Object? leidoSN = null,Object? mensaje = null,Object? adjuntos = null,Object? abrirSN = null,}) {
  return _then(NotificationDTO(
notificacionId: null == notificacionId ? _self.notificacionId : notificacionId // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,leidoSN: null == leidoSN ? _self.leidoSN : leidoSN // ignore: cast_nullable_to_non_nullable
as String,mensaje: null == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String,adjuntos: null == adjuntos ? _self.adjuntos : adjuntos // ignore: cast_nullable_to_non_nullable
as List<NotificationAdjuntoDTO>,abrirSN: null == abrirSN ? _self.abrirSN : abrirSN // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationDTO].
extension NotificationDTOPatterns on NotificationDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationDTO value)  $default,){
final _that = this;
switch (_that) {
case _NotificationDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationDTO value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'NOTIFICACION_GUID')  String notificacionId, @JsonKey(name: 'F_ALTA')  DateTime fecha, @JsonKey(name: 'LEIDO_SN')  String leidoSN, @JsonKey(name: 'MENSAJE_MARKDOWN')  String mensaje, @JsonKey(name: 'NOTIFICACION_ADJUNTO')  List<NotificationAdjuntoDTO> adjuntos, @JsonKey(name: 'ABRIR_SN')  String abrirSN)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationDTO() when $default != null:
return $default(_that.notificacionId,_that.fecha,_that.leidoSN,_that.mensaje,_that.adjuntos,_that.abrirSN);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'NOTIFICACION_GUID')  String notificacionId, @JsonKey(name: 'F_ALTA')  DateTime fecha, @JsonKey(name: 'LEIDO_SN')  String leidoSN, @JsonKey(name: 'MENSAJE_MARKDOWN')  String mensaje, @JsonKey(name: 'NOTIFICACION_ADJUNTO')  List<NotificationAdjuntoDTO> adjuntos, @JsonKey(name: 'ABRIR_SN')  String abrirSN)  $default,) {final _that = this;
switch (_that) {
case _NotificationDTO():
return $default(_that.notificacionId,_that.fecha,_that.leidoSN,_that.mensaje,_that.adjuntos,_that.abrirSN);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'NOTIFICACION_GUID')  String notificacionId, @JsonKey(name: 'F_ALTA')  DateTime fecha, @JsonKey(name: 'LEIDO_SN')  String leidoSN, @JsonKey(name: 'MENSAJE_MARKDOWN')  String mensaje, @JsonKey(name: 'NOTIFICACION_ADJUNTO')  List<NotificationAdjuntoDTO> adjuntos, @JsonKey(name: 'ABRIR_SN')  String abrirSN)?  $default,) {final _that = this;
switch (_that) {
case _NotificationDTO() when $default != null:
return $default(_that.notificacionId,_that.fecha,_that.leidoSN,_that.mensaje,_that.adjuntos,_that.abrirSN);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationDTO extends NotificationDTO {
  const _NotificationDTO({@JsonKey(name: 'NOTIFICACION_GUID') required this.notificacionId, @JsonKey(name: 'F_ALTA') required this.fecha, @JsonKey(name: 'LEIDO_SN') required this.leidoSN, @JsonKey(name: 'MENSAJE_MARKDOWN') required this.mensaje, @JsonKey(name: 'NOTIFICACION_ADJUNTO') required  List<NotificationAdjuntoDTO> adjuntos, @JsonKey(name: 'ABRIR_SN') required this.abrirSN}): _adjuntos = adjuntos,super._();
  factory _NotificationDTO.fromJson(Map<String, dynamic> json) => _$NotificationDTOFromJson(json);

@override@JsonKey(name: 'NOTIFICACION_GUID') final  String notificacionId;
@override@JsonKey(name: 'F_ALTA') final  DateTime fecha;
@override@JsonKey(name: 'LEIDO_SN') final  String leidoSN;
@override@JsonKey(name: 'MENSAJE_MARKDOWN') final  String mensaje;
 final  List<NotificationAdjuntoDTO> _adjuntos;
@override@JsonKey(name: 'NOTIFICACION_ADJUNTO') List<NotificationAdjuntoDTO> get adjuntos {
  if (_adjuntos is EqualUnmodifiableListView) return _adjuntos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_adjuntos);
}

@override@JsonKey(name: 'ABRIR_SN') final  String abrirSN;

/// Create a copy of NotificationDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationDTOCopyWith<_NotificationDTO> get copyWith => __$NotificationDTOCopyWithImpl<_NotificationDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationDTOToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationDTO&&(identical(other.notificacionId, notificacionId) || other.notificacionId == notificacionId)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.leidoSN, leidoSN) || other.leidoSN == leidoSN)&&(identical(other.mensaje, mensaje) || other.mensaje == mensaje)&&const DeepCollectionEquality().equals(other.adjuntos, _adjuntos)&&(identical(other.abrirSN, abrirSN) || other.abrirSN == abrirSN));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,notificacionId,fecha,leidoSN,mensaje,const DeepCollectionEquality().hash(_adjuntos),abrirSN);
}

@override
String toString() {
    return 'NotificationDTO(notificacionId: $notificacionId, fecha: $fecha, leidoSN: $leidoSN, mensaje: $mensaje, adjuntos: $adjuntos, abrirSN: $abrirSN)';
}


}

/// @nodoc
abstract mixin class _$NotificationDTOCopyWith<$Res> implements $NotificationDTOCopyWith<$Res> {
  factory _$NotificationDTOCopyWith(_NotificationDTO value, $Res Function(_NotificationDTO) _then) = __$NotificationDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'NOTIFICACION_GUID') String notificacionId,@JsonKey(name: 'F_ALTA') DateTime fecha,@JsonKey(name: 'LEIDO_SN') String leidoSN,@JsonKey(name: 'MENSAJE_MARKDOWN') String mensaje,@JsonKey(name: 'NOTIFICACION_ADJUNTO') List<NotificationAdjuntoDTO> adjuntos,@JsonKey(name: 'ABRIR_SN') String abrirSN
});




}
/// @nodoc
class __$NotificationDTOCopyWithImpl<$Res>
    implements _$NotificationDTOCopyWith<$Res> {
  __$NotificationDTOCopyWithImpl(this._self, this._then);

  final _NotificationDTO _self;
  final $Res Function(_NotificationDTO) _then;

/// Create a copy of NotificationDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notificacionId = null,Object? fecha = null,Object? leidoSN = null,Object? mensaje = null,Object? adjuntos = null,Object? abrirSN = null,}) {
  return _then(_NotificationDTO(
notificacionId: null == notificacionId ? _self.notificacionId : notificacionId // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,leidoSN: null == leidoSN ? _self.leidoSN : leidoSN // ignore: cast_nullable_to_non_nullable
as String,mensaje: null == mensaje ? _self.mensaje : mensaje // ignore: cast_nullable_to_non_nullable
as String,adjuntos: null == adjuntos ? _self._adjuntos : adjuntos // ignore: cast_nullable_to_non_nullable
as List<NotificationAdjuntoDTO>,abrirSN: null == abrirSN ? _self.abrirSN : abrirSN // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
