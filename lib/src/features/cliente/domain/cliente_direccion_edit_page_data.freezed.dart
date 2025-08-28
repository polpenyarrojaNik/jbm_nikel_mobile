// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_direccion_edit_page_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteDireccionEditPageData {

 ClienteDireccion? get clienteDireccion; bool get isSent; Object? get error;
/// Create a copy of ClienteDireccionEditPageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteDireccionEditPageDataCopyWith<ClienteDireccionEditPageData> get copyWith => _$ClienteDireccionEditPageDataCopyWithImpl<ClienteDireccionEditPageData>(this as ClienteDireccionEditPageData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteDireccionEditPageData&&(identical(other.clienteDireccion, clienteDireccion) || other.clienteDireccion == clienteDireccion)&&(identical(other.isSent, isSent) || other.isSent == isSent)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,clienteDireccion,isSent,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'ClienteDireccionEditPageData(clienteDireccion: $clienteDireccion, isSent: $isSent, error: $error)';
}


}

/// @nodoc
abstract mixin class $ClienteDireccionEditPageDataCopyWith<$Res>  {
  factory $ClienteDireccionEditPageDataCopyWith(ClienteDireccionEditPageData value, $Res Function(ClienteDireccionEditPageData) _then) = _$ClienteDireccionEditPageDataCopyWithImpl;
@useResult
$Res call({
 ClienteDireccion? clienteDireccion, bool isSent, Object? error
});


$ClienteDireccionCopyWith<$Res>? get clienteDireccion;

}
/// @nodoc
class _$ClienteDireccionEditPageDataCopyWithImpl<$Res>
    implements $ClienteDireccionEditPageDataCopyWith<$Res> {
  _$ClienteDireccionEditPageDataCopyWithImpl(this._self, this._then);

  final ClienteDireccionEditPageData _self;
  final $Res Function(ClienteDireccionEditPageData) _then;

/// Create a copy of ClienteDireccionEditPageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteDireccion = freezed,Object? isSent = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
clienteDireccion: freezed == clienteDireccion ? _self.clienteDireccion : clienteDireccion // ignore: cast_nullable_to_non_nullable
as ClienteDireccion?,isSent: null == isSent ? _self.isSent : isSent // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error ,
  ));
}
/// Create a copy of ClienteDireccionEditPageData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteDireccionCopyWith<$Res>? get clienteDireccion {
    if (_self.clienteDireccion == null) {
    return null;
  }

  return $ClienteDireccionCopyWith<$Res>(_self.clienteDireccion!, (value) {
    return _then(_self.copyWith(clienteDireccion: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClienteDireccionEditPageData].
extension ClienteDireccionEditPageDataPatterns on ClienteDireccionEditPageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteDireccionEditPageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteDireccionEditPageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteDireccionEditPageData value)  $default,){
final _that = this;
switch (_that) {
case _ClienteDireccionEditPageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteDireccionEditPageData value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteDireccionEditPageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ClienteDireccion? clienteDireccion,  bool isSent,  Object? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteDireccionEditPageData() when $default != null:
return $default(_that.clienteDireccion,_that.isSent,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ClienteDireccion? clienteDireccion,  bool isSent,  Object? error)  $default,) {final _that = this;
switch (_that) {
case _ClienteDireccionEditPageData():
return $default(_that.clienteDireccion,_that.isSent,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ClienteDireccion? clienteDireccion,  bool isSent,  Object? error)?  $default,) {final _that = this;
switch (_that) {
case _ClienteDireccionEditPageData() when $default != null:
return $default(_that.clienteDireccion,_that.isSent,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteDireccionEditPageData extends ClienteDireccionEditPageData {
  const _ClienteDireccionEditPageData({required this.clienteDireccion, required this.isSent, this.error}): super._();
  

@override final  ClienteDireccion? clienteDireccion;
@override final  bool isSent;
@override final  Object? error;

/// Create a copy of ClienteDireccionEditPageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteDireccionEditPageDataCopyWith<_ClienteDireccionEditPageData> get copyWith => __$ClienteDireccionEditPageDataCopyWithImpl<_ClienteDireccionEditPageData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteDireccionEditPageData&&(identical(other.clienteDireccion, clienteDireccion) || other.clienteDireccion == clienteDireccion)&&(identical(other.isSent, isSent) || other.isSent == isSent)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,clienteDireccion,isSent,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'ClienteDireccionEditPageData(clienteDireccion: $clienteDireccion, isSent: $isSent, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ClienteDireccionEditPageDataCopyWith<$Res> implements $ClienteDireccionEditPageDataCopyWith<$Res> {
  factory _$ClienteDireccionEditPageDataCopyWith(_ClienteDireccionEditPageData value, $Res Function(_ClienteDireccionEditPageData) _then) = __$ClienteDireccionEditPageDataCopyWithImpl;
@override @useResult
$Res call({
 ClienteDireccion? clienteDireccion, bool isSent, Object? error
});


@override $ClienteDireccionCopyWith<$Res>? get clienteDireccion;

}
/// @nodoc
class __$ClienteDireccionEditPageDataCopyWithImpl<$Res>
    implements _$ClienteDireccionEditPageDataCopyWith<$Res> {
  __$ClienteDireccionEditPageDataCopyWithImpl(this._self, this._then);

  final _ClienteDireccionEditPageData _self;
  final $Res Function(_ClienteDireccionEditPageData) _then;

/// Create a copy of ClienteDireccionEditPageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteDireccion = freezed,Object? isSent = null,Object? error = freezed,}) {
  return _then(_ClienteDireccionEditPageData(
clienteDireccion: freezed == clienteDireccion ? _self.clienteDireccion : clienteDireccion // ignore: cast_nullable_to_non_nullable
as ClienteDireccion?,isSent: null == isSent ? _self.isSent : isSent // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error ,
  ));
}

/// Create a copy of ClienteDireccionEditPageData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteDireccionCopyWith<$Res>? get clienteDireccion {
    if (_self.clienteDireccion == null) {
    return null;
  }

  return $ClienteDireccionCopyWith<$Res>(_self.clienteDireccion!, (value) {
    return _then(_self.copyWith(clienteDireccion: value));
  });
}
}

// dart format on
