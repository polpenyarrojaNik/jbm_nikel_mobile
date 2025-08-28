// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'divisa.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Divisa {

 String get id; String get abv; String? get simbolo; double? get redondeo; String get descripcion; DateTime get lastUpdate; bool get deleted;
/// Create a copy of Divisa
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DivisaCopyWith<Divisa> get copyWith => _$DivisaCopyWithImpl<Divisa>(this as Divisa, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Divisa&&(identical(other.id, id) || other.id == id)&&(identical(other.abv, abv) || other.abv == abv)&&(identical(other.simbolo, simbolo) || other.simbolo == simbolo)&&(identical(other.redondeo, redondeo) || other.redondeo == redondeo)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,abv,simbolo,redondeo,descripcion,lastUpdate,deleted);

@override
String toString() {
  return 'Divisa(id: $id, abv: $abv, simbolo: $simbolo, redondeo: $redondeo, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $DivisaCopyWith<$Res>  {
  factory $DivisaCopyWith(Divisa value, $Res Function(Divisa) _then) = _$DivisaCopyWithImpl;
@useResult
$Res call({
 String id, String abv, String? simbolo, double? redondeo, String descripcion, DateTime lastUpdate, bool deleted
});




}
/// @nodoc
class _$DivisaCopyWithImpl<$Res>
    implements $DivisaCopyWith<$Res> {
  _$DivisaCopyWithImpl(this._self, this._then);

  final Divisa _self;
  final $Res Function(Divisa) _then;

/// Create a copy of Divisa
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? abv = null,Object? simbolo = freezed,Object? redondeo = freezed,Object? descripcion = null,Object? lastUpdate = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,abv: null == abv ? _self.abv : abv // ignore: cast_nullable_to_non_nullable
as String,simbolo: freezed == simbolo ? _self.simbolo : simbolo // ignore: cast_nullable_to_non_nullable
as String?,redondeo: freezed == redondeo ? _self.redondeo : redondeo // ignore: cast_nullable_to_non_nullable
as double?,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Divisa].
extension DivisaPatterns on Divisa {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Divisa value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Divisa() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Divisa value)  $default,){
final _that = this;
switch (_that) {
case _Divisa():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Divisa value)?  $default,){
final _that = this;
switch (_that) {
case _Divisa() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String abv,  String? simbolo,  double? redondeo,  String descripcion,  DateTime lastUpdate,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Divisa() when $default != null:
return $default(_that.id,_that.abv,_that.simbolo,_that.redondeo,_that.descripcion,_that.lastUpdate,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String abv,  String? simbolo,  double? redondeo,  String descripcion,  DateTime lastUpdate,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _Divisa():
return $default(_that.id,_that.abv,_that.simbolo,_that.redondeo,_that.descripcion,_that.lastUpdate,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String abv,  String? simbolo,  double? redondeo,  String descripcion,  DateTime lastUpdate,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _Divisa() when $default != null:
return $default(_that.id,_that.abv,_that.simbolo,_that.redondeo,_that.descripcion,_that.lastUpdate,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _Divisa extends Divisa {
  const _Divisa({required this.id, required this.abv, required this.simbolo, required this.redondeo, required this.descripcion, required this.lastUpdate, required this.deleted}): super._();
  

@override final  String id;
@override final  String abv;
@override final  String? simbolo;
@override final  double? redondeo;
@override final  String descripcion;
@override final  DateTime lastUpdate;
@override final  bool deleted;

/// Create a copy of Divisa
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DivisaCopyWith<_Divisa> get copyWith => __$DivisaCopyWithImpl<_Divisa>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Divisa&&(identical(other.id, id) || other.id == id)&&(identical(other.abv, abv) || other.abv == abv)&&(identical(other.simbolo, simbolo) || other.simbolo == simbolo)&&(identical(other.redondeo, redondeo) || other.redondeo == redondeo)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,abv,simbolo,redondeo,descripcion,lastUpdate,deleted);

@override
String toString() {
  return 'Divisa(id: $id, abv: $abv, simbolo: $simbolo, redondeo: $redondeo, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$DivisaCopyWith<$Res> implements $DivisaCopyWith<$Res> {
  factory _$DivisaCopyWith(_Divisa value, $Res Function(_Divisa) _then) = __$DivisaCopyWithImpl;
@override @useResult
$Res call({
 String id, String abv, String? simbolo, double? redondeo, String descripcion, DateTime lastUpdate, bool deleted
});




}
/// @nodoc
class __$DivisaCopyWithImpl<$Res>
    implements _$DivisaCopyWith<$Res> {
  __$DivisaCopyWithImpl(this._self, this._then);

  final _Divisa _self;
  final $Res Function(_Divisa) _then;

/// Create a copy of Divisa
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? abv = null,Object? simbolo = freezed,Object? redondeo = freezed,Object? descripcion = null,Object? lastUpdate = null,Object? deleted = null,}) {
  return _then(_Divisa(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,abv: null == abv ? _self.abv : abv // ignore: cast_nullable_to_non_nullable
as String,simbolo: freezed == simbolo ? _self.simbolo : simbolo // ignore: cast_nullable_to_non_nullable
as String?,redondeo: freezed == redondeo ? _self.redondeo : redondeo // ignore: cast_nullable_to_non_nullable
as double?,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
