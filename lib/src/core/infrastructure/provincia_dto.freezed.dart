// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provincia_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProvinciaDTO _$ProvinciaDTOFromJson(Map<String, dynamic> json) {
  return _ProvinciaDTO.fromJson(json);
}

/// @nodoc
mixin _$ProvinciaDTO {
  @JsonKey(name: 'PAIS_ID')
  String? get paisId => throw _privateConstructorUsedError;
  @JsonKey(name: 'REGION_ID')
  String? get regionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PROVINCIA_ID')
  String get provinciaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PROVINCIA')
  String? get provincia => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinciaDTOCopyWith<ProvinciaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinciaDTOCopyWith<$Res> {
  factory $ProvinciaDTOCopyWith(
          ProvinciaDTO value, $Res Function(ProvinciaDTO) then) =
      _$ProvinciaDTOCopyWithImpl<$Res, ProvinciaDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'PAIS_ID') String? paisId,
      @JsonKey(name: 'REGION_ID') String? regionId,
      @JsonKey(name: 'PROVINCIA_ID') String provinciaId,
      @JsonKey(name: 'PROVINCIA') String? provincia,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ProvinciaDTOCopyWithImpl<$Res, $Val extends ProvinciaDTO>
    implements $ProvinciaDTOCopyWith<$Res> {
  _$ProvinciaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paisId = freezed,
    Object? regionId = freezed,
    Object? provinciaId = null,
    Object? provincia = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      paisId: freezed == paisId
          ? _value.paisId
          : paisId // ignore: cast_nullable_to_non_nullable
              as String?,
      regionId: freezed == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaId: null == provinciaId
          ? _value.provinciaId
          : provinciaId // ignore: cast_nullable_to_non_nullable
              as String,
      provincia: freezed == provincia
          ? _value.provincia
          : provincia // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProvinciaDTOCopyWith<$Res>
    implements $ProvinciaDTOCopyWith<$Res> {
  factory _$$_ProvinciaDTOCopyWith(
          _$_ProvinciaDTO value, $Res Function(_$_ProvinciaDTO) then) =
      __$$_ProvinciaDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'PAIS_ID') String? paisId,
      @JsonKey(name: 'REGION_ID') String? regionId,
      @JsonKey(name: 'PROVINCIA_ID') String provinciaId,
      @JsonKey(name: 'PROVINCIA') String? provincia,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ProvinciaDTOCopyWithImpl<$Res>
    extends _$ProvinciaDTOCopyWithImpl<$Res, _$_ProvinciaDTO>
    implements _$$_ProvinciaDTOCopyWith<$Res> {
  __$$_ProvinciaDTOCopyWithImpl(
      _$_ProvinciaDTO _value, $Res Function(_$_ProvinciaDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paisId = freezed,
    Object? regionId = freezed,
    Object? provinciaId = null,
    Object? provincia = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$_ProvinciaDTO(
      paisId: freezed == paisId
          ? _value.paisId
          : paisId // ignore: cast_nullable_to_non_nullable
              as String?,
      regionId: freezed == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaId: null == provinciaId
          ? _value.provinciaId
          : provinciaId // ignore: cast_nullable_to_non_nullable
              as String,
      provincia: freezed == provincia
          ? _value.provincia
          : provincia // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProvinciaDTO extends _ProvinciaDTO {
  const _$_ProvinciaDTO(
      {@JsonKey(name: 'PAIS_ID') required this.paisId,
      @JsonKey(name: 'REGION_ID') required this.regionId,
      @JsonKey(name: 'PROVINCIA_ID') required this.provinciaId,
      @JsonKey(name: 'PROVINCIA') this.provincia,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_ProvinciaDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProvinciaDTOFromJson(json);

  @override
  @JsonKey(name: 'PAIS_ID')
  final String? paisId;
  @override
  @JsonKey(name: 'REGION_ID')
  final String? regionId;
  @override
  @JsonKey(name: 'PROVINCIA_ID')
  final String provinciaId;
  @override
  @JsonKey(name: 'PROVINCIA')
  final String? provincia;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ProvinciaDTO(paisId: $paisId, regionId: $regionId, provinciaId: $provinciaId, provincia: $provincia, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvinciaDTO &&
            (identical(other.paisId, paisId) || other.paisId == paisId) &&
            (identical(other.regionId, regionId) ||
                other.regionId == regionId) &&
            (identical(other.provinciaId, provinciaId) ||
                other.provinciaId == provinciaId) &&
            (identical(other.provincia, provincia) ||
                other.provincia == provincia) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, paisId, regionId, provinciaId,
      provincia, lastUpdated, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProvinciaDTOCopyWith<_$_ProvinciaDTO> get copyWith =>
      __$$_ProvinciaDTOCopyWithImpl<_$_ProvinciaDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProvinciaDTOToJson(
      this,
    );
  }
}

abstract class _ProvinciaDTO extends ProvinciaDTO {
  const factory _ProvinciaDTO(
      {@JsonKey(name: 'PAIS_ID') required final String? paisId,
      @JsonKey(name: 'REGION_ID') required final String? regionId,
      @JsonKey(name: 'PROVINCIA_ID') required final String provinciaId,
      @JsonKey(name: 'PROVINCIA') final String? provincia,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_ProvinciaDTO;
  const _ProvinciaDTO._() : super._();

  factory _ProvinciaDTO.fromJson(Map<String, dynamic> json) =
      _$_ProvinciaDTO.fromJson;

  @override
  @JsonKey(name: 'PAIS_ID')
  String? get paisId;
  @override
  @JsonKey(name: 'REGION_ID')
  String? get regionId;
  @override
  @JsonKey(name: 'PROVINCIA_ID')
  String get provinciaId;
  @override
  @JsonKey(name: 'PROVINCIA')
  String? get provincia;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ProvinciaDTOCopyWith<_$_ProvinciaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
