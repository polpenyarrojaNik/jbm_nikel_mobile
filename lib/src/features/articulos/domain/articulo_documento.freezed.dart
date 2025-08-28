// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_documento.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArticuloDocumento {

 String get articuloId; String? get nombreArchivo; String get idiomaId; String? get observaciones;
/// Create a copy of ArticuloDocumento
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloDocumentoCopyWith<ArticuloDocumento> get copyWith => _$ArticuloDocumentoCopyWithImpl<ArticuloDocumento>(this as ArticuloDocumento, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloDocumento&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.nombreArchivo, nombreArchivo) || other.nombreArchivo == nombreArchivo)&&(identical(other.idiomaId, idiomaId) || other.idiomaId == idiomaId)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones));
}


@override
int get hashCode => Object.hash(runtimeType,articuloId,nombreArchivo,idiomaId,observaciones);

@override
String toString() {
  return 'ArticuloDocumento(articuloId: $articuloId, nombreArchivo: $nombreArchivo, idiomaId: $idiomaId, observaciones: $observaciones)';
}


}

/// @nodoc
abstract mixin class $ArticuloDocumentoCopyWith<$Res>  {
  factory $ArticuloDocumentoCopyWith(ArticuloDocumento value, $Res Function(ArticuloDocumento) _then) = _$ArticuloDocumentoCopyWithImpl;
@useResult
$Res call({
 String articuloId, String? nombreArchivo, String idiomaId, String? observaciones
});




}
/// @nodoc
class _$ArticuloDocumentoCopyWithImpl<$Res>
    implements $ArticuloDocumentoCopyWith<$Res> {
  _$ArticuloDocumentoCopyWithImpl(this._self, this._then);

  final ArticuloDocumento _self;
  final $Res Function(ArticuloDocumento) _then;

/// Create a copy of ArticuloDocumento
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? nombreArchivo = freezed,Object? idiomaId = null,Object? observaciones = freezed,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,nombreArchivo: freezed == nombreArchivo ? _self.nombreArchivo : nombreArchivo // ignore: cast_nullable_to_non_nullable
as String?,idiomaId: null == idiomaId ? _self.idiomaId : idiomaId // ignore: cast_nullable_to_non_nullable
as String,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloDocumento].
extension ArticuloDocumentoPatterns on ArticuloDocumento {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloDocumento value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloDocumento() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloDocumento value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloDocumento():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloDocumento value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloDocumento() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String articuloId,  String? nombreArchivo,  String idiomaId,  String? observaciones)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloDocumento() when $default != null:
return $default(_that.articuloId,_that.nombreArchivo,_that.idiomaId,_that.observaciones);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String articuloId,  String? nombreArchivo,  String idiomaId,  String? observaciones)  $default,) {final _that = this;
switch (_that) {
case _ArticuloDocumento():
return $default(_that.articuloId,_that.nombreArchivo,_that.idiomaId,_that.observaciones);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String articuloId,  String? nombreArchivo,  String idiomaId,  String? observaciones)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloDocumento() when $default != null:
return $default(_that.articuloId,_that.nombreArchivo,_that.idiomaId,_that.observaciones);case _:
  return null;

}
}

}

/// @nodoc


class _ArticuloDocumento extends ArticuloDocumento {
  const _ArticuloDocumento({required this.articuloId, this.nombreArchivo, required this.idiomaId, this.observaciones}): super._();
  

@override final  String articuloId;
@override final  String? nombreArchivo;
@override final  String idiomaId;
@override final  String? observaciones;

/// Create a copy of ArticuloDocumento
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloDocumentoCopyWith<_ArticuloDocumento> get copyWith => __$ArticuloDocumentoCopyWithImpl<_ArticuloDocumento>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloDocumento&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.nombreArchivo, nombreArchivo) || other.nombreArchivo == nombreArchivo)&&(identical(other.idiomaId, idiomaId) || other.idiomaId == idiomaId)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones));
}


@override
int get hashCode => Object.hash(runtimeType,articuloId,nombreArchivo,idiomaId,observaciones);

@override
String toString() {
  return 'ArticuloDocumento(articuloId: $articuloId, nombreArchivo: $nombreArchivo, idiomaId: $idiomaId, observaciones: $observaciones)';
}


}

/// @nodoc
abstract mixin class _$ArticuloDocumentoCopyWith<$Res> implements $ArticuloDocumentoCopyWith<$Res> {
  factory _$ArticuloDocumentoCopyWith(_ArticuloDocumento value, $Res Function(_ArticuloDocumento) _then) = __$ArticuloDocumentoCopyWithImpl;
@override @useResult
$Res call({
 String articuloId, String? nombreArchivo, String idiomaId, String? observaciones
});




}
/// @nodoc
class __$ArticuloDocumentoCopyWithImpl<$Res>
    implements _$ArticuloDocumentoCopyWith<$Res> {
  __$ArticuloDocumentoCopyWithImpl(this._self, this._then);

  final _ArticuloDocumento _self;
  final $Res Function(_ArticuloDocumento) _then;

/// Create a copy of ArticuloDocumento
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? nombreArchivo = freezed,Object? idiomaId = null,Object? observaciones = freezed,}) {
  return _then(_ArticuloDocumento(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,nombreArchivo: freezed == nombreArchivo ? _self.nombreArchivo : nombreArchivo // ignore: cast_nullable_to_non_nullable
as String?,idiomaId: null == idiomaId ? _self.idiomaId : idiomaId // ignore: cast_nullable_to_non_nullable
as String,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
