// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_imp_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteImpParam {

 String get clienteId; String? get id; String? get impId; Pais? get clientePais;
/// Create a copy of ClienteImpParam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteImpParamCopyWith<ClienteImpParam> get copyWith => _$ClienteImpParamCopyWithImpl<ClienteImpParam>(this as ClienteImpParam, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteImpParam&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.id, id) || other.id == id)&&(identical(other.impId, impId) || other.impId == impId)&&(identical(other.clientePais, clientePais) || other.clientePais == clientePais));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,id,impId,clientePais);

@override
String toString() {
  return 'ClienteImpParam(clienteId: $clienteId, id: $id, impId: $impId, clientePais: $clientePais)';
}


}

/// @nodoc
abstract mixin class $ClienteImpParamCopyWith<$Res>  {
  factory $ClienteImpParamCopyWith(ClienteImpParam value, $Res Function(ClienteImpParam) _then) = _$ClienteImpParamCopyWithImpl;
@useResult
$Res call({
 String clienteId, String? id, String? impId, Pais? clientePais
});


$PaisCopyWith<$Res>? get clientePais;

}
/// @nodoc
class _$ClienteImpParamCopyWithImpl<$Res>
    implements $ClienteImpParamCopyWith<$Res> {
  _$ClienteImpParamCopyWithImpl(this._self, this._then);

  final ClienteImpParam _self;
  final $Res Function(ClienteImpParam) _then;

/// Create a copy of ClienteImpParam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? id = freezed,Object? impId = freezed,Object? clientePais = freezed,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,impId: freezed == impId ? _self.impId : impId // ignore: cast_nullable_to_non_nullable
as String?,clientePais: freezed == clientePais ? _self.clientePais : clientePais // ignore: cast_nullable_to_non_nullable
as Pais?,
  ));
}
/// Create a copy of ClienteImpParam
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaisCopyWith<$Res>? get clientePais {
    if (_self.clientePais == null) {
    return null;
  }

  return $PaisCopyWith<$Res>(_self.clientePais!, (value) {
    return _then(_self.copyWith(clientePais: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClienteImpParam].
extension ClienteImpParamPatterns on ClienteImpParam {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteImpParam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteImpParam() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteImpParam value)  $default,){
final _that = this;
switch (_that) {
case _ClienteImpParam():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteImpParam value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteImpParam() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  String? id,  String? impId,  Pais? clientePais)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteImpParam() when $default != null:
return $default(_that.clienteId,_that.id,_that.impId,_that.clientePais);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  String? id,  String? impId,  Pais? clientePais)  $default,) {final _that = this;
switch (_that) {
case _ClienteImpParam():
return $default(_that.clienteId,_that.id,_that.impId,_that.clientePais);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  String? id,  String? impId,  Pais? clientePais)?  $default,) {final _that = this;
switch (_that) {
case _ClienteImpParam() when $default != null:
return $default(_that.clienteId,_that.id,_that.impId,_that.clientePais);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteImpParam extends ClienteImpParam {
  const _ClienteImpParam(this.clienteId, {this.id, this.impId, this.clientePais}): super._();
  

@override final  String clienteId;
@override final  String? id;
@override final  String? impId;
@override final  Pais? clientePais;

/// Create a copy of ClienteImpParam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteImpParamCopyWith<_ClienteImpParam> get copyWith => __$ClienteImpParamCopyWithImpl<_ClienteImpParam>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteImpParam&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.id, id) || other.id == id)&&(identical(other.impId, impId) || other.impId == impId)&&(identical(other.clientePais, clientePais) || other.clientePais == clientePais));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,id,impId,clientePais);

@override
String toString() {
  return 'ClienteImpParam(clienteId: $clienteId, id: $id, impId: $impId, clientePais: $clientePais)';
}


}

/// @nodoc
abstract mixin class _$ClienteImpParamCopyWith<$Res> implements $ClienteImpParamCopyWith<$Res> {
  factory _$ClienteImpParamCopyWith(_ClienteImpParam value, $Res Function(_ClienteImpParam) _then) = __$ClienteImpParamCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, String? id, String? impId, Pais? clientePais
});


@override $PaisCopyWith<$Res>? get clientePais;

}
/// @nodoc
class __$ClienteImpParamCopyWithImpl<$Res>
    implements _$ClienteImpParamCopyWith<$Res> {
  __$ClienteImpParamCopyWithImpl(this._self, this._then);

  final _ClienteImpParam _self;
  final $Res Function(_ClienteImpParam) _then;

/// Create a copy of ClienteImpParam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? id = freezed,Object? impId = freezed,Object? clientePais = freezed,}) {
  return _then(_ClienteImpParam(
null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,impId: freezed == impId ? _self.impId : impId // ignore: cast_nullable_to_non_nullable
as String?,clientePais: freezed == clientePais ? _self.clientePais : clientePais // ignore: cast_nullable_to_non_nullable
as Pais?,
  ));
}

/// Create a copy of ClienteImpParam
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaisCopyWith<$Res>? get clientePais {
    if (_self.clientePais == null) {
    return null;
  }

  return $PaisCopyWith<$Res>(_self.clientePais!, (value) {
    return _then(_self.copyWith(clientePais: value));
  });
}
}

// dart format on
