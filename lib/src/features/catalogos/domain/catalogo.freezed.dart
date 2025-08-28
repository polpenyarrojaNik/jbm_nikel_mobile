// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalogo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Catalogo {

 int get catalogoId; String get nombre; String get idiomaId; String get tipoPrecioCatalogoId; String get tipoPrecioCatalogoNombre; String get tipoCatalogoId; String get tagBusqueda; int get orden; String get nombreFicheroPortada; String get nombreFicheroCatalogo; bool get descarga;
/// Create a copy of Catalogo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogoCopyWith<Catalogo> get copyWith => _$CatalogoCopyWithImpl<Catalogo>(this as Catalogo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Catalogo&&(identical(other.catalogoId, catalogoId) || other.catalogoId == catalogoId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.idiomaId, idiomaId) || other.idiomaId == idiomaId)&&(identical(other.tipoPrecioCatalogoId, tipoPrecioCatalogoId) || other.tipoPrecioCatalogoId == tipoPrecioCatalogoId)&&(identical(other.tipoPrecioCatalogoNombre, tipoPrecioCatalogoNombre) || other.tipoPrecioCatalogoNombre == tipoPrecioCatalogoNombre)&&(identical(other.tipoCatalogoId, tipoCatalogoId) || other.tipoCatalogoId == tipoCatalogoId)&&(identical(other.tagBusqueda, tagBusqueda) || other.tagBusqueda == tagBusqueda)&&(identical(other.orden, orden) || other.orden == orden)&&(identical(other.nombreFicheroPortada, nombreFicheroPortada) || other.nombreFicheroPortada == nombreFicheroPortada)&&(identical(other.nombreFicheroCatalogo, nombreFicheroCatalogo) || other.nombreFicheroCatalogo == nombreFicheroCatalogo)&&(identical(other.descarga, descarga) || other.descarga == descarga));
}


@override
int get hashCode => Object.hash(runtimeType,catalogoId,nombre,idiomaId,tipoPrecioCatalogoId,tipoPrecioCatalogoNombre,tipoCatalogoId,tagBusqueda,orden,nombreFicheroPortada,nombreFicheroCatalogo,descarga);

@override
String toString() {
  return 'Catalogo(catalogoId: $catalogoId, nombre: $nombre, idiomaId: $idiomaId, tipoPrecioCatalogoId: $tipoPrecioCatalogoId, tipoPrecioCatalogoNombre: $tipoPrecioCatalogoNombre, tipoCatalogoId: $tipoCatalogoId, tagBusqueda: $tagBusqueda, orden: $orden, nombreFicheroPortada: $nombreFicheroPortada, nombreFicheroCatalogo: $nombreFicheroCatalogo, descarga: $descarga)';
}


}

/// @nodoc
abstract mixin class $CatalogoCopyWith<$Res>  {
  factory $CatalogoCopyWith(Catalogo value, $Res Function(Catalogo) _then) = _$CatalogoCopyWithImpl;
@useResult
$Res call({
 int catalogoId, String nombre, String idiomaId, String tipoPrecioCatalogoId, String tipoPrecioCatalogoNombre, String tipoCatalogoId, String tagBusqueda, int orden, String nombreFicheroPortada, String nombreFicheroCatalogo, bool descarga
});




}
/// @nodoc
class _$CatalogoCopyWithImpl<$Res>
    implements $CatalogoCopyWith<$Res> {
  _$CatalogoCopyWithImpl(this._self, this._then);

  final Catalogo _self;
  final $Res Function(Catalogo) _then;

/// Create a copy of Catalogo
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
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Catalogo].
extension CatalogoPatterns on Catalogo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Catalogo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Catalogo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Catalogo value)  $default,){
final _that = this;
switch (_that) {
case _Catalogo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Catalogo value)?  $default,){
final _that = this;
switch (_that) {
case _Catalogo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int catalogoId,  String nombre,  String idiomaId,  String tipoPrecioCatalogoId,  String tipoPrecioCatalogoNombre,  String tipoCatalogoId,  String tagBusqueda,  int orden,  String nombreFicheroPortada,  String nombreFicheroCatalogo,  bool descarga)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Catalogo() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int catalogoId,  String nombre,  String idiomaId,  String tipoPrecioCatalogoId,  String tipoPrecioCatalogoNombre,  String tipoCatalogoId,  String tagBusqueda,  int orden,  String nombreFicheroPortada,  String nombreFicheroCatalogo,  bool descarga)  $default,) {final _that = this;
switch (_that) {
case _Catalogo():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int catalogoId,  String nombre,  String idiomaId,  String tipoPrecioCatalogoId,  String tipoPrecioCatalogoNombre,  String tipoCatalogoId,  String tagBusqueda,  int orden,  String nombreFicheroPortada,  String nombreFicheroCatalogo,  bool descarga)?  $default,) {final _that = this;
switch (_that) {
case _Catalogo() when $default != null:
return $default(_that.catalogoId,_that.nombre,_that.idiomaId,_that.tipoPrecioCatalogoId,_that.tipoPrecioCatalogoNombre,_that.tipoCatalogoId,_that.tagBusqueda,_that.orden,_that.nombreFicheroPortada,_that.nombreFicheroCatalogo,_that.descarga);case _:
  return null;

}
}

}

/// @nodoc


class _Catalogo extends Catalogo {
  const _Catalogo({required this.catalogoId, required this.nombre, required this.idiomaId, required this.tipoPrecioCatalogoId, required this.tipoPrecioCatalogoNombre, required this.tipoCatalogoId, required this.tagBusqueda, required this.orden, required this.nombreFicheroPortada, required this.nombreFicheroCatalogo, required this.descarga}): super._();
  

@override final  int catalogoId;
@override final  String nombre;
@override final  String idiomaId;
@override final  String tipoPrecioCatalogoId;
@override final  String tipoPrecioCatalogoNombre;
@override final  String tipoCatalogoId;
@override final  String tagBusqueda;
@override final  int orden;
@override final  String nombreFicheroPortada;
@override final  String nombreFicheroCatalogo;
@override final  bool descarga;

/// Create a copy of Catalogo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogoCopyWith<_Catalogo> get copyWith => __$CatalogoCopyWithImpl<_Catalogo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Catalogo&&(identical(other.catalogoId, catalogoId) || other.catalogoId == catalogoId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.idiomaId, idiomaId) || other.idiomaId == idiomaId)&&(identical(other.tipoPrecioCatalogoId, tipoPrecioCatalogoId) || other.tipoPrecioCatalogoId == tipoPrecioCatalogoId)&&(identical(other.tipoPrecioCatalogoNombre, tipoPrecioCatalogoNombre) || other.tipoPrecioCatalogoNombre == tipoPrecioCatalogoNombre)&&(identical(other.tipoCatalogoId, tipoCatalogoId) || other.tipoCatalogoId == tipoCatalogoId)&&(identical(other.tagBusqueda, tagBusqueda) || other.tagBusqueda == tagBusqueda)&&(identical(other.orden, orden) || other.orden == orden)&&(identical(other.nombreFicheroPortada, nombreFicheroPortada) || other.nombreFicheroPortada == nombreFicheroPortada)&&(identical(other.nombreFicheroCatalogo, nombreFicheroCatalogo) || other.nombreFicheroCatalogo == nombreFicheroCatalogo)&&(identical(other.descarga, descarga) || other.descarga == descarga));
}


@override
int get hashCode => Object.hash(runtimeType,catalogoId,nombre,idiomaId,tipoPrecioCatalogoId,tipoPrecioCatalogoNombre,tipoCatalogoId,tagBusqueda,orden,nombreFicheroPortada,nombreFicheroCatalogo,descarga);

@override
String toString() {
  return 'Catalogo(catalogoId: $catalogoId, nombre: $nombre, idiomaId: $idiomaId, tipoPrecioCatalogoId: $tipoPrecioCatalogoId, tipoPrecioCatalogoNombre: $tipoPrecioCatalogoNombre, tipoCatalogoId: $tipoCatalogoId, tagBusqueda: $tagBusqueda, orden: $orden, nombreFicheroPortada: $nombreFicheroPortada, nombreFicheroCatalogo: $nombreFicheroCatalogo, descarga: $descarga)';
}


}

/// @nodoc
abstract mixin class _$CatalogoCopyWith<$Res> implements $CatalogoCopyWith<$Res> {
  factory _$CatalogoCopyWith(_Catalogo value, $Res Function(_Catalogo) _then) = __$CatalogoCopyWithImpl;
@override @useResult
$Res call({
 int catalogoId, String nombre, String idiomaId, String tipoPrecioCatalogoId, String tipoPrecioCatalogoNombre, String tipoCatalogoId, String tagBusqueda, int orden, String nombreFicheroPortada, String nombreFicheroCatalogo, bool descarga
});




}
/// @nodoc
class __$CatalogoCopyWithImpl<$Res>
    implements _$CatalogoCopyWith<$Res> {
  __$CatalogoCopyWithImpl(this._self, this._then);

  final _Catalogo _self;
  final $Res Function(_Catalogo) _then;

/// Create a copy of Catalogo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? catalogoId = null,Object? nombre = null,Object? idiomaId = null,Object? tipoPrecioCatalogoId = null,Object? tipoPrecioCatalogoNombre = null,Object? tipoCatalogoId = null,Object? tagBusqueda = null,Object? orden = null,Object? nombreFicheroPortada = null,Object? nombreFicheroCatalogo = null,Object? descarga = null,}) {
  return _then(_Catalogo(
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
as bool,
  ));
}


}

// dart format on
