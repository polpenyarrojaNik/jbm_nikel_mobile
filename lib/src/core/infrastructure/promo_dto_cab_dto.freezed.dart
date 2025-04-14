// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_dto_cab_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromoDtoCabDTO _$PromoDtoCabDTOFromJson(Map<String, dynamic> json) {
  return _PromoDtoCabDTO.fromJson(json);
}

/// @nodoc
mixin _$PromoDtoCabDTO {
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PROMO_DTO_ID')
  String get promoDtoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE')
  String get nombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_DESDE')
  DateTime get fechaDesde => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_HASTA')
  DateTime? get fechaHasta => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIVISA_ID')
  String get divisaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  /// Serializes this PromoDtoCabDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PromoDtoCabDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromoDtoCabDTOCopyWith<PromoDtoCabDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoDtoCabDTOCopyWith<$Res> {
  factory $PromoDtoCabDTOCopyWith(
          PromoDtoCabDTO value, $Res Function(PromoDtoCabDTO) then) =
      _$PromoDtoCabDTOCopyWithImpl<$Res, PromoDtoCabDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'EMPRESA_ID') String empresaId,
      @JsonKey(name: 'PROMO_DTO_ID') String promoDtoId,
      @JsonKey(name: 'NOMBRE') String nombre,
      @JsonKey(name: 'FECHA_DESDE') DateTime fechaDesde,
      @JsonKey(name: 'FECHA_HASTA') DateTime? fechaHasta,
      @JsonKey(name: 'DIVISA_ID') String divisaId,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$PromoDtoCabDTOCopyWithImpl<$Res, $Val extends PromoDtoCabDTO>
    implements $PromoDtoCabDTOCopyWith<$Res> {
  _$PromoDtoCabDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromoDtoCabDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? promoDtoId = null,
    Object? nombre = null,
    Object? fechaDesde = null,
    Object? fechaHasta = freezed,
    Object? divisaId = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      promoDtoId: null == promoDtoId
          ? _value.promoDtoId
          : promoDtoId // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      fechaDesde: null == fechaDesde
          ? _value.fechaDesde
          : fechaDesde // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fechaHasta: freezed == fechaHasta
          ? _value.fechaHasta
          : fechaHasta // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      divisaId: null == divisaId
          ? _value.divisaId
          : divisaId // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$PromoDtoCabDTOImplCopyWith<$Res>
    implements $PromoDtoCabDTOCopyWith<$Res> {
  factory _$$PromoDtoCabDTOImplCopyWith(_$PromoDtoCabDTOImpl value,
          $Res Function(_$PromoDtoCabDTOImpl) then) =
      __$$PromoDtoCabDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'EMPRESA_ID') String empresaId,
      @JsonKey(name: 'PROMO_DTO_ID') String promoDtoId,
      @JsonKey(name: 'NOMBRE') String nombre,
      @JsonKey(name: 'FECHA_DESDE') DateTime fechaDesde,
      @JsonKey(name: 'FECHA_HASTA') DateTime? fechaHasta,
      @JsonKey(name: 'DIVISA_ID') String divisaId,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$PromoDtoCabDTOImplCopyWithImpl<$Res>
    extends _$PromoDtoCabDTOCopyWithImpl<$Res, _$PromoDtoCabDTOImpl>
    implements _$$PromoDtoCabDTOImplCopyWith<$Res> {
  __$$PromoDtoCabDTOImplCopyWithImpl(
      _$PromoDtoCabDTOImpl _value, $Res Function(_$PromoDtoCabDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromoDtoCabDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? promoDtoId = null,
    Object? nombre = null,
    Object? fechaDesde = null,
    Object? fechaHasta = freezed,
    Object? divisaId = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$PromoDtoCabDTOImpl(
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      promoDtoId: null == promoDtoId
          ? _value.promoDtoId
          : promoDtoId // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      fechaDesde: null == fechaDesde
          ? _value.fechaDesde
          : fechaDesde // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fechaHasta: freezed == fechaHasta
          ? _value.fechaHasta
          : fechaHasta // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      divisaId: null == divisaId
          ? _value.divisaId
          : divisaId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$PromoDtoCabDTOImpl extends _PromoDtoCabDTO {
  const _$PromoDtoCabDTOImpl(
      {@JsonKey(name: 'EMPRESA_ID') required this.empresaId,
      @JsonKey(name: 'PROMO_DTO_ID') required this.promoDtoId,
      @JsonKey(name: 'NOMBRE') required this.nombre,
      @JsonKey(name: 'FECHA_DESDE') required this.fechaDesde,
      @JsonKey(name: 'FECHA_HASTA') this.fechaHasta,
      @JsonKey(name: 'DIVISA_ID') required this.divisaId,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$PromoDtoCabDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromoDtoCabDTOImplFromJson(json);

  @override
  @JsonKey(name: 'EMPRESA_ID')
  final String empresaId;
  @override
  @JsonKey(name: 'PROMO_DTO_ID')
  final String promoDtoId;
  @override
  @JsonKey(name: 'NOMBRE')
  final String nombre;
  @override
  @JsonKey(name: 'FECHA_DESDE')
  final DateTime fechaDesde;
  @override
  @JsonKey(name: 'FECHA_HASTA')
  final DateTime? fechaHasta;
  @override
  @JsonKey(name: 'DIVISA_ID')
  final String divisaId;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'PromoDtoCabDTO(empresaId: $empresaId, promoDtoId: $promoDtoId, nombre: $nombre, fechaDesde: $fechaDesde, fechaHasta: $fechaHasta, divisaId: $divisaId, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromoDtoCabDTOImpl &&
            (identical(other.empresaId, empresaId) ||
                other.empresaId == empresaId) &&
            (identical(other.promoDtoId, promoDtoId) ||
                other.promoDtoId == promoDtoId) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.fechaDesde, fechaDesde) ||
                other.fechaDesde == fechaDesde) &&
            (identical(other.fechaHasta, fechaHasta) ||
                other.fechaHasta == fechaHasta) &&
            (identical(other.divisaId, divisaId) ||
                other.divisaId == divisaId) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, empresaId, promoDtoId, nombre,
      fechaDesde, fechaHasta, divisaId, lastUpdated, deleted);

  /// Create a copy of PromoDtoCabDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromoDtoCabDTOImplCopyWith<_$PromoDtoCabDTOImpl> get copyWith =>
      __$$PromoDtoCabDTOImplCopyWithImpl<_$PromoDtoCabDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromoDtoCabDTOImplToJson(
      this,
    );
  }
}

abstract class _PromoDtoCabDTO extends PromoDtoCabDTO {
  const factory _PromoDtoCabDTO(
      {@JsonKey(name: 'EMPRESA_ID') required final String empresaId,
      @JsonKey(name: 'PROMO_DTO_ID') required final String promoDtoId,
      @JsonKey(name: 'NOMBRE') required final String nombre,
      @JsonKey(name: 'FECHA_DESDE') required final DateTime fechaDesde,
      @JsonKey(name: 'FECHA_HASTA') final DateTime? fechaHasta,
      @JsonKey(name: 'DIVISA_ID') required final String divisaId,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$PromoDtoCabDTOImpl;
  const _PromoDtoCabDTO._() : super._();

  factory _PromoDtoCabDTO.fromJson(Map<String, dynamic> json) =
      _$PromoDtoCabDTOImpl.fromJson;

  @override
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId;
  @override
  @JsonKey(name: 'PROMO_DTO_ID')
  String get promoDtoId;
  @override
  @JsonKey(name: 'NOMBRE')
  String get nombre;
  @override
  @JsonKey(name: 'FECHA_DESDE')
  DateTime get fechaDesde;
  @override
  @JsonKey(name: 'FECHA_HASTA')
  DateTime? get fechaHasta;
  @override
  @JsonKey(name: 'DIVISA_ID')
  String get divisaId;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;

  /// Create a copy of PromoDtoCabDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromoDtoCabDTOImplCopyWith<_$PromoDtoCabDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
