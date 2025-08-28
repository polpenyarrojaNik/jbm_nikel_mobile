// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_pago_pendiente.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClientePagoPendiente {

 String get clienteId; String get efectoId; String? get facutaId; DateTime? get fechaFactura; DateTime? get fechaExpiracion; MetodoDeCobro? get metodoDeCobro; String? get estadoCobroId; Money? get importe; DateTime? get fechaExpiracionInicial; bool? get vencidoJBM; DateTime get lastUpdated; bool get deleted;
/// Create a copy of ClientePagoPendiente
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientePagoPendienteCopyWith<ClientePagoPendiente> get copyWith => _$ClientePagoPendienteCopyWithImpl<ClientePagoPendiente>(this as ClientePagoPendiente, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientePagoPendiente&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.efectoId, efectoId) || other.efectoId == efectoId)&&(identical(other.facutaId, facutaId) || other.facutaId == facutaId)&&(identical(other.fechaFactura, fechaFactura) || other.fechaFactura == fechaFactura)&&(identical(other.fechaExpiracion, fechaExpiracion) || other.fechaExpiracion == fechaExpiracion)&&(identical(other.metodoDeCobro, metodoDeCobro) || other.metodoDeCobro == metodoDeCobro)&&(identical(other.estadoCobroId, estadoCobroId) || other.estadoCobroId == estadoCobroId)&&(identical(other.importe, importe) || other.importe == importe)&&(identical(other.fechaExpiracionInicial, fechaExpiracionInicial) || other.fechaExpiracionInicial == fechaExpiracionInicial)&&(identical(other.vencidoJBM, vencidoJBM) || other.vencidoJBM == vencidoJBM)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,efectoId,facutaId,fechaFactura,fechaExpiracion,metodoDeCobro,estadoCobroId,importe,fechaExpiracionInicial,vencidoJBM,lastUpdated,deleted);

@override
String toString() {
  return 'ClientePagoPendiente(clienteId: $clienteId, efectoId: $efectoId, facutaId: $facutaId, fechaFactura: $fechaFactura, fechaExpiracion: $fechaExpiracion, metodoDeCobro: $metodoDeCobro, estadoCobroId: $estadoCobroId, importe: $importe, fechaExpiracionInicial: $fechaExpiracionInicial, vencidoJBM: $vencidoJBM, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClientePagoPendienteCopyWith<$Res>  {
  factory $ClientePagoPendienteCopyWith(ClientePagoPendiente value, $Res Function(ClientePagoPendiente) _then) = _$ClientePagoPendienteCopyWithImpl;
@useResult
$Res call({
 String clienteId, String efectoId, String? facutaId, DateTime? fechaFactura, DateTime? fechaExpiracion, MetodoDeCobro? metodoDeCobro, String? estadoCobroId, Money? importe, DateTime? fechaExpiracionInicial, bool? vencidoJBM, DateTime lastUpdated, bool deleted
});


$MetodoDeCobroCopyWith<$Res>? get metodoDeCobro;

}
/// @nodoc
class _$ClientePagoPendienteCopyWithImpl<$Res>
    implements $ClientePagoPendienteCopyWith<$Res> {
  _$ClientePagoPendienteCopyWithImpl(this._self, this._then);

  final ClientePagoPendiente _self;
  final $Res Function(ClientePagoPendiente) _then;

/// Create a copy of ClientePagoPendiente
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? efectoId = null,Object? facutaId = freezed,Object? fechaFactura = freezed,Object? fechaExpiracion = freezed,Object? metodoDeCobro = freezed,Object? estadoCobroId = freezed,Object? importe = freezed,Object? fechaExpiracionInicial = freezed,Object? vencidoJBM = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,efectoId: null == efectoId ? _self.efectoId : efectoId // ignore: cast_nullable_to_non_nullable
as String,facutaId: freezed == facutaId ? _self.facutaId : facutaId // ignore: cast_nullable_to_non_nullable
as String?,fechaFactura: freezed == fechaFactura ? _self.fechaFactura : fechaFactura // ignore: cast_nullable_to_non_nullable
as DateTime?,fechaExpiracion: freezed == fechaExpiracion ? _self.fechaExpiracion : fechaExpiracion // ignore: cast_nullable_to_non_nullable
as DateTime?,metodoDeCobro: freezed == metodoDeCobro ? _self.metodoDeCobro : metodoDeCobro // ignore: cast_nullable_to_non_nullable
as MetodoDeCobro?,estadoCobroId: freezed == estadoCobroId ? _self.estadoCobroId : estadoCobroId // ignore: cast_nullable_to_non_nullable
as String?,importe: freezed == importe ? _self.importe : importe // ignore: cast_nullable_to_non_nullable
as Money?,fechaExpiracionInicial: freezed == fechaExpiracionInicial ? _self.fechaExpiracionInicial : fechaExpiracionInicial // ignore: cast_nullable_to_non_nullable
as DateTime?,vencidoJBM: freezed == vencidoJBM ? _self.vencidoJBM : vencidoJBM // ignore: cast_nullable_to_non_nullable
as bool?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ClientePagoPendiente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetodoDeCobroCopyWith<$Res>? get metodoDeCobro {
    if (_self.metodoDeCobro == null) {
    return null;
  }

  return $MetodoDeCobroCopyWith<$Res>(_self.metodoDeCobro!, (value) {
    return _then(_self.copyWith(metodoDeCobro: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClientePagoPendiente].
extension ClientePagoPendientePatterns on ClientePagoPendiente {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClientePagoPendiente value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClientePagoPendiente() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClientePagoPendiente value)  $default,){
final _that = this;
switch (_that) {
case _ClientePagoPendiente():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClientePagoPendiente value)?  $default,){
final _that = this;
switch (_that) {
case _ClientePagoPendiente() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  String efectoId,  String? facutaId,  DateTime? fechaFactura,  DateTime? fechaExpiracion,  MetodoDeCobro? metodoDeCobro,  String? estadoCobroId,  Money? importe,  DateTime? fechaExpiracionInicial,  bool? vencidoJBM,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClientePagoPendiente() when $default != null:
return $default(_that.clienteId,_that.efectoId,_that.facutaId,_that.fechaFactura,_that.fechaExpiracion,_that.metodoDeCobro,_that.estadoCobroId,_that.importe,_that.fechaExpiracionInicial,_that.vencidoJBM,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  String efectoId,  String? facutaId,  DateTime? fechaFactura,  DateTime? fechaExpiracion,  MetodoDeCobro? metodoDeCobro,  String? estadoCobroId,  Money? importe,  DateTime? fechaExpiracionInicial,  bool? vencidoJBM,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _ClientePagoPendiente():
return $default(_that.clienteId,_that.efectoId,_that.facutaId,_that.fechaFactura,_that.fechaExpiracion,_that.metodoDeCobro,_that.estadoCobroId,_that.importe,_that.fechaExpiracionInicial,_that.vencidoJBM,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  String efectoId,  String? facutaId,  DateTime? fechaFactura,  DateTime? fechaExpiracion,  MetodoDeCobro? metodoDeCobro,  String? estadoCobroId,  Money? importe,  DateTime? fechaExpiracionInicial,  bool? vencidoJBM,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _ClientePagoPendiente() when $default != null:
return $default(_that.clienteId,_that.efectoId,_that.facutaId,_that.fechaFactura,_that.fechaExpiracion,_that.metodoDeCobro,_that.estadoCobroId,_that.importe,_that.fechaExpiracionInicial,_that.vencidoJBM,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _ClientePagoPendiente extends ClientePagoPendiente {
  const _ClientePagoPendiente({required this.clienteId, required this.efectoId, this.facutaId, this.fechaFactura, this.fechaExpiracion, this.metodoDeCobro, this.estadoCobroId, this.importe, this.fechaExpiracionInicial, this.vencidoJBM, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String clienteId;
@override final  String efectoId;
@override final  String? facutaId;
@override final  DateTime? fechaFactura;
@override final  DateTime? fechaExpiracion;
@override final  MetodoDeCobro? metodoDeCobro;
@override final  String? estadoCobroId;
@override final  Money? importe;
@override final  DateTime? fechaExpiracionInicial;
@override final  bool? vencidoJBM;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of ClientePagoPendiente
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClientePagoPendienteCopyWith<_ClientePagoPendiente> get copyWith => __$ClientePagoPendienteCopyWithImpl<_ClientePagoPendiente>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClientePagoPendiente&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.efectoId, efectoId) || other.efectoId == efectoId)&&(identical(other.facutaId, facutaId) || other.facutaId == facutaId)&&(identical(other.fechaFactura, fechaFactura) || other.fechaFactura == fechaFactura)&&(identical(other.fechaExpiracion, fechaExpiracion) || other.fechaExpiracion == fechaExpiracion)&&(identical(other.metodoDeCobro, metodoDeCobro) || other.metodoDeCobro == metodoDeCobro)&&(identical(other.estadoCobroId, estadoCobroId) || other.estadoCobroId == estadoCobroId)&&(identical(other.importe, importe) || other.importe == importe)&&(identical(other.fechaExpiracionInicial, fechaExpiracionInicial) || other.fechaExpiracionInicial == fechaExpiracionInicial)&&(identical(other.vencidoJBM, vencidoJBM) || other.vencidoJBM == vencidoJBM)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,efectoId,facutaId,fechaFactura,fechaExpiracion,metodoDeCobro,estadoCobroId,importe,fechaExpiracionInicial,vencidoJBM,lastUpdated,deleted);

@override
String toString() {
  return 'ClientePagoPendiente(clienteId: $clienteId, efectoId: $efectoId, facutaId: $facutaId, fechaFactura: $fechaFactura, fechaExpiracion: $fechaExpiracion, metodoDeCobro: $metodoDeCobro, estadoCobroId: $estadoCobroId, importe: $importe, fechaExpiracionInicial: $fechaExpiracionInicial, vencidoJBM: $vencidoJBM, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClientePagoPendienteCopyWith<$Res> implements $ClientePagoPendienteCopyWith<$Res> {
  factory _$ClientePagoPendienteCopyWith(_ClientePagoPendiente value, $Res Function(_ClientePagoPendiente) _then) = __$ClientePagoPendienteCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, String efectoId, String? facutaId, DateTime? fechaFactura, DateTime? fechaExpiracion, MetodoDeCobro? metodoDeCobro, String? estadoCobroId, Money? importe, DateTime? fechaExpiracionInicial, bool? vencidoJBM, DateTime lastUpdated, bool deleted
});


@override $MetodoDeCobroCopyWith<$Res>? get metodoDeCobro;

}
/// @nodoc
class __$ClientePagoPendienteCopyWithImpl<$Res>
    implements _$ClientePagoPendienteCopyWith<$Res> {
  __$ClientePagoPendienteCopyWithImpl(this._self, this._then);

  final _ClientePagoPendiente _self;
  final $Res Function(_ClientePagoPendiente) _then;

/// Create a copy of ClientePagoPendiente
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? efectoId = null,Object? facutaId = freezed,Object? fechaFactura = freezed,Object? fechaExpiracion = freezed,Object? metodoDeCobro = freezed,Object? estadoCobroId = freezed,Object? importe = freezed,Object? fechaExpiracionInicial = freezed,Object? vencidoJBM = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ClientePagoPendiente(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,efectoId: null == efectoId ? _self.efectoId : efectoId // ignore: cast_nullable_to_non_nullable
as String,facutaId: freezed == facutaId ? _self.facutaId : facutaId // ignore: cast_nullable_to_non_nullable
as String?,fechaFactura: freezed == fechaFactura ? _self.fechaFactura : fechaFactura // ignore: cast_nullable_to_non_nullable
as DateTime?,fechaExpiracion: freezed == fechaExpiracion ? _self.fechaExpiracion : fechaExpiracion // ignore: cast_nullable_to_non_nullable
as DateTime?,metodoDeCobro: freezed == metodoDeCobro ? _self.metodoDeCobro : metodoDeCobro // ignore: cast_nullable_to_non_nullable
as MetodoDeCobro?,estadoCobroId: freezed == estadoCobroId ? _self.estadoCobroId : estadoCobroId // ignore: cast_nullable_to_non_nullable
as String?,importe: freezed == importe ? _self.importe : importe // ignore: cast_nullable_to_non_nullable
as Money?,fechaExpiracionInicial: freezed == fechaExpiracionInicial ? _self.fechaExpiracionInicial : fechaExpiracionInicial // ignore: cast_nullable_to_non_nullable
as DateTime?,vencidoJBM: freezed == vencidoJBM ? _self.vencidoJBM : vencidoJBM // ignore: cast_nullable_to_non_nullable
as bool?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ClientePagoPendiente
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetodoDeCobroCopyWith<$Res>? get metodoDeCobro {
    if (_self.metodoDeCobro == null) {
    return null;
  }

  return $MetodoDeCobroCopyWith<$Res>(_self.metodoDeCobro!, (value) {
    return _then(_self.copyWith(metodoDeCobro: value));
  });
}
}

// dart format on
