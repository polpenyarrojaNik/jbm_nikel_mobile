// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pedido_venta_estado.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PedidoVentaEstado {
  int get id => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PedidoVentaEstadoCopyWith<PedidoVentaEstado> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PedidoVentaEstadoCopyWith<$Res> {
  factory $PedidoVentaEstadoCopyWith(
          PedidoVentaEstado value, $Res Function(PedidoVentaEstado) then) =
      _$PedidoVentaEstadoCopyWithImpl<$Res, PedidoVentaEstado>;
  @useResult
  $Res call({int id, String descripcion, DateTime lastUpdate, bool deleted});
}

/// @nodoc
class _$PedidoVentaEstadoCopyWithImpl<$Res, $Val extends PedidoVentaEstado>
    implements $PedidoVentaEstadoCopyWith<$Res> {
  _$PedidoVentaEstadoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? descripcion = null,
    Object? lastUpdate = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PedidoVentaEstadoCopyWith<$Res>
    implements $PedidoVentaEstadoCopyWith<$Res> {
  factory _$$_PedidoVentaEstadoCopyWith(_$_PedidoVentaEstado value,
          $Res Function(_$_PedidoVentaEstado) then) =
      __$$_PedidoVentaEstadoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String descripcion, DateTime lastUpdate, bool deleted});
}

/// @nodoc
class __$$_PedidoVentaEstadoCopyWithImpl<$Res>
    extends _$PedidoVentaEstadoCopyWithImpl<$Res, _$_PedidoVentaEstado>
    implements _$$_PedidoVentaEstadoCopyWith<$Res> {
  __$$_PedidoVentaEstadoCopyWithImpl(
      _$_PedidoVentaEstado _value, $Res Function(_$_PedidoVentaEstado) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? descripcion = null,
    Object? lastUpdate = null,
    Object? deleted = null,
  }) {
    return _then(_$_PedidoVentaEstado(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PedidoVentaEstado extends _PedidoVentaEstado {
  const _$_PedidoVentaEstado(
      {required this.id,
      required this.descripcion,
      required this.lastUpdate,
      required this.deleted})
      : super._();

  @override
  final int id;
  @override
  final String descripcion;
  @override
  final DateTime lastUpdate;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'PedidoVentaEstado(id: $id, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PedidoVentaEstado &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, descripcion, lastUpdate, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PedidoVentaEstadoCopyWith<_$_PedidoVentaEstado> get copyWith =>
      __$$_PedidoVentaEstadoCopyWithImpl<_$_PedidoVentaEstado>(
          this, _$identity);
}

abstract class _PedidoVentaEstado extends PedidoVentaEstado {
  const factory _PedidoVentaEstado(
      {required final int id,
      required final String descripcion,
      required final DateTime lastUpdate,
      required final bool deleted}) = _$_PedidoVentaEstado;
  const _PedidoVentaEstado._() : super._();

  @override
  int get id;
  @override
  String get descripcion;
  @override
  DateTime get lastUpdate;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_PedidoVentaEstadoCopyWith<_$_PedidoVentaEstado> get copyWith =>
      throw _privateConstructorUsedError;
}
