// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_recambio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArticuloRecambio {
  String get articuloId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  int get cantidad => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// Create a copy of ArticuloRecambio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticuloRecambioCopyWith<ArticuloRecambio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloRecambioCopyWith<$Res> {
  factory $ArticuloRecambioCopyWith(
          ArticuloRecambio value, $Res Function(ArticuloRecambio) then) =
      _$ArticuloRecambioCopyWithImpl<$Res, ArticuloRecambio>;
  @useResult
  $Res call(
      {String articuloId,
      String id,
      String descripcion,
      int cantidad,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class _$ArticuloRecambioCopyWithImpl<$Res, $Val extends ArticuloRecambio>
    implements $ArticuloRecambioCopyWith<$Res> {
  _$ArticuloRecambioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticuloRecambio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? id = null,
    Object? descripcion = null,
    Object? cantidad = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      cantidad: null == cantidad
          ? _value.cantidad
          : cantidad // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$ArticuloRecambioImplCopyWith<$Res>
    implements $ArticuloRecambioCopyWith<$Res> {
  factory _$$ArticuloRecambioImplCopyWith(_$ArticuloRecambioImpl value,
          $Res Function(_$ArticuloRecambioImpl) then) =
      __$$ArticuloRecambioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String articuloId,
      String id,
      String descripcion,
      int cantidad,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class __$$ArticuloRecambioImplCopyWithImpl<$Res>
    extends _$ArticuloRecambioCopyWithImpl<$Res, _$ArticuloRecambioImpl>
    implements _$$ArticuloRecambioImplCopyWith<$Res> {
  __$$ArticuloRecambioImplCopyWithImpl(_$ArticuloRecambioImpl _value,
      $Res Function(_$ArticuloRecambioImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticuloRecambio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? id = null,
    Object? descripcion = null,
    Object? cantidad = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$ArticuloRecambioImpl(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      cantidad: null == cantidad
          ? _value.cantidad
          : cantidad // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$ArticuloRecambioImpl extends _ArticuloRecambio {
  const _$ArticuloRecambioImpl(
      {required this.articuloId,
      required this.id,
      required this.descripcion,
      required this.cantidad,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String articuloId;
  @override
  final String id;
  @override
  final String descripcion;
  @override
  final int cantidad;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ArticuloRecambio(articuloId: $articuloId, id: $id, descripcion: $descripcion, cantidad: $cantidad, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticuloRecambioImpl &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.cantidad, cantidad) ||
                other.cantidad == cantidad) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, articuloId, id, descripcion, cantidad, lastUpdated, deleted);

  /// Create a copy of ArticuloRecambio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticuloRecambioImplCopyWith<_$ArticuloRecambioImpl> get copyWith =>
      __$$ArticuloRecambioImplCopyWithImpl<_$ArticuloRecambioImpl>(
          this, _$identity);
}

abstract class _ArticuloRecambio extends ArticuloRecambio {
  const factory _ArticuloRecambio(
      {required final String articuloId,
      required final String id,
      required final String descripcion,
      required final int cantidad,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$ArticuloRecambioImpl;
  const _ArticuloRecambio._() : super._();

  @override
  String get articuloId;
  @override
  String get id;
  @override
  String get descripcion;
  @override
  int get cantidad;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;

  /// Create a copy of ArticuloRecambio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticuloRecambioImplCopyWith<_$ArticuloRecambioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
