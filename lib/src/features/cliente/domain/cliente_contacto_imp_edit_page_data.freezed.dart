// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_contacto_imp_edit_page_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteContactoImpEditPageData {

 ClienteContacto? get clienteContacto; bool get isSent; Object? get error;
/// Create a copy of ClienteContactoImpEditPageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteContactoImpEditPageDataCopyWith<ClienteContactoImpEditPageData> get copyWith => _$ClienteContactoImpEditPageDataCopyWithImpl<ClienteContactoImpEditPageData>(this as ClienteContactoImpEditPageData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteContactoImpEditPageData&&(identical(other.clienteContacto, clienteContacto) || other.clienteContacto == clienteContacto)&&(identical(other.isSent, isSent) || other.isSent == isSent)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,clienteContacto,isSent,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'ClienteContactoImpEditPageData(clienteContacto: $clienteContacto, isSent: $isSent, error: $error)';
}


}

/// @nodoc
abstract mixin class $ClienteContactoImpEditPageDataCopyWith<$Res>  {
  factory $ClienteContactoImpEditPageDataCopyWith(ClienteContactoImpEditPageData value, $Res Function(ClienteContactoImpEditPageData) _then) = _$ClienteContactoImpEditPageDataCopyWithImpl;
@useResult
$Res call({
 ClienteContacto? clienteContacto, bool isSent, Object? error
});


$ClienteContactoCopyWith<$Res>? get clienteContacto;

}
/// @nodoc
class _$ClienteContactoImpEditPageDataCopyWithImpl<$Res>
    implements $ClienteContactoImpEditPageDataCopyWith<$Res> {
  _$ClienteContactoImpEditPageDataCopyWithImpl(this._self, this._then);

  final ClienteContactoImpEditPageData _self;
  final $Res Function(ClienteContactoImpEditPageData) _then;

/// Create a copy of ClienteContactoImpEditPageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteContacto = freezed,Object? isSent = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
clienteContacto: freezed == clienteContacto ? _self.clienteContacto : clienteContacto // ignore: cast_nullable_to_non_nullable
as ClienteContacto?,isSent: null == isSent ? _self.isSent : isSent // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error ,
  ));
}
/// Create a copy of ClienteContactoImpEditPageData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteContactoCopyWith<$Res>? get clienteContacto {
    if (_self.clienteContacto == null) {
    return null;
  }

  return $ClienteContactoCopyWith<$Res>(_self.clienteContacto!, (value) {
    return _then(_self.copyWith(clienteContacto: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClienteContactoImpEditPageData].
extension ClienteContactoImpEditPageDataPatterns on ClienteContactoImpEditPageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteContactoImpEditPageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteContactoImpEditPageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteContactoImpEditPageData value)  $default,){
final _that = this;
switch (_that) {
case _ClienteContactoImpEditPageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteContactoImpEditPageData value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteContactoImpEditPageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ClienteContacto? clienteContacto,  bool isSent,  Object? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteContactoImpEditPageData() when $default != null:
return $default(_that.clienteContacto,_that.isSent,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ClienteContacto? clienteContacto,  bool isSent,  Object? error)  $default,) {final _that = this;
switch (_that) {
case _ClienteContactoImpEditPageData():
return $default(_that.clienteContacto,_that.isSent,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ClienteContacto? clienteContacto,  bool isSent,  Object? error)?  $default,) {final _that = this;
switch (_that) {
case _ClienteContactoImpEditPageData() when $default != null:
return $default(_that.clienteContacto,_that.isSent,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteContactoImpEditPageData extends ClienteContactoImpEditPageData {
  const _ClienteContactoImpEditPageData({required this.clienteContacto, required this.isSent, this.error}): super._();
  

@override final  ClienteContacto? clienteContacto;
@override final  bool isSent;
@override final  Object? error;

/// Create a copy of ClienteContactoImpEditPageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteContactoImpEditPageDataCopyWith<_ClienteContactoImpEditPageData> get copyWith => __$ClienteContactoImpEditPageDataCopyWithImpl<_ClienteContactoImpEditPageData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteContactoImpEditPageData&&(identical(other.clienteContacto, clienteContacto) || other.clienteContacto == clienteContacto)&&(identical(other.isSent, isSent) || other.isSent == isSent)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,clienteContacto,isSent,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'ClienteContactoImpEditPageData(clienteContacto: $clienteContacto, isSent: $isSent, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ClienteContactoImpEditPageDataCopyWith<$Res> implements $ClienteContactoImpEditPageDataCopyWith<$Res> {
  factory _$ClienteContactoImpEditPageDataCopyWith(_ClienteContactoImpEditPageData value, $Res Function(_ClienteContactoImpEditPageData) _then) = __$ClienteContactoImpEditPageDataCopyWithImpl;
@override @useResult
$Res call({
 ClienteContacto? clienteContacto, bool isSent, Object? error
});


@override $ClienteContactoCopyWith<$Res>? get clienteContacto;

}
/// @nodoc
class __$ClienteContactoImpEditPageDataCopyWithImpl<$Res>
    implements _$ClienteContactoImpEditPageDataCopyWith<$Res> {
  __$ClienteContactoImpEditPageDataCopyWithImpl(this._self, this._then);

  final _ClienteContactoImpEditPageData _self;
  final $Res Function(_ClienteContactoImpEditPageData) _then;

/// Create a copy of ClienteContactoImpEditPageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteContacto = freezed,Object? isSent = null,Object? error = freezed,}) {
  return _then(_ClienteContactoImpEditPageData(
clienteContacto: freezed == clienteContacto ? _self.clienteContacto : clienteContacto // ignore: cast_nullable_to_non_nullable
as ClienteContacto?,isSent: null == isSent ? _self.isSent : isSent // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error ,
  ));
}

/// Create a copy of ClienteContactoImpEditPageData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteContactoCopyWith<$Res>? get clienteContacto {
    if (_self.clienteContacto == null) {
    return null;
  }

  return $ClienteContactoCopyWith<$Res>(_self.clienteContacto!, (value) {
    return _then(_self.copyWith(clienteContacto: value));
  });
}
}

// dart format on
