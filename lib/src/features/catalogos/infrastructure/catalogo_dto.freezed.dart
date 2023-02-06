// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalogo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatalogoDTO _$CatalogoDTOFromJson(Map<String, dynamic> json) {
  return _CatalogoDTO.fromJson(json);
}

/// @nodoc
mixin _$CatalogoDTO {
  @JsonKey(name: 'CATALOGO_ID')
  int get catalogoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE')
  String get nombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDIOMA_ID')
  String get idiomaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID')
  String get tipoPrecioCatalogoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_PRECIO_CATALOGO_NOMBRE')
  String get tipoPrecioCatalogoNombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_CATALOGO_ID')
  String get tipoCatalogoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TAG_BUSQUEDA')
  String get tagBusqueda => throw _privateConstructorUsedError;
  @JsonKey(name: 'ORDEN')
  int get orden => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE_FICHERO_PORTADA')
  String get nombreFicheroPortada => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE_FICHERO_CATALOGO')
  String get nombreFicheroCatalogo => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCARGA_SN')
  String get descarga => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogoDTOCopyWith<CatalogoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogoDTOCopyWith<$Res> {
  factory $CatalogoDTOCopyWith(
          CatalogoDTO value, $Res Function(CatalogoDTO) then) =
      _$CatalogoDTOCopyWithImpl<$Res, CatalogoDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'CATALOGO_ID')
          int catalogoId,
      @JsonKey(name: 'NOMBRE')
          String nombre,
      @JsonKey(name: 'IDIOMA_ID')
          String idiomaId,
      @JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID')
          String tipoPrecioCatalogoId,
      @JsonKey(name: 'TIPO_PRECIO_CATALOGO_NOMBRE')
          String tipoPrecioCatalogoNombre,
      @JsonKey(name: 'TIPO_CATALOGO_ID')
          String tipoCatalogoId,
      @JsonKey(name: 'TAG_BUSQUEDA')
          String tagBusqueda,
      @JsonKey(name: 'ORDEN')
          int orden,
      @JsonKey(name: 'NOMBRE_FICHERO_PORTADA')
          String nombreFicheroPortada,
      @JsonKey(name: 'NOMBRE_FICHERO_CATALOGO')
          String nombreFicheroCatalogo,
      @JsonKey(name: 'DESCARGA_SN')
          String descarga});
}

/// @nodoc
class _$CatalogoDTOCopyWithImpl<$Res, $Val extends CatalogoDTO>
    implements $CatalogoDTOCopyWith<$Res> {
  _$CatalogoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogoId = null,
    Object? nombre = null,
    Object? idiomaId = null,
    Object? tipoPrecioCatalogoId = null,
    Object? tipoPrecioCatalogoNombre = null,
    Object? tipoCatalogoId = null,
    Object? tagBusqueda = null,
    Object? orden = null,
    Object? nombreFicheroPortada = null,
    Object? nombreFicheroCatalogo = null,
    Object? descarga = null,
  }) {
    return _then(_value.copyWith(
      catalogoId: null == catalogoId
          ? _value.catalogoId
          : catalogoId // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      idiomaId: null == idiomaId
          ? _value.idiomaId
          : idiomaId // ignore: cast_nullable_to_non_nullable
              as String,
      tipoPrecioCatalogoId: null == tipoPrecioCatalogoId
          ? _value.tipoPrecioCatalogoId
          : tipoPrecioCatalogoId // ignore: cast_nullable_to_non_nullable
              as String,
      tipoPrecioCatalogoNombre: null == tipoPrecioCatalogoNombre
          ? _value.tipoPrecioCatalogoNombre
          : tipoPrecioCatalogoNombre // ignore: cast_nullable_to_non_nullable
              as String,
      tipoCatalogoId: null == tipoCatalogoId
          ? _value.tipoCatalogoId
          : tipoCatalogoId // ignore: cast_nullable_to_non_nullable
              as String,
      tagBusqueda: null == tagBusqueda
          ? _value.tagBusqueda
          : tagBusqueda // ignore: cast_nullable_to_non_nullable
              as String,
      orden: null == orden
          ? _value.orden
          : orden // ignore: cast_nullable_to_non_nullable
              as int,
      nombreFicheroPortada: null == nombreFicheroPortada
          ? _value.nombreFicheroPortada
          : nombreFicheroPortada // ignore: cast_nullable_to_non_nullable
              as String,
      nombreFicheroCatalogo: null == nombreFicheroCatalogo
          ? _value.nombreFicheroCatalogo
          : nombreFicheroCatalogo // ignore: cast_nullable_to_non_nullable
              as String,
      descarga: null == descarga
          ? _value.descarga
          : descarga // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatalogoDTOCopyWith<$Res>
    implements $CatalogoDTOCopyWith<$Res> {
  factory _$$_CatalogoDTOCopyWith(
          _$_CatalogoDTO value, $Res Function(_$_CatalogoDTO) then) =
      __$$_CatalogoDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'CATALOGO_ID')
          int catalogoId,
      @JsonKey(name: 'NOMBRE')
          String nombre,
      @JsonKey(name: 'IDIOMA_ID')
          String idiomaId,
      @JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID')
          String tipoPrecioCatalogoId,
      @JsonKey(name: 'TIPO_PRECIO_CATALOGO_NOMBRE')
          String tipoPrecioCatalogoNombre,
      @JsonKey(name: 'TIPO_CATALOGO_ID')
          String tipoCatalogoId,
      @JsonKey(name: 'TAG_BUSQUEDA')
          String tagBusqueda,
      @JsonKey(name: 'ORDEN')
          int orden,
      @JsonKey(name: 'NOMBRE_FICHERO_PORTADA')
          String nombreFicheroPortada,
      @JsonKey(name: 'NOMBRE_FICHERO_CATALOGO')
          String nombreFicheroCatalogo,
      @JsonKey(name: 'DESCARGA_SN')
          String descarga});
}

/// @nodoc
class __$$_CatalogoDTOCopyWithImpl<$Res>
    extends _$CatalogoDTOCopyWithImpl<$Res, _$_CatalogoDTO>
    implements _$$_CatalogoDTOCopyWith<$Res> {
  __$$_CatalogoDTOCopyWithImpl(
      _$_CatalogoDTO _value, $Res Function(_$_CatalogoDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogoId = null,
    Object? nombre = null,
    Object? idiomaId = null,
    Object? tipoPrecioCatalogoId = null,
    Object? tipoPrecioCatalogoNombre = null,
    Object? tipoCatalogoId = null,
    Object? tagBusqueda = null,
    Object? orden = null,
    Object? nombreFicheroPortada = null,
    Object? nombreFicheroCatalogo = null,
    Object? descarga = null,
  }) {
    return _then(_$_CatalogoDTO(
      catalogoId: null == catalogoId
          ? _value.catalogoId
          : catalogoId // ignore: cast_nullable_to_non_nullable
              as int,
      nombre: null == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String,
      idiomaId: null == idiomaId
          ? _value.idiomaId
          : idiomaId // ignore: cast_nullable_to_non_nullable
              as String,
      tipoPrecioCatalogoId: null == tipoPrecioCatalogoId
          ? _value.tipoPrecioCatalogoId
          : tipoPrecioCatalogoId // ignore: cast_nullable_to_non_nullable
              as String,
      tipoPrecioCatalogoNombre: null == tipoPrecioCatalogoNombre
          ? _value.tipoPrecioCatalogoNombre
          : tipoPrecioCatalogoNombre // ignore: cast_nullable_to_non_nullable
              as String,
      tipoCatalogoId: null == tipoCatalogoId
          ? _value.tipoCatalogoId
          : tipoCatalogoId // ignore: cast_nullable_to_non_nullable
              as String,
      tagBusqueda: null == tagBusqueda
          ? _value.tagBusqueda
          : tagBusqueda // ignore: cast_nullable_to_non_nullable
              as String,
      orden: null == orden
          ? _value.orden
          : orden // ignore: cast_nullable_to_non_nullable
              as int,
      nombreFicheroPortada: null == nombreFicheroPortada
          ? _value.nombreFicheroPortada
          : nombreFicheroPortada // ignore: cast_nullable_to_non_nullable
              as String,
      nombreFicheroCatalogo: null == nombreFicheroCatalogo
          ? _value.nombreFicheroCatalogo
          : nombreFicheroCatalogo // ignore: cast_nullable_to_non_nullable
              as String,
      descarga: null == descarga
          ? _value.descarga
          : descarga // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatalogoDTO extends _CatalogoDTO {
  const _$_CatalogoDTO(
      {@JsonKey(name: 'CATALOGO_ID')
          required this.catalogoId,
      @JsonKey(name: 'NOMBRE')
          required this.nombre,
      @JsonKey(name: 'IDIOMA_ID')
          required this.idiomaId,
      @JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID')
          required this.tipoPrecioCatalogoId,
      @JsonKey(name: 'TIPO_PRECIO_CATALOGO_NOMBRE')
          required this.tipoPrecioCatalogoNombre,
      @JsonKey(name: 'TIPO_CATALOGO_ID')
          required this.tipoCatalogoId,
      @JsonKey(name: 'TAG_BUSQUEDA')
          required this.tagBusqueda,
      @JsonKey(name: 'ORDEN')
          required this.orden,
      @JsonKey(name: 'NOMBRE_FICHERO_PORTADA')
          required this.nombreFicheroPortada,
      @JsonKey(name: 'NOMBRE_FICHERO_CATALOGO')
          required this.nombreFicheroCatalogo,
      @JsonKey(name: 'DESCARGA_SN')
          required this.descarga})
      : super._();

  factory _$_CatalogoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CatalogoDTOFromJson(json);

  @override
  @JsonKey(name: 'CATALOGO_ID')
  final int catalogoId;
  @override
  @JsonKey(name: 'NOMBRE')
  final String nombre;
  @override
  @JsonKey(name: 'IDIOMA_ID')
  final String idiomaId;
  @override
  @JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID')
  final String tipoPrecioCatalogoId;
  @override
  @JsonKey(name: 'TIPO_PRECIO_CATALOGO_NOMBRE')
  final String tipoPrecioCatalogoNombre;
  @override
  @JsonKey(name: 'TIPO_CATALOGO_ID')
  final String tipoCatalogoId;
  @override
  @JsonKey(name: 'TAG_BUSQUEDA')
  final String tagBusqueda;
  @override
  @JsonKey(name: 'ORDEN')
  final int orden;
  @override
  @JsonKey(name: 'NOMBRE_FICHERO_PORTADA')
  final String nombreFicheroPortada;
  @override
  @JsonKey(name: 'NOMBRE_FICHERO_CATALOGO')
  final String nombreFicheroCatalogo;
  @override
  @JsonKey(name: 'DESCARGA_SN')
  final String descarga;

  @override
  String toString() {
    return 'CatalogoDTO(catalogoId: $catalogoId, nombre: $nombre, idiomaId: $idiomaId, tipoPrecioCatalogoId: $tipoPrecioCatalogoId, tipoPrecioCatalogoNombre: $tipoPrecioCatalogoNombre, tipoCatalogoId: $tipoCatalogoId, tagBusqueda: $tagBusqueda, orden: $orden, nombreFicheroPortada: $nombreFicheroPortada, nombreFicheroCatalogo: $nombreFicheroCatalogo, descarga: $descarga)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogoDTO &&
            (identical(other.catalogoId, catalogoId) ||
                other.catalogoId == catalogoId) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.idiomaId, idiomaId) ||
                other.idiomaId == idiomaId) &&
            (identical(other.tipoPrecioCatalogoId, tipoPrecioCatalogoId) ||
                other.tipoPrecioCatalogoId == tipoPrecioCatalogoId) &&
            (identical(
                    other.tipoPrecioCatalogoNombre, tipoPrecioCatalogoNombre) ||
                other.tipoPrecioCatalogoNombre == tipoPrecioCatalogoNombre) &&
            (identical(other.tipoCatalogoId, tipoCatalogoId) ||
                other.tipoCatalogoId == tipoCatalogoId) &&
            (identical(other.tagBusqueda, tagBusqueda) ||
                other.tagBusqueda == tagBusqueda) &&
            (identical(other.orden, orden) || other.orden == orden) &&
            (identical(other.nombreFicheroPortada, nombreFicheroPortada) ||
                other.nombreFicheroPortada == nombreFicheroPortada) &&
            (identical(other.nombreFicheroCatalogo, nombreFicheroCatalogo) ||
                other.nombreFicheroCatalogo == nombreFicheroCatalogo) &&
            (identical(other.descarga, descarga) ||
                other.descarga == descarga));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      catalogoId,
      nombre,
      idiomaId,
      tipoPrecioCatalogoId,
      tipoPrecioCatalogoNombre,
      tipoCatalogoId,
      tagBusqueda,
      orden,
      nombreFicheroPortada,
      nombreFicheroCatalogo,
      descarga);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogoDTOCopyWith<_$_CatalogoDTO> get copyWith =>
      __$$_CatalogoDTOCopyWithImpl<_$_CatalogoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatalogoDTOToJson(
      this,
    );
  }
}

abstract class _CatalogoDTO extends CatalogoDTO {
  const factory _CatalogoDTO(
      {@JsonKey(name: 'CATALOGO_ID')
          required final int catalogoId,
      @JsonKey(name: 'NOMBRE')
          required final String nombre,
      @JsonKey(name: 'IDIOMA_ID')
          required final String idiomaId,
      @JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID')
          required final String tipoPrecioCatalogoId,
      @JsonKey(name: 'TIPO_PRECIO_CATALOGO_NOMBRE')
          required final String tipoPrecioCatalogoNombre,
      @JsonKey(name: 'TIPO_CATALOGO_ID')
          required final String tipoCatalogoId,
      @JsonKey(name: 'TAG_BUSQUEDA')
          required final String tagBusqueda,
      @JsonKey(name: 'ORDEN')
          required final int orden,
      @JsonKey(name: 'NOMBRE_FICHERO_PORTADA')
          required final String nombreFicheroPortada,
      @JsonKey(name: 'NOMBRE_FICHERO_CATALOGO')
          required final String nombreFicheroCatalogo,
      @JsonKey(name: 'DESCARGA_SN')
          required final String descarga}) = _$_CatalogoDTO;
  const _CatalogoDTO._() : super._();

  factory _CatalogoDTO.fromJson(Map<String, dynamic> json) =
      _$_CatalogoDTO.fromJson;

  @override
  @JsonKey(name: 'CATALOGO_ID')
  int get catalogoId;
  @override
  @JsonKey(name: 'NOMBRE')
  String get nombre;
  @override
  @JsonKey(name: 'IDIOMA_ID')
  String get idiomaId;
  @override
  @JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID')
  String get tipoPrecioCatalogoId;
  @override
  @JsonKey(name: 'TIPO_PRECIO_CATALOGO_NOMBRE')
  String get tipoPrecioCatalogoNombre;
  @override
  @JsonKey(name: 'TIPO_CATALOGO_ID')
  String get tipoCatalogoId;
  @override
  @JsonKey(name: 'TAG_BUSQUEDA')
  String get tagBusqueda;
  @override
  @JsonKey(name: 'ORDEN')
  int get orden;
  @override
  @JsonKey(name: 'NOMBRE_FICHERO_PORTADA')
  String get nombreFicheroPortada;
  @override
  @JsonKey(name: 'NOMBRE_FICHERO_CATALOGO')
  String get nombreFicheroCatalogo;
  @override
  @JsonKey(name: 'DESCARGA_SN')
  String get descarga;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogoDTOCopyWith<_$_CatalogoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
