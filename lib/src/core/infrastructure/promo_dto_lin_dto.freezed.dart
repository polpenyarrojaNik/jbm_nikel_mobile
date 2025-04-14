// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_dto_lin_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromoDtoLineaDTO _$PromoDtoLineaDTOFromJson(Map<String, dynamic> json) {
  return _PromoDtoLineaDTO.fromJson(json);
}

/// @nodoc
mixin _$PromoDtoLineaDTO {
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PROMO_DTO_ID')
  String get promoDtoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD_DESDE')
  int get cantidadDesde => throw _privateConstructorUsedError;
  @JsonKey(name: 'PRECIO')
  double get precio => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_PRECIO')
  double? get tipoPrecio => throw _privateConstructorUsedError;
  @JsonKey(name: 'DTO')
  double get dto => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  /// Serializes this PromoDtoLineaDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PromoDtoLineaDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromoDtoLineaDTOCopyWith<PromoDtoLineaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoDtoLineaDTOCopyWith<$Res> {
  factory $PromoDtoLineaDTOCopyWith(
          PromoDtoLineaDTO value, $Res Function(PromoDtoLineaDTO) then) =
      _$PromoDtoLineaDTOCopyWithImpl<$Res, PromoDtoLineaDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'EMPRESA_ID') String empresaId,
      @JsonKey(name: 'PROMO_DTO_ID') String promoDtoId,
      @JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,
      @JsonKey(name: 'PRECIO') double precio,
      @JsonKey(name: 'TIPO_PRECIO') double? tipoPrecio,
      @JsonKey(name: 'DTO') double dto,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$PromoDtoLineaDTOCopyWithImpl<$Res, $Val extends PromoDtoLineaDTO>
    implements $PromoDtoLineaDTOCopyWith<$Res> {
  _$PromoDtoLineaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromoDtoLineaDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? promoDtoId = null,
    Object? articuloId = null,
    Object? cantidadDesde = null,
    Object? precio = null,
    Object? tipoPrecio = freezed,
    Object? dto = null,
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
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      cantidadDesde: null == cantidadDesde
          ? _value.cantidadDesde
          : cantidadDesde // ignore: cast_nullable_to_non_nullable
              as int,
      precio: null == precio
          ? _value.precio
          : precio // ignore: cast_nullable_to_non_nullable
              as double,
      tipoPrecio: freezed == tipoPrecio
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
              as double?,
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PromoDtoLineaDTOImplCopyWith<$Res>
    implements $PromoDtoLineaDTOCopyWith<$Res> {
  factory _$$PromoDtoLineaDTOImplCopyWith(_$PromoDtoLineaDTOImpl value,
          $Res Function(_$PromoDtoLineaDTOImpl) then) =
      __$$PromoDtoLineaDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'EMPRESA_ID') String empresaId,
      @JsonKey(name: 'PROMO_DTO_ID') String promoDtoId,
      @JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,
      @JsonKey(name: 'PRECIO') double precio,
      @JsonKey(name: 'TIPO_PRECIO') double? tipoPrecio,
      @JsonKey(name: 'DTO') double dto,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$PromoDtoLineaDTOImplCopyWithImpl<$Res>
    extends _$PromoDtoLineaDTOCopyWithImpl<$Res, _$PromoDtoLineaDTOImpl>
    implements _$$PromoDtoLineaDTOImplCopyWith<$Res> {
  __$$PromoDtoLineaDTOImplCopyWithImpl(_$PromoDtoLineaDTOImpl _value,
      $Res Function(_$PromoDtoLineaDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromoDtoLineaDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? promoDtoId = null,
    Object? articuloId = null,
    Object? cantidadDesde = null,
    Object? precio = null,
    Object? tipoPrecio = freezed,
    Object? dto = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$PromoDtoLineaDTOImpl(
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      promoDtoId: null == promoDtoId
          ? _value.promoDtoId
          : promoDtoId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      cantidadDesde: null == cantidadDesde
          ? _value.cantidadDesde
          : cantidadDesde // ignore: cast_nullable_to_non_nullable
              as int,
      precio: null == precio
          ? _value.precio
          : precio // ignore: cast_nullable_to_non_nullable
              as double,
      tipoPrecio: freezed == tipoPrecio
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
              as double?,
      dto: null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
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
class _$PromoDtoLineaDTOImpl extends _PromoDtoLineaDTO {
  const _$PromoDtoLineaDTOImpl(
      {@JsonKey(name: 'EMPRESA_ID') required this.empresaId,
      @JsonKey(name: 'PROMO_DTO_ID') required this.promoDtoId,
      @JsonKey(name: 'ARTICULO_ID') required this.articuloId,
      @JsonKey(name: 'CANTIDAD_DESDE') required this.cantidadDesde,
      @JsonKey(name: 'PRECIO') required this.precio,
      @JsonKey(name: 'TIPO_PRECIO') required this.tipoPrecio,
      @JsonKey(name: 'DTO') required this.dto,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$PromoDtoLineaDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromoDtoLineaDTOImplFromJson(json);

  @override
  @JsonKey(name: 'EMPRESA_ID')
  final String empresaId;
  @override
  @JsonKey(name: 'PROMO_DTO_ID')
  final String promoDtoId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'CANTIDAD_DESDE')
  final int cantidadDesde;
  @override
  @JsonKey(name: 'PRECIO')
  final double precio;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  final double? tipoPrecio;
  @override
  @JsonKey(name: 'DTO')
  final double dto;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'PromoDtoLineaDTO(empresaId: $empresaId, promoDtoId: $promoDtoId, articuloId: $articuloId, cantidadDesde: $cantidadDesde, precio: $precio, tipoPrecio: $tipoPrecio, dto: $dto, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromoDtoLineaDTOImpl &&
            (identical(other.empresaId, empresaId) ||
                other.empresaId == empresaId) &&
            (identical(other.promoDtoId, promoDtoId) ||
                other.promoDtoId == promoDtoId) &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.cantidadDesde, cantidadDesde) ||
                other.cantidadDesde == cantidadDesde) &&
            (identical(other.precio, precio) || other.precio == precio) &&
            (identical(other.tipoPrecio, tipoPrecio) ||
                other.tipoPrecio == tipoPrecio) &&
            (identical(other.dto, dto) || other.dto == dto) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, empresaId, promoDtoId,
      articuloId, cantidadDesde, precio, tipoPrecio, dto, lastUpdated, deleted);

  /// Create a copy of PromoDtoLineaDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromoDtoLineaDTOImplCopyWith<_$PromoDtoLineaDTOImpl> get copyWith =>
      __$$PromoDtoLineaDTOImplCopyWithImpl<_$PromoDtoLineaDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromoDtoLineaDTOImplToJson(
      this,
    );
  }
}

abstract class _PromoDtoLineaDTO extends PromoDtoLineaDTO {
  const factory _PromoDtoLineaDTO(
      {@JsonKey(name: 'EMPRESA_ID') required final String empresaId,
      @JsonKey(name: 'PROMO_DTO_ID') required final String promoDtoId,
      @JsonKey(name: 'ARTICULO_ID') required final String articuloId,
      @JsonKey(name: 'CANTIDAD_DESDE') required final int cantidadDesde,
      @JsonKey(name: 'PRECIO') required final double precio,
      @JsonKey(name: 'TIPO_PRECIO') required final double? tipoPrecio,
      @JsonKey(name: 'DTO') required final double dto,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$PromoDtoLineaDTOImpl;
  const _PromoDtoLineaDTO._() : super._();

  factory _PromoDtoLineaDTO.fromJson(Map<String, dynamic> json) =
      _$PromoDtoLineaDTOImpl.fromJson;

  @override
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId;
  @override
  @JsonKey(name: 'PROMO_DTO_ID')
  String get promoDtoId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'CANTIDAD_DESDE')
  int get cantidadDesde;
  @override
  @JsonKey(name: 'PRECIO')
  double get precio;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  double? get tipoPrecio;
  @override
  @JsonKey(name: 'DTO')
  double get dto;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;

  /// Create a copy of PromoDtoLineaDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromoDtoLineaDTOImplCopyWith<_$PromoDtoLineaDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
