// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pais.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Pais {
  String get id => throw _privateConstructorUsedError;
  String? get isoCode => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaisCopyWith<Pais> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaisCopyWith<$Res> {
  factory $PaisCopyWith(Pais value, $Res Function(Pais) then) =
      _$PaisCopyWithImpl<$Res, Pais>;
  @useResult
  $Res call(
      {String id,
      String? isoCode,
      String descripcion,
      DateTime lastUpdate,
      bool deleted});
}

/// @nodoc
class _$PaisCopyWithImpl<$Res, $Val extends Pais>
    implements $PaisCopyWith<$Res> {
  _$PaisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isoCode = freezed,
    Object? descripcion = null,
    Object? lastUpdate = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isoCode: freezed == isoCode
          ? _value.isoCode
          : isoCode // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$PaisImplCopyWith<$Res> implements $PaisCopyWith<$Res> {
  factory _$$PaisImplCopyWith(
          _$PaisImpl value, $Res Function(_$PaisImpl) then) =
      __$$PaisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? isoCode,
      String descripcion,
      DateTime lastUpdate,
      bool deleted});
}

/// @nodoc
class __$$PaisImplCopyWithImpl<$Res>
    extends _$PaisCopyWithImpl<$Res, _$PaisImpl>
    implements _$$PaisImplCopyWith<$Res> {
  __$$PaisImplCopyWithImpl(_$PaisImpl _value, $Res Function(_$PaisImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isoCode = freezed,
    Object? descripcion = null,
    Object? lastUpdate = null,
    Object? deleted = null,
  }) {
    return _then(_$PaisImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isoCode: freezed == isoCode
          ? _value.isoCode
          : isoCode // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$PaisImpl extends _Pais {
  const _$PaisImpl(
      {required this.id,
      required this.isoCode,
      required this.descripcion,
      required this.lastUpdate,
      required this.deleted})
      : super._();

  @override
  final String id;
  @override
  final String? isoCode;
  @override
  final String descripcion;
  @override
  final DateTime lastUpdate;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'Pais(id: $id, isoCode: $isoCode, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaisImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isoCode, isoCode) || other.isoCode == isoCode) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, isoCode, descripcion, lastUpdate, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaisImplCopyWith<_$PaisImpl> get copyWith =>
      __$$PaisImplCopyWithImpl<_$PaisImpl>(this, _$identity);
}

abstract class _Pais extends Pais {
  const factory _Pais(
      {required final String id,
      required final String? isoCode,
      required final String descripcion,
      required final DateTime lastUpdate,
      required final bool deleted}) = _$PaisImpl;
  const _Pais._() : super._();

  @override
  String get id;
  @override
  String? get isoCode;
  @override
  String get descripcion;
  @override
  DateTime get lastUpdate;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$PaisImplCopyWith<_$PaisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
