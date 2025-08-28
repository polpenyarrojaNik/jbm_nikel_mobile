// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_imagen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArticuloImagen {

 String get articuloId; String get nombreArchivo; String get url;
/// Create a copy of ArticuloImagen
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloImagenCopyWith<ArticuloImagen> get copyWith => _$ArticuloImagenCopyWithImpl<ArticuloImagen>(this as ArticuloImagen, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloImagen&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.nombreArchivo, nombreArchivo) || other.nombreArchivo == nombreArchivo)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,articuloId,nombreArchivo,url);

@override
String toString() {
  return 'ArticuloImagen(articuloId: $articuloId, nombreArchivo: $nombreArchivo, url: $url)';
}


}

/// @nodoc
abstract mixin class $ArticuloImagenCopyWith<$Res>  {
  factory $ArticuloImagenCopyWith(ArticuloImagen value, $Res Function(ArticuloImagen) _then) = _$ArticuloImagenCopyWithImpl;
@useResult
$Res call({
 String articuloId, String nombreArchivo, String url
});




}
/// @nodoc
class _$ArticuloImagenCopyWithImpl<$Res>
    implements $ArticuloImagenCopyWith<$Res> {
  _$ArticuloImagenCopyWithImpl(this._self, this._then);

  final ArticuloImagen _self;
  final $Res Function(ArticuloImagen) _then;

/// Create a copy of ArticuloImagen
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? nombreArchivo = null,Object? url = null,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,nombreArchivo: null == nombreArchivo ? _self.nombreArchivo : nombreArchivo // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloImagen].
extension ArticuloImagenPatterns on ArticuloImagen {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloImagen value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloImagen() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloImagen value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloImagen():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloImagen value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloImagen() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String articuloId,  String nombreArchivo,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloImagen() when $default != null:
return $default(_that.articuloId,_that.nombreArchivo,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String articuloId,  String nombreArchivo,  String url)  $default,) {final _that = this;
switch (_that) {
case _ArticuloImagen():
return $default(_that.articuloId,_that.nombreArchivo,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String articuloId,  String nombreArchivo,  String url)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloImagen() when $default != null:
return $default(_that.articuloId,_that.nombreArchivo,_that.url);case _:
  return null;

}
}

}

/// @nodoc


class _ArticuloImagen extends ArticuloImagen {
  const _ArticuloImagen({required this.articuloId, required this.nombreArchivo, required this.url}): super._();
  

@override final  String articuloId;
@override final  String nombreArchivo;
@override final  String url;

/// Create a copy of ArticuloImagen
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloImagenCopyWith<_ArticuloImagen> get copyWith => __$ArticuloImagenCopyWithImpl<_ArticuloImagen>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloImagen&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.nombreArchivo, nombreArchivo) || other.nombreArchivo == nombreArchivo)&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode => Object.hash(runtimeType,articuloId,nombreArchivo,url);

@override
String toString() {
  return 'ArticuloImagen(articuloId: $articuloId, nombreArchivo: $nombreArchivo, url: $url)';
}


}

/// @nodoc
abstract mixin class _$ArticuloImagenCopyWith<$Res> implements $ArticuloImagenCopyWith<$Res> {
  factory _$ArticuloImagenCopyWith(_ArticuloImagen value, $Res Function(_ArticuloImagen) _then) = __$ArticuloImagenCopyWithImpl;
@override @useResult
$Res call({
 String articuloId, String nombreArchivo, String url
});




}
/// @nodoc
class __$ArticuloImagenCopyWithImpl<$Res>
    implements _$ArticuloImagenCopyWith<$Res> {
  __$ArticuloImagenCopyWithImpl(this._self, this._then);

  final _ArticuloImagen _self;
  final $Res Function(_ArticuloImagen) _then;

/// Create a copy of ArticuloImagen
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? nombreArchivo = null,Object? url = null,}) {
  return _then(_ArticuloImagen(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,nombreArchivo: null == nombreArchivo ? _self.nombreArchivo : nombreArchivo // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
