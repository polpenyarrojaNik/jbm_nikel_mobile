// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalogo_favorito_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatalogoFavoritoDTO _$CatalogoFavoritoDTOFromJson(Map<String, dynamic> json) {
  return _CatalogoFavoritoDTO.fromJson(json);
}

/// @nodoc
mixin _$CatalogoFavoritoDTO {
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'CATALOGO_ID')
  int get catalogoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String? get nombreArchivo => throw _privateConstructorUsedError;

  /// Serializes this CatalogoFavoritoDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatalogoFavoritoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogoFavoritoDTOCopyWith<CatalogoFavoritoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogoFavoritoDTOCopyWith<$Res> {
  factory $CatalogoFavoritoDTOCopyWith(
          CatalogoFavoritoDTO value, $Res Function(CatalogoFavoritoDTO) then) =
      _$CatalogoFavoritoDTOCopyWithImpl<$Res, CatalogoFavoritoDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int id,
      @JsonKey(name: 'CATALOGO_ID') int catalogoId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') String? nombreArchivo});
}

/// @nodoc
class _$CatalogoFavoritoDTOCopyWithImpl<$Res, $Val extends CatalogoFavoritoDTO>
    implements $CatalogoFavoritoDTOCopyWith<$Res> {
  _$CatalogoFavoritoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogoFavoritoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? catalogoId = null,
    Object? nombreArchivo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      catalogoId: null == catalogoId
          ? _value.catalogoId
          : catalogoId // ignore: cast_nullable_to_non_nullable
              as int,
      nombreArchivo: freezed == nombreArchivo
          ? _value.nombreArchivo
          : nombreArchivo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogoFavoritoDTOImplCopyWith<$Res>
    implements $CatalogoFavoritoDTOCopyWith<$Res> {
  factory _$$CatalogoFavoritoDTOImplCopyWith(_$CatalogoFavoritoDTOImpl value,
          $Res Function(_$CatalogoFavoritoDTOImpl) then) =
      __$$CatalogoFavoritoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int id,
      @JsonKey(name: 'CATALOGO_ID') int catalogoId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') String? nombreArchivo});
}

/// @nodoc
class __$$CatalogoFavoritoDTOImplCopyWithImpl<$Res>
    extends _$CatalogoFavoritoDTOCopyWithImpl<$Res, _$CatalogoFavoritoDTOImpl>
    implements _$$CatalogoFavoritoDTOImplCopyWith<$Res> {
  __$$CatalogoFavoritoDTOImplCopyWithImpl(_$CatalogoFavoritoDTOImpl _value,
      $Res Function(_$CatalogoFavoritoDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogoFavoritoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? catalogoId = null,
    Object? nombreArchivo = freezed,
  }) {
    return _then(_$CatalogoFavoritoDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      catalogoId: null == catalogoId
          ? _value.catalogoId
          : catalogoId // ignore: cast_nullable_to_non_nullable
              as int,
      nombreArchivo: freezed == nombreArchivo
          ? _value.nombreArchivo
          : nombreArchivo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogoFavoritoDTOImpl extends _CatalogoFavoritoDTO {
  const _$CatalogoFavoritoDTOImpl(
      {@JsonKey(name: 'ID') required this.id,
      @JsonKey(name: 'CATALOGO_ID') required this.catalogoId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') required this.nombreArchivo})
      : super._();

  factory _$CatalogoFavoritoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogoFavoritoDTOImplFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int id;
  @override
  @JsonKey(name: 'CATALOGO_ID')
  final int catalogoId;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  final String? nombreArchivo;

  @override
  String toString() {
    return 'CatalogoFavoritoDTO(id: $id, catalogoId: $catalogoId, nombreArchivo: $nombreArchivo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogoFavoritoDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.catalogoId, catalogoId) ||
                other.catalogoId == catalogoId) &&
            (identical(other.nombreArchivo, nombreArchivo) ||
                other.nombreArchivo == nombreArchivo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, catalogoId, nombreArchivo);

  /// Create a copy of CatalogoFavoritoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogoFavoritoDTOImplCopyWith<_$CatalogoFavoritoDTOImpl> get copyWith =>
      __$$CatalogoFavoritoDTOImplCopyWithImpl<_$CatalogoFavoritoDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogoFavoritoDTOImplToJson(
      this,
    );
  }
}

abstract class _CatalogoFavoritoDTO extends CatalogoFavoritoDTO {
  const factory _CatalogoFavoritoDTO(
      {@JsonKey(name: 'ID') required final int id,
      @JsonKey(name: 'CATALOGO_ID') required final int catalogoId,
      @JsonKey(name: 'NOMBRE_ARCHIVO')
      required final String? nombreArchivo}) = _$CatalogoFavoritoDTOImpl;
  const _CatalogoFavoritoDTO._() : super._();

  factory _CatalogoFavoritoDTO.fromJson(Map<String, dynamic> json) =
      _$CatalogoFavoritoDTOImpl.fromJson;

  @override
  @JsonKey(name: 'ID')
  int get id;
  @override
  @JsonKey(name: 'CATALOGO_ID')
  int get catalogoId;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String? get nombreArchivo;

  /// Create a copy of CatalogoFavoritoDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogoFavoritoDTOImplCopyWith<_$CatalogoFavoritoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
