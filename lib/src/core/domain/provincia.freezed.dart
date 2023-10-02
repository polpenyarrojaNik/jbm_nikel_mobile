// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provincia.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Provincia {
  String get paisId => throw _privateConstructorUsedError;
  String get regionId => throw _privateConstructorUsedError;
  String get provinciaId => throw _privateConstructorUsedError;
  String? get provincia => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProvinciaCopyWith<Provincia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinciaCopyWith<$Res> {
  factory $ProvinciaCopyWith(Provincia value, $Res Function(Provincia) then) =
      _$ProvinciaCopyWithImpl<$Res, Provincia>;
  @useResult
  $Res call(
      {String paisId,
      String regionId,
      String provinciaId,
      String? provincia,
      DateTime lastUpdate,
      bool deleted});
}

/// @nodoc
class _$ProvinciaCopyWithImpl<$Res, $Val extends Provincia>
    implements $ProvinciaCopyWith<$Res> {
  _$ProvinciaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paisId = null,
    Object? regionId = null,
    Object? provinciaId = null,
    Object? provincia = freezed,
    Object? lastUpdate = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      paisId: null == paisId
          ? _value.paisId
          : paisId // ignore: cast_nullable_to_non_nullable
              as String,
      regionId: null == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as String,
      provinciaId: null == provinciaId
          ? _value.provinciaId
          : provinciaId // ignore: cast_nullable_to_non_nullable
              as String,
      provincia: freezed == provincia
          ? _value.provincia
          : provincia // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$ProvinciaImplCopyWith<$Res>
    implements $ProvinciaCopyWith<$Res> {
  factory _$$ProvinciaImplCopyWith(
          _$ProvinciaImpl value, $Res Function(_$ProvinciaImpl) then) =
      __$$ProvinciaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String paisId,
      String regionId,
      String provinciaId,
      String? provincia,
      DateTime lastUpdate,
      bool deleted});
}

/// @nodoc
class __$$ProvinciaImplCopyWithImpl<$Res>
    extends _$ProvinciaCopyWithImpl<$Res, _$ProvinciaImpl>
    implements _$$ProvinciaImplCopyWith<$Res> {
  __$$ProvinciaImplCopyWithImpl(
      _$ProvinciaImpl _value, $Res Function(_$ProvinciaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paisId = null,
    Object? regionId = null,
    Object? provinciaId = null,
    Object? provincia = freezed,
    Object? lastUpdate = null,
    Object? deleted = null,
  }) {
    return _then(_$ProvinciaImpl(
      paisId: null == paisId
          ? _value.paisId
          : paisId // ignore: cast_nullable_to_non_nullable
              as String,
      regionId: null == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as String,
      provinciaId: null == provinciaId
          ? _value.provinciaId
          : provinciaId // ignore: cast_nullable_to_non_nullable
              as String,
      provincia: freezed == provincia
          ? _value.provincia
          : provincia // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$ProvinciaImpl extends _Provincia {
  const _$ProvinciaImpl(
      {required this.paisId,
      required this.regionId,
      required this.provinciaId,
      this.provincia,
      required this.lastUpdate,
      required this.deleted})
      : super._();

  @override
  final String paisId;
  @override
  final String regionId;
  @override
  final String provinciaId;
  @override
  final String? provincia;
  @override
  final DateTime lastUpdate;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'Provincia(paisId: $paisId, regionId: $regionId, provinciaId: $provinciaId, provincia: $provincia, lastUpdate: $lastUpdate, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvinciaImpl &&
            (identical(other.paisId, paisId) || other.paisId == paisId) &&
            (identical(other.regionId, regionId) ||
                other.regionId == regionId) &&
            (identical(other.provinciaId, provinciaId) ||
                other.provinciaId == provinciaId) &&
            (identical(other.provincia, provincia) ||
                other.provincia == provincia) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paisId, regionId, provinciaId,
      provincia, lastUpdate, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProvinciaImplCopyWith<_$ProvinciaImpl> get copyWith =>
      __$$ProvinciaImplCopyWithImpl<_$ProvinciaImpl>(this, _$identity);
}

abstract class _Provincia extends Provincia {
  const factory _Provincia(
      {required final String paisId,
      required final String regionId,
      required final String provinciaId,
      final String? provincia,
      required final DateTime lastUpdate,
      required final bool deleted}) = _$ProvinciaImpl;
  const _Provincia._() : super._();

  @override
  String get paisId;
  @override
  String get regionId;
  @override
  String get provinciaId;
  @override
  String? get provincia;
  @override
  DateTime get lastUpdate;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$ProvinciaImplCopyWith<_$ProvinciaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
