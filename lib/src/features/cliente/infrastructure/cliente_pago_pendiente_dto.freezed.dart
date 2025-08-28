// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_pago_pendiente_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClientePagoPendienteDTO {

@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'EFECTO_ID') String get efectoId;@JsonKey(name: 'FACTURA_ID') String? get facutaId;@JsonKey(name: 'FECHA_FACUTRA') DateTime? get fechaFactura;@JsonKey(name: 'FECHA_VENCIMIENTO') DateTime? get fechaExpiracion;@JsonKey(name: 'METODO_COBRO_ID') String? get metodoDeCobroId;@JsonKey(name: 'ESTADO_COBRO_ID') String? get estadoCobroId;@JsonKey(name: 'IMPORTE') double? get importe;@JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL') DateTime? get fechaExpiracionInicial;@JsonKey(name: 'VENCIDO_JBM') String? get vencidoJBM;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ClientePagoPendienteDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientePagoPendienteDTOCopyWith<ClientePagoPendienteDTO> get copyWith => _$ClientePagoPendienteDTOCopyWithImpl<ClientePagoPendienteDTO>(this as ClientePagoPendienteDTO, _$identity);

  /// Serializes this ClientePagoPendienteDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientePagoPendienteDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.efectoId, efectoId) || other.efectoId == efectoId)&&(identical(other.facutaId, facutaId) || other.facutaId == facutaId)&&(identical(other.fechaFactura, fechaFactura) || other.fechaFactura == fechaFactura)&&(identical(other.fechaExpiracion, fechaExpiracion) || other.fechaExpiracion == fechaExpiracion)&&(identical(other.metodoDeCobroId, metodoDeCobroId) || other.metodoDeCobroId == metodoDeCobroId)&&(identical(other.estadoCobroId, estadoCobroId) || other.estadoCobroId == estadoCobroId)&&(identical(other.importe, importe) || other.importe == importe)&&(identical(other.fechaExpiracionInicial, fechaExpiracionInicial) || other.fechaExpiracionInicial == fechaExpiracionInicial)&&(identical(other.vencidoJBM, vencidoJBM) || other.vencidoJBM == vencidoJBM)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,efectoId,facutaId,fechaFactura,fechaExpiracion,metodoDeCobroId,estadoCobroId,importe,fechaExpiracionInicial,vencidoJBM,lastUpdated,deleted);

@override
String toString() {
  return 'ClientePagoPendienteDTO(clienteId: $clienteId, efectoId: $efectoId, facutaId: $facutaId, fechaFactura: $fechaFactura, fechaExpiracion: $fechaExpiracion, metodoDeCobroId: $metodoDeCobroId, estadoCobroId: $estadoCobroId, importe: $importe, fechaExpiracionInicial: $fechaExpiracionInicial, vencidoJBM: $vencidoJBM, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClientePagoPendienteDTOCopyWith<$Res>  {
  factory $ClientePagoPendienteDTOCopyWith(ClientePagoPendienteDTO value, $Res Function(ClientePagoPendienteDTO) _then) = _$ClientePagoPendienteDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'EFECTO_ID') String efectoId,@JsonKey(name: 'FACTURA_ID') String? facutaId,@JsonKey(name: 'FECHA_FACUTRA') DateTime? fechaFactura,@JsonKey(name: 'FECHA_VENCIMIENTO') DateTime? fechaExpiracion,@JsonKey(name: 'METODO_COBRO_ID') String? metodoDeCobroId,@JsonKey(name: 'ESTADO_COBRO_ID') String? estadoCobroId,@JsonKey(name: 'IMPORTE') double? importe,@JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL') DateTime? fechaExpiracionInicial,@JsonKey(name: 'VENCIDO_JBM') String? vencidoJBM,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ClientePagoPendienteDTOCopyWithImpl<$Res>
    implements $ClientePagoPendienteDTOCopyWith<$Res> {
  _$ClientePagoPendienteDTOCopyWithImpl(this._self, this._then);

  final ClientePagoPendienteDTO _self;
  final $Res Function(ClientePagoPendienteDTO) _then;

/// Create a copy of ClientePagoPendienteDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? efectoId = null,Object? facutaId = freezed,Object? fechaFactura = freezed,Object? fechaExpiracion = freezed,Object? metodoDeCobroId = freezed,Object? estadoCobroId = freezed,Object? importe = freezed,Object? fechaExpiracionInicial = freezed,Object? vencidoJBM = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,efectoId: null == efectoId ? _self.efectoId : efectoId // ignore: cast_nullable_to_non_nullable
as String,facutaId: freezed == facutaId ? _self.facutaId : facutaId // ignore: cast_nullable_to_non_nullable
as String?,fechaFactura: freezed == fechaFactura ? _self.fechaFactura : fechaFactura // ignore: cast_nullable_to_non_nullable
as DateTime?,fechaExpiracion: freezed == fechaExpiracion ? _self.fechaExpiracion : fechaExpiracion // ignore: cast_nullable_to_non_nullable
as DateTime?,metodoDeCobroId: freezed == metodoDeCobroId ? _self.metodoDeCobroId : metodoDeCobroId // ignore: cast_nullable_to_non_nullable
as String?,estadoCobroId: freezed == estadoCobroId ? _self.estadoCobroId : estadoCobroId // ignore: cast_nullable_to_non_nullable
as String?,importe: freezed == importe ? _self.importe : importe // ignore: cast_nullable_to_non_nullable
as double?,fechaExpiracionInicial: freezed == fechaExpiracionInicial ? _self.fechaExpiracionInicial : fechaExpiracionInicial // ignore: cast_nullable_to_non_nullable
as DateTime?,vencidoJBM: freezed == vencidoJBM ? _self.vencidoJBM : vencidoJBM // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClientePagoPendienteDTO].
extension ClientePagoPendienteDTOPatterns on ClientePagoPendienteDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClientePagoPendienteDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClientePagoPendienteDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClientePagoPendienteDTO value)  $default,){
final _that = this;
switch (_that) {
case _ClientePagoPendienteDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClientePagoPendienteDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ClientePagoPendienteDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'EFECTO_ID')  String efectoId, @JsonKey(name: 'FACTURA_ID')  String? facutaId, @JsonKey(name: 'FECHA_FACUTRA')  DateTime? fechaFactura, @JsonKey(name: 'FECHA_VENCIMIENTO')  DateTime? fechaExpiracion, @JsonKey(name: 'METODO_COBRO_ID')  String? metodoDeCobroId, @JsonKey(name: 'ESTADO_COBRO_ID')  String? estadoCobroId, @JsonKey(name: 'IMPORTE')  double? importe, @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL')  DateTime? fechaExpiracionInicial, @JsonKey(name: 'VENCIDO_JBM')  String? vencidoJBM, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClientePagoPendienteDTO() when $default != null:
return $default(_that.clienteId,_that.efectoId,_that.facutaId,_that.fechaFactura,_that.fechaExpiracion,_that.metodoDeCobroId,_that.estadoCobroId,_that.importe,_that.fechaExpiracionInicial,_that.vencidoJBM,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'EFECTO_ID')  String efectoId, @JsonKey(name: 'FACTURA_ID')  String? facutaId, @JsonKey(name: 'FECHA_FACUTRA')  DateTime? fechaFactura, @JsonKey(name: 'FECHA_VENCIMIENTO')  DateTime? fechaExpiracion, @JsonKey(name: 'METODO_COBRO_ID')  String? metodoDeCobroId, @JsonKey(name: 'ESTADO_COBRO_ID')  String? estadoCobroId, @JsonKey(name: 'IMPORTE')  double? importe, @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL')  DateTime? fechaExpiracionInicial, @JsonKey(name: 'VENCIDO_JBM')  String? vencidoJBM, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ClientePagoPendienteDTO():
return $default(_that.clienteId,_that.efectoId,_that.facutaId,_that.fechaFactura,_that.fechaExpiracion,_that.metodoDeCobroId,_that.estadoCobroId,_that.importe,_that.fechaExpiracionInicial,_that.vencidoJBM,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'EFECTO_ID')  String efectoId, @JsonKey(name: 'FACTURA_ID')  String? facutaId, @JsonKey(name: 'FECHA_FACUTRA')  DateTime? fechaFactura, @JsonKey(name: 'FECHA_VENCIMIENTO')  DateTime? fechaExpiracion, @JsonKey(name: 'METODO_COBRO_ID')  String? metodoDeCobroId, @JsonKey(name: 'ESTADO_COBRO_ID')  String? estadoCobroId, @JsonKey(name: 'IMPORTE')  double? importe, @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL')  DateTime? fechaExpiracionInicial, @JsonKey(name: 'VENCIDO_JBM')  String? vencidoJBM, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ClientePagoPendienteDTO() when $default != null:
return $default(_that.clienteId,_that.efectoId,_that.facutaId,_that.fechaFactura,_that.fechaExpiracion,_that.metodoDeCobroId,_that.estadoCobroId,_that.importe,_that.fechaExpiracionInicial,_that.vencidoJBM,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClientePagoPendienteDTO extends ClientePagoPendienteDTO {
  const _ClientePagoPendienteDTO({@JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'EFECTO_ID') required this.efectoId, @JsonKey(name: 'FACTURA_ID') this.facutaId, @JsonKey(name: 'FECHA_FACUTRA') this.fechaFactura, @JsonKey(name: 'FECHA_VENCIMIENTO') this.fechaExpiracion, @JsonKey(name: 'METODO_COBRO_ID') this.metodoDeCobroId, @JsonKey(name: 'ESTADO_COBRO_ID') this.estadoCobroId, @JsonKey(name: 'IMPORTE') this.importe, @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL') this.fechaExpiracionInicial, @JsonKey(name: 'VENCIDO_JBM') this.vencidoJBM, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _ClientePagoPendienteDTO.fromJson(Map<String, dynamic> json) => _$ClientePagoPendienteDTOFromJson(json);

@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'EFECTO_ID') final  String efectoId;
@override@JsonKey(name: 'FACTURA_ID') final  String? facutaId;
@override@JsonKey(name: 'FECHA_FACUTRA') final  DateTime? fechaFactura;
@override@JsonKey(name: 'FECHA_VENCIMIENTO') final  DateTime? fechaExpiracion;
@override@JsonKey(name: 'METODO_COBRO_ID') final  String? metodoDeCobroId;
@override@JsonKey(name: 'ESTADO_COBRO_ID') final  String? estadoCobroId;
@override@JsonKey(name: 'IMPORTE') final  double? importe;
@override@JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL') final  DateTime? fechaExpiracionInicial;
@override@JsonKey(name: 'VENCIDO_JBM') final  String? vencidoJBM;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ClientePagoPendienteDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClientePagoPendienteDTOCopyWith<_ClientePagoPendienteDTO> get copyWith => __$ClientePagoPendienteDTOCopyWithImpl<_ClientePagoPendienteDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClientePagoPendienteDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClientePagoPendienteDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.efectoId, efectoId) || other.efectoId == efectoId)&&(identical(other.facutaId, facutaId) || other.facutaId == facutaId)&&(identical(other.fechaFactura, fechaFactura) || other.fechaFactura == fechaFactura)&&(identical(other.fechaExpiracion, fechaExpiracion) || other.fechaExpiracion == fechaExpiracion)&&(identical(other.metodoDeCobroId, metodoDeCobroId) || other.metodoDeCobroId == metodoDeCobroId)&&(identical(other.estadoCobroId, estadoCobroId) || other.estadoCobroId == estadoCobroId)&&(identical(other.importe, importe) || other.importe == importe)&&(identical(other.fechaExpiracionInicial, fechaExpiracionInicial) || other.fechaExpiracionInicial == fechaExpiracionInicial)&&(identical(other.vencidoJBM, vencidoJBM) || other.vencidoJBM == vencidoJBM)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,efectoId,facutaId,fechaFactura,fechaExpiracion,metodoDeCobroId,estadoCobroId,importe,fechaExpiracionInicial,vencidoJBM,lastUpdated,deleted);

@override
String toString() {
  return 'ClientePagoPendienteDTO(clienteId: $clienteId, efectoId: $efectoId, facutaId: $facutaId, fechaFactura: $fechaFactura, fechaExpiracion: $fechaExpiracion, metodoDeCobroId: $metodoDeCobroId, estadoCobroId: $estadoCobroId, importe: $importe, fechaExpiracionInicial: $fechaExpiracionInicial, vencidoJBM: $vencidoJBM, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClientePagoPendienteDTOCopyWith<$Res> implements $ClientePagoPendienteDTOCopyWith<$Res> {
  factory _$ClientePagoPendienteDTOCopyWith(_ClientePagoPendienteDTO value, $Res Function(_ClientePagoPendienteDTO) _then) = __$ClientePagoPendienteDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'EFECTO_ID') String efectoId,@JsonKey(name: 'FACTURA_ID') String? facutaId,@JsonKey(name: 'FECHA_FACUTRA') DateTime? fechaFactura,@JsonKey(name: 'FECHA_VENCIMIENTO') DateTime? fechaExpiracion,@JsonKey(name: 'METODO_COBRO_ID') String? metodoDeCobroId,@JsonKey(name: 'ESTADO_COBRO_ID') String? estadoCobroId,@JsonKey(name: 'IMPORTE') double? importe,@JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL') DateTime? fechaExpiracionInicial,@JsonKey(name: 'VENCIDO_JBM') String? vencidoJBM,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ClientePagoPendienteDTOCopyWithImpl<$Res>
    implements _$ClientePagoPendienteDTOCopyWith<$Res> {
  __$ClientePagoPendienteDTOCopyWithImpl(this._self, this._then);

  final _ClientePagoPendienteDTO _self;
  final $Res Function(_ClientePagoPendienteDTO) _then;

/// Create a copy of ClientePagoPendienteDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? efectoId = null,Object? facutaId = freezed,Object? fechaFactura = freezed,Object? fechaExpiracion = freezed,Object? metodoDeCobroId = freezed,Object? estadoCobroId = freezed,Object? importe = freezed,Object? fechaExpiracionInicial = freezed,Object? vencidoJBM = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ClientePagoPendienteDTO(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,efectoId: null == efectoId ? _self.efectoId : efectoId // ignore: cast_nullable_to_non_nullable
as String,facutaId: freezed == facutaId ? _self.facutaId : facutaId // ignore: cast_nullable_to_non_nullable
as String?,fechaFactura: freezed == fechaFactura ? _self.fechaFactura : fechaFactura // ignore: cast_nullable_to_non_nullable
as DateTime?,fechaExpiracion: freezed == fechaExpiracion ? _self.fechaExpiracion : fechaExpiracion // ignore: cast_nullable_to_non_nullable
as DateTime?,metodoDeCobroId: freezed == metodoDeCobroId ? _self.metodoDeCobroId : metodoDeCobroId // ignore: cast_nullable_to_non_nullable
as String?,estadoCobroId: freezed == estadoCobroId ? _self.estadoCobroId : estadoCobroId // ignore: cast_nullable_to_non_nullable
as String?,importe: freezed == importe ? _self.importe : importe // ignore: cast_nullable_to_non_nullable
as double?,fechaExpiracionInicial: freezed == fechaExpiracionInicial ? _self.fechaExpiracionInicial : fechaExpiracionInicial // ignore: cast_nullable_to_non_nullable
as DateTime?,vencidoJBM: freezed == vencidoJBM ? _self.vencidoJBM : vencidoJBM // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
