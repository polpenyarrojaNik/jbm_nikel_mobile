// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'articulo_recambio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticuloRecambio {
  String get articuloId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  int get cantidad => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticuloRecambioCopyWith<ArticuloRecambio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloRecambioCopyWith<$Res> {
  factory $ArticuloRecambioCopyWith(
          ArticuloRecambio value, $Res Function(ArticuloRecambio) then) =
      _$ArticuloRecambioCopyWithImpl<$Res>;
  $Res call(
      {String articuloId,
      String id,
      String descripcion,
      int cantidad,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class _$ArticuloRecambioCopyWithImpl<$Res>
    implements $ArticuloRecambioCopyWith<$Res> {
  _$ArticuloRecambioCopyWithImpl(this._value, this._then);

  final ArticuloRecambio _value;
  // ignore: unused_field
  final $Res Function(ArticuloRecambio) _then;

  @override
  $Res call({
    Object? articuloId = freezed,
    Object? id = freezed,
    Object? descripcion = freezed,
    Object? cantidad = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: descripcion == freezed
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      cantidad: cantidad == freezed
          ? _value.cantidad
          : cantidad // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_ArticuloRecambioCopyWith<$Res>
    implements $ArticuloRecambioCopyWith<$Res> {
  factory _$$_ArticuloRecambioCopyWith(
          _$_ArticuloRecambio value, $Res Function(_$_ArticuloRecambio) then) =
      __$$_ArticuloRecambioCopyWithImpl<$Res>;
  @override
  $Res call(
      {String articuloId,
      String id,
      String descripcion,
      int cantidad,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class __$$_ArticuloRecambioCopyWithImpl<$Res>
    extends _$ArticuloRecambioCopyWithImpl<$Res>
    implements _$$_ArticuloRecambioCopyWith<$Res> {
  __$$_ArticuloRecambioCopyWithImpl(
      _$_ArticuloRecambio _value, $Res Function(_$_ArticuloRecambio) _then)
      : super(_value, (v) => _then(v as _$_ArticuloRecambio));

  @override
  _$_ArticuloRecambio get _value => super._value as _$_ArticuloRecambio;

  @override
  $Res call({
    Object? articuloId = freezed,
    Object? id = freezed,
    Object? descripcion = freezed,
    Object? cantidad = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ArticuloRecambio(
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: descripcion == freezed
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      cantidad: cantidad == freezed
          ? _value.cantidad
          : cantidad // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$_ArticuloRecambio extends _ArticuloRecambio {
  const _$_ArticuloRecambio(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticuloRecambio &&
            const DeepCollectionEquality()
                .equals(other.articuloId, articuloId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.descripcion, descripcion) &&
            const DeepCollectionEquality().equals(other.cantidad, cantidad) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articuloId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(descripcion),
      const DeepCollectionEquality().hash(cantidad),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ArticuloRecambioCopyWith<_$_ArticuloRecambio> get copyWith =>
      __$$_ArticuloRecambioCopyWithImpl<_$_ArticuloRecambio>(this, _$identity);
}

abstract class _ArticuloRecambio extends ArticuloRecambio {
  const factory _ArticuloRecambio(
      {required final String articuloId,
      required final String id,
      required final String descripcion,
      required final int cantidad,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_ArticuloRecambio;
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
  @override
  @JsonKey(ignore: true)
  _$$_ArticuloRecambioCopyWith<_$_ArticuloRecambio> get copyWith =>
      throw _privateConstructorUsedError;
}
