// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$FamiliaCopyWithImpl<$Res, Familia>;
  @useResult
  $Res call({String id, String descripcion, DateTime lastUpdate, bool deleted});
}

/// @nodoc
class _$FamiliaCopyWithImpl<$Res, $Val extends Familia>
    implements $FamiliaCopyWith<$Res> {
  _$FamiliaCopyWithImpl(this._value, this._then);

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
              as String,
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
abstract class _$$FamiliaImplCopyWith<$Res> implements $FamiliaCopyWith<$Res> {
  factory _$$FamiliaImplCopyWith(
          _$FamiliaImpl value, $Res Function(_$FamiliaImpl) then) =
      __$$FamiliaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String descripcion, DateTime lastUpdate, bool deleted});
}

/// @nodoc
class __$$FamiliaImplCopyWithImpl<$Res>
    extends _$FamiliaCopyWithImpl<$Res, _$FamiliaImpl>
    implements _$$FamiliaImplCopyWith<$Res> {
  __$$FamiliaImplCopyWithImpl(
      _$FamiliaImpl _value, $Res Function(_$FamiliaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? descripcion = null,
    Object? lastUpdate = null,
    Object? deleted = null,
  }) {
    return _then(_$FamiliaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$FamiliaImpl extends _Familia {
  const _$FamiliaImpl(
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
            other is _$FamiliaImpl &&
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
  _$$FamiliaImplCopyWith<_$FamiliaImpl> get copyWith =>
      __$$FamiliaImplCopyWithImpl<_$FamiliaImpl>(this, _$identity);
}

abstract class _Familia extends Familia {
  const factory _Familia(
      {required final String id,
      required final String descripcion,
      required final DateTime lastUpdate,
      required final bool deleted}) = _$FamiliaImpl;
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
  _$$FamiliaImplCopyWith<_$FamiliaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
