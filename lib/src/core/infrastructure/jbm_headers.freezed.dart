// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jbm_headers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JBMHeaders {

 String? get etag; int? get maxPage; int? get totalRows;
/// Create a copy of JBMHeaders
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JBMHeadersCopyWith<JBMHeaders> get copyWith => _$JBMHeadersCopyWithImpl<JBMHeaders>(this as JBMHeaders, _$identity);

  /// Serializes this JBMHeaders to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JBMHeaders&&(identical(other.etag, etag) || other.etag == etag)&&(identical(other.maxPage, maxPage) || other.maxPage == maxPage)&&(identical(other.totalRows, totalRows) || other.totalRows == totalRows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,etag,maxPage,totalRows);

@override
String toString() {
  return 'JBMHeaders(etag: $etag, maxPage: $maxPage, totalRows: $totalRows)';
}


}

/// @nodoc
abstract mixin class $JBMHeadersCopyWith<$Res>  {
  factory $JBMHeadersCopyWith(JBMHeaders value, $Res Function(JBMHeaders) _then) = _$JBMHeadersCopyWithImpl;
@useResult
$Res call({
 String? etag, int? maxPage, int? totalRows
});




}
/// @nodoc
class _$JBMHeadersCopyWithImpl<$Res>
    implements $JBMHeadersCopyWith<$Res> {
  _$JBMHeadersCopyWithImpl(this._self, this._then);

  final JBMHeaders _self;
  final $Res Function(JBMHeaders) _then;

/// Create a copy of JBMHeaders
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? etag = freezed,Object? maxPage = freezed,Object? totalRows = freezed,}) {
  return _then(_self.copyWith(
etag: freezed == etag ? _self.etag : etag // ignore: cast_nullable_to_non_nullable
as String?,maxPage: freezed == maxPage ? _self.maxPage : maxPage // ignore: cast_nullable_to_non_nullable
as int?,totalRows: freezed == totalRows ? _self.totalRows : totalRows // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [JBMHeaders].
extension JBMHeadersPatterns on JBMHeaders {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JBMHeaders value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JBMHeaders() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JBMHeaders value)  $default,){
final _that = this;
switch (_that) {
case _JBMHeaders():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JBMHeaders value)?  $default,){
final _that = this;
switch (_that) {
case _JBMHeaders() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? etag,  int? maxPage,  int? totalRows)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JBMHeaders() when $default != null:
return $default(_that.etag,_that.maxPage,_that.totalRows);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? etag,  int? maxPage,  int? totalRows)  $default,) {final _that = this;
switch (_that) {
case _JBMHeaders():
return $default(_that.etag,_that.maxPage,_that.totalRows);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? etag,  int? maxPage,  int? totalRows)?  $default,) {final _that = this;
switch (_that) {
case _JBMHeaders() when $default != null:
return $default(_that.etag,_that.maxPage,_that.totalRows);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JBMHeaders extends JBMHeaders {
  const _JBMHeaders({this.etag, this.maxPage, this.totalRows}): super._();
  factory _JBMHeaders.fromJson(Map<String, dynamic> json) => _$JBMHeadersFromJson(json);

@override final  String? etag;
@override final  int? maxPage;
@override final  int? totalRows;

/// Create a copy of JBMHeaders
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JBMHeadersCopyWith<_JBMHeaders> get copyWith => __$JBMHeadersCopyWithImpl<_JBMHeaders>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JBMHeadersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JBMHeaders&&(identical(other.etag, etag) || other.etag == etag)&&(identical(other.maxPage, maxPage) || other.maxPage == maxPage)&&(identical(other.totalRows, totalRows) || other.totalRows == totalRows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,etag,maxPage,totalRows);

@override
String toString() {
  return 'JBMHeaders(etag: $etag, maxPage: $maxPage, totalRows: $totalRows)';
}


}

/// @nodoc
abstract mixin class _$JBMHeadersCopyWith<$Res> implements $JBMHeadersCopyWith<$Res> {
  factory _$JBMHeadersCopyWith(_JBMHeaders value, $Res Function(_JBMHeaders) _then) = __$JBMHeadersCopyWithImpl;
@override @useResult
$Res call({
 String? etag, int? maxPage, int? totalRows
});




}
/// @nodoc
class __$JBMHeadersCopyWithImpl<$Res>
    implements _$JBMHeadersCopyWith<$Res> {
  __$JBMHeadersCopyWithImpl(this._self, this._then);

  final _JBMHeaders _self;
  final $Res Function(_JBMHeaders) _then;

/// Create a copy of JBMHeaders
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? etag = freezed,Object? maxPage = freezed,Object? totalRows = freezed,}) {
  return _then(_JBMHeaders(
etag: freezed == etag ? _self.etag : etag // ignore: cast_nullable_to_non_nullable
as String?,maxPage: freezed == maxPage ? _self.maxPage : maxPage // ignore: cast_nullable_to_non_nullable
as int?,totalRows: freezed == totalRows ? _self.totalRows : totalRows // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
