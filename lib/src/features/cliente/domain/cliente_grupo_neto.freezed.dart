// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  String get grupoNetoDescripcion => throw _privateConstructorUsedError;
  double get dtoAdicional => throw _privateConstructorUsedError;
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
      _$ClienteGrupoNetoCopyWithImpl<$Res, ClienteGrupoNeto>;
  @useResult
  $Res call(
      {String clienteId,
      String grupoNetoId,
      String grupoNetoDescripcion,
      double dtoAdicional,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class _$ClienteGrupoNetoCopyWithImpl<$Res, $Val extends ClienteGrupoNeto>
    implements $ClienteGrupoNetoCopyWith<$Res> {
  _$ClienteGrupoNetoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? grupoNetoId = null,
    Object? grupoNetoDescripcion = null,
    Object? dtoAdicional = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      grupoNetoId: null == grupoNetoId
          ? _value.grupoNetoId
          : grupoNetoId // ignore: cast_nullable_to_non_nullable
              as String,
      grupoNetoDescripcion: null == grupoNetoDescripcion
          ? _value.grupoNetoDescripcion
          : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
              as String,
      dtoAdicional: null == dtoAdicional
          ? _value.dtoAdicional
          : dtoAdicional // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$$_ClienteGrupoNetoCopyWith<$Res>
    implements $ClienteGrupoNetoCopyWith<$Res> {
  factory _$$_ClienteGrupoNetoCopyWith(
          _$_ClienteGrupoNeto value, $Res Function(_$_ClienteGrupoNeto) then) =
      __$$_ClienteGrupoNetoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String clienteId,
      String grupoNetoId,
      String grupoNetoDescripcion,
      double dtoAdicional,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class __$$_ClienteGrupoNetoCopyWithImpl<$Res>
    extends _$ClienteGrupoNetoCopyWithImpl<$Res, _$_ClienteGrupoNeto>
    implements _$$_ClienteGrupoNetoCopyWith<$Res> {
  __$$_ClienteGrupoNetoCopyWithImpl(
      _$_ClienteGrupoNeto _value, $Res Function(_$_ClienteGrupoNeto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? grupoNetoId = null,
    Object? grupoNetoDescripcion = null,
    Object? dtoAdicional = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$_ClienteGrupoNeto(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      grupoNetoId: null == grupoNetoId
          ? _value.grupoNetoId
          : grupoNetoId // ignore: cast_nullable_to_non_nullable
              as String,
      grupoNetoDescripcion: null == grupoNetoDescripcion
          ? _value.grupoNetoDescripcion
          : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
              as String,
      dtoAdicional: null == dtoAdicional
          ? _value.dtoAdicional
          : dtoAdicional // ignore: cast_nullable_to_non_nullable
              as double,
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

class _$_ClienteGrupoNeto extends _ClienteGrupoNeto {
  const _$_ClienteGrupoNeto(
      {required this.clienteId,
      required this.grupoNetoId,
      required this.grupoNetoDescripcion,
      required this.dtoAdicional,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String clienteId;
  @override
  final String grupoNetoId;
  @override
  final String grupoNetoDescripcion;
  @override
  final double dtoAdicional;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ClienteGrupoNeto(clienteId: $clienteId, grupoNetoId: $grupoNetoId, grupoNetoDescripcion: $grupoNetoDescripcion, dtoAdicional: $dtoAdicional, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteGrupoNeto &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.grupoNetoId, grupoNetoId) ||
                other.grupoNetoId == grupoNetoId) &&
            (identical(other.grupoNetoDescripcion, grupoNetoDescripcion) ||
                other.grupoNetoDescripcion == grupoNetoDescripcion) &&
            (identical(other.dtoAdicional, dtoAdicional) ||
                other.dtoAdicional == dtoAdicional) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clienteId, grupoNetoId,
      grupoNetoDescripcion, dtoAdicional, lastUpdated, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClienteGrupoNetoCopyWith<_$_ClienteGrupoNeto> get copyWith =>
      __$$_ClienteGrupoNetoCopyWithImpl<_$_ClienteGrupoNeto>(this, _$identity);
}

abstract class _ClienteGrupoNeto extends ClienteGrupoNeto {
  const factory _ClienteGrupoNeto(
      {required final String clienteId,
      required final String grupoNetoId,
      required final String grupoNetoDescripcion,
      required final double dtoAdicional,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_ClienteGrupoNeto;
  const _ClienteGrupoNeto._() : super._();

  @override
  String get clienteId;
  @override
  String get grupoNetoId;
  @override
  String get grupoNetoDescripcion;
  @override
  double get dtoAdicional;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteGrupoNetoCopyWith<_$_ClienteGrupoNeto> get copyWith =>
      throw _privateConstructorUsedError;
}
