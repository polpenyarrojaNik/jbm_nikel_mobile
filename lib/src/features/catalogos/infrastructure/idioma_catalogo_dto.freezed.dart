// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'idioma_catalogo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IdiomaCatalogoDTO _$IdiomaCatalogoDTOFromJson(Map<String, dynamic> json) {
  return _IdiomaCatalogoDTO.fromJson(json);
}

/// @nodoc
mixin _$IdiomaCatalogoDTO {
  @JsonKey(name: 'IDIOMA_ID')
  String get idiomaId => throw _privateConstructorUsedError;
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

  /// Serializes this IdiomaCatalogoDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IdiomaCatalogoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdiomaCatalogoDTOCopyWith<IdiomaCatalogoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdiomaCatalogoDTOCopyWith<$Res> {
  factory $IdiomaCatalogoDTOCopyWith(
          IdiomaCatalogoDTO value, $Res Function(IdiomaCatalogoDTO) then) =
      _$IdiomaCatalogoDTOCopyWithImpl<$Res, IdiomaCatalogoDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'IDIOMA_ID') String idiomaId,
      @JsonKey(name: 'DESCRIPCION_ES') String descripcionES,
      @JsonKey(name: 'DESCRIPCION_EN') String? descripcionEN,
      @JsonKey(name: 'DESCRIPCION_FR') String? descripcionFR,
      @JsonKey(name: 'DESCRIPCION_DE') String? descripcionDE,
      @JsonKey(name: 'DESCRIPCION_CA') String? descripcionCA,
      @JsonKey(name: 'DESCRIPCION_GB') String? descripcionGB,
      @JsonKey(name: 'DESCRIPCION_HU') String? descripcionHU,
      @JsonKey(name: 'DESCRIPCION_IT') String? descripcionIT,
      @JsonKey(name: 'DESCRIPCION_NL') String? descripcionNL,
      @JsonKey(name: 'DESCRIPCION_PL') String? descripcionPL});
}

/// @nodoc
class _$IdiomaCatalogoDTOCopyWithImpl<$Res, $Val extends IdiomaCatalogoDTO>
    implements $IdiomaCatalogoDTOCopyWith<$Res> {
  _$IdiomaCatalogoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdiomaCatalogoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idiomaId = null,
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
  }) {
    return _then(_value.copyWith(
      idiomaId: null == idiomaId
          ? _value.idiomaId
          : idiomaId // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdiomaCatalogoDTOImplCopyWith<$Res>
    implements $IdiomaCatalogoDTOCopyWith<$Res> {
  factory _$$IdiomaCatalogoDTOImplCopyWith(_$IdiomaCatalogoDTOImpl value,
          $Res Function(_$IdiomaCatalogoDTOImpl) then) =
      __$$IdiomaCatalogoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'IDIOMA_ID') String idiomaId,
      @JsonKey(name: 'DESCRIPCION_ES') String descripcionES,
      @JsonKey(name: 'DESCRIPCION_EN') String? descripcionEN,
      @JsonKey(name: 'DESCRIPCION_FR') String? descripcionFR,
      @JsonKey(name: 'DESCRIPCION_DE') String? descripcionDE,
      @JsonKey(name: 'DESCRIPCION_CA') String? descripcionCA,
      @JsonKey(name: 'DESCRIPCION_GB') String? descripcionGB,
      @JsonKey(name: 'DESCRIPCION_HU') String? descripcionHU,
      @JsonKey(name: 'DESCRIPCION_IT') String? descripcionIT,
      @JsonKey(name: 'DESCRIPCION_NL') String? descripcionNL,
      @JsonKey(name: 'DESCRIPCION_PL') String? descripcionPL});
}

/// @nodoc
class __$$IdiomaCatalogoDTOImplCopyWithImpl<$Res>
    extends _$IdiomaCatalogoDTOCopyWithImpl<$Res, _$IdiomaCatalogoDTOImpl>
    implements _$$IdiomaCatalogoDTOImplCopyWith<$Res> {
  __$$IdiomaCatalogoDTOImplCopyWithImpl(_$IdiomaCatalogoDTOImpl _value,
      $Res Function(_$IdiomaCatalogoDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdiomaCatalogoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idiomaId = null,
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
  }) {
    return _then(_$IdiomaCatalogoDTOImpl(
      idiomaId: null == idiomaId
          ? _value.idiomaId
          : idiomaId // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdiomaCatalogoDTOImpl extends _IdiomaCatalogoDTO {
  const _$IdiomaCatalogoDTOImpl(
      {@JsonKey(name: 'IDIOMA_ID') required this.idiomaId,
      @JsonKey(name: 'DESCRIPCION_ES') required this.descripcionES,
      @JsonKey(name: 'DESCRIPCION_EN') this.descripcionEN,
      @JsonKey(name: 'DESCRIPCION_FR') this.descripcionFR,
      @JsonKey(name: 'DESCRIPCION_DE') this.descripcionDE,
      @JsonKey(name: 'DESCRIPCION_CA') this.descripcionCA,
      @JsonKey(name: 'DESCRIPCION_GB') this.descripcionGB,
      @JsonKey(name: 'DESCRIPCION_HU') this.descripcionHU,
      @JsonKey(name: 'DESCRIPCION_IT') this.descripcionIT,
      @JsonKey(name: 'DESCRIPCION_NL') this.descripcionNL,
      @JsonKey(name: 'DESCRIPCION_PL') this.descripcionPL})
      : super._();

  factory _$IdiomaCatalogoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdiomaCatalogoDTOImplFromJson(json);

  @override
  @JsonKey(name: 'IDIOMA_ID')
  final String idiomaId;
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
  String toString() {
    return 'IdiomaCatalogoDTO(idiomaId: $idiomaId, descripcionES: $descripcionES, descripcionEN: $descripcionEN, descripcionFR: $descripcionFR, descripcionDE: $descripcionDE, descripcionCA: $descripcionCA, descripcionGB: $descripcionGB, descripcionHU: $descripcionHU, descripcionIT: $descripcionIT, descripcionNL: $descripcionNL, descripcionPL: $descripcionPL)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdiomaCatalogoDTOImpl &&
            (identical(other.idiomaId, idiomaId) ||
                other.idiomaId == idiomaId) &&
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
                other.descripcionPL == descripcionPL));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idiomaId,
      descripcionES,
      descripcionEN,
      descripcionFR,
      descripcionDE,
      descripcionCA,
      descripcionGB,
      descripcionHU,
      descripcionIT,
      descripcionNL,
      descripcionPL);

  /// Create a copy of IdiomaCatalogoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdiomaCatalogoDTOImplCopyWith<_$IdiomaCatalogoDTOImpl> get copyWith =>
      __$$IdiomaCatalogoDTOImplCopyWithImpl<_$IdiomaCatalogoDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdiomaCatalogoDTOImplToJson(
      this,
    );
  }
}

abstract class _IdiomaCatalogoDTO extends IdiomaCatalogoDTO {
  const factory _IdiomaCatalogoDTO(
          {@JsonKey(name: 'IDIOMA_ID') required final String idiomaId,
          @JsonKey(name: 'DESCRIPCION_ES') required final String descripcionES,
          @JsonKey(name: 'DESCRIPCION_EN') final String? descripcionEN,
          @JsonKey(name: 'DESCRIPCION_FR') final String? descripcionFR,
          @JsonKey(name: 'DESCRIPCION_DE') final String? descripcionDE,
          @JsonKey(name: 'DESCRIPCION_CA') final String? descripcionCA,
          @JsonKey(name: 'DESCRIPCION_GB') final String? descripcionGB,
          @JsonKey(name: 'DESCRIPCION_HU') final String? descripcionHU,
          @JsonKey(name: 'DESCRIPCION_IT') final String? descripcionIT,
          @JsonKey(name: 'DESCRIPCION_NL') final String? descripcionNL,
          @JsonKey(name: 'DESCRIPCION_PL') final String? descripcionPL}) =
      _$IdiomaCatalogoDTOImpl;
  const _IdiomaCatalogoDTO._() : super._();

  factory _IdiomaCatalogoDTO.fromJson(Map<String, dynamic> json) =
      _$IdiomaCatalogoDTOImpl.fromJson;

  @override
  @JsonKey(name: 'IDIOMA_ID')
  String get idiomaId;
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

  /// Create a copy of IdiomaCatalogoDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdiomaCatalogoDTOImplCopyWith<_$IdiomaCatalogoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
