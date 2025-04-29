// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notificacion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Notificacion {
  String get notificationId => throw _privateConstructorUsedError;
  DateTime get fecha => throw _privateConstructorUsedError;
  String get usuarioId => throw _privateConstructorUsedError;
  bool get leidoSN => throw _privateConstructorUsedError;
  String get mensaje => throw _privateConstructorUsedError;

  /// Create a copy of Notificacion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificacionCopyWith<Notificacion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificacionCopyWith<$Res> {
  factory $NotificacionCopyWith(
    Notificacion value,
    $Res Function(Notificacion) then,
  ) = _$NotificacionCopyWithImpl<$Res, Notificacion>;
  @useResult
  $Res call({
    String notificationId,
    DateTime fecha,
    String usuarioId,
    bool leidoSN,
    String mensaje,
  });
}

/// @nodoc
class _$NotificacionCopyWithImpl<$Res, $Val extends Notificacion>
    implements $NotificacionCopyWith<$Res> {
  _$NotificacionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Notificacion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
    Object? fecha = null,
    Object? usuarioId = null,
    Object? leidoSN = null,
    Object? mensaje = null,
  }) {
    return _then(
      _value.copyWith(
            notificationId:
                null == notificationId
                    ? _value.notificationId
                    : notificationId // ignore: cast_nullable_to_non_nullable
                        as String,
            fecha:
                null == fecha
                    ? _value.fecha
                    : fecha // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            usuarioId:
                null == usuarioId
                    ? _value.usuarioId
                    : usuarioId // ignore: cast_nullable_to_non_nullable
                        as String,
            leidoSN:
                null == leidoSN
                    ? _value.leidoSN
                    : leidoSN // ignore: cast_nullable_to_non_nullable
                        as bool,
            mensaje:
                null == mensaje
                    ? _value.mensaje
                    : mensaje // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificacionImplCopyWith<$Res>
    implements $NotificacionCopyWith<$Res> {
  factory _$$NotificacionImplCopyWith(
    _$NotificacionImpl value,
    $Res Function(_$NotificacionImpl) then,
  ) = __$$NotificacionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String notificationId,
    DateTime fecha,
    String usuarioId,
    bool leidoSN,
    String mensaje,
  });
}

/// @nodoc
class __$$NotificacionImplCopyWithImpl<$Res>
    extends _$NotificacionCopyWithImpl<$Res, _$NotificacionImpl>
    implements _$$NotificacionImplCopyWith<$Res> {
  __$$NotificacionImplCopyWithImpl(
    _$NotificacionImpl _value,
    $Res Function(_$NotificacionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Notificacion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
    Object? fecha = null,
    Object? usuarioId = null,
    Object? leidoSN = null,
    Object? mensaje = null,
  }) {
    return _then(
      _$NotificacionImpl(
        notificationId:
            null == notificationId
                ? _value.notificationId
                : notificationId // ignore: cast_nullable_to_non_nullable
                    as String,
        fecha:
            null == fecha
                ? _value.fecha
                : fecha // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        usuarioId:
            null == usuarioId
                ? _value.usuarioId
                : usuarioId // ignore: cast_nullable_to_non_nullable
                    as String,
        leidoSN:
            null == leidoSN
                ? _value.leidoSN
                : leidoSN // ignore: cast_nullable_to_non_nullable
                    as bool,
        mensaje:
            null == mensaje
                ? _value.mensaje
                : mensaje // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$NotificacionImpl extends _Notificacion {
  const _$NotificacionImpl({
    required this.notificationId,
    required this.fecha,
    required this.usuarioId,
    required this.leidoSN,
    required this.mensaje,
  }) : super._();

  @override
  final String notificationId;
  @override
  final DateTime fecha;
  @override
  final String usuarioId;
  @override
  final bool leidoSN;
  @override
  final String mensaje;

  @override
  String toString() {
    return 'Notificacion(notificationId: $notificationId, fecha: $fecha, usuarioId: $usuarioId, leidoSN: $leidoSN, mensaje: $mensaje)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificacionImpl &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.usuarioId, usuarioId) ||
                other.usuarioId == usuarioId) &&
            (identical(other.leidoSN, leidoSN) || other.leidoSN == leidoSN) &&
            (identical(other.mensaje, mensaje) || other.mensaje == mensaje));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    notificationId,
    fecha,
    usuarioId,
    leidoSN,
    mensaje,
  );

  /// Create a copy of Notificacion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificacionImplCopyWith<_$NotificacionImpl> get copyWith =>
      __$$NotificacionImplCopyWithImpl<_$NotificacionImpl>(this, _$identity);
}

abstract class _Notificacion extends Notificacion {
  const factory _Notificacion({
    required final String notificationId,
    required final DateTime fecha,
    required final String usuarioId,
    required final bool leidoSN,
    required final String mensaje,
  }) = _$NotificacionImpl;
  const _Notificacion._() : super._();

  @override
  String get notificationId;
  @override
  DateTime get fecha;
  @override
  String get usuarioId;
  @override
  bool get leidoSN;
  @override
  String get mensaje;

  /// Create a copy of Notificacion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificacionImplCopyWith<_$NotificacionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
