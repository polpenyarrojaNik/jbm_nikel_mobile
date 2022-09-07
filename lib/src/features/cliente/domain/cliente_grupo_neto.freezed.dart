// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cliente_grupo_neto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClienteGrupoNeto {
  String get clienteId => throw _privateConstructorUsedError;
  String get grupoNetoId => throw _privateConstructorUsedError;
  String? get grupoNetoDescripcion => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClienteGrupoNetoCopyWith<ClienteGrupoNeto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteGrupoNetoCopyWith<$Res> {
  factory $ClienteGrupoNetoCopyWith(
          ClienteGrupoNeto value, $Res Function(ClienteGrupoNeto) then) =
      _$ClienteGrupoNetoCopyWithImpl<$Res>;
  $Res call(
      {String clienteId,
      String grupoNetoId,
      String? grupoNetoDescripcion,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class _$ClienteGrupoNetoCopyWithImpl<$Res>
    implements $ClienteGrupoNetoCopyWith<$Res> {
  _$ClienteGrupoNetoCopyWithImpl(this._value, this._then);

  final ClienteGrupoNeto _value;
  // ignore: unused_field
  final $Res Function(ClienteGrupoNeto) _then;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? grupoNetoId = freezed,
    Object? grupoNetoDescripcion = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      grupoNetoId: grupoNetoId == freezed
          ? _value.grupoNetoId
          : grupoNetoId // ignore: cast_nullable_to_non_nullable
              as String,
      grupoNetoDescripcion: grupoNetoDescripcion == freezed
          ? _value.grupoNetoDescripcion
          : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_ClienteGrupoNetoCopyWith<$Res>
    implements $ClienteGrupoNetoCopyWith<$Res> {
  factory _$$_ClienteGrupoNetoCopyWith(
          _$_ClienteGrupoNeto value, $Res Function(_$_ClienteGrupoNeto) then) =
      __$$_ClienteGrupoNetoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String clienteId,
      String grupoNetoId,
      String? grupoNetoDescripcion,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class __$$_ClienteGrupoNetoCopyWithImpl<$Res>
    extends _$ClienteGrupoNetoCopyWithImpl<$Res>
    implements _$$_ClienteGrupoNetoCopyWith<$Res> {
  __$$_ClienteGrupoNetoCopyWithImpl(
      _$_ClienteGrupoNeto _value, $Res Function(_$_ClienteGrupoNeto) _then)
      : super(_value, (v) => _then(v as _$_ClienteGrupoNeto));

  @override
  _$_ClienteGrupoNeto get _value => super._value as _$_ClienteGrupoNeto;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? grupoNetoId = freezed,
    Object? grupoNetoDescripcion = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ClienteGrupoNeto(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      grupoNetoId: grupoNetoId == freezed
          ? _value.grupoNetoId
          : grupoNetoId // ignore: cast_nullable_to_non_nullable
              as String,
      grupoNetoDescripcion: grupoNetoDescripcion == freezed
          ? _value.grupoNetoDescripcion
          : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$_ClienteGrupoNeto extends _ClienteGrupoNeto {
  const _$_ClienteGrupoNeto(
      {required this.clienteId,
      required this.grupoNetoId,
      this.grupoNetoDescripcion,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String clienteId;
  @override
  final String grupoNetoId;
  @override
  final String? grupoNetoDescripcion;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ClienteGrupoNeto(clienteId: $clienteId, grupoNetoId: $grupoNetoId, grupoNetoDescripcion: $grupoNetoDescripcion, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteGrupoNeto &&
            const DeepCollectionEquality().equals(other.clienteId, clienteId) &&
            const DeepCollectionEquality()
                .equals(other.grupoNetoId, grupoNetoId) &&
            const DeepCollectionEquality()
                .equals(other.grupoNetoDescripcion, grupoNetoDescripcion) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clienteId),
      const DeepCollectionEquality().hash(grupoNetoId),
      const DeepCollectionEquality().hash(grupoNetoDescripcion),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ClienteGrupoNetoCopyWith<_$_ClienteGrupoNeto> get copyWith =>
      __$$_ClienteGrupoNetoCopyWithImpl<_$_ClienteGrupoNeto>(this, _$identity);
}

abstract class _ClienteGrupoNeto extends ClienteGrupoNeto {
  const factory _ClienteGrupoNeto(
      {required final String clienteId,
      required final String grupoNetoId,
      final String? grupoNetoDescripcion,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_ClienteGrupoNeto;
  const _ClienteGrupoNeto._() : super._();

  @override
  String get clienteId;
  @override
  String get grupoNetoId;
  @override
  String? get grupoNetoDescripcion;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteGrupoNetoCopyWith<_$_ClienteGrupoNeto> get copyWith =>
      throw _privateConstructorUsedError;
}
