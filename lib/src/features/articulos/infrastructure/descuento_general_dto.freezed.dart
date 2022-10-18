// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'descuento_general_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DescuentoGeneralDTO _$DescuentoGeneralDTOFromJson(Map<String, dynamic> json) {
  return _DescuentoGeneralDTO.fromJson(json);
}

/// @nodoc
mixin _$DescuentoGeneralDTO {
  @JsonKey(name: 'DESCUENTO_GENERAL_ID')
  String get descuentoGeneralId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'FAMILIA_ID')
  String get familiaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'SUBFAMILIA_ID')
  String get subfamiliaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD_DESDE')
  int get cantidadDesde => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO')
  double get descuento => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DescuentoGeneralDTOCopyWith<DescuentoGeneralDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescuentoGeneralDTOCopyWith<$Res> {
  factory $DescuentoGeneralDTOCopyWith(
          DescuentoGeneralDTO value, $Res Function(DescuentoGeneralDTO) then) =
      _$DescuentoGeneralDTOCopyWithImpl<$Res, DescuentoGeneralDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'DESCUENTO_GENERAL_ID') String descuentoGeneralId,
      @JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'FAMILIA_ID') String familiaId,
      @JsonKey(name: 'SUBFAMILIA_ID') String subfamiliaId,
      @JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,
      @JsonKey(name: 'DESCUENTO') double descuento,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$DescuentoGeneralDTOCopyWithImpl<$Res, $Val extends DescuentoGeneralDTO>
    implements $DescuentoGeneralDTOCopyWith<$Res> {
  _$DescuentoGeneralDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descuentoGeneralId = null,
    Object? articuloId = null,
    Object? familiaId = null,
    Object? subfamiliaId = null,
    Object? cantidadDesde = null,
    Object? descuento = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      descuentoGeneralId: null == descuentoGeneralId
          ? _value.descuentoGeneralId
          : descuentoGeneralId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      familiaId: null == familiaId
          ? _value.familiaId
          : familiaId // ignore: cast_nullable_to_non_nullable
              as String,
      subfamiliaId: null == subfamiliaId
          ? _value.subfamiliaId
          : subfamiliaId // ignore: cast_nullable_to_non_nullable
              as String,
      cantidadDesde: null == cantidadDesde
          ? _value.cantidadDesde
          : cantidadDesde // ignore: cast_nullable_to_non_nullable
              as int,
      descuento: null == descuento
          ? _value.descuento
          : descuento // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$$_DescuentoGeneralDTOCopyWith<$Res>
    implements $DescuentoGeneralDTOCopyWith<$Res> {
  factory _$$_DescuentoGeneralDTOCopyWith(_$_DescuentoGeneralDTO value,
          $Res Function(_$_DescuentoGeneralDTO) then) =
      __$$_DescuentoGeneralDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'DESCUENTO_GENERAL_ID') String descuentoGeneralId,
      @JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'FAMILIA_ID') String familiaId,
      @JsonKey(name: 'SUBFAMILIA_ID') String subfamiliaId,
      @JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,
      @JsonKey(name: 'DESCUENTO') double descuento,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_DescuentoGeneralDTOCopyWithImpl<$Res>
    extends _$DescuentoGeneralDTOCopyWithImpl<$Res, _$_DescuentoGeneralDTO>
    implements _$$_DescuentoGeneralDTOCopyWith<$Res> {
  __$$_DescuentoGeneralDTOCopyWithImpl(_$_DescuentoGeneralDTO _value,
      $Res Function(_$_DescuentoGeneralDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descuentoGeneralId = null,
    Object? articuloId = null,
    Object? familiaId = null,
    Object? subfamiliaId = null,
    Object? cantidadDesde = null,
    Object? descuento = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$_DescuentoGeneralDTO(
      descuentoGeneralId: null == descuentoGeneralId
          ? _value.descuentoGeneralId
          : descuentoGeneralId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      familiaId: null == familiaId
          ? _value.familiaId
          : familiaId // ignore: cast_nullable_to_non_nullable
              as String,
      subfamiliaId: null == subfamiliaId
          ? _value.subfamiliaId
          : subfamiliaId // ignore: cast_nullable_to_non_nullable
              as String,
      cantidadDesde: null == cantidadDesde
          ? _value.cantidadDesde
          : cantidadDesde // ignore: cast_nullable_to_non_nullable
              as int,
      descuento: null == descuento
          ? _value.descuento
          : descuento // ignore: cast_nullable_to_non_nullable
              as double,
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
class _$_DescuentoGeneralDTO extends _DescuentoGeneralDTO {
  const _$_DescuentoGeneralDTO(
      {@JsonKey(name: 'DESCUENTO_GENERAL_ID') required this.descuentoGeneralId,
      @JsonKey(name: 'ARTICULO_ID') required this.articuloId,
      @JsonKey(name: 'FAMILIA_ID') required this.familiaId,
      @JsonKey(name: 'SUBFAMILIA_ID') required this.subfamiliaId,
      @JsonKey(name: 'CANTIDAD_DESDE') required this.cantidadDesde,
      @JsonKey(name: 'DESCUENTO') required this.descuento,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_DescuentoGeneralDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DescuentoGeneralDTOFromJson(json);

  @override
  @JsonKey(name: 'DESCUENTO_GENERAL_ID')
  final String descuentoGeneralId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'FAMILIA_ID')
  final String familiaId;
  @override
  @JsonKey(name: 'SUBFAMILIA_ID')
  final String subfamiliaId;
  @override
  @JsonKey(name: 'CANTIDAD_DESDE')
  final int cantidadDesde;
  @override
  @JsonKey(name: 'DESCUENTO')
  final double descuento;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'DescuentoGeneralDTO(descuentoGeneralId: $descuentoGeneralId, articuloId: $articuloId, familiaId: $familiaId, subfamiliaId: $subfamiliaId, cantidadDesde: $cantidadDesde, descuento: $descuento, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DescuentoGeneralDTO &&
            (identical(other.descuentoGeneralId, descuentoGeneralId) ||
                other.descuentoGeneralId == descuentoGeneralId) &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.familiaId, familiaId) ||
                other.familiaId == familiaId) &&
            (identical(other.subfamiliaId, subfamiliaId) ||
                other.subfamiliaId == subfamiliaId) &&
            (identical(other.cantidadDesde, cantidadDesde) ||
                other.cantidadDesde == cantidadDesde) &&
            (identical(other.descuento, descuento) ||
                other.descuento == descuento) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, descuentoGeneralId, articuloId,
      familiaId, subfamiliaId, cantidadDesde, descuento, lastUpdated, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DescuentoGeneralDTOCopyWith<_$_DescuentoGeneralDTO> get copyWith =>
      __$$_DescuentoGeneralDTOCopyWithImpl<_$_DescuentoGeneralDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DescuentoGeneralDTOToJson(
      this,
    );
  }
}

abstract class _DescuentoGeneralDTO extends DescuentoGeneralDTO {
  const factory _DescuentoGeneralDTO(
      {@JsonKey(name: 'DESCUENTO_GENERAL_ID')
          required final String descuentoGeneralId,
      @JsonKey(name: 'ARTICULO_ID')
          required final String articuloId,
      @JsonKey(name: 'FAMILIA_ID')
          required final String familiaId,
      @JsonKey(name: 'SUBFAMILIA_ID')
          required final String subfamiliaId,
      @JsonKey(name: 'CANTIDAD_DESDE')
          required final int cantidadDesde,
      @JsonKey(name: 'DESCUENTO')
          required final double descuento,
      @JsonKey(name: 'LAST_UPDATED')
          required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          final String deleted}) = _$_DescuentoGeneralDTO;
  const _DescuentoGeneralDTO._() : super._();

  factory _DescuentoGeneralDTO.fromJson(Map<String, dynamic> json) =
      _$_DescuentoGeneralDTO.fromJson;

  @override
  @JsonKey(name: 'DESCUENTO_GENERAL_ID')
  String get descuentoGeneralId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'FAMILIA_ID')
  String get familiaId;
  @override
  @JsonKey(name: 'SUBFAMILIA_ID')
  String get subfamiliaId;
  @override
  @JsonKey(name: 'CANTIDAD_DESDE')
  int get cantidadDesde;
  @override
  @JsonKey(name: 'DESCUENTO')
  double get descuento;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_DescuentoGeneralDTOCopyWith<_$_DescuentoGeneralDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
