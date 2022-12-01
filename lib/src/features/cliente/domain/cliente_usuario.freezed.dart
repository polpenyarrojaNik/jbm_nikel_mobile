// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_usuario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClienteUsuario {
  String get clienteId => throw _privateConstructorUsedError;
  String get usuarioId => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClienteUsuarioCopyWith<ClienteUsuario> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteUsuarioCopyWith<$Res> {
  factory $ClienteUsuarioCopyWith(
          ClienteUsuario value, $Res Function(ClienteUsuario) then) =
      _$ClienteUsuarioCopyWithImpl<$Res, ClienteUsuario>;
  @useResult
  $Res call(
      {String clienteId, String usuarioId, DateTime lastUpdated, bool deleted});
}

/// @nodoc
class _$ClienteUsuarioCopyWithImpl<$Res, $Val extends ClienteUsuario>
    implements $ClienteUsuarioCopyWith<$Res> {
  _$ClienteUsuarioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? usuarioId = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      usuarioId: null == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClienteUsuarioCopyWith<$Res>
    implements $ClienteUsuarioCopyWith<$Res> {
  factory _$$_ClienteUsuarioCopyWith(
          _$_ClienteUsuario value, $Res Function(_$_ClienteUsuario) then) =
      __$$_ClienteUsuarioCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String clienteId, String usuarioId, DateTime lastUpdated, bool deleted});
}

/// @nodoc
class __$$_ClienteUsuarioCopyWithImpl<$Res>
    extends _$ClienteUsuarioCopyWithImpl<$Res, _$_ClienteUsuario>
    implements _$$_ClienteUsuarioCopyWith<$Res> {
  __$$_ClienteUsuarioCopyWithImpl(
      _$_ClienteUsuario _value, $Res Function(_$_ClienteUsuario) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? usuarioId = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$_ClienteUsuario(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      usuarioId: null == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ClienteUsuario extends _ClienteUsuario {
  const _$_ClienteUsuario(
      {required this.clienteId,
      required this.usuarioId,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String clienteId;
  @override
  final String usuarioId;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ClienteUsuario(clienteId: $clienteId, usuarioId: $usuarioId, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteUsuario &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.usuarioId, usuarioId) ||
                other.usuarioId == usuarioId) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, clienteId, usuarioId, lastUpdated, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClienteUsuarioCopyWith<_$_ClienteUsuario> get copyWith =>
      __$$_ClienteUsuarioCopyWithImpl<_$_ClienteUsuario>(this, _$identity);
}

abstract class _ClienteUsuario extends ClienteUsuario {
  const factory _ClienteUsuario(
      {required final String clienteId,
      required final String usuarioId,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_ClienteUsuario;
  const _ClienteUsuario._() : super._();

  @override
  String get clienteId;
  @override
  String get usuarioId;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteUsuarioCopyWith<_$_ClienteUsuario> get copyWith =>
      throw _privateConstructorUsedError;
}
