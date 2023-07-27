// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationListDto _$NotificationListDtoFromJson(Map<String, dynamic> json) {
  return _NotificationListDto.fromJson(json);
}

/// @nodoc
mixin _$NotificationListDto {
  @JsonKey(name: 'NOTIFICACION_GUID')
  String get notificacionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'F_ALTA')
  DateTime get fecha => throw _privateConstructorUsedError;
  @JsonKey(name: 'LEIDO_SN')
  String get leidoSN => throw _privateConstructorUsedError;
  @JsonKey(name: 'MENSAJE_MARKDOWN')
  String get mensaje => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationListDtoCopyWith<NotificationListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationListDtoCopyWith<$Res> {
  factory $NotificationListDtoCopyWith(
          NotificationListDto value, $Res Function(NotificationListDto) then) =
      _$NotificationListDtoCopyWithImpl<$Res, NotificationListDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'NOTIFICACION_GUID') String notificacionId,
      @JsonKey(name: 'F_ALTA') DateTime fecha,
      @JsonKey(name: 'LEIDO_SN') String leidoSN,
      @JsonKey(name: 'MENSAJE_MARKDOWN') String mensaje});
}

/// @nodoc
class _$NotificationListDtoCopyWithImpl<$Res, $Val extends NotificationListDto>
    implements $NotificationListDtoCopyWith<$Res> {
  _$NotificationListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificacionId = null,
    Object? fecha = null,
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
abstract class _$$_NotificationListDtoCopyWith<$Res>
    implements $NotificationListDtoCopyWith<$Res> {
  factory _$$_NotificationListDtoCopyWith(_$_NotificationListDto value,
          $Res Function(_$_NotificationListDto) then) =
      __$$_NotificationListDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'NOTIFICACION_GUID') String notificacionId,
      @JsonKey(name: 'F_ALTA') DateTime fecha,
      @JsonKey(name: 'LEIDO_SN') String leidoSN,
      @JsonKey(name: 'MENSAJE_MARKDOWN') String mensaje});
}

/// @nodoc
class __$$_NotificationListDtoCopyWithImpl<$Res>
    extends _$NotificationListDtoCopyWithImpl<$Res, _$_NotificationListDto>
    implements _$$_NotificationListDtoCopyWith<$Res> {
  __$$_NotificationListDtoCopyWithImpl(_$_NotificationListDto _value,
      $Res Function(_$_NotificationListDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificacionId = null,
    Object? fecha = null,
    Object? leidoSN = null,
    Object? mensaje = null,
  }) {
    return _then(_$_NotificationListDto(
      notificacionId: null == notificacionId
          ? _value.notificacionId
          : notificacionId // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
class _$_NotificationListDto extends _NotificationListDto {
  const _$_NotificationListDto(
      {@JsonKey(name: 'NOTIFICACION_GUID') required this.notificacionId,
      @JsonKey(name: 'F_ALTA') required this.fecha,
      @JsonKey(name: 'LEIDO_SN') required this.leidoSN,
      @JsonKey(name: 'MENSAJE_MARKDOWN') required this.mensaje})
      : super._();

  factory _$_NotificationListDto.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationListDtoFromJson(json);

  @override
  @JsonKey(name: 'NOTIFICACION_GUID')
  final String notificacionId;
  @override
  @JsonKey(name: 'F_ALTA')
  final DateTime fecha;
  @override
  @JsonKey(name: 'LEIDO_SN')
  final String leidoSN;
  @override
  @JsonKey(name: 'MENSAJE_MARKDOWN')
  final String mensaje;

  @override
  String toString() {
    return 'NotificationListDto(notificacionId: $notificacionId, fecha: $fecha, leidoSN: $leidoSN, mensaje: $mensaje)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationListDto &&
            (identical(other.notificacionId, notificacionId) ||
                other.notificacionId == notificacionId) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.leidoSN, leidoSN) || other.leidoSN == leidoSN) &&
            (identical(other.mensaje, mensaje) || other.mensaje == mensaje));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, notificacionId, fecha, leidoSN, mensaje);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationListDtoCopyWith<_$_NotificationListDto> get copyWith =>
      __$$_NotificationListDtoCopyWithImpl<_$_NotificationListDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationListDtoToJson(
      this,
    );
  }
}

abstract class _NotificationListDto extends NotificationListDto {
  const factory _NotificationListDto(
      {@JsonKey(name: 'NOTIFICACION_GUID') required final String notificacionId,
      @JsonKey(name: 'F_ALTA') required final DateTime fecha,
      @JsonKey(name: 'LEIDO_SN') required final String leidoSN,
      @JsonKey(name: 'MENSAJE_MARKDOWN')
      required final String mensaje}) = _$_NotificationListDto;
  const _NotificationListDto._() : super._();

  factory _NotificationListDto.fromJson(Map<String, dynamic> json) =
      _$_NotificationListDto.fromJson;

  @override
  @JsonKey(name: 'NOTIFICACION_GUID')
  String get notificacionId;
  @override
  @JsonKey(name: 'F_ALTA')
  DateTime get fecha;
  @override
  @JsonKey(name: 'LEIDO_SN')
  String get leidoSN;
  @override
  @JsonKey(name: 'MENSAJE_MARKDOWN')
  String get mensaje;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationListDtoCopyWith<_$_NotificationListDto> get copyWith =>
      throw _privateConstructorUsedError;
}
