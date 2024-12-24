// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subsector_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubsectorDTO _$SubsectorDTOFromJson(Map<String, dynamic> json) {
  return _PaisDTO.fromJson(json);
}

/// @nodoc
mixin _$SubsectorDTO {
  @JsonKey(name: 'SECTOR_ID')
  String get sectorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'SUBSECTOR_ID')
  String get subsectorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCRIPCION_ES')
  String get descripcionES => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCRIPCION_EN')
  String? get descripcionEN => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCRIPCION_FR')
  String? get descripcionFR => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCRIPCION_DE')
  String? get descripcionDE => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCRIPCION_CA')
  String? get descripcionCA => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCRIPCION_GB')
  String? get descripcionGB => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCRIPCION_HU')
  String? get descripcionHU => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCRIPCION_IT')
  String? get descripcionIT => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCRIPCION_NL')
  String? get descripcionNL => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCRIPCION_PL')
  String? get descripcionPL => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  /// Serializes this SubsectorDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubsectorDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubsectorDTOCopyWith<SubsectorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubsectorDTOCopyWith<$Res> {
  factory $SubsectorDTOCopyWith(
          SubsectorDTO value, $Res Function(SubsectorDTO) then) =
      _$SubsectorDTOCopyWithImpl<$Res, SubsectorDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'SECTOR_ID') String sectorId,
      @JsonKey(name: 'SUBSECTOR_ID') String subsectorId,
      @JsonKey(name: 'DESCRIPCION_ES') String descripcionES,
      @JsonKey(name: 'DESCRIPCION_EN') String? descripcionEN,
      @JsonKey(name: 'DESCRIPCION_FR') String? descripcionFR,
      @JsonKey(name: 'DESCRIPCION_DE') String? descripcionDE,
      @JsonKey(name: 'DESCRIPCION_CA') String? descripcionCA,
      @JsonKey(name: 'DESCRIPCION_GB') String? descripcionGB,
      @JsonKey(name: 'DESCRIPCION_HU') String? descripcionHU,
      @JsonKey(name: 'DESCRIPCION_IT') String? descripcionIT,
      @JsonKey(name: 'DESCRIPCION_NL') String? descripcionNL,
      @JsonKey(name: 'DESCRIPCION_PL') String? descripcionPL,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$SubsectorDTOCopyWithImpl<$Res, $Val extends SubsectorDTO>
    implements $SubsectorDTOCopyWith<$Res> {
  _$SubsectorDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubsectorDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectorId = null,
    Object? subsectorId = null,
    Object? descripcionES = null,
    Object? descripcionEN = freezed,
    Object? descripcionFR = freezed,
    Object? descripcionDE = freezed,
    Object? descripcionCA = freezed,
    Object? descripcionGB = freezed,
    Object? descripcionHU = freezed,
    Object? descripcionIT = freezed,
    Object? descripcionNL = freezed,
    Object? descripcionPL = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      sectorId: null == sectorId
          ? _value.sectorId
          : sectorId // ignore: cast_nullable_to_non_nullable
              as String,
      subsectorId: null == subsectorId
          ? _value.subsectorId
          : subsectorId // ignore: cast_nullable_to_non_nullable
              as String,
      descripcionES: null == descripcionES
          ? _value.descripcionES
          : descripcionES // ignore: cast_nullable_to_non_nullable
              as String,
      descripcionEN: freezed == descripcionEN
          ? _value.descripcionEN
          : descripcionEN // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionFR: freezed == descripcionFR
          ? _value.descripcionFR
          : descripcionFR // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionDE: freezed == descripcionDE
          ? _value.descripcionDE
          : descripcionDE // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionCA: freezed == descripcionCA
          ? _value.descripcionCA
          : descripcionCA // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionGB: freezed == descripcionGB
          ? _value.descripcionGB
          : descripcionGB // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionHU: freezed == descripcionHU
          ? _value.descripcionHU
          : descripcionHU // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionIT: freezed == descripcionIT
          ? _value.descripcionIT
          : descripcionIT // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionNL: freezed == descripcionNL
          ? _value.descripcionNL
          : descripcionNL // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionPL: freezed == descripcionPL
          ? _value.descripcionPL
          : descripcionPL // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PaisDTOImplCopyWith<$Res>
    implements $SubsectorDTOCopyWith<$Res> {
  factory _$$PaisDTOImplCopyWith(
          _$PaisDTOImpl value, $Res Function(_$PaisDTOImpl) then) =
      __$$PaisDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'SECTOR_ID') String sectorId,
      @JsonKey(name: 'SUBSECTOR_ID') String subsectorId,
      @JsonKey(name: 'DESCRIPCION_ES') String descripcionES,
      @JsonKey(name: 'DESCRIPCION_EN') String? descripcionEN,
      @JsonKey(name: 'DESCRIPCION_FR') String? descripcionFR,
      @JsonKey(name: 'DESCRIPCION_DE') String? descripcionDE,
      @JsonKey(name: 'DESCRIPCION_CA') String? descripcionCA,
      @JsonKey(name: 'DESCRIPCION_GB') String? descripcionGB,
      @JsonKey(name: 'DESCRIPCION_HU') String? descripcionHU,
      @JsonKey(name: 'DESCRIPCION_IT') String? descripcionIT,
      @JsonKey(name: 'DESCRIPCION_NL') String? descripcionNL,
      @JsonKey(name: 'DESCRIPCION_PL') String? descripcionPL,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$PaisDTOImplCopyWithImpl<$Res>
    extends _$SubsectorDTOCopyWithImpl<$Res, _$PaisDTOImpl>
    implements _$$PaisDTOImplCopyWith<$Res> {
  __$$PaisDTOImplCopyWithImpl(
      _$PaisDTOImpl _value, $Res Function(_$PaisDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubsectorDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectorId = null,
    Object? subsectorId = null,
    Object? descripcionES = null,
    Object? descripcionEN = freezed,
    Object? descripcionFR = freezed,
    Object? descripcionDE = freezed,
    Object? descripcionCA = freezed,
    Object? descripcionGB = freezed,
    Object? descripcionHU = freezed,
    Object? descripcionIT = freezed,
    Object? descripcionNL = freezed,
    Object? descripcionPL = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$PaisDTOImpl(
      sectorId: null == sectorId
          ? _value.sectorId
          : sectorId // ignore: cast_nullable_to_non_nullable
              as String,
      subsectorId: null == subsectorId
          ? _value.subsectorId
          : subsectorId // ignore: cast_nullable_to_non_nullable
              as String,
      descripcionES: null == descripcionES
          ? _value.descripcionES
          : descripcionES // ignore: cast_nullable_to_non_nullable
              as String,
      descripcionEN: freezed == descripcionEN
          ? _value.descripcionEN
          : descripcionEN // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionFR: freezed == descripcionFR
          ? _value.descripcionFR
          : descripcionFR // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionDE: freezed == descripcionDE
          ? _value.descripcionDE
          : descripcionDE // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionCA: freezed == descripcionCA
          ? _value.descripcionCA
          : descripcionCA // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionGB: freezed == descripcionGB
          ? _value.descripcionGB
          : descripcionGB // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionHU: freezed == descripcionHU
          ? _value.descripcionHU
          : descripcionHU // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionIT: freezed == descripcionIT
          ? _value.descripcionIT
          : descripcionIT // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionNL: freezed == descripcionNL
          ? _value.descripcionNL
          : descripcionNL // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionPL: freezed == descripcionPL
          ? _value.descripcionPL
          : descripcionPL // ignore: cast_nullable_to_non_nullable
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
class _$PaisDTOImpl extends _PaisDTO {
  const _$PaisDTOImpl(
      {@JsonKey(name: 'SECTOR_ID') required this.sectorId,
      @JsonKey(name: 'SUBSECTOR_ID') required this.subsectorId,
      @JsonKey(name: 'DESCRIPCION_ES') required this.descripcionES,
      @JsonKey(name: 'DESCRIPCION_EN') this.descripcionEN,
      @JsonKey(name: 'DESCRIPCION_FR') this.descripcionFR,
      @JsonKey(name: 'DESCRIPCION_DE') this.descripcionDE,
      @JsonKey(name: 'DESCRIPCION_CA') this.descripcionCA,
      @JsonKey(name: 'DESCRIPCION_GB') this.descripcionGB,
      @JsonKey(name: 'DESCRIPCION_HU') this.descripcionHU,
      @JsonKey(name: 'DESCRIPCION_IT') this.descripcionIT,
      @JsonKey(name: 'DESCRIPCION_NL') this.descripcionNL,
      @JsonKey(name: 'DESCRIPCION_PL') this.descripcionPL,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$PaisDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaisDTOImplFromJson(json);

  @override
  @JsonKey(name: 'SECTOR_ID')
  final String sectorId;
  @override
  @JsonKey(name: 'SUBSECTOR_ID')
  final String subsectorId;
  @override
  @JsonKey(name: 'DESCRIPCION_ES')
  final String descripcionES;
  @override
  @JsonKey(name: 'DESCRIPCION_EN')
  final String? descripcionEN;
  @override
  @JsonKey(name: 'DESCRIPCION_FR')
  final String? descripcionFR;
  @override
  @JsonKey(name: 'DESCRIPCION_DE')
  final String? descripcionDE;
  @override
  @JsonKey(name: 'DESCRIPCION_CA')
  final String? descripcionCA;
  @override
  @JsonKey(name: 'DESCRIPCION_GB')
  final String? descripcionGB;
  @override
  @JsonKey(name: 'DESCRIPCION_HU')
  final String? descripcionHU;
  @override
  @JsonKey(name: 'DESCRIPCION_IT')
  final String? descripcionIT;
  @override
  @JsonKey(name: 'DESCRIPCION_NL')
  final String? descripcionNL;
  @override
  @JsonKey(name: 'DESCRIPCION_PL')
  final String? descripcionPL;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'SubsectorDTO(sectorId: $sectorId, subsectorId: $subsectorId, descripcionES: $descripcionES, descripcionEN: $descripcionEN, descripcionFR: $descripcionFR, descripcionDE: $descripcionDE, descripcionCA: $descripcionCA, descripcionGB: $descripcionGB, descripcionHU: $descripcionHU, descripcionIT: $descripcionIT, descripcionNL: $descripcionNL, descripcionPL: $descripcionPL, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaisDTOImpl &&
            (identical(other.sectorId, sectorId) ||
                other.sectorId == sectorId) &&
            (identical(other.subsectorId, subsectorId) ||
                other.subsectorId == subsectorId) &&
            (identical(other.descripcionES, descripcionES) ||
                other.descripcionES == descripcionES) &&
            (identical(other.descripcionEN, descripcionEN) ||
                other.descripcionEN == descripcionEN) &&
            (identical(other.descripcionFR, descripcionFR) ||
                other.descripcionFR == descripcionFR) &&
            (identical(other.descripcionDE, descripcionDE) ||
                other.descripcionDE == descripcionDE) &&
            (identical(other.descripcionCA, descripcionCA) ||
                other.descripcionCA == descripcionCA) &&
            (identical(other.descripcionGB, descripcionGB) ||
                other.descripcionGB == descripcionGB) &&
            (identical(other.descripcionHU, descripcionHU) ||
                other.descripcionHU == descripcionHU) &&
            (identical(other.descripcionIT, descripcionIT) ||
                other.descripcionIT == descripcionIT) &&
            (identical(other.descripcionNL, descripcionNL) ||
                other.descripcionNL == descripcionNL) &&
            (identical(other.descripcionPL, descripcionPL) ||
                other.descripcionPL == descripcionPL) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sectorId,
      subsectorId,
      descripcionES,
      descripcionEN,
      descripcionFR,
      descripcionDE,
      descripcionCA,
      descripcionGB,
      descripcionHU,
      descripcionIT,
      descripcionNL,
      descripcionPL,
      lastUpdated,
      deleted);

  /// Create a copy of SubsectorDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaisDTOImplCopyWith<_$PaisDTOImpl> get copyWith =>
      __$$PaisDTOImplCopyWithImpl<_$PaisDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaisDTOImplToJson(
      this,
    );
  }
}

abstract class _PaisDTO extends SubsectorDTO {
  const factory _PaisDTO(
      {@JsonKey(name: 'SECTOR_ID') required final String sectorId,
      @JsonKey(name: 'SUBSECTOR_ID') required final String subsectorId,
      @JsonKey(name: 'DESCRIPCION_ES') required final String descripcionES,
      @JsonKey(name: 'DESCRIPCION_EN') final String? descripcionEN,
      @JsonKey(name: 'DESCRIPCION_FR') final String? descripcionFR,
      @JsonKey(name: 'DESCRIPCION_DE') final String? descripcionDE,
      @JsonKey(name: 'DESCRIPCION_CA') final String? descripcionCA,
      @JsonKey(name: 'DESCRIPCION_GB') final String? descripcionGB,
      @JsonKey(name: 'DESCRIPCION_HU') final String? descripcionHU,
      @JsonKey(name: 'DESCRIPCION_IT') final String? descripcionIT,
      @JsonKey(name: 'DESCRIPCION_NL') final String? descripcionNL,
      @JsonKey(name: 'DESCRIPCION_PL') final String? descripcionPL,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$PaisDTOImpl;
  const _PaisDTO._() : super._();

  factory _PaisDTO.fromJson(Map<String, dynamic> json) = _$PaisDTOImpl.fromJson;

  @override
  @JsonKey(name: 'SECTOR_ID')
  String get sectorId;
  @override
  @JsonKey(name: 'SUBSECTOR_ID')
  String get subsectorId;
  @override
  @JsonKey(name: 'DESCRIPCION_ES')
  String get descripcionES;
  @override
  @JsonKey(name: 'DESCRIPCION_EN')
  String? get descripcionEN;
  @override
  @JsonKey(name: 'DESCRIPCION_FR')
  String? get descripcionFR;
  @override
  @JsonKey(name: 'DESCRIPCION_DE')
  String? get descripcionDE;
  @override
  @JsonKey(name: 'DESCRIPCION_CA')
  String? get descripcionCA;
  @override
  @JsonKey(name: 'DESCRIPCION_GB')
  String? get descripcionGB;
  @override
  @JsonKey(name: 'DESCRIPCION_HU')
  String? get descripcionHU;
  @override
  @JsonKey(name: 'DESCRIPCION_IT')
  String? get descripcionIT;
  @override
  @JsonKey(name: 'DESCRIPCION_NL')
  String? get descripcionNL;
  @override
  @JsonKey(name: 'DESCRIPCION_PL')
  String? get descripcionPL;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;

  /// Create a copy of SubsectorDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaisDTOImplCopyWith<_$PaisDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
