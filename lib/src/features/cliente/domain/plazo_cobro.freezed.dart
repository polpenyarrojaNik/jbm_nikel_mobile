// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'plazo_cobro.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlazoDeCobro {
  String get id => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlazoDeCobroCopyWith<PlazoDeCobro> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlazoDeCobroCopyWith<$Res> {
  factory $PlazoDeCobroCopyWith(
          PlazoDeCobro value, $Res Function(PlazoDeCobro) then) =
      _$PlazoDeCobroCopyWithImpl<$Res>;
  $Res call({String id, String descripcion, DateTime lastUpdate, bool deleted});
}

/// @nodoc
class _$PlazoDeCobroCopyWithImpl<$Res> implements $PlazoDeCobroCopyWith<$Res> {
  _$PlazoDeCobroCopyWithImpl(this._value, this._then);

  final PlazoDeCobro _value;
  // ignore: unused_field
  final $Res Function(PlazoDeCobro) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? descripcion = freezed,
    Object? lastUpdate = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: descripcion == freezed
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: lastUpdate == freezed
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_PlazoDeCobroCopyWith<$Res>
    implements $PlazoDeCobroCopyWith<$Res> {
  factory _$$_PlazoDeCobroCopyWith(
          _$_PlazoDeCobro value, $Res Function(_$_PlazoDeCobro) then) =
      __$$_PlazoDeCobroCopyWithImpl<$Res>;
  @override
  $Res call({String id, String descripcion, DateTime lastUpdate, bool deleted});
}

/// @nodoc
class __$$_PlazoDeCobroCopyWithImpl<$Res>
    extends _$PlazoDeCobroCopyWithImpl<$Res>
    implements _$$_PlazoDeCobroCopyWith<$Res> {
  __$$_PlazoDeCobroCopyWithImpl(
      _$_PlazoDeCobro _value, $Res Function(_$_PlazoDeCobro) _then)
      : super(_value, (v) => _then(v as _$_PlazoDeCobro));

  @override
  _$_PlazoDeCobro get _value => super._value as _$_PlazoDeCobro;

  @override
  $Res call({
    Object? id = freezed,
    Object? descripcion = freezed,
    Object? lastUpdate = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_PlazoDeCobro(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: descripcion == freezed
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdate: lastUpdate == freezed
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PlazoDeCobro extends _PlazoDeCobro {
  const _$_PlazoDeCobro(
      {required this.id,
      required this.descripcion,
      required this.lastUpdate,
      required this.deleted})
      : super._();

  @override
  final String id;
  @override
  final String descripcion;
  @override
  final DateTime lastUpdate;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'PlazoDeCobro(id: $id, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlazoDeCobro &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.descripcion, descripcion) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdate, lastUpdate) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(descripcion),
      const DeepCollectionEquality().hash(lastUpdate),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_PlazoDeCobroCopyWith<_$_PlazoDeCobro> get copyWith =>
      __$$_PlazoDeCobroCopyWithImpl<_$_PlazoDeCobro>(this, _$identity);
}

abstract class _PlazoDeCobro extends PlazoDeCobro {
  const factory _PlazoDeCobro(
      {required final String id,
      required final String descripcion,
      required final DateTime lastUpdate,
      required final bool deleted}) = _$_PlazoDeCobro;
  const _PlazoDeCobro._() : super._();

  @override
  String get id;
  @override
  String get descripcion;
  @override
  DateTime get lastUpdate;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_PlazoDeCobroCopyWith<_$_PlazoDeCobro> get copyWith =>
      throw _privateConstructorUsedError;
}
