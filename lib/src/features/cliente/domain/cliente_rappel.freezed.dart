// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cliente_rappel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClienteRappel {
  String get clienteId => throw _privateConstructorUsedError;
  String get rappelId => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  DateTime get fechaDesDe => throw _privateConstructorUsedError;
  DateTime? get fechaHasta => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClienteRappelCopyWith<ClienteRappel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteRappelCopyWith<$Res> {
  factory $ClienteRappelCopyWith(
          ClienteRappel value, $Res Function(ClienteRappel) then) =
      _$ClienteRappelCopyWithImpl<$Res>;
  $Res call(
      {String clienteId,
      String rappelId,
      String descripcion,
      DateTime fechaDesDe,
      DateTime? fechaHasta,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class _$ClienteRappelCopyWithImpl<$Res>
    implements $ClienteRappelCopyWith<$Res> {
  _$ClienteRappelCopyWithImpl(this._value, this._then);

  final ClienteRappel _value;
  // ignore: unused_field
  final $Res Function(ClienteRappel) _then;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? rappelId = freezed,
    Object? descripcion = freezed,
    Object? fechaDesDe = freezed,
    Object? fechaHasta = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      rappelId: rappelId == freezed
          ? _value.rappelId
          : rappelId // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: descripcion == freezed
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      fechaDesDe: fechaDesDe == freezed
          ? _value.fechaDesDe
          : fechaDesDe // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fechaHasta: fechaHasta == freezed
          ? _value.fechaHasta
          : fechaHasta // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ClienteRappelCopyWith<$Res>
    implements $ClienteRappelCopyWith<$Res> {
  factory _$$_ClienteRappelCopyWith(
          _$_ClienteRappel value, $Res Function(_$_ClienteRappel) then) =
      __$$_ClienteRappelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String clienteId,
      String rappelId,
      String descripcion,
      DateTime fechaDesDe,
      DateTime? fechaHasta,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class __$$_ClienteRappelCopyWithImpl<$Res>
    extends _$ClienteRappelCopyWithImpl<$Res>
    implements _$$_ClienteRappelCopyWith<$Res> {
  __$$_ClienteRappelCopyWithImpl(
      _$_ClienteRappel _value, $Res Function(_$_ClienteRappel) _then)
      : super(_value, (v) => _then(v as _$_ClienteRappel));

  @override
  _$_ClienteRappel get _value => super._value as _$_ClienteRappel;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? rappelId = freezed,
    Object? descripcion = freezed,
    Object? fechaDesDe = freezed,
    Object? fechaHasta = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ClienteRappel(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      rappelId: rappelId == freezed
          ? _value.rappelId
          : rappelId // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: descripcion == freezed
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      fechaDesDe: fechaDesDe == freezed
          ? _value.fechaDesDe
          : fechaDesDe // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fechaHasta: fechaHasta == freezed
          ? _value.fechaHasta
          : fechaHasta // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ClienteRappel extends _ClienteRappel {
  const _$_ClienteRappel(
      {required this.clienteId,
      required this.rappelId,
      required this.descripcion,
      required this.fechaDesDe,
      this.fechaHasta,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String clienteId;
  @override
  final String rappelId;
  @override
  final String descripcion;
  @override
  final DateTime fechaDesDe;
  @override
  final DateTime? fechaHasta;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ClienteRappel(clienteId: $clienteId, rappelId: $rappelId, descripcion: $descripcion, fechaDesDe: $fechaDesDe, fechaHasta: $fechaHasta, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteRappel &&
            const DeepCollectionEquality().equals(other.clienteId, clienteId) &&
            const DeepCollectionEquality().equals(other.rappelId, rappelId) &&
            const DeepCollectionEquality()
                .equals(other.descripcion, descripcion) &&
            const DeepCollectionEquality()
                .equals(other.fechaDesDe, fechaDesDe) &&
            const DeepCollectionEquality()
                .equals(other.fechaHasta, fechaHasta) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clienteId),
      const DeepCollectionEquality().hash(rappelId),
      const DeepCollectionEquality().hash(descripcion),
      const DeepCollectionEquality().hash(fechaDesDe),
      const DeepCollectionEquality().hash(fechaHasta),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ClienteRappelCopyWith<_$_ClienteRappel> get copyWith =>
      __$$_ClienteRappelCopyWithImpl<_$_ClienteRappel>(this, _$identity);
}

abstract class _ClienteRappel extends ClienteRappel {
  const factory _ClienteRappel(
      {required final String clienteId,
      required final String rappelId,
      required final String descripcion,
      required final DateTime fechaDesDe,
      final DateTime? fechaHasta,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_ClienteRappel;
  const _ClienteRappel._() : super._();

  @override
  String get clienteId;
  @override
  String get rappelId;
  @override
  String get descripcion;
  @override
  DateTime get fechaDesDe;
  @override
  DateTime? get fechaHasta;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteRappelCopyWith<_$_ClienteRappel> get copyWith =>
      throw _privateConstructorUsedError;
}
