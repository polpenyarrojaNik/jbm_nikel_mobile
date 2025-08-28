// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'idioma_catalogo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IdiomaCatalogo {

 String get idiomaId; String get descripcion;
/// Create a copy of IdiomaCatalogo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IdiomaCatalogoCopyWith<IdiomaCatalogo> get copyWith => _$IdiomaCatalogoCopyWithImpl<IdiomaCatalogo>(this as IdiomaCatalogo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IdiomaCatalogo&&(identical(other.idiomaId, idiomaId) || other.idiomaId == idiomaId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion));
}


@override
int get hashCode => Object.hash(runtimeType,idiomaId,descripcion);

@override
String toString() {
  return 'IdiomaCatalogo(idiomaId: $idiomaId, descripcion: $descripcion)';
}


}

/// @nodoc
abstract mixin class $IdiomaCatalogoCopyWith<$Res>  {
  factory $IdiomaCatalogoCopyWith(IdiomaCatalogo value, $Res Function(IdiomaCatalogo) _then) = _$IdiomaCatalogoCopyWithImpl;
@useResult
$Res call({
 String idiomaId, String descripcion
});




}
/// @nodoc
class _$IdiomaCatalogoCopyWithImpl<$Res>
    implements $IdiomaCatalogoCopyWith<$Res> {
  _$IdiomaCatalogoCopyWithImpl(this._self, this._then);

  final IdiomaCatalogo _self;
  final $Res Function(IdiomaCatalogo) _then;

/// Create a copy of IdiomaCatalogo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idiomaId = null,Object? descripcion = null,}) {
  return _then(_self.copyWith(
idiomaId: null == idiomaId ? _self.idiomaId : idiomaId // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [IdiomaCatalogo].
extension IdiomaCatalogoPatterns on IdiomaCatalogo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IdiomaCatalogo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IdiomaCatalogo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IdiomaCatalogo value)  $default,){
final _that = this;
switch (_that) {
case _IdiomaCatalogo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IdiomaCatalogo value)?  $default,){
final _that = this;
switch (_that) {
case _IdiomaCatalogo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String idiomaId,  String descripcion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IdiomaCatalogo() when $default != null:
return $default(_that.idiomaId,_that.descripcion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String idiomaId,  String descripcion)  $default,) {final _that = this;
switch (_that) {
case _IdiomaCatalogo():
return $default(_that.idiomaId,_that.descripcion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String idiomaId,  String descripcion)?  $default,) {final _that = this;
switch (_that) {
case _IdiomaCatalogo() when $default != null:
return $default(_that.idiomaId,_that.descripcion);case _:
  return null;

}
}

}

/// @nodoc


class _IdiomaCatalogo extends IdiomaCatalogo {
  const _IdiomaCatalogo({required this.idiomaId, required this.descripcion}): super._();
  

@override final  String idiomaId;
@override final  String descripcion;

/// Create a copy of IdiomaCatalogo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IdiomaCatalogoCopyWith<_IdiomaCatalogo> get copyWith => __$IdiomaCatalogoCopyWithImpl<_IdiomaCatalogo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IdiomaCatalogo&&(identical(other.idiomaId, idiomaId) || other.idiomaId == idiomaId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion));
}


@override
int get hashCode => Object.hash(runtimeType,idiomaId,descripcion);

@override
String toString() {
  return 'IdiomaCatalogo(idiomaId: $idiomaId, descripcion: $descripcion)';
}


}

/// @nodoc
abstract mixin class _$IdiomaCatalogoCopyWith<$Res> implements $IdiomaCatalogoCopyWith<$Res> {
  factory _$IdiomaCatalogoCopyWith(_IdiomaCatalogo value, $Res Function(_IdiomaCatalogo) _then) = __$IdiomaCatalogoCopyWithImpl;
@override @useResult
$Res call({
 String idiomaId, String descripcion
});




}
/// @nodoc
class __$IdiomaCatalogoCopyWithImpl<$Res>
    implements _$IdiomaCatalogoCopyWith<$Res> {
  __$IdiomaCatalogoCopyWithImpl(this._self, this._then);

  final _IdiomaCatalogo _self;
  final $Res Function(_IdiomaCatalogo) _then;

/// Create a copy of IdiomaCatalogo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idiomaId = null,Object? descripcion = null,}) {
  return _then(_IdiomaCatalogo(
idiomaId: null == idiomaId ? _self.idiomaId : idiomaId // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
