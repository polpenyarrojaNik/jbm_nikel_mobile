// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_id_nombre.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteIdNombre {

 String get id; String? get nombreCliente;
/// Create a copy of ClienteIdNombre
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteIdNombreCopyWith<ClienteIdNombre> get copyWith => _$ClienteIdNombreCopyWithImpl<ClienteIdNombre>(this as ClienteIdNombre, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteIdNombre&&(identical(other.id, id) || other.id == id)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente));
}


@override
int get hashCode => Object.hash(runtimeType,id,nombreCliente);

@override
String toString() {
  return 'ClienteIdNombre(id: $id, nombreCliente: $nombreCliente)';
}


}

/// @nodoc
abstract mixin class $ClienteIdNombreCopyWith<$Res>  {
  factory $ClienteIdNombreCopyWith(ClienteIdNombre value, $Res Function(ClienteIdNombre) _then) = _$ClienteIdNombreCopyWithImpl;
@useResult
$Res call({
 String id, String? nombreCliente
});




}
/// @nodoc
class _$ClienteIdNombreCopyWithImpl<$Res>
    implements $ClienteIdNombreCopyWith<$Res> {
  _$ClienteIdNombreCopyWithImpl(this._self, this._then);

  final ClienteIdNombre _self;
  final $Res Function(ClienteIdNombre) _then;

/// Create a copy of ClienteIdNombre
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nombreCliente = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nombreCliente: freezed == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteIdNombre].
extension ClienteIdNombrePatterns on ClienteIdNombre {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteIdNombre value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteIdNombre() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteIdNombre value)  $default,){
final _that = this;
switch (_that) {
case _ClienteIdNombre():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteIdNombre value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteIdNombre() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? nombreCliente)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteIdNombre() when $default != null:
return $default(_that.id,_that.nombreCliente);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? nombreCliente)  $default,) {final _that = this;
switch (_that) {
case _ClienteIdNombre():
return $default(_that.id,_that.nombreCliente);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? nombreCliente)?  $default,) {final _that = this;
switch (_that) {
case _ClienteIdNombre() when $default != null:
return $default(_that.id,_that.nombreCliente);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteIdNombre extends ClienteIdNombre {
  const _ClienteIdNombre({required this.id, required this.nombreCliente}): super._();
  

@override final  String id;
@override final  String? nombreCliente;

/// Create a copy of ClienteIdNombre
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteIdNombreCopyWith<_ClienteIdNombre> get copyWith => __$ClienteIdNombreCopyWithImpl<_ClienteIdNombre>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteIdNombre&&(identical(other.id, id) || other.id == id)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente));
}


@override
int get hashCode => Object.hash(runtimeType,id,nombreCliente);

@override
String toString() {
  return 'ClienteIdNombre(id: $id, nombreCliente: $nombreCliente)';
}


}

/// @nodoc
abstract mixin class _$ClienteIdNombreCopyWith<$Res> implements $ClienteIdNombreCopyWith<$Res> {
  factory _$ClienteIdNombreCopyWith(_ClienteIdNombre value, $Res Function(_ClienteIdNombre) _then) = __$ClienteIdNombreCopyWithImpl;
@override @useResult
$Res call({
 String id, String? nombreCliente
});




}
/// @nodoc
class __$ClienteIdNombreCopyWithImpl<$Res>
    implements _$ClienteIdNombreCopyWith<$Res> {
  __$ClienteIdNombreCopyWithImpl(this._self, this._then);

  final _ClienteIdNombre _self;
  final $Res Function(_ClienteIdNombre) _then;

/// Create a copy of ClienteIdNombre
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nombreCliente = freezed,}) {
  return _then(_ClienteIdNombre(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nombreCliente: freezed == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
