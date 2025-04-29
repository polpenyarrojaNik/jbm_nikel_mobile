// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visita_competidor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$VisitaCompetidor {
  int get id => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// Create a copy of VisitaCompetidor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisitaCompetidorCopyWith<VisitaCompetidor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitaCompetidorCopyWith<$Res> {
  factory $VisitaCompetidorCopyWith(
    VisitaCompetidor value,
    $Res Function(VisitaCompetidor) then,
  ) = _$VisitaCompetidorCopyWithImpl<$Res, VisitaCompetidor>;
  @useResult
  $Res call({int id, String descripcion, DateTime lastUpdate, bool deleted});
}

/// @nodoc
class _$VisitaCompetidorCopyWithImpl<$Res, $Val extends VisitaCompetidor>
    implements $VisitaCompetidorCopyWith<$Res> {
  _$VisitaCompetidorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisitaCompetidor
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
                        as int,
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
abstract class _$$VisitaCompetidorImplCopyWith<$Res>
    implements $VisitaCompetidorCopyWith<$Res> {
  factory _$$VisitaCompetidorImplCopyWith(
    _$VisitaCompetidorImpl value,
    $Res Function(_$VisitaCompetidorImpl) then,
  ) = __$$VisitaCompetidorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String descripcion, DateTime lastUpdate, bool deleted});
}

/// @nodoc
class __$$VisitaCompetidorImplCopyWithImpl<$Res>
    extends _$VisitaCompetidorCopyWithImpl<$Res, _$VisitaCompetidorImpl>
    implements _$$VisitaCompetidorImplCopyWith<$Res> {
  __$$VisitaCompetidorImplCopyWithImpl(
    _$VisitaCompetidorImpl _value,
    $Res Function(_$VisitaCompetidorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VisitaCompetidor
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
      _$VisitaCompetidorImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
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

class _$VisitaCompetidorImpl extends _VisitaCompetidor {
  const _$VisitaCompetidorImpl({
    required this.id,
    required this.descripcion,
    required this.lastUpdate,
    required this.deleted,
  }) : super._();

  @override
  final int id;
  @override
  final String descripcion;
  @override
  final DateTime lastUpdate;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'VisitaCompetidor(id: $id, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitaCompetidorImpl &&
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

  /// Create a copy of VisitaCompetidor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitaCompetidorImplCopyWith<_$VisitaCompetidorImpl> get copyWith =>
      __$$VisitaCompetidorImplCopyWithImpl<_$VisitaCompetidorImpl>(
        this,
        _$identity,
      );
}

abstract class _VisitaCompetidor extends VisitaCompetidor {
  const factory _VisitaCompetidor({
    required final int id,
    required final String descripcion,
    required final DateTime lastUpdate,
    required final bool deleted,
  }) = _$VisitaCompetidorImpl;
  const _VisitaCompetidor._() : super._();

  @override
  int get id;
  @override
  String get descripcion;
  @override
  DateTime get lastUpdate;
  @override
  bool get deleted;

  /// Create a copy of VisitaCompetidor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisitaCompetidorImplCopyWith<_$VisitaCompetidorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
