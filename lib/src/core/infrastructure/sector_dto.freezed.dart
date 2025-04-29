// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sector_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SectorDTO _$SectorDTOFromJson(Map<String, dynamic> json) {
  return _PaisDTO.fromJson(json);
}

/// @nodoc
mixin _$SectorDTO {
  @JsonKey(name: 'sector_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'alta_sn')
  String get altaSN => throw _privateConstructorUsedError;
  @JsonKey(name: 'descripcion_es')
  String get descripcionES => throw _privateConstructorUsedError;
  @JsonKey(name: 'descripcion_en')
  String? get descripcionEN => throw _privateConstructorUsedError;
  @JsonKey(name: 'descripcion_fr')
  String? get descripcionFR => throw _privateConstructorUsedError;
  @JsonKey(name: 'descripcion_de')
  String? get descripcionDE => throw _privateConstructorUsedError;
  @JsonKey(name: 'descripcion_ca')
  String? get descripcionCA => throw _privateConstructorUsedError;
  @JsonKey(name: 'descripcion_gb')
  String? get descripcionGB => throw _privateConstructorUsedError;
  @JsonKey(name: 'descripcion_hu')
  String? get descripcionHU => throw _privateConstructorUsedError;
  @JsonKey(name: 'descripcion_it')
  String? get descripcionIT => throw _privateConstructorUsedError;
  @JsonKey(name: 'descripcion_nl')
  String? get descripcionNL => throw _privateConstructorUsedError;
  @JsonKey(name: 'descripcion_pl')
  String? get descripcionPL => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted')
  String get deleted => throw _privateConstructorUsedError;

  /// Serializes this SectorDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SectorDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectorDTOCopyWith<SectorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectorDTOCopyWith<$Res> {
  factory $SectorDTOCopyWith(SectorDTO value, $Res Function(SectorDTO) then) =
      _$SectorDTOCopyWithImpl<$Res, SectorDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'sector_id') String id,
    @JsonKey(name: 'alta_sn') String altaSN,
    @JsonKey(name: 'descripcion_es') String descripcionES,
    @JsonKey(name: 'descripcion_en') String? descripcionEN,
    @JsonKey(name: 'descripcion_fr') String? descripcionFR,
    @JsonKey(name: 'descripcion_de') String? descripcionDE,
    @JsonKey(name: 'descripcion_ca') String? descripcionCA,
    @JsonKey(name: 'descripcion_gb') String? descripcionGB,
    @JsonKey(name: 'descripcion_hu') String? descripcionHU,
    @JsonKey(name: 'descripcion_it') String? descripcionIT,
    @JsonKey(name: 'descripcion_nl') String? descripcionNL,
    @JsonKey(name: 'descripcion_pl') String? descripcionPL,
    @JsonKey(name: 'last_updated') DateTime lastUpdated,
    @JsonKey(name: 'deleted') String deleted,
  });
}

/// @nodoc
class _$SectorDTOCopyWithImpl<$Res, $Val extends SectorDTO>
    implements $SectorDTOCopyWith<$Res> {
  _$SectorDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SectorDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? altaSN = null,
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
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            altaSN:
                null == altaSN
                    ? _value.altaSN
                    : altaSN // ignore: cast_nullable_to_non_nullable
                        as String,
            descripcionES:
                null == descripcionES
                    ? _value.descripcionES
                    : descripcionES // ignore: cast_nullable_to_non_nullable
                        as String,
            descripcionEN:
                freezed == descripcionEN
                    ? _value.descripcionEN
                    : descripcionEN // ignore: cast_nullable_to_non_nullable
                        as String?,
            descripcionFR:
                freezed == descripcionFR
                    ? _value.descripcionFR
                    : descripcionFR // ignore: cast_nullable_to_non_nullable
                        as String?,
            descripcionDE:
                freezed == descripcionDE
                    ? _value.descripcionDE
                    : descripcionDE // ignore: cast_nullable_to_non_nullable
                        as String?,
            descripcionCA:
                freezed == descripcionCA
                    ? _value.descripcionCA
                    : descripcionCA // ignore: cast_nullable_to_non_nullable
                        as String?,
            descripcionGB:
                freezed == descripcionGB
                    ? _value.descripcionGB
                    : descripcionGB // ignore: cast_nullable_to_non_nullable
                        as String?,
            descripcionHU:
                freezed == descripcionHU
                    ? _value.descripcionHU
                    : descripcionHU // ignore: cast_nullable_to_non_nullable
                        as String?,
            descripcionIT:
                freezed == descripcionIT
                    ? _value.descripcionIT
                    : descripcionIT // ignore: cast_nullable_to_non_nullable
                        as String?,
            descripcionNL:
                freezed == descripcionNL
                    ? _value.descripcionNL
                    : descripcionNL // ignore: cast_nullable_to_non_nullable
                        as String?,
            descripcionPL:
                freezed == descripcionPL
                    ? _value.descripcionPL
                    : descripcionPL // ignore: cast_nullable_to_non_nullable
                        as String?,
            lastUpdated:
                null == lastUpdated
                    ? _value.lastUpdated
                    : lastUpdated // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            deleted:
                null == deleted
                    ? _value.deleted
                    : deleted // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaisDTOImplCopyWith<$Res>
    implements $SectorDTOCopyWith<$Res> {
  factory _$$PaisDTOImplCopyWith(
    _$PaisDTOImpl value,
    $Res Function(_$PaisDTOImpl) then,
  ) = __$$PaisDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'sector_id') String id,
    @JsonKey(name: 'alta_sn') String altaSN,
    @JsonKey(name: 'descripcion_es') String descripcionES,
    @JsonKey(name: 'descripcion_en') String? descripcionEN,
    @JsonKey(name: 'descripcion_fr') String? descripcionFR,
    @JsonKey(name: 'descripcion_de') String? descripcionDE,
    @JsonKey(name: 'descripcion_ca') String? descripcionCA,
    @JsonKey(name: 'descripcion_gb') String? descripcionGB,
    @JsonKey(name: 'descripcion_hu') String? descripcionHU,
    @JsonKey(name: 'descripcion_it') String? descripcionIT,
    @JsonKey(name: 'descripcion_nl') String? descripcionNL,
    @JsonKey(name: 'descripcion_pl') String? descripcionPL,
    @JsonKey(name: 'last_updated') DateTime lastUpdated,
    @JsonKey(name: 'deleted') String deleted,
  });
}

/// @nodoc
class __$$PaisDTOImplCopyWithImpl<$Res>
    extends _$SectorDTOCopyWithImpl<$Res, _$PaisDTOImpl>
    implements _$$PaisDTOImplCopyWith<$Res> {
  __$$PaisDTOImplCopyWithImpl(
    _$PaisDTOImpl _value,
    $Res Function(_$PaisDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SectorDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? altaSN = null,
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
    return _then(
      _$PaisDTOImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        altaSN:
            null == altaSN
                ? _value.altaSN
                : altaSN // ignore: cast_nullable_to_non_nullable
                    as String,
        descripcionES:
            null == descripcionES
                ? _value.descripcionES
                : descripcionES // ignore: cast_nullable_to_non_nullable
                    as String,
        descripcionEN:
            freezed == descripcionEN
                ? _value.descripcionEN
                : descripcionEN // ignore: cast_nullable_to_non_nullable
                    as String?,
        descripcionFR:
            freezed == descripcionFR
                ? _value.descripcionFR
                : descripcionFR // ignore: cast_nullable_to_non_nullable
                    as String?,
        descripcionDE:
            freezed == descripcionDE
                ? _value.descripcionDE
                : descripcionDE // ignore: cast_nullable_to_non_nullable
                    as String?,
        descripcionCA:
            freezed == descripcionCA
                ? _value.descripcionCA
                : descripcionCA // ignore: cast_nullable_to_non_nullable
                    as String?,
        descripcionGB:
            freezed == descripcionGB
                ? _value.descripcionGB
                : descripcionGB // ignore: cast_nullable_to_non_nullable
                    as String?,
        descripcionHU:
            freezed == descripcionHU
                ? _value.descripcionHU
                : descripcionHU // ignore: cast_nullable_to_non_nullable
                    as String?,
        descripcionIT:
            freezed == descripcionIT
                ? _value.descripcionIT
                : descripcionIT // ignore: cast_nullable_to_non_nullable
                    as String?,
        descripcionNL:
            freezed == descripcionNL
                ? _value.descripcionNL
                : descripcionNL // ignore: cast_nullable_to_non_nullable
                    as String?,
        descripcionPL:
            freezed == descripcionPL
                ? _value.descripcionPL
                : descripcionPL // ignore: cast_nullable_to_non_nullable
                    as String?,
        lastUpdated:
            null == lastUpdated
                ? _value.lastUpdated
                : lastUpdated // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        deleted:
            null == deleted
                ? _value.deleted
                : deleted // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaisDTOImpl extends _PaisDTO {
  const _$PaisDTOImpl({
    @JsonKey(name: 'sector_id') required this.id,
    @JsonKey(name: 'alta_sn') required this.altaSN,
    @JsonKey(name: 'descripcion_es') required this.descripcionES,
    @JsonKey(name: 'descripcion_en') this.descripcionEN,
    @JsonKey(name: 'descripcion_fr') this.descripcionFR,
    @JsonKey(name: 'descripcion_de') this.descripcionDE,
    @JsonKey(name: 'descripcion_ca') this.descripcionCA,
    @JsonKey(name: 'descripcion_gb') this.descripcionGB,
    @JsonKey(name: 'descripcion_hu') this.descripcionHU,
    @JsonKey(name: 'descripcion_it') this.descripcionIT,
    @JsonKey(name: 'descripcion_nl') this.descripcionNL,
    @JsonKey(name: 'descripcion_pl') this.descripcionPL,
    @JsonKey(name: 'last_updated') required this.lastUpdated,
    @JsonKey(name: 'deleted') this.deleted = 'N',
  }) : super._();

  factory _$PaisDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaisDTOImplFromJson(json);

  @override
  @JsonKey(name: 'sector_id')
  final String id;
  @override
  @JsonKey(name: 'alta_sn')
  final String altaSN;
  @override
  @JsonKey(name: 'descripcion_es')
  final String descripcionES;
  @override
  @JsonKey(name: 'descripcion_en')
  final String? descripcionEN;
  @override
  @JsonKey(name: 'descripcion_fr')
  final String? descripcionFR;
  @override
  @JsonKey(name: 'descripcion_de')
  final String? descripcionDE;
  @override
  @JsonKey(name: 'descripcion_ca')
  final String? descripcionCA;
  @override
  @JsonKey(name: 'descripcion_gb')
  final String? descripcionGB;
  @override
  @JsonKey(name: 'descripcion_hu')
  final String? descripcionHU;
  @override
  @JsonKey(name: 'descripcion_it')
  final String? descripcionIT;
  @override
  @JsonKey(name: 'descripcion_nl')
  final String? descripcionNL;
  @override
  @JsonKey(name: 'descripcion_pl')
  final String? descripcionPL;
  @override
  @JsonKey(name: 'last_updated')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'deleted')
  final String deleted;

  @override
  String toString() {
    return 'SectorDTO(id: $id, altaSN: $altaSN, descripcionES: $descripcionES, descripcionEN: $descripcionEN, descripcionFR: $descripcionFR, descripcionDE: $descripcionDE, descripcionCA: $descripcionCA, descripcionGB: $descripcionGB, descripcionHU: $descripcionHU, descripcionIT: $descripcionIT, descripcionNL: $descripcionNL, descripcionPL: $descripcionPL, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaisDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.altaSN, altaSN) || other.altaSN == altaSN) &&
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
    id,
    altaSN,
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
    deleted,
  );

  /// Create a copy of SectorDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaisDTOImplCopyWith<_$PaisDTOImpl> get copyWith =>
      __$$PaisDTOImplCopyWithImpl<_$PaisDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaisDTOImplToJson(this);
  }
}

abstract class _PaisDTO extends SectorDTO {
  const factory _PaisDTO({
    @JsonKey(name: 'sector_id') required final String id,
    @JsonKey(name: 'alta_sn') required final String altaSN,
    @JsonKey(name: 'descripcion_es') required final String descripcionES,
    @JsonKey(name: 'descripcion_en') final String? descripcionEN,
    @JsonKey(name: 'descripcion_fr') final String? descripcionFR,
    @JsonKey(name: 'descripcion_de') final String? descripcionDE,
    @JsonKey(name: 'descripcion_ca') final String? descripcionCA,
    @JsonKey(name: 'descripcion_gb') final String? descripcionGB,
    @JsonKey(name: 'descripcion_hu') final String? descripcionHU,
    @JsonKey(name: 'descripcion_it') final String? descripcionIT,
    @JsonKey(name: 'descripcion_nl') final String? descripcionNL,
    @JsonKey(name: 'descripcion_pl') final String? descripcionPL,
    @JsonKey(name: 'last_updated') required final DateTime lastUpdated,
    @JsonKey(name: 'deleted') final String deleted,
  }) = _$PaisDTOImpl;
  const _PaisDTO._() : super._();

  factory _PaisDTO.fromJson(Map<String, dynamic> json) = _$PaisDTOImpl.fromJson;

  @override
  @JsonKey(name: 'sector_id')
  String get id;
  @override
  @JsonKey(name: 'alta_sn')
  String get altaSN;
  @override
  @JsonKey(name: 'descripcion_es')
  String get descripcionES;
  @override
  @JsonKey(name: 'descripcion_en')
  String? get descripcionEN;
  @override
  @JsonKey(name: 'descripcion_fr')
  String? get descripcionFR;
  @override
  @JsonKey(name: 'descripcion_de')
  String? get descripcionDE;
  @override
  @JsonKey(name: 'descripcion_ca')
  String? get descripcionCA;
  @override
  @JsonKey(name: 'descripcion_gb')
  String? get descripcionGB;
  @override
  @JsonKey(name: 'descripcion_hu')
  String? get descripcionHU;
  @override
  @JsonKey(name: 'descripcion_it')
  String? get descripcionIT;
  @override
  @JsonKey(name: 'descripcion_nl')
  String? get descripcionNL;
  @override
  @JsonKey(name: 'descripcion_pl')
  String? get descripcionPL;
  @override
  @JsonKey(name: 'last_updated')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'deleted')
  String get deleted;

  /// Create a copy of SectorDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaisDTOImplCopyWith<_$PaisDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
