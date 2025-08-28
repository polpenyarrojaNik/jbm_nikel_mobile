// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RemoteResponse<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteResponse<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoteResponse<$T>()';
}


}

/// @nodoc
class $RemoteResponseCopyWith<T,$Res>  {
$RemoteResponseCopyWith(RemoteResponse<T> _, $Res Function(RemoteResponse<T>) __);
}


/// Adds pattern-matching-related methods to [RemoteResponse].
extension RemoteResponsePatterns<T> on RemoteResponse<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _NoConnection<T> value)?  noConnection,TResult Function( _NotModified<T> value)?  notModified,TResult Function( _WithNewData<T> value)?  withNewData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoConnection() when noConnection != null:
return noConnection(_that);case _NotModified() when notModified != null:
return notModified(_that);case _WithNewData() when withNewData != null:
return withNewData(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _NoConnection<T> value)  noConnection,required TResult Function( _NotModified<T> value)  notModified,required TResult Function( _WithNewData<T> value)  withNewData,}){
final _that = this;
switch (_that) {
case _NoConnection():
return noConnection(_that);case _NotModified():
return notModified(_that);case _WithNewData():
return withNewData(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _NoConnection<T> value)?  noConnection,TResult? Function( _NotModified<T> value)?  notModified,TResult? Function( _WithNewData<T> value)?  withNewData,}){
final _that = this;
switch (_that) {
case _NoConnection() when noConnection != null:
return noConnection(_that);case _NotModified() when notModified != null:
return notModified(_that);case _WithNewData() when withNewData != null:
return withNewData(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  noConnection,TResult Function( int maxPage)?  notModified,TResult Function( T data,  int maxPage,  int totalRows)?  withNewData,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoConnection() when noConnection != null:
return noConnection();case _NotModified() when notModified != null:
return notModified(_that.maxPage);case _WithNewData() when withNewData != null:
return withNewData(_that.data,_that.maxPage,_that.totalRows);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  noConnection,required TResult Function( int maxPage)  notModified,required TResult Function( T data,  int maxPage,  int totalRows)  withNewData,}) {final _that = this;
switch (_that) {
case _NoConnection():
return noConnection();case _NotModified():
return notModified(_that.maxPage);case _WithNewData():
return withNewData(_that.data,_that.maxPage,_that.totalRows);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  noConnection,TResult? Function( int maxPage)?  notModified,TResult? Function( T data,  int maxPage,  int totalRows)?  withNewData,}) {final _that = this;
switch (_that) {
case _NoConnection() when noConnection != null:
return noConnection();case _NotModified() when notModified != null:
return notModified(_that.maxPage);case _WithNewData() when withNewData != null:
return withNewData(_that.data,_that.maxPage,_that.totalRows);case _:
  return null;

}
}

}

/// @nodoc


class _NoConnection<T> extends RemoteResponse<T> {
  const _NoConnection(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoConnection<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoteResponse<$T>.noConnection()';
}


}




/// @nodoc


class _NotModified<T> extends RemoteResponse<T> {
  const _NotModified({required this.maxPage}): super._();
  

 final  int maxPage;

/// Create a copy of RemoteResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotModifiedCopyWith<T, _NotModified<T>> get copyWith => __$NotModifiedCopyWithImpl<T, _NotModified<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotModified<T>&&(identical(other.maxPage, maxPage) || other.maxPage == maxPage));
}


@override
int get hashCode => Object.hash(runtimeType,maxPage);

@override
String toString() {
  return 'RemoteResponse<$T>.notModified(maxPage: $maxPage)';
}


}

/// @nodoc
abstract mixin class _$NotModifiedCopyWith<T,$Res> implements $RemoteResponseCopyWith<T, $Res> {
  factory _$NotModifiedCopyWith(_NotModified<T> value, $Res Function(_NotModified<T>) _then) = __$NotModifiedCopyWithImpl;
@useResult
$Res call({
 int maxPage
});




}
/// @nodoc
class __$NotModifiedCopyWithImpl<T,$Res>
    implements _$NotModifiedCopyWith<T, $Res> {
  __$NotModifiedCopyWithImpl(this._self, this._then);

  final _NotModified<T> _self;
  final $Res Function(_NotModified<T>) _then;

/// Create a copy of RemoteResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? maxPage = null,}) {
  return _then(_NotModified<T>(
maxPage: null == maxPage ? _self.maxPage : maxPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _WithNewData<T> extends RemoteResponse<T> {
  const _WithNewData(this.data, {required this.maxPage, required this.totalRows}): super._();
  

 final  T data;
 final  int maxPage;
 final  int totalRows;

/// Create a copy of RemoteResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WithNewDataCopyWith<T, _WithNewData<T>> get copyWith => __$WithNewDataCopyWithImpl<T, _WithNewData<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WithNewData<T>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.maxPage, maxPage) || other.maxPage == maxPage)&&(identical(other.totalRows, totalRows) || other.totalRows == totalRows));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),maxPage,totalRows);

@override
String toString() {
  return 'RemoteResponse<$T>.withNewData(data: $data, maxPage: $maxPage, totalRows: $totalRows)';
}


}

/// @nodoc
abstract mixin class _$WithNewDataCopyWith<T,$Res> implements $RemoteResponseCopyWith<T, $Res> {
  factory _$WithNewDataCopyWith(_WithNewData<T> value, $Res Function(_WithNewData<T>) _then) = __$WithNewDataCopyWithImpl;
@useResult
$Res call({
 T data, int maxPage, int totalRows
});




}
/// @nodoc
class __$WithNewDataCopyWithImpl<T,$Res>
    implements _$WithNewDataCopyWith<T, $Res> {
  __$WithNewDataCopyWithImpl(this._self, this._then);

  final _WithNewData<T> _self;
  final $Res Function(_WithNewData<T>) _then;

/// Create a copy of RemoteResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? maxPage = null,Object? totalRows = null,}) {
  return _then(_WithNewData<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,maxPage: null == maxPage ? _self.maxPage : maxPage // ignore: cast_nullable_to_non_nullable
as int,totalRows: null == totalRows ? _self.totalRows : totalRows // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
