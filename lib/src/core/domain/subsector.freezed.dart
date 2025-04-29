// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subsector.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Subsector {
  String get subsectorId => throw _privateConstructorUsedError;
  Sector get sector => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// Create a copy of Subsector
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubsectorCopyWith<Subsector> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubsectorCopyWith<$Res> {
  factory $SubsectorCopyWith(Subsector value, $Res Function(Subsector) then) =
      _$SubsectorCopyWithImpl<$Res, Subsector>;
  @useResult
  $Res call(
      {String subsectorId,
      Sector sector,
      String descripcion,
      DateTime lastUpdate,
      bool deleted});

  $SectorCopyWith<$Res> get sector;
}

/// @nodoc
class _$SubsectorCopyWithImpl<$Res, $Val extends Subsector>
    implements $SubsectorCopyWith<$Res> {
  _$SubsectorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subsector
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subsectorId = null,
    Object? sector = null,
    Object? descripcion = null,
    Object? lastUpdate = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      subsectorId: null == subsectorId
          ? _value.subsectorId
          : subsectorId // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as Sector,
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

  /// Create a copy of Subsector
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectorCopyWith<$Res> get sector {
    return $SectorCopyWith<$Res>(_value.sector, (value) {
      return _then(_value.copyWith(sector: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubsectorImplCopyWith<$Res>
    implements $SubsectorCopyWith<$Res> {
  factory _$$SubsectorImplCopyWith(
          _$SubsectorImpl value, $Res Function(_$SubsectorImpl) then) =
      __$$SubsectorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String subsectorId,
      Sector sector,
      String descripcion,
      DateTime lastUpdate,
      bool deleted});

  @override
  $SectorCopyWith<$Res> get sector;
}

/// @nodoc
class __$$SubsectorImplCopyWithImpl<$Res>
    extends _$SubsectorCopyWithImpl<$Res, _$SubsectorImpl>
    implements _$$SubsectorImplCopyWith<$Res> {
  __$$SubsectorImplCopyWithImpl(
      _$SubsectorImpl _value, $Res Function(_$SubsectorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subsector
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subsectorId = null,
    Object? sector = null,
    Object? descripcion = null,
    Object? lastUpdate = null,
    Object? deleted = null,
  }) {
    return _then(_$SubsectorImpl(
      subsectorId: null == subsectorId
          ? _value.subsectorId
          : subsectorId // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as Sector,
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

class _$SubsectorImpl extends _Subsector {
  const _$SubsectorImpl(
      {required this.subsectorId,
      required this.sector,
      required this.descripcion,
      required this.lastUpdate,
      required this.deleted})
      : super._();

  @override
  final String subsectorId;
  @override
  final Sector sector;
  @override
  final String descripcion;
  @override
  final DateTime lastUpdate;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'Subsector(subsectorId: $subsectorId, sector: $sector, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubsectorImpl &&
            (identical(other.subsectorId, subsectorId) ||
                other.subsectorId == subsectorId) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, subsectorId, sector, descripcion, lastUpdate, deleted);

  /// Create a copy of Subsector
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubsectorImplCopyWith<_$SubsectorImpl> get copyWith =>
      __$$SubsectorImplCopyWithImpl<_$SubsectorImpl>(this, _$identity);
}

abstract class _Subsector extends Subsector {
  const factory _Subsector(
      {required final String subsectorId,
      required final Sector sector,
      required final String descripcion,
      required final DateTime lastUpdate,
      required final bool deleted}) = _$SubsectorImpl;
  const _Subsector._() : super._();

  @override
  String get subsectorId;
  @override
  Sector get sector;
  @override
  String get descripcion;
  @override
  DateTime get lastUpdate;
  @override
  bool get deleted;

  /// Create a copy of Subsector
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubsectorImplCopyWith<_$SubsectorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
