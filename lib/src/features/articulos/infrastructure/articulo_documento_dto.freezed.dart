// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_documento_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticuloDocumentoDTO _$ArticuloDocumentoDTOFromJson(Map<String, dynamic> json) {
  return _ArticuloDocumentoDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticuloDocumentoDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String? get nombreArchivo => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDIOMA_ID')
  String get idiomaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'OBSERVACIONES')
  String? get observaciones => throw _privateConstructorUsedError;

  /// Serializes this ArticuloDocumentoDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArticuloDocumentoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticuloDocumentoDTOCopyWith<ArticuloDocumentoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloDocumentoDTOCopyWith<$Res> {
  factory $ArticuloDocumentoDTOCopyWith(ArticuloDocumentoDTO value,
          $Res Function(ArticuloDocumentoDTO) then) =
      _$ArticuloDocumentoDTOCopyWithImpl<$Res, ArticuloDocumentoDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') String? nombreArchivo,
      @JsonKey(name: 'IDIOMA_ID') String idiomaId,
      @JsonKey(name: 'OBSERVACIONES') String? observaciones});
}

/// @nodoc
class _$ArticuloDocumentoDTOCopyWithImpl<$Res,
        $Val extends ArticuloDocumentoDTO>
    implements $ArticuloDocumentoDTOCopyWith<$Res> {
  _$ArticuloDocumentoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticuloDocumentoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? nombreArchivo = freezed,
    Object? idiomaId = null,
    Object? observaciones = freezed,
  }) {
    return _then(_value.copyWith(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreArchivo: freezed == nombreArchivo
          ? _value.nombreArchivo
          : nombreArchivo // ignore: cast_nullable_to_non_nullable
              as String?,
      idiomaId: null == idiomaId
          ? _value.idiomaId
          : idiomaId // ignore: cast_nullable_to_non_nullable
              as String,
      observaciones: freezed == observaciones
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticuloDocumentoDTOImplCopyWith<$Res>
    implements $ArticuloDocumentoDTOCopyWith<$Res> {
  factory _$$ArticuloDocumentoDTOImplCopyWith(_$ArticuloDocumentoDTOImpl value,
          $Res Function(_$ArticuloDocumentoDTOImpl) then) =
      __$$ArticuloDocumentoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') String? nombreArchivo,
      @JsonKey(name: 'IDIOMA_ID') String idiomaId,
      @JsonKey(name: 'OBSERVACIONES') String? observaciones});
}

/// @nodoc
class __$$ArticuloDocumentoDTOImplCopyWithImpl<$Res>
    extends _$ArticuloDocumentoDTOCopyWithImpl<$Res, _$ArticuloDocumentoDTOImpl>
    implements _$$ArticuloDocumentoDTOImplCopyWith<$Res> {
  __$$ArticuloDocumentoDTOImplCopyWithImpl(_$ArticuloDocumentoDTOImpl _value,
      $Res Function(_$ArticuloDocumentoDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticuloDocumentoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? nombreArchivo = freezed,
    Object? idiomaId = null,
    Object? observaciones = freezed,
  }) {
    return _then(_$ArticuloDocumentoDTOImpl(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreArchivo: freezed == nombreArchivo
          ? _value.nombreArchivo
          : nombreArchivo // ignore: cast_nullable_to_non_nullable
              as String?,
      idiomaId: null == idiomaId
          ? _value.idiomaId
          : idiomaId // ignore: cast_nullable_to_non_nullable
              as String,
      observaciones: freezed == observaciones
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticuloDocumentoDTOImpl extends _ArticuloDocumentoDTO {
  const _$ArticuloDocumentoDTOImpl(
      {@JsonKey(name: 'ARTICULO_ID') required this.articuloId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') this.nombreArchivo,
      @JsonKey(name: 'IDIOMA_ID') required this.idiomaId,
      @JsonKey(name: 'OBSERVACIONES') this.observaciones})
      : super._();

  factory _$ArticuloDocumentoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticuloDocumentoDTOImplFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  final String? nombreArchivo;
  @override
  @JsonKey(name: 'IDIOMA_ID')
  final String idiomaId;
  @override
  @JsonKey(name: 'OBSERVACIONES')
  final String? observaciones;

  @override
  String toString() {
    return 'ArticuloDocumentoDTO(articuloId: $articuloId, nombreArchivo: $nombreArchivo, idiomaId: $idiomaId, observaciones: $observaciones)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticuloDocumentoDTOImpl &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.nombreArchivo, nombreArchivo) ||
                other.nombreArchivo == nombreArchivo) &&
            (identical(other.idiomaId, idiomaId) ||
                other.idiomaId == idiomaId) &&
            (identical(other.observaciones, observaciones) ||
                other.observaciones == observaciones));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, articuloId, nombreArchivo, idiomaId, observaciones);

  /// Create a copy of ArticuloDocumentoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticuloDocumentoDTOImplCopyWith<_$ArticuloDocumentoDTOImpl>
      get copyWith =>
          __$$ArticuloDocumentoDTOImplCopyWithImpl<_$ArticuloDocumentoDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticuloDocumentoDTOImplToJson(
      this,
    );
  }
}

abstract class _ArticuloDocumentoDTO extends ArticuloDocumentoDTO {
  const factory _ArticuloDocumentoDTO(
          {@JsonKey(name: 'ARTICULO_ID') required final String articuloId,
          @JsonKey(name: 'NOMBRE_ARCHIVO') final String? nombreArchivo,
          @JsonKey(name: 'IDIOMA_ID') required final String idiomaId,
          @JsonKey(name: 'OBSERVACIONES') final String? observaciones}) =
      _$ArticuloDocumentoDTOImpl;
  const _ArticuloDocumentoDTO._() : super._();

  factory _ArticuloDocumentoDTO.fromJson(Map<String, dynamic> json) =
      _$ArticuloDocumentoDTOImpl.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String? get nombreArchivo;
  @override
  @JsonKey(name: 'IDIOMA_ID')
  String get idiomaId;
  @override
  @JsonKey(name: 'OBSERVACIONES')
  String? get observaciones;

  /// Create a copy of ArticuloDocumentoDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticuloDocumentoDTOImplCopyWith<_$ArticuloDocumentoDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
