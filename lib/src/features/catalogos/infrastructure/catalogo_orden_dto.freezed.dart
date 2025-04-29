// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalogo_orden_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CatalogoOrdenDTO _$CatalogoOrdenDTOFromJson(Map<String, dynamic> json) {
  return _CatalogoOrdenDTO.fromJson(json);
}

/// @nodoc
mixin _$CatalogoOrdenDTO {
  @JsonKey(name: 'CATALOGO_ID')
  int get catalogoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_ABIERTO')
  DateTime get fechaAbierto => throw _privateConstructorUsedError;

  /// Serializes this CatalogoOrdenDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatalogoOrdenDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogoOrdenDTOCopyWith<CatalogoOrdenDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogoOrdenDTOCopyWith<$Res> {
  factory $CatalogoOrdenDTOCopyWith(
    CatalogoOrdenDTO value,
    $Res Function(CatalogoOrdenDTO) then,
  ) = _$CatalogoOrdenDTOCopyWithImpl<$Res, CatalogoOrdenDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'CATALOGO_ID') int catalogoId,
    @JsonKey(name: 'FECHA_ABIERTO') DateTime fechaAbierto,
  });
}

/// @nodoc
class _$CatalogoOrdenDTOCopyWithImpl<$Res, $Val extends CatalogoOrdenDTO>
    implements $CatalogoOrdenDTOCopyWith<$Res> {
  _$CatalogoOrdenDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogoOrdenDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? catalogoId = null, Object? fechaAbierto = null}) {
    return _then(
      _value.copyWith(
            catalogoId:
                null == catalogoId
                    ? _value.catalogoId
                    : catalogoId // ignore: cast_nullable_to_non_nullable
                        as int,
            fechaAbierto:
                null == fechaAbierto
                    ? _value.fechaAbierto
                    : fechaAbierto // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CatalogoOrdenDTOImplCopyWith<$Res>
    implements $CatalogoOrdenDTOCopyWith<$Res> {
  factory _$$CatalogoOrdenDTOImplCopyWith(
    _$CatalogoOrdenDTOImpl value,
    $Res Function(_$CatalogoOrdenDTOImpl) then,
  ) = __$$CatalogoOrdenDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'CATALOGO_ID') int catalogoId,
    @JsonKey(name: 'FECHA_ABIERTO') DateTime fechaAbierto,
  });
}

/// @nodoc
class __$$CatalogoOrdenDTOImplCopyWithImpl<$Res>
    extends _$CatalogoOrdenDTOCopyWithImpl<$Res, _$CatalogoOrdenDTOImpl>
    implements _$$CatalogoOrdenDTOImplCopyWith<$Res> {
  __$$CatalogoOrdenDTOImplCopyWithImpl(
    _$CatalogoOrdenDTOImpl _value,
    $Res Function(_$CatalogoOrdenDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CatalogoOrdenDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? catalogoId = null, Object? fechaAbierto = null}) {
    return _then(
      _$CatalogoOrdenDTOImpl(
        catalogoId:
            null == catalogoId
                ? _value.catalogoId
                : catalogoId // ignore: cast_nullable_to_non_nullable
                    as int,
        fechaAbierto:
            null == fechaAbierto
                ? _value.fechaAbierto
                : fechaAbierto // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogoOrdenDTOImpl extends _CatalogoOrdenDTO {
  const _$CatalogoOrdenDTOImpl({
    @JsonKey(name: 'CATALOGO_ID') required this.catalogoId,
    @JsonKey(name: 'FECHA_ABIERTO') required this.fechaAbierto,
  }) : super._();

  factory _$CatalogoOrdenDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogoOrdenDTOImplFromJson(json);

  @override
  @JsonKey(name: 'CATALOGO_ID')
  final int catalogoId;
  @override
  @JsonKey(name: 'FECHA_ABIERTO')
  final DateTime fechaAbierto;

  @override
  String toString() {
    return 'CatalogoOrdenDTO(catalogoId: $catalogoId, fechaAbierto: $fechaAbierto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogoOrdenDTOImpl &&
            (identical(other.catalogoId, catalogoId) ||
                other.catalogoId == catalogoId) &&
            (identical(other.fechaAbierto, fechaAbierto) ||
                other.fechaAbierto == fechaAbierto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, catalogoId, fechaAbierto);

  /// Create a copy of CatalogoOrdenDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogoOrdenDTOImplCopyWith<_$CatalogoOrdenDTOImpl> get copyWith =>
      __$$CatalogoOrdenDTOImplCopyWithImpl<_$CatalogoOrdenDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogoOrdenDTOImplToJson(this);
  }
}

abstract class _CatalogoOrdenDTO extends CatalogoOrdenDTO {
  const factory _CatalogoOrdenDTO({
    @JsonKey(name: 'CATALOGO_ID') required final int catalogoId,
    @JsonKey(name: 'FECHA_ABIERTO') required final DateTime fechaAbierto,
  }) = _$CatalogoOrdenDTOImpl;
  const _CatalogoOrdenDTO._() : super._();

  factory _CatalogoOrdenDTO.fromJson(Map<String, dynamic> json) =
      _$CatalogoOrdenDTOImpl.fromJson;

  @override
  @JsonKey(name: 'CATALOGO_ID')
  int get catalogoId;
  @override
  @JsonKey(name: 'FECHA_ABIERTO')
  DateTime get fechaAbierto;

  /// Create a copy of CatalogoOrdenDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogoOrdenDTOImplCopyWith<_$CatalogoOrdenDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
