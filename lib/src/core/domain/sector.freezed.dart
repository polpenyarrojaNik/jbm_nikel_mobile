// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sector.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Sector {
  String get id => throw _privateConstructorUsedError;
  bool get isAlta => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// Create a copy of Sector
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectorCopyWith<Sector> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectorCopyWith<$Res> {
  factory $SectorCopyWith(Sector value, $Res Function(Sector) then) =
      _$SectorCopyWithImpl<$Res, Sector>;
  @useResult
  $Res call({
    String id,
    bool isAlta,
    String descripcion,
    DateTime lastUpdate,
    bool deleted,
  });
}

/// @nodoc
class _$SectorCopyWithImpl<$Res, $Val extends Sector>
    implements $SectorCopyWith<$Res> {
  _$SectorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sector
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isAlta = null,
    Object? descripcion = null,
    Object? lastUpdate = null,
    Object? deleted = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            isAlta:
                null == isAlta
                    ? _value.isAlta
                    : isAlta // ignore: cast_nullable_to_non_nullable
                        as bool,
            descripcion:
                null == descripcion
                    ? _value.descripcion
                    : descripcion // ignore: cast_nullable_to_non_nullable
                        as String,
            lastUpdate:
                null == lastUpdate
                    ? _value.lastUpdate
                    : lastUpdate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            deleted:
                null == deleted
                    ? _value.deleted
                    : deleted // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SectorImplCopyWith<$Res> implements $SectorCopyWith<$Res> {
  factory _$$SectorImplCopyWith(
    _$SectorImpl value,
    $Res Function(_$SectorImpl) then,
  ) = __$$SectorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    bool isAlta,
    String descripcion,
    DateTime lastUpdate,
    bool deleted,
  });
}

/// @nodoc
class __$$SectorImplCopyWithImpl<$Res>
    extends _$SectorCopyWithImpl<$Res, _$SectorImpl>
    implements _$$SectorImplCopyWith<$Res> {
  __$$SectorImplCopyWithImpl(
    _$SectorImpl _value,
    $Res Function(_$SectorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Sector
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isAlta = null,
    Object? descripcion = null,
    Object? lastUpdate = null,
    Object? deleted = null,
  }) {
    return _then(
      _$SectorImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        isAlta:
            null == isAlta
                ? _value.isAlta
                : isAlta // ignore: cast_nullable_to_non_nullable
                    as bool,
        descripcion:
            null == descripcion
                ? _value.descripcion
                : descripcion // ignore: cast_nullable_to_non_nullable
                    as String,
        lastUpdate:
            null == lastUpdate
                ? _value.lastUpdate
                : lastUpdate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        deleted:
            null == deleted
                ? _value.deleted
                : deleted // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$SectorImpl extends _Sector {
  const _$SectorImpl({
    required this.id,
    required this.isAlta,
    required this.descripcion,
    required this.lastUpdate,
    required this.deleted,
  }) : super._();

  @override
  final String id;
  @override
  final bool isAlta;
  @override
  final String descripcion;
  @override
  final DateTime lastUpdate;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'Sector(id: $id, isAlta: $isAlta, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isAlta, isAlta) || other.isAlta == isAlta) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, isAlta, descripcion, lastUpdate, deleted);

  /// Create a copy of Sector
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectorImplCopyWith<_$SectorImpl> get copyWith =>
      __$$SectorImplCopyWithImpl<_$SectorImpl>(this, _$identity);
}

abstract class _Sector extends Sector {
  const factory _Sector({
    required final String id,
    required final bool isAlta,
    required final String descripcion,
    required final DateTime lastUpdate,
    required final bool deleted,
  }) = _$SectorImpl;
  const _Sector._() : super._();

  @override
  String get id;
  @override
  bool get isAlta;
  @override
  String get descripcion;
  @override
  DateTime get lastUpdate;
  @override
  bool get deleted;

  /// Create a copy of Sector
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectorImplCopyWith<_$SectorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
