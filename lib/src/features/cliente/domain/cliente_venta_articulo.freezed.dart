// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_venta_articulo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteVentaArticulo {

 double get clienteId; double get mes; Money get importe; Money get coste;
/// Create a copy of ClienteVentaArticulo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteVentaArticuloCopyWith<ClienteVentaArticulo> get copyWith => _$ClienteVentaArticuloCopyWithImpl<ClienteVentaArticulo>(this as ClienteVentaArticulo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteVentaArticulo&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.mes, mes) || other.mes == mes)&&(identical(other.importe, importe) || other.importe == importe)&&(identical(other.coste, coste) || other.coste == coste));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,mes,importe,coste);

@override
String toString() {
  return 'ClienteVentaArticulo(clienteId: $clienteId, mes: $mes, importe: $importe, coste: $coste)';
}


}

/// @nodoc
abstract mixin class $ClienteVentaArticuloCopyWith<$Res>  {
  factory $ClienteVentaArticuloCopyWith(ClienteVentaArticulo value, $Res Function(ClienteVentaArticulo) _then) = _$ClienteVentaArticuloCopyWithImpl;
@useResult
$Res call({
 double clienteId, double mes, Money importe, Money coste
});




}
/// @nodoc
class _$ClienteVentaArticuloCopyWithImpl<$Res>
    implements $ClienteVentaArticuloCopyWith<$Res> {
  _$ClienteVentaArticuloCopyWithImpl(this._self, this._then);

  final ClienteVentaArticulo _self;
  final $Res Function(ClienteVentaArticulo) _then;

/// Create a copy of ClienteVentaArticulo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? mes = null,Object? importe = null,Object? coste = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as double,mes: null == mes ? _self.mes : mes // ignore: cast_nullable_to_non_nullable
as double,importe: null == importe ? _self.importe : importe // ignore: cast_nullable_to_non_nullable
as Money,coste: null == coste ? _self.coste : coste // ignore: cast_nullable_to_non_nullable
as Money,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteVentaArticulo].
extension ClienteVentaArticuloPatterns on ClienteVentaArticulo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteVentaArticulo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteVentaArticulo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteVentaArticulo value)  $default,){
final _that = this;
switch (_that) {
case _ClienteVentaArticulo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteVentaArticulo value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteVentaArticulo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double clienteId,  double mes,  Money importe,  Money coste)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteVentaArticulo() when $default != null:
return $default(_that.clienteId,_that.mes,_that.importe,_that.coste);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double clienteId,  double mes,  Money importe,  Money coste)  $default,) {final _that = this;
switch (_that) {
case _ClienteVentaArticulo():
return $default(_that.clienteId,_that.mes,_that.importe,_that.coste);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double clienteId,  double mes,  Money importe,  Money coste)?  $default,) {final _that = this;
switch (_that) {
case _ClienteVentaArticulo() when $default != null:
return $default(_that.clienteId,_that.mes,_that.importe,_that.coste);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteVentaArticulo extends ClienteVentaArticulo {
  const _ClienteVentaArticulo({required this.clienteId, required this.mes, required this.importe, required this.coste}): super._();
  

@override final  double clienteId;
@override final  double mes;
@override final  Money importe;
@override final  Money coste;

/// Create a copy of ClienteVentaArticulo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteVentaArticuloCopyWith<_ClienteVentaArticulo> get copyWith => __$ClienteVentaArticuloCopyWithImpl<_ClienteVentaArticulo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteVentaArticulo&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.mes, mes) || other.mes == mes)&&(identical(other.importe, importe) || other.importe == importe)&&(identical(other.coste, coste) || other.coste == coste));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,mes,importe,coste);

@override
String toString() {
  return 'ClienteVentaArticulo(clienteId: $clienteId, mes: $mes, importe: $importe, coste: $coste)';
}


}

/// @nodoc
abstract mixin class _$ClienteVentaArticuloCopyWith<$Res> implements $ClienteVentaArticuloCopyWith<$Res> {
  factory _$ClienteVentaArticuloCopyWith(_ClienteVentaArticulo value, $Res Function(_ClienteVentaArticulo) _then) = __$ClienteVentaArticuloCopyWithImpl;
@override @useResult
$Res call({
 double clienteId, double mes, Money importe, Money coste
});




}
/// @nodoc
class __$ClienteVentaArticuloCopyWithImpl<$Res>
    implements _$ClienteVentaArticuloCopyWith<$Res> {
  __$ClienteVentaArticuloCopyWithImpl(this._self, this._then);

  final _ClienteVentaArticulo _self;
  final $Res Function(_ClienteVentaArticulo) _then;

/// Create a copy of ClienteVentaArticulo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? mes = null,Object? importe = null,Object? coste = null,}) {
  return _then(_ClienteVentaArticulo(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as double,mes: null == mes ? _self.mes : mes // ignore: cast_nullable_to_non_nullable
as double,importe: null == importe ? _self.importe : importe // ignore: cast_nullable_to_non_nullable
as Money,coste: null == coste ? _self.coste : coste // ignore: cast_nullable_to_non_nullable
as Money,
  ));
}


}

// dart format on
