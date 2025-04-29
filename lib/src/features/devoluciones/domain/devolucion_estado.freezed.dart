// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'devolucion_estado.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DevolucionEstado {
  String get id => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// Create a copy of DevolucionEstado
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DevolucionEstadoCopyWith<DevolucionEstado> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevolucionEstadoCopyWith<$Res> {
  factory $DevolucionEstadoCopyWith(
    DevolucionEstado value,
    $Res Function(DevolucionEstado) then,
  ) = _$DevolucionEstadoCopyWithImpl<$Res, DevolucionEstado>;
  @useResult
  $Res call({
    String id,
    String descripcion,
    DateTime lastUpdated,
    bool deleted,
  });
}

/// @nodoc
class _$DevolucionEstadoCopyWithImpl<$Res, $Val extends DevolucionEstado>
    implements $DevolucionEstadoCopyWith<$Res> {
  _$DevolucionEstadoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DevolucionEstado
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? descripcion = null,
    Object? lastUpdated = null,
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
            lastUpdated:
                null == lastUpdated
                    ? _value.lastUpdated
                    : lastUpdated // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DevolucionEstadoImplCopyWith<$Res>
    implements $DevolucionEstadoCopyWith<$Res> {
  factory _$$DevolucionEstadoImplCopyWith(
    _$DevolucionEstadoImpl value,
    $Res Function(_$DevolucionEstadoImpl) then,
  ) = __$$DevolucionEstadoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String descripcion,
    DateTime lastUpdated,
    bool deleted,
  });
}

/// @nodoc
class __$$DevolucionEstadoImplCopyWithImpl<$Res>
    extends _$DevolucionEstadoCopyWithImpl<$Res, _$DevolucionEstadoImpl>
    implements _$$DevolucionEstadoImplCopyWith<$Res> {
  __$$DevolucionEstadoImplCopyWithImpl(
    _$DevolucionEstadoImpl _value,
    $Res Function(_$DevolucionEstadoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DevolucionEstado
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? descripcion = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(
      _$DevolucionEstadoImpl(
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
        lastUpdated:
            null == lastUpdated
                ? _value.lastUpdated
                : lastUpdated // ignore: cast_nullable_to_non_nullable
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

class _$DevolucionEstadoImpl extends _DevolucionEstado {
  const _$DevolucionEstadoImpl({
    required this.id,
    required this.descripcion,
    required this.lastUpdated,
    required this.deleted,
  }) : super._();

  @override
  final String id;
  @override
  final String descripcion;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'DevolucionEstado(id: $id, descripcion: $descripcion, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DevolucionEstadoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, descripcion, lastUpdated, deleted);

  /// Create a copy of DevolucionEstado
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DevolucionEstadoImplCopyWith<_$DevolucionEstadoImpl> get copyWith =>
      __$$DevolucionEstadoImplCopyWithImpl<_$DevolucionEstadoImpl>(
        this,
        _$identity,
      );
}

abstract class _DevolucionEstado extends DevolucionEstado {
  const factory _DevolucionEstado({
    required final String id,
    required final String descripcion,
    required final DateTime lastUpdated,
    required final bool deleted,
  }) = _$DevolucionEstadoImpl;
  const _DevolucionEstado._() : super._();

  @override
  String get id;
  @override
  String get descripcion;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;

  /// Create a copy of DevolucionEstado
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DevolucionEstadoImplCopyWith<_$DevolucionEstadoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
