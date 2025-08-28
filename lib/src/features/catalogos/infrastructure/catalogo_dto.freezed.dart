// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalogo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogoDTO {

@JsonKey(name: 'CATALOGO_ID') int get catalogoId;@JsonKey(name: 'NOMBRE') String get nombre;@JsonKey(name: 'IDIOMA_ID') String get idiomaId;@JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID') String get tipoPrecioCatalogoId;@JsonKey(name: 'TIPO_PRECIO_CATALOGO_NOMBRE') String get tipoPrecioCatalogoNombre;@JsonKey(name: 'TIPO_CATALOGO_ID') String get tipoCatalogoId;@JsonKey(name: 'TAG_BUSQUEDA') String get tagBusqueda;@JsonKey(name: 'ORDEN') int get orden;@JsonKey(name: 'NOMBRE_FICHERO_PORTADA') String get nombreFicheroPortada;@JsonKey(name: 'NOMBRE_FICHERO_CATALOGO') String get nombreFicheroCatalogo;@JsonKey(name: 'DESCARGA_SN') String get descarga;
/// Create a copy of CatalogoDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogoDTOCopyWith<CatalogoDTO> get copyWith => _$CatalogoDTOCopyWithImpl<CatalogoDTO>(this as CatalogoDTO, _$identity);

  /// Serializes this CatalogoDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogoDTO&&(identical(other.catalogoId, catalogoId) || other.catalogoId == catalogoId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.idiomaId, idiomaId) || other.idiomaId == idiomaId)&&(identical(other.tipoPrecioCatalogoId, tipoPrecioCatalogoId) || other.tipoPrecioCatalogoId == tipoPrecioCatalogoId)&&(identical(other.tipoPrecioCatalogoNombre, tipoPrecioCatalogoNombre) || other.tipoPrecioCatalogoNombre == tipoPrecioCatalogoNombre)&&(identical(other.tipoCatalogoId, tipoCatalogoId) || other.tipoCatalogoId == tipoCatalogoId)&&(identical(other.tagBusqueda, tagBusqueda) || other.tagBusqueda == tagBusqueda)&&(identical(other.orden, orden) || other.orden == orden)&&(identical(other.nombreFicheroPortada, nombreFicheroPortada) || other.nombreFicheroPortada == nombreFicheroPortada)&&(identical(other.nombreFicheroCatalogo, nombreFicheroCatalogo) || other.nombreFicheroCatalogo == nombreFicheroCatalogo)&&(identical(other.descarga, descarga) || other.descarga == descarga));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catalogoId,nombre,idiomaId,tipoPrecioCatalogoId,tipoPrecioCatalogoNombre,tipoCatalogoId,tagBusqueda,orden,nombreFicheroPortada,nombreFicheroCatalogo,descarga);

@override
String toString() {
  return 'CatalogoDTO(catalogoId: $catalogoId, nombre: $nombre, idiomaId: $idiomaId, tipoPrecioCatalogoId: $tipoPrecioCatalogoId, tipoPrecioCatalogoNombre: $tipoPrecioCatalogoNombre, tipoCatalogoId: $tipoCatalogoId, tagBusqueda: $tagBusqueda, orden: $orden, nombreFicheroPortada: $nombreFicheroPortada, nombreFicheroCatalogo: $nombreFicheroCatalogo, descarga: $descarga)';
}


}

/// @nodoc
abstract mixin class $CatalogoDTOCopyWith<$Res>  {
  factory $CatalogoDTOCopyWith(CatalogoDTO value, $Res Function(CatalogoDTO) _then) = _$CatalogoDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CATALOGO_ID') int catalogoId,@JsonKey(name: 'NOMBRE') String nombre,@JsonKey(name: 'IDIOMA_ID') String idiomaId,@JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID') String tipoPrecioCatalogoId,@JsonKey(name: 'TIPO_PRECIO_CATALOGO_NOMBRE') String tipoPrecioCatalogoNombre,@JsonKey(name: 'TIPO_CATALOGO_ID') String tipoCatalogoId,@JsonKey(name: 'TAG_BUSQUEDA') String tagBusqueda,@JsonKey(name: 'ORDEN') int orden,@JsonKey(name: 'NOMBRE_FICHERO_PORTADA') String nombreFicheroPortada,@JsonKey(name: 'NOMBRE_FICHERO_CATALOGO') String nombreFicheroCatalogo,@JsonKey(name: 'DESCARGA_SN') String descarga
});




}
/// @nodoc
class _$CatalogoDTOCopyWithImpl<$Res>
    implements $CatalogoDTOCopyWith<$Res> {
  _$CatalogoDTOCopyWithImpl(this._self, this._then);

  final CatalogoDTO _self;
  final $Res Function(CatalogoDTO) _then;

/// Create a copy of CatalogoDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? catalogoId = null,Object? nombre = null,Object? idiomaId = null,Object? tipoPrecioCatalogoId = null,Object? tipoPrecioCatalogoNombre = null,Object? tipoCatalogoId = null,Object? tagBusqueda = null,Object? orden = null,Object? nombreFicheroPortada = null,Object? nombreFicheroCatalogo = null,Object? descarga = null,}) {
  return _then(_self.copyWith(
catalogoId: null == catalogoId ? _self.catalogoId : catalogoId // ignore: cast_nullable_to_non_nullable
as int,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,idiomaId: null == idiomaId ? _self.idiomaId : idiomaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecioCatalogoId: null == tipoPrecioCatalogoId ? _self.tipoPrecioCatalogoId : tipoPrecioCatalogoId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecioCatalogoNombre: null == tipoPrecioCatalogoNombre ? _self.tipoPrecioCatalogoNombre : tipoPrecioCatalogoNombre // ignore: cast_nullable_to_non_nullable
as String,tipoCatalogoId: null == tipoCatalogoId ? _self.tipoCatalogoId : tipoCatalogoId // ignore: cast_nullable_to_non_nullable
as String,tagBusqueda: null == tagBusqueda ? _self.tagBusqueda : tagBusqueda // ignore: cast_nullable_to_non_nullable
as String,orden: null == orden ? _self.orden : orden // ignore: cast_nullable_to_non_nullable
as int,nombreFicheroPortada: null == nombreFicheroPortada ? _self.nombreFicheroPortada : nombreFicheroPortada // ignore: cast_nullable_to_non_nullable
as String,nombreFicheroCatalogo: null == nombreFicheroCatalogo ? _self.nombreFicheroCatalogo : nombreFicheroCatalogo // ignore: cast_nullable_to_non_nullable
as String,descarga: null == descarga ? _self.descarga : descarga // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogoDTO].
extension CatalogoDTOPatterns on CatalogoDTO {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogoDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogoDTO() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogoDTO value)  $default,){
final _that = this;
switch (_that) {
case _CatalogoDTO():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogoDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogoDTO() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CATALOGO_ID')  int catalogoId, @JsonKey(name: 'NOMBRE')  String nombre, @JsonKey(name: 'IDIOMA_ID')  String idiomaId, @JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID')  String tipoPrecioCatalogoId, @JsonKey(name: 'TIPO_PRECIO_CATALOGO_NOMBRE')  String tipoPrecioCatalogoNombre, @JsonKey(name: 'TIPO_CATALOGO_ID')  String tipoCatalogoId, @JsonKey(name: 'TAG_BUSQUEDA')  String tagBusqueda, @JsonKey(name: 'ORDEN')  int orden, @JsonKey(name: 'NOMBRE_FICHERO_PORTADA')  String nombreFicheroPortada, @JsonKey(name: 'NOMBRE_FICHERO_CATALOGO')  String nombreFicheroCatalogo, @JsonKey(name: 'DESCARGA_SN')  String descarga)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogoDTO() when $default != null:
return $default(_that.catalogoId,_that.nombre,_that.idiomaId,_that.tipoPrecioCatalogoId,_that.tipoPrecioCatalogoNombre,_that.tipoCatalogoId,_that.tagBusqueda,_that.orden,_that.nombreFicheroPortada,_that.nombreFicheroCatalogo,_that.descarga);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CATALOGO_ID')  int catalogoId, @JsonKey(name: 'NOMBRE')  String nombre, @JsonKey(name: 'IDIOMA_ID')  String idiomaId, @JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID')  String tipoPrecioCatalogoId, @JsonKey(name: 'TIPO_PRECIO_CATALOGO_NOMBRE')  String tipoPrecioCatalogoNombre, @JsonKey(name: 'TIPO_CATALOGO_ID')  String tipoCatalogoId, @JsonKey(name: 'TAG_BUSQUEDA')  String tagBusqueda, @JsonKey(name: 'ORDEN')  int orden, @JsonKey(name: 'NOMBRE_FICHERO_PORTADA')  String nombreFicheroPortada, @JsonKey(name: 'NOMBRE_FICHERO_CATALOGO')  String nombreFicheroCatalogo, @JsonKey(name: 'DESCARGA_SN')  String descarga)  $default,) {final _that = this;
switch (_that) {
case _CatalogoDTO():
return $default(_that.catalogoId,_that.nombre,_that.idiomaId,_that.tipoPrecioCatalogoId,_that.tipoPrecioCatalogoNombre,_that.tipoCatalogoId,_that.tagBusqueda,_that.orden,_that.nombreFicheroPortada,_that.nombreFicheroCatalogo,_that.descarga);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CATALOGO_ID')  int catalogoId, @JsonKey(name: 'NOMBRE')  String nombre, @JsonKey(name: 'IDIOMA_ID')  String idiomaId, @JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID')  String tipoPrecioCatalogoId, @JsonKey(name: 'TIPO_PRECIO_CATALOGO_NOMBRE')  String tipoPrecioCatalogoNombre, @JsonKey(name: 'TIPO_CATALOGO_ID')  String tipoCatalogoId, @JsonKey(name: 'TAG_BUSQUEDA')  String tagBusqueda, @JsonKey(name: 'ORDEN')  int orden, @JsonKey(name: 'NOMBRE_FICHERO_PORTADA')  String nombreFicheroPortada, @JsonKey(name: 'NOMBRE_FICHERO_CATALOGO')  String nombreFicheroCatalogo, @JsonKey(name: 'DESCARGA_SN')  String descarga)?  $default,) {final _that = this;
switch (_that) {
case _CatalogoDTO() when $default != null:
return $default(_that.catalogoId,_that.nombre,_that.idiomaId,_that.tipoPrecioCatalogoId,_that.tipoPrecioCatalogoNombre,_that.tipoCatalogoId,_that.tagBusqueda,_that.orden,_that.nombreFicheroPortada,_that.nombreFicheroCatalogo,_that.descarga);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CatalogoDTO extends CatalogoDTO {
  const _CatalogoDTO({@JsonKey(name: 'CATALOGO_ID') required this.catalogoId, @JsonKey(name: 'NOMBRE') required this.nombre, @JsonKey(name: 'IDIOMA_ID') required this.idiomaId, @JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID') required this.tipoPrecioCatalogoId, @JsonKey(name: 'TIPO_PRECIO_CATALOGO_NOMBRE') required this.tipoPrecioCatalogoNombre, @JsonKey(name: 'TIPO_CATALOGO_ID') required this.tipoCatalogoId, @JsonKey(name: 'TAG_BUSQUEDA') required this.tagBusqueda, @JsonKey(name: 'ORDEN') required this.orden, @JsonKey(name: 'NOMBRE_FICHERO_PORTADA') required this.nombreFicheroPortada, @JsonKey(name: 'NOMBRE_FICHERO_CATALOGO') required this.nombreFicheroCatalogo, @JsonKey(name: 'DESCARGA_SN') required this.descarga}): super._();
  factory _CatalogoDTO.fromJson(Map<String, dynamic> json) => _$CatalogoDTOFromJson(json);

@override@JsonKey(name: 'CATALOGO_ID') final  int catalogoId;
@override@JsonKey(name: 'NOMBRE') final  String nombre;
@override@JsonKey(name: 'IDIOMA_ID') final  String idiomaId;
@override@JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID') final  String tipoPrecioCatalogoId;
@override@JsonKey(name: 'TIPO_PRECIO_CATALOGO_NOMBRE') final  String tipoPrecioCatalogoNombre;
@override@JsonKey(name: 'TIPO_CATALOGO_ID') final  String tipoCatalogoId;
@override@JsonKey(name: 'TAG_BUSQUEDA') final  String tagBusqueda;
@override@JsonKey(name: 'ORDEN') final  int orden;
@override@JsonKey(name: 'NOMBRE_FICHERO_PORTADA') final  String nombreFicheroPortada;
@override@JsonKey(name: 'NOMBRE_FICHERO_CATALOGO') final  String nombreFicheroCatalogo;
@override@JsonKey(name: 'DESCARGA_SN') final  String descarga;

/// Create a copy of CatalogoDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogoDTOCopyWith<_CatalogoDTO> get copyWith => __$CatalogoDTOCopyWithImpl<_CatalogoDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogoDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogoDTO&&(identical(other.catalogoId, catalogoId) || other.catalogoId == catalogoId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.idiomaId, idiomaId) || other.idiomaId == idiomaId)&&(identical(other.tipoPrecioCatalogoId, tipoPrecioCatalogoId) || other.tipoPrecioCatalogoId == tipoPrecioCatalogoId)&&(identical(other.tipoPrecioCatalogoNombre, tipoPrecioCatalogoNombre) || other.tipoPrecioCatalogoNombre == tipoPrecioCatalogoNombre)&&(identical(other.tipoCatalogoId, tipoCatalogoId) || other.tipoCatalogoId == tipoCatalogoId)&&(identical(other.tagBusqueda, tagBusqueda) || other.tagBusqueda == tagBusqueda)&&(identical(other.orden, orden) || other.orden == orden)&&(identical(other.nombreFicheroPortada, nombreFicheroPortada) || other.nombreFicheroPortada == nombreFicheroPortada)&&(identical(other.nombreFicheroCatalogo, nombreFicheroCatalogo) || other.nombreFicheroCatalogo == nombreFicheroCatalogo)&&(identical(other.descarga, descarga) || other.descarga == descarga));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,catalogoId,nombre,idiomaId,tipoPrecioCatalogoId,tipoPrecioCatalogoNombre,tipoCatalogoId,tagBusqueda,orden,nombreFicheroPortada,nombreFicheroCatalogo,descarga);

@override
String toString() {
  return 'CatalogoDTO(catalogoId: $catalogoId, nombre: $nombre, idiomaId: $idiomaId, tipoPrecioCatalogoId: $tipoPrecioCatalogoId, tipoPrecioCatalogoNombre: $tipoPrecioCatalogoNombre, tipoCatalogoId: $tipoCatalogoId, tagBusqueda: $tagBusqueda, orden: $orden, nombreFicheroPortada: $nombreFicheroPortada, nombreFicheroCatalogo: $nombreFicheroCatalogo, descarga: $descarga)';
}


}

/// @nodoc
abstract mixin class _$CatalogoDTOCopyWith<$Res> implements $CatalogoDTOCopyWith<$Res> {
  factory _$CatalogoDTOCopyWith(_CatalogoDTO value, $Res Function(_CatalogoDTO) _then) = __$CatalogoDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CATALOGO_ID') int catalogoId,@JsonKey(name: 'NOMBRE') String nombre,@JsonKey(name: 'IDIOMA_ID') String idiomaId,@JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID') String tipoPrecioCatalogoId,@JsonKey(name: 'TIPO_PRECIO_CATALOGO_NOMBRE') String tipoPrecioCatalogoNombre,@JsonKey(name: 'TIPO_CATALOGO_ID') String tipoCatalogoId,@JsonKey(name: 'TAG_BUSQUEDA') String tagBusqueda,@JsonKey(name: 'ORDEN') int orden,@JsonKey(name: 'NOMBRE_FICHERO_PORTADA') String nombreFicheroPortada,@JsonKey(name: 'NOMBRE_FICHERO_CATALOGO') String nombreFicheroCatalogo,@JsonKey(name: 'DESCARGA_SN') String descarga
});




}
/// @nodoc
class __$CatalogoDTOCopyWithImpl<$Res>
    implements _$CatalogoDTOCopyWith<$Res> {
  __$CatalogoDTOCopyWithImpl(this._self, this._then);

  final _CatalogoDTO _self;
  final $Res Function(_CatalogoDTO) _then;

/// Create a copy of CatalogoDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catalogoId = null,Object? nombre = null,Object? idiomaId = null,Object? tipoPrecioCatalogoId = null,Object? tipoPrecioCatalogoNombre = null,Object? tipoCatalogoId = null,Object? tagBusqueda = null,Object? orden = null,Object? nombreFicheroPortada = null,Object? nombreFicheroCatalogo = null,Object? descarga = null,}) {
  return _then(_CatalogoDTO(
catalogoId: null == catalogoId ? _self.catalogoId : catalogoId // ignore: cast_nullable_to_non_nullable
as int,nombre: null == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String,idiomaId: null == idiomaId ? _self.idiomaId : idiomaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecioCatalogoId: null == tipoPrecioCatalogoId ? _self.tipoPrecioCatalogoId : tipoPrecioCatalogoId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecioCatalogoNombre: null == tipoPrecioCatalogoNombre ? _self.tipoPrecioCatalogoNombre : tipoPrecioCatalogoNombre // ignore: cast_nullable_to_non_nullable
as String,tipoCatalogoId: null == tipoCatalogoId ? _self.tipoCatalogoId : tipoCatalogoId // ignore: cast_nullable_to_non_nullable
as String,tagBusqueda: null == tagBusqueda ? _self.tagBusqueda : tagBusqueda // ignore: cast_nullable_to_non_nullable
as String,orden: null == orden ? _self.orden : orden // ignore: cast_nullable_to_non_nullable
as int,nombreFicheroPortada: null == nombreFicheroPortada ? _self.nombreFicheroPortada : nombreFicheroPortada // ignore: cast_nullable_to_non_nullable
as String,nombreFicheroCatalogo: null == nombreFicheroCatalogo ? _self.nombreFicheroCatalogo : nombreFicheroCatalogo // ignore: cast_nullable_to_non_nullable
as String,descarga: null == descarga ? _self.descarga : descarga // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
