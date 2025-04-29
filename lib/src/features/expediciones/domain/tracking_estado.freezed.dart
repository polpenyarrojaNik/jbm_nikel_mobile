// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_estado.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TrackingEstado {
  String get id => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// Create a copy of TrackingEstado
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackingEstadoCopyWith<TrackingEstado> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingEstadoCopyWith<$Res> {
  factory $TrackingEstadoCopyWith(
    TrackingEstado value,
    $Res Function(TrackingEstado) then,
  ) = _$TrackingEstadoCopyWithImpl<$Res, TrackingEstado>;
  @useResult
  $Res call({String id, String descripcion, DateTime lastUpdate, bool deleted});
}

/// @nodoc
class _$TrackingEstadoCopyWithImpl<$Res, $Val extends TrackingEstado>
    implements $TrackingEstadoCopyWith<$Res> {
  _$TrackingEstadoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackingEstado
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
abstract class _$$TrackingEstadoImplCopyWith<$Res>
    implements $TrackingEstadoCopyWith<$Res> {
  factory _$$TrackingEstadoImplCopyWith(
    _$TrackingEstadoImpl value,
    $Res Function(_$TrackingEstadoImpl) then,
  ) = __$$TrackingEstadoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String descripcion, DateTime lastUpdate, bool deleted});
}

/// @nodoc
class __$$TrackingEstadoImplCopyWithImpl<$Res>
    extends _$TrackingEstadoCopyWithImpl<$Res, _$TrackingEstadoImpl>
    implements _$$TrackingEstadoImplCopyWith<$Res> {
  __$$TrackingEstadoImplCopyWithImpl(
    _$TrackingEstadoImpl _value,
    $Res Function(_$TrackingEstadoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TrackingEstado
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? descripcion = null,
    Object? lastUpdate = null,
    Object? deleted = null,
  }) {
    return _then(
      _$TrackingEstadoImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
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

class _$TrackingEstadoImpl extends _TrackingEstado {
  const _$TrackingEstadoImpl({
    required this.id,
    required this.descripcion,
    required this.lastUpdate,
    required this.deleted,
  }) : super._();

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
    return 'TrackingEstado(id: $id, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingEstadoImpl &&
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

  /// Create a copy of TrackingEstado
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingEstadoImplCopyWith<_$TrackingEstadoImpl> get copyWith =>
      __$$TrackingEstadoImplCopyWithImpl<_$TrackingEstadoImpl>(
        this,
        _$identity,
      );
}

abstract class _TrackingEstado extends TrackingEstado {
  const factory _TrackingEstado({
    required final String id,
    required final String descripcion,
    required final DateTime lastUpdate,
    required final bool deleted,
  }) = _$TrackingEstadoImpl;
  const _TrackingEstado._() : super._();

  @override
  String get id;
  @override
  String get descripcion;
  @override
  DateTime get lastUpdate;
  @override
  bool get deleted;

  /// Create a copy of TrackingEstado
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackingEstadoImplCopyWith<_$TrackingEstadoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
