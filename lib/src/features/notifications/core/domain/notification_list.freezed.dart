// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationList {
  String get notificationId => throw _privateConstructorUsedError;
  DateTime get fecha => throw _privateConstructorUsedError;
  bool get leidoSN => throw _privateConstructorUsedError;
  String get mensaje => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationListCopyWith<NotificationList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationListCopyWith<$Res> {
  factory $NotificationListCopyWith(
          NotificationList value, $Res Function(NotificationList) then) =
      _$NotificationListCopyWithImpl<$Res, NotificationList>;
  @useResult
  $Res call(
      {String notificationId, DateTime fecha, bool leidoSN, String mensaje});
}

/// @nodoc
class _$NotificationListCopyWithImpl<$Res, $Val extends NotificationList>
    implements $NotificationListCopyWith<$Res> {
  _$NotificationListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
    Object? fecha = null,
    Object? leidoSN = null,
    Object? mensaje = null,
  }) {
    return _then(_value.copyWith(
      notificationId: null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      leidoSN: null == leidoSN
          ? _value.leidoSN
          : leidoSN // ignore: cast_nullable_to_non_nullable
              as bool,
      mensaje: null == mensaje
          ? _value.mensaje
          : mensaje // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationListCopyWith<$Res>
    implements $NotificationListCopyWith<$Res> {
  factory _$$_NotificationListCopyWith(
          _$_NotificationList value, $Res Function(_$_NotificationList) then) =
      __$$_NotificationListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String notificationId, DateTime fecha, bool leidoSN, String mensaje});
}

/// @nodoc
class __$$_NotificationListCopyWithImpl<$Res>
    extends _$NotificationListCopyWithImpl<$Res, _$_NotificationList>
    implements _$$_NotificationListCopyWith<$Res> {
  __$$_NotificationListCopyWithImpl(
      _$_NotificationList _value, $Res Function(_$_NotificationList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
    Object? fecha = null,
    Object? leidoSN = null,
    Object? mensaje = null,
  }) {
    return _then(_$_NotificationList(
      notificationId: null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      leidoSN: null == leidoSN
          ? _value.leidoSN
          : leidoSN // ignore: cast_nullable_to_non_nullable
              as bool,
      mensaje: null == mensaje
          ? _value.mensaje
          : mensaje // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NotificationList extends _NotificationList {
  const _$_NotificationList(
      {required this.notificationId,
      required this.fecha,
      required this.leidoSN,
      required this.mensaje})
      : super._();

  @override
  final String notificationId;
  @override
  final DateTime fecha;
  @override
  final bool leidoSN;
  @override
  final String mensaje;

  @override
  String toString() {
    return 'NotificationList(notificationId: $notificationId, fecha: $fecha, leidoSN: $leidoSN, mensaje: $mensaje)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationList &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.leidoSN, leidoSN) || other.leidoSN == leidoSN) &&
            (identical(other.mensaje, mensaje) || other.mensaje == mensaje));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, notificationId, fecha, leidoSN, mensaje);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationListCopyWith<_$_NotificationList> get copyWith =>
      __$$_NotificationListCopyWithImpl<_$_NotificationList>(this, _$identity);
}

abstract class _NotificationList extends NotificationList {
  const factory _NotificationList(
      {required final String notificationId,
      required final DateTime fecha,
      required final bool leidoSN,
      required final String mensaje}) = _$_NotificationList;
  const _NotificationList._() : super._();

  @override
  String get notificationId;
  @override
  DateTime get fecha;
  @override
  bool get leidoSN;
  @override
  String get mensaje;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationListCopyWith<_$_NotificationList> get copyWith =>
      throw _privateConstructorUsedError;
}
