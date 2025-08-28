// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_sustitutivo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArticuloSustitutivo {

 String get articuloId; String get articuloSustitutivoId; String get articuloSustitutivoDescription; int get orden; int get stockDisponible; DateTime get lastUpdated; bool get deleted;
/// Create a copy of ArticuloSustitutivo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloSustitutivoCopyWith<ArticuloSustitutivo> get copyWith => _$ArticuloSustitutivoCopyWithImpl<ArticuloSustitutivo>(this as ArticuloSustitutivo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloSustitutivo&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.articuloSustitutivoId, articuloSustitutivoId) || other.articuloSustitutivoId == articuloSustitutivoId)&&(identical(other.articuloSustitutivoDescription, articuloSustitutivoDescription) || other.articuloSustitutivoDescription == articuloSustitutivoDescription)&&(identical(other.orden, orden) || other.orden == orden)&&(identical(other.stockDisponible, stockDisponible) || other.stockDisponible == stockDisponible)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,articuloId,articuloSustitutivoId,articuloSustitutivoDescription,orden,stockDisponible,lastUpdated,deleted);

@override
String toString() {
  return 'ArticuloSustitutivo(articuloId: $articuloId, articuloSustitutivoId: $articuloSustitutivoId, articuloSustitutivoDescription: $articuloSustitutivoDescription, orden: $orden, stockDisponible: $stockDisponible, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ArticuloSustitutivoCopyWith<$Res>  {
  factory $ArticuloSustitutivoCopyWith(ArticuloSustitutivo value, $Res Function(ArticuloSustitutivo) _then) = _$ArticuloSustitutivoCopyWithImpl;
@useResult
$Res call({
 String articuloId, String articuloSustitutivoId, String articuloSustitutivoDescription, int orden, int stockDisponible, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class _$ArticuloSustitutivoCopyWithImpl<$Res>
    implements $ArticuloSustitutivoCopyWith<$Res> {
  _$ArticuloSustitutivoCopyWithImpl(this._self, this._then);

  final ArticuloSustitutivo _self;
  final $Res Function(ArticuloSustitutivo) _then;

/// Create a copy of ArticuloSustitutivo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? articuloSustitutivoId = null,Object? articuloSustitutivoDescription = null,Object? orden = null,Object? stockDisponible = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,articuloSustitutivoId: null == articuloSustitutivoId ? _self.articuloSustitutivoId : articuloSustitutivoId // ignore: cast_nullable_to_non_nullable
as String,articuloSustitutivoDescription: null == articuloSustitutivoDescription ? _self.articuloSustitutivoDescription : articuloSustitutivoDescription // ignore: cast_nullable_to_non_nullable
as String,orden: null == orden ? _self.orden : orden // ignore: cast_nullable_to_non_nullable
as int,stockDisponible: null == stockDisponible ? _self.stockDisponible : stockDisponible // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloSustitutivo].
extension ArticuloSustitutivoPatterns on ArticuloSustitutivo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloSustitutivo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloSustitutivo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloSustitutivo value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloSustitutivo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloSustitutivo value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloSustitutivo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String articuloId,  String articuloSustitutivoId,  String articuloSustitutivoDescription,  int orden,  int stockDisponible,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloSustitutivo() when $default != null:
return $default(_that.articuloId,_that.articuloSustitutivoId,_that.articuloSustitutivoDescription,_that.orden,_that.stockDisponible,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String articuloId,  String articuloSustitutivoId,  String articuloSustitutivoDescription,  int orden,  int stockDisponible,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _ArticuloSustitutivo():
return $default(_that.articuloId,_that.articuloSustitutivoId,_that.articuloSustitutivoDescription,_that.orden,_that.stockDisponible,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String articuloId,  String articuloSustitutivoId,  String articuloSustitutivoDescription,  int orden,  int stockDisponible,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloSustitutivo() when $default != null:
return $default(_that.articuloId,_that.articuloSustitutivoId,_that.articuloSustitutivoDescription,_that.orden,_that.stockDisponible,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _ArticuloSustitutivo extends ArticuloSustitutivo {
  const _ArticuloSustitutivo({required this.articuloId, required this.articuloSustitutivoId, required this.articuloSustitutivoDescription, required this.orden, required this.stockDisponible, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String articuloId;
@override final  String articuloSustitutivoId;
@override final  String articuloSustitutivoDescription;
@override final  int orden;
@override final  int stockDisponible;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of ArticuloSustitutivo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloSustitutivoCopyWith<_ArticuloSustitutivo> get copyWith => __$ArticuloSustitutivoCopyWithImpl<_ArticuloSustitutivo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloSustitutivo&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.articuloSustitutivoId, articuloSustitutivoId) || other.articuloSustitutivoId == articuloSustitutivoId)&&(identical(other.articuloSustitutivoDescription, articuloSustitutivoDescription) || other.articuloSustitutivoDescription == articuloSustitutivoDescription)&&(identical(other.orden, orden) || other.orden == orden)&&(identical(other.stockDisponible, stockDisponible) || other.stockDisponible == stockDisponible)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,articuloId,articuloSustitutivoId,articuloSustitutivoDescription,orden,stockDisponible,lastUpdated,deleted);

@override
String toString() {
  return 'ArticuloSustitutivo(articuloId: $articuloId, articuloSustitutivoId: $articuloSustitutivoId, articuloSustitutivoDescription: $articuloSustitutivoDescription, orden: $orden, stockDisponible: $stockDisponible, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ArticuloSustitutivoCopyWith<$Res> implements $ArticuloSustitutivoCopyWith<$Res> {
  factory _$ArticuloSustitutivoCopyWith(_ArticuloSustitutivo value, $Res Function(_ArticuloSustitutivo) _then) = __$ArticuloSustitutivoCopyWithImpl;
@override @useResult
$Res call({
 String articuloId, String articuloSustitutivoId, String articuloSustitutivoDescription, int orden, int stockDisponible, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class __$ArticuloSustitutivoCopyWithImpl<$Res>
    implements _$ArticuloSustitutivoCopyWith<$Res> {
  __$ArticuloSustitutivoCopyWithImpl(this._self, this._then);

  final _ArticuloSustitutivo _self;
  final $Res Function(_ArticuloSustitutivo) _then;

/// Create a copy of ArticuloSustitutivo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? articuloSustitutivoId = null,Object? articuloSustitutivoDescription = null,Object? orden = null,Object? stockDisponible = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ArticuloSustitutivo(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,articuloSustitutivoId: null == articuloSustitutivoId ? _self.articuloSustitutivoId : articuloSustitutivoId // ignore: cast_nullable_to_non_nullable
as String,articuloSustitutivoDescription: null == articuloSustitutivoDescription ? _self.articuloSustitutivoDescription : articuloSustitutivoDescription // ignore: cast_nullable_to_non_nullable
as String,orden: null == orden ? _self.orden : orden // ignore: cast_nullable_to_non_nullable
as int,stockDisponible: null == stockDisponible ? _self.stockDisponible : stockDisponible // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
