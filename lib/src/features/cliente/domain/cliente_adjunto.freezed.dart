// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_adjunto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteAdjunto {

 String get clienteId; String get nombreAdjunto;
/// Create a copy of ClienteAdjunto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteAdjuntoCopyWith<ClienteAdjunto> get copyWith => _$ClienteAdjuntoCopyWithImpl<ClienteAdjunto>(this as ClienteAdjunto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteAdjunto&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.nombreAdjunto, nombreAdjunto) || other.nombreAdjunto == nombreAdjunto));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,nombreAdjunto);

@override
String toString() {
  return 'ClienteAdjunto(clienteId: $clienteId, nombreAdjunto: $nombreAdjunto)';
}


}

/// @nodoc
abstract mixin class $ClienteAdjuntoCopyWith<$Res>  {
  factory $ClienteAdjuntoCopyWith(ClienteAdjunto value, $Res Function(ClienteAdjunto) _then) = _$ClienteAdjuntoCopyWithImpl;
@useResult
$Res call({
 String clienteId, String nombreAdjunto
});




}
/// @nodoc
class _$ClienteAdjuntoCopyWithImpl<$Res>
    implements $ClienteAdjuntoCopyWith<$Res> {
  _$ClienteAdjuntoCopyWithImpl(this._self, this._then);

  final ClienteAdjunto _self;
  final $Res Function(ClienteAdjunto) _then;

/// Create a copy of ClienteAdjunto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? nombreAdjunto = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,nombreAdjunto: null == nombreAdjunto ? _self.nombreAdjunto : nombreAdjunto // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteAdjunto].
extension ClienteAdjuntoPatterns on ClienteAdjunto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteAdjunto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteAdjunto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteAdjunto value)  $default,){
final _that = this;
switch (_that) {
case _ClienteAdjunto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteAdjunto value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteAdjunto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  String nombreAdjunto)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteAdjunto() when $default != null:
return $default(_that.clienteId,_that.nombreAdjunto);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  String nombreAdjunto)  $default,) {final _that = this;
switch (_that) {
case _ClienteAdjunto():
return $default(_that.clienteId,_that.nombreAdjunto);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  String nombreAdjunto)?  $default,) {final _that = this;
switch (_that) {
case _ClienteAdjunto() when $default != null:
return $default(_that.clienteId,_that.nombreAdjunto);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteAdjunto extends ClienteAdjunto {
  const _ClienteAdjunto({required this.clienteId, required this.nombreAdjunto}): super._();
  

@override final  String clienteId;
@override final  String nombreAdjunto;

/// Create a copy of ClienteAdjunto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteAdjuntoCopyWith<_ClienteAdjunto> get copyWith => __$ClienteAdjuntoCopyWithImpl<_ClienteAdjunto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteAdjunto&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.nombreAdjunto, nombreAdjunto) || other.nombreAdjunto == nombreAdjunto));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,nombreAdjunto);

@override
String toString() {
  return 'ClienteAdjunto(clienteId: $clienteId, nombreAdjunto: $nombreAdjunto)';
}


}

/// @nodoc
abstract mixin class _$ClienteAdjuntoCopyWith<$Res> implements $ClienteAdjuntoCopyWith<$Res> {
  factory _$ClienteAdjuntoCopyWith(_ClienteAdjunto value, $Res Function(_ClienteAdjunto) _then) = __$ClienteAdjuntoCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, String nombreAdjunto
});




}
/// @nodoc
class __$ClienteAdjuntoCopyWithImpl<$Res>
    implements _$ClienteAdjuntoCopyWith<$Res> {
  __$ClienteAdjuntoCopyWithImpl(this._self, this._then);

  final _ClienteAdjunto _self;
  final $Res Function(_ClienteAdjunto) _then;

/// Create a copy of ClienteAdjunto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? nombreAdjunto = null,}) {
  return _then(_ClienteAdjunto(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,nombreAdjunto: null == nombreAdjunto ? _self.nombreAdjunto : nombreAdjunto // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
