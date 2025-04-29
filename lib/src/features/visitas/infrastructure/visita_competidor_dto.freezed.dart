// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visita_competidor_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

VisitaCompetidorDTO _$VisitaCompetidorDTOFromJson(Map<String, dynamic> json) {
  return _VisitaCompetidorDTO.fromJson(json);
}

/// @nodoc
mixin _$VisitaCompetidorDTO {
  @JsonKey(name: 'CODIGO')
  int get id => throw _privateConstructorUsedError;
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
  String? get descripcionPL => throw _privateConstructorUsedError; // @JsonKey(name: 'DESCRIPCION_PT') String? descripcionPT,
  // @JsonKey(name: 'DESCRIPCION_RO') String? descripcionRO,
  // @JsonKey(name: 'DESCRIPCION_RU') String? descripcionRU,
  // @JsonKey(name: 'DESCRIPCION_CN') String? descripcionCN,
  // @JsonKey(name: 'DESCRIPCION_EL') String? descripcionEL,
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  /// Serializes this VisitaCompetidorDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VisitaCompetidorDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisitaCompetidorDTOCopyWith<VisitaCompetidorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitaCompetidorDTOCopyWith<$Res> {
  factory $VisitaCompetidorDTOCopyWith(
    VisitaCompetidorDTO value,
    $Res Function(VisitaCompetidorDTO) then,
  ) = _$VisitaCompetidorDTOCopyWithImpl<$Res, VisitaCompetidorDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'CODIGO') int id,
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
    @JsonKey(name: 'DELETED') String deleted,
  });
}

/// @nodoc
class _$VisitaCompetidorDTOCopyWithImpl<$Res, $Val extends VisitaCompetidorDTO>
    implements $VisitaCompetidorDTOCopyWith<$Res> {
  _$VisitaCompetidorDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisitaCompetidorDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
                        as int,
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
abstract class _$$VisitaCompetidorDTOImplCopyWith<$Res>
    implements $VisitaCompetidorDTOCopyWith<$Res> {
  factory _$$VisitaCompetidorDTOImplCopyWith(
    _$VisitaCompetidorDTOImpl value,
    $Res Function(_$VisitaCompetidorDTOImpl) then,
  ) = __$$VisitaCompetidorDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'CODIGO') int id,
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
    @JsonKey(name: 'DELETED') String deleted,
  });
}

/// @nodoc
class __$$VisitaCompetidorDTOImplCopyWithImpl<$Res>
    extends _$VisitaCompetidorDTOCopyWithImpl<$Res, _$VisitaCompetidorDTOImpl>
    implements _$$VisitaCompetidorDTOImplCopyWith<$Res> {
  __$$VisitaCompetidorDTOImplCopyWithImpl(
    _$VisitaCompetidorDTOImpl _value,
    $Res Function(_$VisitaCompetidorDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VisitaCompetidorDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
      _$VisitaCompetidorDTOImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
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
class _$VisitaCompetidorDTOImpl extends _VisitaCompetidorDTO {
  const _$VisitaCompetidorDTOImpl({
    @JsonKey(name: 'CODIGO') required this.id,
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
    @JsonKey(name: 'DELETED') this.deleted = 'N',
  }) : super._();

  factory _$VisitaCompetidorDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisitaCompetidorDTOImplFromJson(json);

  @override
  @JsonKey(name: 'CODIGO')
  final int id;
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
  // @JsonKey(name: 'DESCRIPCION_PT') String? descripcionPT,
  // @JsonKey(name: 'DESCRIPCION_RO') String? descripcionRO,
  // @JsonKey(name: 'DESCRIPCION_RU') String? descripcionRU,
  // @JsonKey(name: 'DESCRIPCION_CN') String? descripcionCN,
  // @JsonKey(name: 'DESCRIPCION_EL') String? descripcionEL,
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'VisitaCompetidorDTO(id: $id, descripcionES: $descripcionES, descripcionEN: $descripcionEN, descripcionFR: $descripcionFR, descripcionDE: $descripcionDE, descripcionCA: $descripcionCA, descripcionGB: $descripcionGB, descripcionHU: $descripcionHU, descripcionIT: $descripcionIT, descripcionNL: $descripcionNL, descripcionPL: $descripcionPL, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitaCompetidorDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
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

  /// Create a copy of VisitaCompetidorDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitaCompetidorDTOImplCopyWith<_$VisitaCompetidorDTOImpl> get copyWith =>
      __$$VisitaCompetidorDTOImplCopyWithImpl<_$VisitaCompetidorDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$VisitaCompetidorDTOImplToJson(this);
  }
}

abstract class _VisitaCompetidorDTO extends VisitaCompetidorDTO {
  const factory _VisitaCompetidorDTO({
    @JsonKey(name: 'CODIGO') required final int id,
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
    @JsonKey(name: 'DELETED') final String deleted,
  }) = _$VisitaCompetidorDTOImpl;
  const _VisitaCompetidorDTO._() : super._();

  factory _VisitaCompetidorDTO.fromJson(Map<String, dynamic> json) =
      _$VisitaCompetidorDTOImpl.fromJson;

  @override
  @JsonKey(name: 'CODIGO')
  int get id;
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
  String? get descripcionPL; // @JsonKey(name: 'DESCRIPCION_PT') String? descripcionPT,
  // @JsonKey(name: 'DESCRIPCION_RO') String? descripcionRO,
  // @JsonKey(name: 'DESCRIPCION_RU') String? descripcionRU,
  // @JsonKey(name: 'DESCRIPCION_CN') String? descripcionCN,
  // @JsonKey(name: 'DESCRIPCION_EL') String? descripcionEL,
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;

  /// Create a copy of VisitaCompetidorDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisitaCompetidorDTOImplCopyWith<_$VisitaCompetidorDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
