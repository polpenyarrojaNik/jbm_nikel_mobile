// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subfamilia.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Subfamilia {
  String get id => throw _privateConstructorUsedError;
  String get familiaId => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// Create a copy of Subfamilia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubfamiliaCopyWith<Subfamilia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubfamiliaCopyWith<$Res> {
  factory $SubfamiliaCopyWith(
          Subfamilia value, $Res Function(Subfamilia) then) =
      _$SubfamiliaCopyWithImpl<$Res, Subfamilia>;
  @useResult
  $Res call(
      {String id,
      String familiaId,
      String descripcion,
      DateTime lastUpdate,
      bool deleted});
}

/// @nodoc
class _$SubfamiliaCopyWithImpl<$Res, $Val extends Subfamilia>
    implements $SubfamiliaCopyWith<$Res> {
  _$SubfamiliaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subfamilia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? familiaId = null,
    Object? descripcion = null,
    Object? lastUpdate = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      familiaId: null == familiaId
          ? _value.familiaId
          : familiaId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SubfamiliaImplCopyWith<$Res>
    implements $SubfamiliaCopyWith<$Res> {
  factory _$$SubfamiliaImplCopyWith(
          _$SubfamiliaImpl value, $Res Function(_$SubfamiliaImpl) then) =
      __$$SubfamiliaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String familiaId,
      String descripcion,
      DateTime lastUpdate,
      bool deleted});
}

/// @nodoc
class __$$SubfamiliaImplCopyWithImpl<$Res>
    extends _$SubfamiliaCopyWithImpl<$Res, _$SubfamiliaImpl>
    implements _$$SubfamiliaImplCopyWith<$Res> {
  __$$SubfamiliaImplCopyWithImpl(
      _$SubfamiliaImpl _value, $Res Function(_$SubfamiliaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subfamilia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? familiaId = null,
    Object? descripcion = null,
    Object? lastUpdate = null,
    Object? deleted = null,
  }) {
    return _then(_$SubfamiliaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      familiaId: null == familiaId
          ? _value.familiaId
          : familiaId // ignore: cast_nullable_to_non_nullable
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

class _$SubfamiliaImpl extends _Subfamilia {
  const _$SubfamiliaImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubfamiliaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.familiaId, familiaId) ||
                other.familiaId == familiaId) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, familiaId, descripcion, lastUpdate, deleted);

  /// Create a copy of Subfamilia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubfamiliaImplCopyWith<_$SubfamiliaImpl> get copyWith =>
      __$$SubfamiliaImplCopyWithImpl<_$SubfamiliaImpl>(this, _$identity);
}

abstract class _Subfamilia extends Subfamilia {
  const factory _Subfamilia(
      {required final String id,
      required final String familiaId,
      required final String descripcion,
      required final DateTime lastUpdate,
      required final bool deleted}) = _$SubfamiliaImpl;
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

  /// Create a copy of Subfamilia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubfamiliaImplCopyWith<_$SubfamiliaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
