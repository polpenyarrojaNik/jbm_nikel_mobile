// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pais.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Pais {

 String get id; String? get isoCode; String get descripcion; DateTime get lastUpdate; bool get deleted;
/// Create a copy of Pais
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaisCopyWith<Pais> get copyWith => _$PaisCopyWithImpl<Pais>(this as Pais, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pais&&(identical(other.id, id) || other.id == id)&&(identical(other.isoCode, isoCode) || other.isoCode == isoCode)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,isoCode,descripcion,lastUpdate,deleted);

@override
String toString() {
  return 'Pais(id: $id, isoCode: $isoCode, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $PaisCopyWith<$Res>  {
  factory $PaisCopyWith(Pais value, $Res Function(Pais) _then) = _$PaisCopyWithImpl;
@useResult
$Res call({
 String id, String? isoCode, String descripcion, DateTime lastUpdate, bool deleted
});




}
/// @nodoc
class _$PaisCopyWithImpl<$Res>
    implements $PaisCopyWith<$Res> {
  _$PaisCopyWithImpl(this._self, this._then);

  final Pais _self;
  final $Res Function(Pais) _then;

/// Create a copy of Pais
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? isoCode = freezed,Object? descripcion = null,Object? lastUpdate = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isoCode: freezed == isoCode ? _self.isoCode : isoCode // ignore: cast_nullable_to_non_nullable
as String?,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Pais].
extension PaisPatterns on Pais {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pais value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pais() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pais value)  $default,){
final _that = this;
switch (_that) {
case _Pais():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pais value)?  $default,){
final _that = this;
switch (_that) {
case _Pais() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? isoCode,  String descripcion,  DateTime lastUpdate,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pais() when $default != null:
return $default(_that.id,_that.isoCode,_that.descripcion,_that.lastUpdate,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? isoCode,  String descripcion,  DateTime lastUpdate,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _Pais():
return $default(_that.id,_that.isoCode,_that.descripcion,_that.lastUpdate,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? isoCode,  String descripcion,  DateTime lastUpdate,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _Pais() when $default != null:
return $default(_that.id,_that.isoCode,_that.descripcion,_that.lastUpdate,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _Pais extends Pais {
  const _Pais({required this.id, required this.isoCode, required this.descripcion, required this.lastUpdate, required this.deleted}): super._();
  

@override final  String id;
@override final  String? isoCode;
@override final  String descripcion;
@override final  DateTime lastUpdate;
@override final  bool deleted;

/// Create a copy of Pais
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaisCopyWith<_Pais> get copyWith => __$PaisCopyWithImpl<_Pais>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pais&&(identical(other.id, id) || other.id == id)&&(identical(other.isoCode, isoCode) || other.isoCode == isoCode)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.lastUpdate, lastUpdate) || other.lastUpdate == lastUpdate)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,isoCode,descripcion,lastUpdate,deleted);

@override
String toString() {
  return 'Pais(id: $id, isoCode: $isoCode, descripcion: $descripcion, lastUpdate: $lastUpdate, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$PaisCopyWith<$Res> implements $PaisCopyWith<$Res> {
  factory _$PaisCopyWith(_Pais value, $Res Function(_Pais) _then) = __$PaisCopyWithImpl;
@override @useResult
$Res call({
 String id, String? isoCode, String descripcion, DateTime lastUpdate, bool deleted
});




}
/// @nodoc
class __$PaisCopyWithImpl<$Res>
    implements _$PaisCopyWith<$Res> {
  __$PaisCopyWithImpl(this._self, this._then);

  final _Pais _self;
  final $Res Function(_Pais) _then;

/// Create a copy of Pais
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? isoCode = freezed,Object? descripcion = null,Object? lastUpdate = null,Object? deleted = null,}) {
  return _then(_Pais(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isoCode: freezed == isoCode ? _self.isoCode : isoCode // ignore: cast_nullable_to_non_nullable
as String?,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,lastUpdate: null == lastUpdate ? _self.lastUpdate : lastUpdate // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
