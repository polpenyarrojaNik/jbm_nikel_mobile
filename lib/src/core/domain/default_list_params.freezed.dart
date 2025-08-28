// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_list_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DefaultListParams {

 int get page; String get searchText; bool? get searchPotenciales; String? get entityId;
/// Create a copy of DefaultListParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DefaultListParamsCopyWith<DefaultListParams> get copyWith => _$DefaultListParamsCopyWithImpl<DefaultListParams>(this as DefaultListParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DefaultListParams&&(identical(other.page, page) || other.page == page)&&(identical(other.searchText, searchText) || other.searchText == searchText)&&(identical(other.searchPotenciales, searchPotenciales) || other.searchPotenciales == searchPotenciales)&&(identical(other.entityId, entityId) || other.entityId == entityId));
}


@override
int get hashCode => Object.hash(runtimeType,page,searchText,searchPotenciales,entityId);

@override
String toString() {
  return 'DefaultListParams(page: $page, searchText: $searchText, searchPotenciales: $searchPotenciales, entityId: $entityId)';
}


}

/// @nodoc
abstract mixin class $DefaultListParamsCopyWith<$Res>  {
  factory $DefaultListParamsCopyWith(DefaultListParams value, $Res Function(DefaultListParams) _then) = _$DefaultListParamsCopyWithImpl;
@useResult
$Res call({
 int page, String searchText, bool? searchPotenciales, String? entityId
});




}
/// @nodoc
class _$DefaultListParamsCopyWithImpl<$Res>
    implements $DefaultListParamsCopyWith<$Res> {
  _$DefaultListParamsCopyWithImpl(this._self, this._then);

  final DefaultListParams _self;
  final $Res Function(DefaultListParams) _then;

/// Create a copy of DefaultListParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? searchText = null,Object? searchPotenciales = freezed,Object? entityId = freezed,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,searchPotenciales: freezed == searchPotenciales ? _self.searchPotenciales : searchPotenciales // ignore: cast_nullable_to_non_nullable
as bool?,entityId: freezed == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DefaultListParams].
extension DefaultListParamsPatterns on DefaultListParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DefaultListParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DefaultListParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DefaultListParams value)  $default,){
final _that = this;
switch (_that) {
case _DefaultListParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DefaultListParams value)?  $default,){
final _that = this;
switch (_that) {
case _DefaultListParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  String searchText,  bool? searchPotenciales,  String? entityId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DefaultListParams() when $default != null:
return $default(_that.page,_that.searchText,_that.searchPotenciales,_that.entityId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  String searchText,  bool? searchPotenciales,  String? entityId)  $default,) {final _that = this;
switch (_that) {
case _DefaultListParams():
return $default(_that.page,_that.searchText,_that.searchPotenciales,_that.entityId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  String searchText,  bool? searchPotenciales,  String? entityId)?  $default,) {final _that = this;
switch (_that) {
case _DefaultListParams() when $default != null:
return $default(_that.page,_that.searchText,_that.searchPotenciales,_that.entityId);case _:
  return null;

}
}

}

/// @nodoc


class _DefaultListParams extends DefaultListParams {
  const _DefaultListParams({required this.page, required this.searchText, this.searchPotenciales, this.entityId}): super._();
  

@override final  int page;
@override final  String searchText;
@override final  bool? searchPotenciales;
@override final  String? entityId;

/// Create a copy of DefaultListParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DefaultListParamsCopyWith<_DefaultListParams> get copyWith => __$DefaultListParamsCopyWithImpl<_DefaultListParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DefaultListParams&&(identical(other.page, page) || other.page == page)&&(identical(other.searchText, searchText) || other.searchText == searchText)&&(identical(other.searchPotenciales, searchPotenciales) || other.searchPotenciales == searchPotenciales)&&(identical(other.entityId, entityId) || other.entityId == entityId));
}


@override
int get hashCode => Object.hash(runtimeType,page,searchText,searchPotenciales,entityId);

@override
String toString() {
  return 'DefaultListParams(page: $page, searchText: $searchText, searchPotenciales: $searchPotenciales, entityId: $entityId)';
}


}

/// @nodoc
abstract mixin class _$DefaultListParamsCopyWith<$Res> implements $DefaultListParamsCopyWith<$Res> {
  factory _$DefaultListParamsCopyWith(_DefaultListParams value, $Res Function(_DefaultListParams) _then) = __$DefaultListParamsCopyWithImpl;
@override @useResult
$Res call({
 int page, String searchText, bool? searchPotenciales, String? entityId
});




}
/// @nodoc
class __$DefaultListParamsCopyWithImpl<$Res>
    implements _$DefaultListParamsCopyWith<$Res> {
  __$DefaultListParamsCopyWithImpl(this._self, this._then);

  final _DefaultListParams _self;
  final $Res Function(_DefaultListParams) _then;

/// Create a copy of DefaultListParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? searchText = null,Object? searchPotenciales = freezed,Object? entityId = freezed,}) {
  return _then(_DefaultListParams(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,searchPotenciales: freezed == searchPotenciales ? _self.searchPotenciales : searchPotenciales // ignore: cast_nullable_to_non_nullable
as bool?,entityId: freezed == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
