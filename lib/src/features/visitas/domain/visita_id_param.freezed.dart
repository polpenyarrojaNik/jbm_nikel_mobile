// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visita_id_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VisitaIdIsLocalParam {

 String get id; bool get isLocal; String? get createVisitaFromClienteId;
/// Create a copy of VisitaIdIsLocalParam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisitaIdIsLocalParamCopyWith<VisitaIdIsLocalParam> get copyWith => _$VisitaIdIsLocalParamCopyWithImpl<VisitaIdIsLocalParam>(this as VisitaIdIsLocalParam, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisitaIdIsLocalParam&&(identical(other.id, id) || other.id == id)&&(identical(other.isLocal, isLocal) || other.isLocal == isLocal)&&(identical(other.createVisitaFromClienteId, createVisitaFromClienteId) || other.createVisitaFromClienteId == createVisitaFromClienteId));
}


@override
int get hashCode => Object.hash(runtimeType,id,isLocal,createVisitaFromClienteId);

@override
String toString() {
  return 'VisitaIdIsLocalParam(id: $id, isLocal: $isLocal, createVisitaFromClienteId: $createVisitaFromClienteId)';
}


}

/// @nodoc
abstract mixin class $VisitaIdIsLocalParamCopyWith<$Res>  {
  factory $VisitaIdIsLocalParamCopyWith(VisitaIdIsLocalParam value, $Res Function(VisitaIdIsLocalParam) _then) = _$VisitaIdIsLocalParamCopyWithImpl;
@useResult
$Res call({
 String id, bool isLocal, String? createVisitaFromClienteId
});




}
/// @nodoc
class _$VisitaIdIsLocalParamCopyWithImpl<$Res>
    implements $VisitaIdIsLocalParamCopyWith<$Res> {
  _$VisitaIdIsLocalParamCopyWithImpl(this._self, this._then);

  final VisitaIdIsLocalParam _self;
  final $Res Function(VisitaIdIsLocalParam) _then;

/// Create a copy of VisitaIdIsLocalParam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? isLocal = null,Object? createVisitaFromClienteId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isLocal: null == isLocal ? _self.isLocal : isLocal // ignore: cast_nullable_to_non_nullable
as bool,createVisitaFromClienteId: freezed == createVisitaFromClienteId ? _self.createVisitaFromClienteId : createVisitaFromClienteId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VisitaIdIsLocalParam].
extension VisitaIdIsLocalParamPatterns on VisitaIdIsLocalParam {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisitaIdIsLocalParam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisitaIdIsLocalParam() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisitaIdIsLocalParam value)  $default,){
final _that = this;
switch (_that) {
case _VisitaIdIsLocalParam():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisitaIdIsLocalParam value)?  $default,){
final _that = this;
switch (_that) {
case _VisitaIdIsLocalParam() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  bool isLocal,  String? createVisitaFromClienteId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisitaIdIsLocalParam() when $default != null:
return $default(_that.id,_that.isLocal,_that.createVisitaFromClienteId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  bool isLocal,  String? createVisitaFromClienteId)  $default,) {final _that = this;
switch (_that) {
case _VisitaIdIsLocalParam():
return $default(_that.id,_that.isLocal,_that.createVisitaFromClienteId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  bool isLocal,  String? createVisitaFromClienteId)?  $default,) {final _that = this;
switch (_that) {
case _VisitaIdIsLocalParam() when $default != null:
return $default(_that.id,_that.isLocal,_that.createVisitaFromClienteId);case _:
  return null;

}
}

}

/// @nodoc


class _VisitaIdIsLocalParam extends VisitaIdIsLocalParam {
  const _VisitaIdIsLocalParam({required this.id, required this.isLocal, this.createVisitaFromClienteId}): super._();
  

@override final  String id;
@override final  bool isLocal;
@override final  String? createVisitaFromClienteId;

/// Create a copy of VisitaIdIsLocalParam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisitaIdIsLocalParamCopyWith<_VisitaIdIsLocalParam> get copyWith => __$VisitaIdIsLocalParamCopyWithImpl<_VisitaIdIsLocalParam>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisitaIdIsLocalParam&&(identical(other.id, id) || other.id == id)&&(identical(other.isLocal, isLocal) || other.isLocal == isLocal)&&(identical(other.createVisitaFromClienteId, createVisitaFromClienteId) || other.createVisitaFromClienteId == createVisitaFromClienteId));
}


@override
int get hashCode => Object.hash(runtimeType,id,isLocal,createVisitaFromClienteId);

@override
String toString() {
  return 'VisitaIdIsLocalParam(id: $id, isLocal: $isLocal, createVisitaFromClienteId: $createVisitaFromClienteId)';
}


}

/// @nodoc
abstract mixin class _$VisitaIdIsLocalParamCopyWith<$Res> implements $VisitaIdIsLocalParamCopyWith<$Res> {
  factory _$VisitaIdIsLocalParamCopyWith(_VisitaIdIsLocalParam value, $Res Function(_VisitaIdIsLocalParam) _then) = __$VisitaIdIsLocalParamCopyWithImpl;
@override @useResult
$Res call({
 String id, bool isLocal, String? createVisitaFromClienteId
});




}
/// @nodoc
class __$VisitaIdIsLocalParamCopyWithImpl<$Res>
    implements _$VisitaIdIsLocalParamCopyWith<$Res> {
  __$VisitaIdIsLocalParamCopyWithImpl(this._self, this._then);

  final _VisitaIdIsLocalParam _self;
  final $Res Function(_VisitaIdIsLocalParam) _then;

/// Create a copy of VisitaIdIsLocalParam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? isLocal = null,Object? createVisitaFromClienteId = freezed,}) {
  return _then(_VisitaIdIsLocalParam(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isLocal: null == isLocal ? _self.isLocal : isLocal // ignore: cast_nullable_to_non_nullable
as bool,createVisitaFromClienteId: freezed == createVisitaFromClienteId ? _self.createVisitaFromClienteId : createVisitaFromClienteId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
