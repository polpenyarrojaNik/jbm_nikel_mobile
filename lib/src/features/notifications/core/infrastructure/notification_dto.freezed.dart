// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationDto _$NotificationDtoFromJson(Map<String, dynamic> json) {
  return _NotificationDto.fromJson(json);
}

/// @nodoc
mixin _$NotificationDto {
  @JsonKey(name: 'NOTIFICACION_GUID')
  String get notificacionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'F_ALTA')
  DateTime get fecha => throw _privateConstructorUsedError;
  @JsonKey(name: 'USUARIO_ID')
  String get usuarioId => throw _privateConstructorUsedError;
  @JsonKey(name: 'LEIDO_SN')
  String get leidoSN => throw _privateConstructorUsedError;
  @JsonKey(name: 'MENSAJE_MARKDOWN')
  String get mensaje => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDtoCopyWith<NotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDtoCopyWith<$Res> {
  factory $NotificationDtoCopyWith(
          NotificationDto value, $Res Function(NotificationDto) then) =
      _$NotificationDtoCopyWithImpl<$Res, NotificationDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'NOTIFICACION_GUID') String notificacionId,
      @JsonKey(name: 'F_ALTA') DateTime fecha,
      @JsonKey(name: 'USUARIO_ID') String usuarioId,
      @JsonKey(name: 'LEIDO_SN') String leidoSN,
      @JsonKey(name: 'MENSAJE_MARKDOWN') String mensaje});
}

/// @nodoc
class _$NotificationDtoCopyWithImpl<$Res, $Val extends NotificationDto>
    implements $NotificationDtoCopyWith<$Res> {
  _$NotificationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificacionId = null,
    Object? fecha = null,
    Object? usuarioId = null,
    Object? leidoSN = null,
    Object? mensaje = null,
  }) {
    return _then(_value.copyWith(
      notificacionId: null == notificacionId
          ? _value.notificacionId
          : notificacionId // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usuarioId: null == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as String,
      leidoSN: null == leidoSN
          ? _value.leidoSN
          : leidoSN // ignore: cast_nullable_to_non_nullable
              as String,
      mensaje: null == mensaje
          ? _value.mensaje
          : mensaje // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationDtoCopyWith<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  factory _$$_NotificationDtoCopyWith(
          _$_NotificationDto value, $Res Function(_$_NotificationDto) then) =
      __$$_NotificationDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'NOTIFICACION_GUID') String notificacionId,
      @JsonKey(name: 'F_ALTA') DateTime fecha,
      @JsonKey(name: 'USUARIO_ID') String usuarioId,
      @JsonKey(name: 'LEIDO_SN') String leidoSN,
      @JsonKey(name: 'MENSAJE_MARKDOWN') String mensaje});
}

/// @nodoc
class __$$_NotificationDtoCopyWithImpl<$Res>
    extends _$NotificationDtoCopyWithImpl<$Res, _$_NotificationDto>
    implements _$$_NotificationDtoCopyWith<$Res> {
  __$$_NotificationDtoCopyWithImpl(
      _$_NotificationDto _value, $Res Function(_$_NotificationDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificacionId = null,
    Object? fecha = null,
    Object? usuarioId = null,
    Object? leidoSN = null,
    Object? mensaje = null,
  }) {
    return _then(_$_NotificationDto(
      notificacionId: null == notificacionId
          ? _value.notificacionId
          : notificacionId // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usuarioId: null == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as String,
      leidoSN: null == leidoSN
          ? _value.leidoSN
          : leidoSN // ignore: cast_nullable_to_non_nullable
              as String,
      mensaje: null == mensaje
          ? _value.mensaje
          : mensaje // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationDto extends _NotificationDto {
  const _$_NotificationDto(
      {@JsonKey(name: 'NOTIFICACION_GUID') required this.notificacionId,
      @JsonKey(name: 'F_ALTA') required this.fecha,
      @JsonKey(name: 'USUARIO_ID') required this.usuarioId,
      @JsonKey(name: 'LEIDO_SN') required this.leidoSN,
      @JsonKey(name: 'MENSAJE_MARKDOWN') required this.mensaje})
      : super._();

  factory _$_NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationDtoFromJson(json);

  @override
  @JsonKey(name: 'NOTIFICACION_GUID')
  final String notificacionId;
  @override
  @JsonKey(name: 'F_ALTA')
  final DateTime fecha;
  @override
  @JsonKey(name: 'USUARIO_ID')
  final String usuarioId;
  @override
  @JsonKey(name: 'LEIDO_SN')
  final String leidoSN;
  @override
  @JsonKey(name: 'MENSAJE_MARKDOWN')
  final String mensaje;

  @override
  String toString() {
    return 'NotificationDto(notificacionId: $notificacionId, fecha: $fecha, usuarioId: $usuarioId, leidoSN: $leidoSN, mensaje: $mensaje)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationDto &&
            (identical(other.notificacionId, notificacionId) ||
                other.notificacionId == notificacionId) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.usuarioId, usuarioId) ||
                other.usuarioId == usuarioId) &&
            (identical(other.leidoSN, leidoSN) || other.leidoSN == leidoSN) &&
            (identical(other.mensaje, mensaje) || other.mensaje == mensaje));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, notificacionId, fecha, usuarioId, leidoSN, mensaje);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationDtoCopyWith<_$_NotificationDto> get copyWith =>
      __$$_NotificationDtoCopyWithImpl<_$_NotificationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationDtoToJson(
      this,
    );
  }
}

abstract class _NotificationDto extends NotificationDto {
  const factory _NotificationDto(
      {@JsonKey(name: 'NOTIFICACION_GUID') required final String notificacionId,
      @JsonKey(name: 'F_ALTA') required final DateTime fecha,
      @JsonKey(name: 'USUARIO_ID') required final String usuarioId,
      @JsonKey(name: 'LEIDO_SN') required final String leidoSN,
      @JsonKey(name: 'MENSAJE_MARKDOWN')
      required final String mensaje}) = _$_NotificationDto;
  const _NotificationDto._() : super._();

  factory _NotificationDto.fromJson(Map<String, dynamic> json) =
      _$_NotificationDto.fromJson;

  @override
  @JsonKey(name: 'NOTIFICACION_GUID')
  String get notificacionId;
  @override
  @JsonKey(name: 'F_ALTA')
  DateTime get fecha;
  @override
  @JsonKey(name: 'USUARIO_ID')
  String get usuarioId;
  @override
  @JsonKey(name: 'LEIDO_SN')
  String get leidoSN;
  @override
  @JsonKey(name: 'MENSAJE_MARKDOWN')
  String get mensaje;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationDtoCopyWith<_$_NotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
