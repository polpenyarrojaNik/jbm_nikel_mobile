// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_empresa_iva.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArticuloEmpresaIva {

 String get articuloId; String get empresaId; double get iva; DateTime get lastUpdated; bool get deleted;
/// Create a copy of ArticuloEmpresaIva
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloEmpresaIvaCopyWith<ArticuloEmpresaIva> get copyWith => _$ArticuloEmpresaIvaCopyWithImpl<ArticuloEmpresaIva>(this as ArticuloEmpresaIva, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloEmpresaIva&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.iva, iva) || other.iva == iva)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,articuloId,empresaId,iva,lastUpdated,deleted);

@override
String toString() {
  return 'ArticuloEmpresaIva(articuloId: $articuloId, empresaId: $empresaId, iva: $iva, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ArticuloEmpresaIvaCopyWith<$Res>  {
  factory $ArticuloEmpresaIvaCopyWith(ArticuloEmpresaIva value, $Res Function(ArticuloEmpresaIva) _then) = _$ArticuloEmpresaIvaCopyWithImpl;
@useResult
$Res call({
 String articuloId, String empresaId, double iva, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class _$ArticuloEmpresaIvaCopyWithImpl<$Res>
    implements $ArticuloEmpresaIvaCopyWith<$Res> {
  _$ArticuloEmpresaIvaCopyWithImpl(this._self, this._then);

  final ArticuloEmpresaIva _self;
  final $Res Function(ArticuloEmpresaIva) _then;

/// Create a copy of ArticuloEmpresaIva
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? empresaId = null,Object? iva = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloEmpresaIva].
extension ArticuloEmpresaIvaPatterns on ArticuloEmpresaIva {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloEmpresaIva value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloEmpresaIva() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloEmpresaIva value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloEmpresaIva():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloEmpresaIva value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloEmpresaIva() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String articuloId,  String empresaId,  double iva,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloEmpresaIva() when $default != null:
return $default(_that.articuloId,_that.empresaId,_that.iva,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String articuloId,  String empresaId,  double iva,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _ArticuloEmpresaIva():
return $default(_that.articuloId,_that.empresaId,_that.iva,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String articuloId,  String empresaId,  double iva,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloEmpresaIva() when $default != null:
return $default(_that.articuloId,_that.empresaId,_that.iva,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _ArticuloEmpresaIva extends ArticuloEmpresaIva {
  const _ArticuloEmpresaIva({required this.articuloId, required this.empresaId, required this.iva, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String articuloId;
@override final  String empresaId;
@override final  double iva;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of ArticuloEmpresaIva
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloEmpresaIvaCopyWith<_ArticuloEmpresaIva> get copyWith => __$ArticuloEmpresaIvaCopyWithImpl<_ArticuloEmpresaIva>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloEmpresaIva&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.iva, iva) || other.iva == iva)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,articuloId,empresaId,iva,lastUpdated,deleted);

@override
String toString() {
  return 'ArticuloEmpresaIva(articuloId: $articuloId, empresaId: $empresaId, iva: $iva, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ArticuloEmpresaIvaCopyWith<$Res> implements $ArticuloEmpresaIvaCopyWith<$Res> {
  factory _$ArticuloEmpresaIvaCopyWith(_ArticuloEmpresaIva value, $Res Function(_ArticuloEmpresaIva) _then) = __$ArticuloEmpresaIvaCopyWithImpl;
@override @useResult
$Res call({
 String articuloId, String empresaId, double iva, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class __$ArticuloEmpresaIvaCopyWithImpl<$Res>
    implements _$ArticuloEmpresaIvaCopyWith<$Res> {
  __$ArticuloEmpresaIvaCopyWithImpl(this._self, this._then);

  final _ArticuloEmpresaIva _self;
  final $Res Function(_ArticuloEmpresaIva) _then;

/// Create a copy of ArticuloEmpresaIva
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? empresaId = null,Object? iva = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ArticuloEmpresaIva(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
