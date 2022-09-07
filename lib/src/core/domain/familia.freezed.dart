// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'familia.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Familia {
  String get id => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FamiliaCopyWith<Familia> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamiliaCopyWith<$Res> {
  factory $FamiliaCopyWith(Familia value, $Res Function(Familia) then) =
      _$FamiliaCopyWithImpl<$Res>;
  $Res call({String id, String descripcion, DateTime lastUpdate, bool deleted});
}

/// @nodoc
class _$FamiliaCopyWithImpl<$Res> implements $FamiliaCopyWith<$Res> {
  _$FamiliaCopyWithImpl(this._value, this._then);

  final Familia _value;
  // ignore: unused_field
  final $Res Function(Familia) _then;

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
abstract class _$$_FamiliaCopyWith<$Res> implements $FamiliaCopyWith<$Res> {
  factory _$$_FamiliaCopyWith(
          _$_Familia value, $Res Function(_$_Familia) then) =
      __$$_FamiliaCopyWithImpl<$Res>;
  @override
  $Res call({String id, String descripcion, DateTime lastUpdate, bool deleted});
}

/// @nodoc
class __$$_FamiliaCopyWithImpl<$Res> extends _$FamiliaCopyWithImpl<$Res>
    implements _$$_FamiliaCopyWith<$Res> {
  __$$_FamiliaCopyWithImpl(_$_Familia _value, $Res Function(_$_Familia) _then)
      : super(_value, (v) => _then(v as _$_Familia));

  @override
  _$_Familia get _value => super._value as _$_Familia;

  @override
  $Res call({
    Object? id = freezed,
    Object? descripcion = freezed,
    Object? lastUpdate = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_Familia(
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

class _$_Familia extends _Familia {
  const _$_Familia(
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
    return 'Familia(id: $id, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Familia &&
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
  _$$_FamiliaCopyWith<_$_Familia> get copyWith =>
      __$$_FamiliaCopyWithImpl<_$_Familia>(this, _$identity);
}

abstract class _Familia extends Familia {
  const factory _Familia(
      {required final String id,
      required final String descripcion,
      required final DateTime lastUpdate,
      required final bool deleted}) = _$_Familia;
  const _Familia._() : super._();

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
  _$$_FamiliaCopyWith<_$_Familia> get copyWith =>
      throw _privateConstructorUsedError;
}
