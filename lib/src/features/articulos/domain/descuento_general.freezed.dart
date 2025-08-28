// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'descuento_general.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DescuentoGeneral {

 String get descuentoGeneralId; String get articuloId; String get familiaId; String get subfamiliaId; int get cantidadDesde; double get descuento; DateTime get lastUpdated; bool get deleted;
/// Create a copy of DescuentoGeneral
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DescuentoGeneralCopyWith<DescuentoGeneral> get copyWith => _$DescuentoGeneralCopyWithImpl<DescuentoGeneral>(this as DescuentoGeneral, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DescuentoGeneral&&(identical(other.descuentoGeneralId, descuentoGeneralId) || other.descuentoGeneralId == descuentoGeneralId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.familiaId, familiaId) || other.familiaId == familiaId)&&(identical(other.subfamiliaId, subfamiliaId) || other.subfamiliaId == subfamiliaId)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.descuento, descuento) || other.descuento == descuento)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,descuentoGeneralId,articuloId,familiaId,subfamiliaId,cantidadDesde,descuento,lastUpdated,deleted);

@override
String toString() {
  return 'DescuentoGeneral(descuentoGeneralId: $descuentoGeneralId, articuloId: $articuloId, familiaId: $familiaId, subfamiliaId: $subfamiliaId, cantidadDesde: $cantidadDesde, descuento: $descuento, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $DescuentoGeneralCopyWith<$Res>  {
  factory $DescuentoGeneralCopyWith(DescuentoGeneral value, $Res Function(DescuentoGeneral) _then) = _$DescuentoGeneralCopyWithImpl;
@useResult
$Res call({
 String descuentoGeneralId, String articuloId, String familiaId, String subfamiliaId, int cantidadDesde, double descuento, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class _$DescuentoGeneralCopyWithImpl<$Res>
    implements $DescuentoGeneralCopyWith<$Res> {
  _$DescuentoGeneralCopyWithImpl(this._self, this._then);

  final DescuentoGeneral _self;
  final $Res Function(DescuentoGeneral) _then;

/// Create a copy of DescuentoGeneral
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? descuentoGeneralId = null,Object? articuloId = null,Object? familiaId = null,Object? subfamiliaId = null,Object? cantidadDesde = null,Object? descuento = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
descuentoGeneralId: null == descuentoGeneralId ? _self.descuentoGeneralId : descuentoGeneralId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,familiaId: null == familiaId ? _self.familiaId : familiaId // ignore: cast_nullable_to_non_nullable
as String,subfamiliaId: null == subfamiliaId ? _self.subfamiliaId : subfamiliaId // ignore: cast_nullable_to_non_nullable
as String,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,descuento: null == descuento ? _self.descuento : descuento // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DescuentoGeneral].
extension DescuentoGeneralPatterns on DescuentoGeneral {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DescuentoGeneral value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DescuentoGeneral() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DescuentoGeneral value)  $default,){
final _that = this;
switch (_that) {
case _DescuentoGeneral():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DescuentoGeneral value)?  $default,){
final _that = this;
switch (_that) {
case _DescuentoGeneral() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String descuentoGeneralId,  String articuloId,  String familiaId,  String subfamiliaId,  int cantidadDesde,  double descuento,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DescuentoGeneral() when $default != null:
return $default(_that.descuentoGeneralId,_that.articuloId,_that.familiaId,_that.subfamiliaId,_that.cantidadDesde,_that.descuento,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String descuentoGeneralId,  String articuloId,  String familiaId,  String subfamiliaId,  int cantidadDesde,  double descuento,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _DescuentoGeneral():
return $default(_that.descuentoGeneralId,_that.articuloId,_that.familiaId,_that.subfamiliaId,_that.cantidadDesde,_that.descuento,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String descuentoGeneralId,  String articuloId,  String familiaId,  String subfamiliaId,  int cantidadDesde,  double descuento,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _DescuentoGeneral() when $default != null:
return $default(_that.descuentoGeneralId,_that.articuloId,_that.familiaId,_that.subfamiliaId,_that.cantidadDesde,_that.descuento,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _DescuentoGeneral extends DescuentoGeneral {
  const _DescuentoGeneral({required this.descuentoGeneralId, required this.articuloId, required this.familiaId, required this.subfamiliaId, required this.cantidadDesde, required this.descuento, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String descuentoGeneralId;
@override final  String articuloId;
@override final  String familiaId;
@override final  String subfamiliaId;
@override final  int cantidadDesde;
@override final  double descuento;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of DescuentoGeneral
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DescuentoGeneralCopyWith<_DescuentoGeneral> get copyWith => __$DescuentoGeneralCopyWithImpl<_DescuentoGeneral>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DescuentoGeneral&&(identical(other.descuentoGeneralId, descuentoGeneralId) || other.descuentoGeneralId == descuentoGeneralId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.familiaId, familiaId) || other.familiaId == familiaId)&&(identical(other.subfamiliaId, subfamiliaId) || other.subfamiliaId == subfamiliaId)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.descuento, descuento) || other.descuento == descuento)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,descuentoGeneralId,articuloId,familiaId,subfamiliaId,cantidadDesde,descuento,lastUpdated,deleted);

@override
String toString() {
  return 'DescuentoGeneral(descuentoGeneralId: $descuentoGeneralId, articuloId: $articuloId, familiaId: $familiaId, subfamiliaId: $subfamiliaId, cantidadDesde: $cantidadDesde, descuento: $descuento, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$DescuentoGeneralCopyWith<$Res> implements $DescuentoGeneralCopyWith<$Res> {
  factory _$DescuentoGeneralCopyWith(_DescuentoGeneral value, $Res Function(_DescuentoGeneral) _then) = __$DescuentoGeneralCopyWithImpl;
@override @useResult
$Res call({
 String descuentoGeneralId, String articuloId, String familiaId, String subfamiliaId, int cantidadDesde, double descuento, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class __$DescuentoGeneralCopyWithImpl<$Res>
    implements _$DescuentoGeneralCopyWith<$Res> {
  __$DescuentoGeneralCopyWithImpl(this._self, this._then);

  final _DescuentoGeneral _self;
  final $Res Function(_DescuentoGeneral) _then;

/// Create a copy of DescuentoGeneral
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? descuentoGeneralId = null,Object? articuloId = null,Object? familiaId = null,Object? subfamiliaId = null,Object? cantidadDesde = null,Object? descuento = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_DescuentoGeneral(
descuentoGeneralId: null == descuentoGeneralId ? _self.descuentoGeneralId : descuentoGeneralId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,familiaId: null == familiaId ? _self.familiaId : familiaId // ignore: cast_nullable_to_non_nullable
as String,subfamiliaId: null == subfamiliaId ? _self.subfamiliaId : subfamiliaId // ignore: cast_nullable_to_non_nullable
as String,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,descuento: null == descuento ? _self.descuento : descuento // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
