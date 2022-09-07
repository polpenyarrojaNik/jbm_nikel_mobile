// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subfamilia.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Subfamilia {
  String get id => throw _privateConstructorUsedError;
  String get familiaId => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubfamiliaCopyWith<Subfamilia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubfamiliaCopyWith<$Res> {
  factory $SubfamiliaCopyWith(
          Subfamilia value, $Res Function(Subfamilia) then) =
      _$SubfamiliaCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String familiaId,
      String descripcion,
      DateTime lastUpdate,
      bool deleted});
}

/// @nodoc
class _$SubfamiliaCopyWithImpl<$Res> implements $SubfamiliaCopyWith<$Res> {
  _$SubfamiliaCopyWithImpl(this._value, this._then);

  final Subfamilia _value;
  // ignore: unused_field
  final $Res Function(Subfamilia) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? familiaId = freezed,
    Object? descripcion = freezed,
    Object? lastUpdate = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      familiaId: familiaId == freezed
          ? _value.familiaId
          : familiaId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_SubfamiliaCopyWith<$Res>
    implements $SubfamiliaCopyWith<$Res> {
  factory _$$_SubfamiliaCopyWith(
          _$_Subfamilia value, $Res Function(_$_Subfamilia) then) =
      __$$_SubfamiliaCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String familiaId,
      String descripcion,
      DateTime lastUpdate,
      bool deleted});
}

/// @nodoc
class __$$_SubfamiliaCopyWithImpl<$Res> extends _$SubfamiliaCopyWithImpl<$Res>
    implements _$$_SubfamiliaCopyWith<$Res> {
  __$$_SubfamiliaCopyWithImpl(
      _$_Subfamilia _value, $Res Function(_$_Subfamilia) _then)
      : super(_value, (v) => _then(v as _$_Subfamilia));

  @override
  _$_Subfamilia get _value => super._value as _$_Subfamilia;

  @override
  $Res call({
    Object? id = freezed,
    Object? familiaId = freezed,
    Object? descripcion = freezed,
    Object? lastUpdate = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_Subfamilia(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      familiaId: familiaId == freezed
          ? _value.familiaId
          : familiaId // ignore: cast_nullable_to_non_nullable
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

class _$_Subfamilia extends _Subfamilia {
  const _$_Subfamilia(
      {required this.id,
      required this.familiaId,
      required this.descripcion,
      required this.lastUpdate,
      required this.deleted})
      : super._();

  @override
  final String id;
  @override
  final String familiaId;
  @override
  final String descripcion;
  @override
  final DateTime lastUpdate;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'Subfamilia(id: $id, familiaId: $familiaId, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Subfamilia &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.familiaId, familiaId) &&
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
      const DeepCollectionEquality().hash(familiaId),
      const DeepCollectionEquality().hash(descripcion),
      const DeepCollectionEquality().hash(lastUpdate),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_SubfamiliaCopyWith<_$_Subfamilia> get copyWith =>
      __$$_SubfamiliaCopyWithImpl<_$_Subfamilia>(this, _$identity);
}

abstract class _Subfamilia extends Subfamilia {
  const factory _Subfamilia(
      {required final String id,
      required final String familiaId,
      required final String descripcion,
      required final DateTime lastUpdate,
      required final bool deleted}) = _$_Subfamilia;
  const _Subfamilia._() : super._();

  @override
  String get id;
  @override
  String get familiaId;
  @override
  String get descripcion;
  @override
  DateTime get lastUpdate;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_SubfamiliaCopyWith<_$_Subfamilia> get copyWith =>
      throw _privateConstructorUsedError;
}
