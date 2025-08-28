// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_venta_local_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PedidoVentaLocalDTO {

@JsonKey(name: 'USUARIO_ID') String? get usuarioId;@JsonKey(name: 'PEDIDO_ID') String? get pedidoId;@JsonKey(name: 'EMPRESA_ID') String? get empresaId;@JsonKey(name: 'PEDIDO_APP_ID') String get pedidoVentaAppId;@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'NOMBRE_CLIENTE') String get nombreCliente;@JsonKey(name: 'DIRECCION_ID') String? get direccionId;@JsonKey(name: 'DIRECCION1') String? get direccion1;@JsonKey(name: 'DIRECCION2') String? get direccion2;@JsonKey(name: 'CODIGO_POSTAL') String? get codigoPostal;@JsonKey(name: 'POBLACION') String? get poblacion;@JsonKey(name: 'PROVINCIA') String? get provincia;@JsonKey(name: 'PAIS_ID') String? get paisId;@JsonKey(name: 'DIVISA_ID') String? get divisaId;@JsonKey(name: 'PEDIDO_CLIENTE') String? get pedidoCliente;@JsonKey(name: 'OBSERVACIONES') String? get observaciones;@JsonKey(name: 'OFERTA_SN') String get oferta;@JsonKey(name: 'OFERTA_FECHA_HASTA') DateTime? get ofertaFechaHasta;@JsonKey(name: 'FECHA_ALTA') DateTime get fechaAlta;@JsonKey(name: 'IVA') double get iva;@JsonKey(name: 'DTO_BONIFICACION') double get dtoBonificacion;@JsonKey(name: 'ENVIADA') String get enviada;@JsonKey(name: 'TRATADA') String get tratada;@JsonKey(name: 'BORRADOR') String get borrador;@JsonKey(name: 'ERROR_SYNC') String? get errorSyncMessage;
/// Create a copy of PedidoVentaLocalDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PedidoVentaLocalDTOCopyWith<PedidoVentaLocalDTO> get copyWith => _$PedidoVentaLocalDTOCopyWithImpl<PedidoVentaLocalDTO>(this as PedidoVentaLocalDTO, _$identity);

  /// Serializes this PedidoVentaLocalDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PedidoVentaLocalDTO&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.pedidoId, pedidoId) || other.pedidoId == pedidoId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoVentaAppId, pedidoVentaAppId) || other.pedidoVentaAppId == pedidoVentaAppId)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.direccion1, direccion1) || other.direccion1 == direccion1)&&(identical(other.direccion2, direccion2) || other.direccion2 == direccion2)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.pedidoCliente, pedidoCliente) || other.pedidoCliente == pedidoCliente)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.oferta, oferta) || other.oferta == oferta)&&(identical(other.ofertaFechaHasta, ofertaFechaHasta) || other.ofertaFechaHasta == ofertaFechaHasta)&&(identical(other.fechaAlta, fechaAlta) || other.fechaAlta == fechaAlta)&&(identical(other.iva, iva) || other.iva == iva)&&(identical(other.dtoBonificacion, dtoBonificacion) || other.dtoBonificacion == dtoBonificacion)&&(identical(other.enviada, enviada) || other.enviada == enviada)&&(identical(other.tratada, tratada) || other.tratada == tratada)&&(identical(other.borrador, borrador) || other.borrador == borrador)&&(identical(other.errorSyncMessage, errorSyncMessage) || other.errorSyncMessage == errorSyncMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,usuarioId,pedidoId,empresaId,pedidoVentaAppId,clienteId,nombreCliente,direccionId,direccion1,direccion2,codigoPostal,poblacion,provincia,paisId,divisaId,pedidoCliente,observaciones,oferta,ofertaFechaHasta,fechaAlta,iva,dtoBonificacion,enviada,tratada,borrador,errorSyncMessage]);

@override
String toString() {
  return 'PedidoVentaLocalDTO(usuarioId: $usuarioId, pedidoId: $pedidoId, empresaId: $empresaId, pedidoVentaAppId: $pedidoVentaAppId, clienteId: $clienteId, nombreCliente: $nombreCliente, direccionId: $direccionId, direccion1: $direccion1, direccion2: $direccion2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, paisId: $paisId, divisaId: $divisaId, pedidoCliente: $pedidoCliente, observaciones: $observaciones, oferta: $oferta, ofertaFechaHasta: $ofertaFechaHasta, fechaAlta: $fechaAlta, iva: $iva, dtoBonificacion: $dtoBonificacion, enviada: $enviada, tratada: $tratada, borrador: $borrador, errorSyncMessage: $errorSyncMessage)';
}


}

/// @nodoc
abstract mixin class $PedidoVentaLocalDTOCopyWith<$Res>  {
  factory $PedidoVentaLocalDTOCopyWith(PedidoVentaLocalDTO value, $Res Function(PedidoVentaLocalDTO) _then) = _$PedidoVentaLocalDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'USUARIO_ID') String? usuarioId,@JsonKey(name: 'PEDIDO_ID') String? pedidoId,@JsonKey(name: 'EMPRESA_ID') String? empresaId,@JsonKey(name: 'PEDIDO_APP_ID') String pedidoVentaAppId,@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'NOMBRE_CLIENTE') String nombreCliente,@JsonKey(name: 'DIRECCION_ID') String? direccionId,@JsonKey(name: 'DIRECCION1') String? direccion1,@JsonKey(name: 'DIRECCION2') String? direccion2,@JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,@JsonKey(name: 'POBLACION') String? poblacion,@JsonKey(name: 'PROVINCIA') String? provincia,@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'DIVISA_ID') String? divisaId,@JsonKey(name: 'PEDIDO_CLIENTE') String? pedidoCliente,@JsonKey(name: 'OBSERVACIONES') String? observaciones,@JsonKey(name: 'OFERTA_SN') String oferta,@JsonKey(name: 'OFERTA_FECHA_HASTA') DateTime? ofertaFechaHasta,@JsonKey(name: 'FECHA_ALTA') DateTime fechaAlta,@JsonKey(name: 'IVA') double iva,@JsonKey(name: 'DTO_BONIFICACION') double dtoBonificacion,@JsonKey(name: 'ENVIADA') String enviada,@JsonKey(name: 'TRATADA') String tratada,@JsonKey(name: 'BORRADOR') String borrador,@JsonKey(name: 'ERROR_SYNC') String? errorSyncMessage
});




}
/// @nodoc
class _$PedidoVentaLocalDTOCopyWithImpl<$Res>
    implements $PedidoVentaLocalDTOCopyWith<$Res> {
  _$PedidoVentaLocalDTOCopyWithImpl(this._self, this._then);

  final PedidoVentaLocalDTO _self;
  final $Res Function(PedidoVentaLocalDTO) _then;

/// Create a copy of PedidoVentaLocalDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? usuarioId = freezed,Object? pedidoId = freezed,Object? empresaId = freezed,Object? pedidoVentaAppId = null,Object? clienteId = null,Object? nombreCliente = null,Object? direccionId = freezed,Object? direccion1 = freezed,Object? direccion2 = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? paisId = freezed,Object? divisaId = freezed,Object? pedidoCliente = freezed,Object? observaciones = freezed,Object? oferta = null,Object? ofertaFechaHasta = freezed,Object? fechaAlta = null,Object? iva = null,Object? dtoBonificacion = null,Object? enviada = null,Object? tratada = null,Object? borrador = null,Object? errorSyncMessage = freezed,}) {
  return _then(_self.copyWith(
usuarioId: freezed == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String?,pedidoId: freezed == pedidoId ? _self.pedidoId : pedidoId // ignore: cast_nullable_to_non_nullable
as String?,empresaId: freezed == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String?,pedidoVentaAppId: null == pedidoVentaAppId ? _self.pedidoVentaAppId : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
as String,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,nombreCliente: null == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String,direccionId: freezed == direccionId ? _self.direccionId : direccionId // ignore: cast_nullable_to_non_nullable
as String?,direccion1: freezed == direccion1 ? _self.direccion1 : direccion1 // ignore: cast_nullable_to_non_nullable
as String?,direccion2: freezed == direccion2 ? _self.direccion2 : direccion2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,divisaId: freezed == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String?,pedidoCliente: freezed == pedidoCliente ? _self.pedidoCliente : pedidoCliente // ignore: cast_nullable_to_non_nullable
as String?,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,oferta: null == oferta ? _self.oferta : oferta // ignore: cast_nullable_to_non_nullable
as String,ofertaFechaHasta: freezed == ofertaFechaHasta ? _self.ofertaFechaHasta : ofertaFechaHasta // ignore: cast_nullable_to_non_nullable
as DateTime?,fechaAlta: null == fechaAlta ? _self.fechaAlta : fechaAlta // ignore: cast_nullable_to_non_nullable
as DateTime,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double,dtoBonificacion: null == dtoBonificacion ? _self.dtoBonificacion : dtoBonificacion // ignore: cast_nullable_to_non_nullable
as double,enviada: null == enviada ? _self.enviada : enviada // ignore: cast_nullable_to_non_nullable
as String,tratada: null == tratada ? _self.tratada : tratada // ignore: cast_nullable_to_non_nullable
as String,borrador: null == borrador ? _self.borrador : borrador // ignore: cast_nullable_to_non_nullable
as String,errorSyncMessage: freezed == errorSyncMessage ? _self.errorSyncMessage : errorSyncMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PedidoVentaLocalDTO].
extension PedidoVentaLocalDTOPatterns on PedidoVentaLocalDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PedidoVentaLocalDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PedidoVentaLocalDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PedidoVentaLocalDTO value)  $default,){
final _that = this;
switch (_that) {
case _PedidoVentaLocalDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PedidoVentaLocalDTO value)?  $default,){
final _that = this;
switch (_that) {
case _PedidoVentaLocalDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'USUARIO_ID')  String? usuarioId, @JsonKey(name: 'PEDIDO_ID')  String? pedidoId, @JsonKey(name: 'EMPRESA_ID')  String? empresaId, @JsonKey(name: 'PEDIDO_APP_ID')  String pedidoVentaAppId, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'NOMBRE_CLIENTE')  String nombreCliente, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'DIRECCION1')  String? direccion1, @JsonKey(name: 'DIRECCION2')  String? direccion2, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'DIVISA_ID')  String? divisaId, @JsonKey(name: 'PEDIDO_CLIENTE')  String? pedidoCliente, @JsonKey(name: 'OBSERVACIONES')  String? observaciones, @JsonKey(name: 'OFERTA_SN')  String oferta, @JsonKey(name: 'OFERTA_FECHA_HASTA')  DateTime? ofertaFechaHasta, @JsonKey(name: 'FECHA_ALTA')  DateTime fechaAlta, @JsonKey(name: 'IVA')  double iva, @JsonKey(name: 'DTO_BONIFICACION')  double dtoBonificacion, @JsonKey(name: 'ENVIADA')  String enviada, @JsonKey(name: 'TRATADA')  String tratada, @JsonKey(name: 'BORRADOR')  String borrador, @JsonKey(name: 'ERROR_SYNC')  String? errorSyncMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PedidoVentaLocalDTO() when $default != null:
return $default(_that.usuarioId,_that.pedidoId,_that.empresaId,_that.pedidoVentaAppId,_that.clienteId,_that.nombreCliente,_that.direccionId,_that.direccion1,_that.direccion2,_that.codigoPostal,_that.poblacion,_that.provincia,_that.paisId,_that.divisaId,_that.pedidoCliente,_that.observaciones,_that.oferta,_that.ofertaFechaHasta,_that.fechaAlta,_that.iva,_that.dtoBonificacion,_that.enviada,_that.tratada,_that.borrador,_that.errorSyncMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'USUARIO_ID')  String? usuarioId, @JsonKey(name: 'PEDIDO_ID')  String? pedidoId, @JsonKey(name: 'EMPRESA_ID')  String? empresaId, @JsonKey(name: 'PEDIDO_APP_ID')  String pedidoVentaAppId, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'NOMBRE_CLIENTE')  String nombreCliente, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'DIRECCION1')  String? direccion1, @JsonKey(name: 'DIRECCION2')  String? direccion2, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'DIVISA_ID')  String? divisaId, @JsonKey(name: 'PEDIDO_CLIENTE')  String? pedidoCliente, @JsonKey(name: 'OBSERVACIONES')  String? observaciones, @JsonKey(name: 'OFERTA_SN')  String oferta, @JsonKey(name: 'OFERTA_FECHA_HASTA')  DateTime? ofertaFechaHasta, @JsonKey(name: 'FECHA_ALTA')  DateTime fechaAlta, @JsonKey(name: 'IVA')  double iva, @JsonKey(name: 'DTO_BONIFICACION')  double dtoBonificacion, @JsonKey(name: 'ENVIADA')  String enviada, @JsonKey(name: 'TRATADA')  String tratada, @JsonKey(name: 'BORRADOR')  String borrador, @JsonKey(name: 'ERROR_SYNC')  String? errorSyncMessage)  $default,) {final _that = this;
switch (_that) {
case _PedidoVentaLocalDTO():
return $default(_that.usuarioId,_that.pedidoId,_that.empresaId,_that.pedidoVentaAppId,_that.clienteId,_that.nombreCliente,_that.direccionId,_that.direccion1,_that.direccion2,_that.codigoPostal,_that.poblacion,_that.provincia,_that.paisId,_that.divisaId,_that.pedidoCliente,_that.observaciones,_that.oferta,_that.ofertaFechaHasta,_that.fechaAlta,_that.iva,_that.dtoBonificacion,_that.enviada,_that.tratada,_that.borrador,_that.errorSyncMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'USUARIO_ID')  String? usuarioId, @JsonKey(name: 'PEDIDO_ID')  String? pedidoId, @JsonKey(name: 'EMPRESA_ID')  String? empresaId, @JsonKey(name: 'PEDIDO_APP_ID')  String pedidoVentaAppId, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'NOMBRE_CLIENTE')  String nombreCliente, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'DIRECCION1')  String? direccion1, @JsonKey(name: 'DIRECCION2')  String? direccion2, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'DIVISA_ID')  String? divisaId, @JsonKey(name: 'PEDIDO_CLIENTE')  String? pedidoCliente, @JsonKey(name: 'OBSERVACIONES')  String? observaciones, @JsonKey(name: 'OFERTA_SN')  String oferta, @JsonKey(name: 'OFERTA_FECHA_HASTA')  DateTime? ofertaFechaHasta, @JsonKey(name: 'FECHA_ALTA')  DateTime fechaAlta, @JsonKey(name: 'IVA')  double iva, @JsonKey(name: 'DTO_BONIFICACION')  double dtoBonificacion, @JsonKey(name: 'ENVIADA')  String enviada, @JsonKey(name: 'TRATADA')  String tratada, @JsonKey(name: 'BORRADOR')  String borrador, @JsonKey(name: 'ERROR_SYNC')  String? errorSyncMessage)?  $default,) {final _that = this;
switch (_that) {
case _PedidoVentaLocalDTO() when $default != null:
return $default(_that.usuarioId,_that.pedidoId,_that.empresaId,_that.pedidoVentaAppId,_that.clienteId,_that.nombreCliente,_that.direccionId,_that.direccion1,_that.direccion2,_that.codigoPostal,_that.poblacion,_that.provincia,_that.paisId,_that.divisaId,_that.pedidoCliente,_that.observaciones,_that.oferta,_that.ofertaFechaHasta,_that.fechaAlta,_that.iva,_that.dtoBonificacion,_that.enviada,_that.tratada,_that.borrador,_that.errorSyncMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PedidoVentaLocalDTO extends PedidoVentaLocalDTO {
  const _PedidoVentaLocalDTO({@JsonKey(name: 'USUARIO_ID') this.usuarioId, @JsonKey(name: 'PEDIDO_ID') this.pedidoId, @JsonKey(name: 'EMPRESA_ID') this.empresaId, @JsonKey(name: 'PEDIDO_APP_ID') required this.pedidoVentaAppId, @JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'NOMBRE_CLIENTE') required this.nombreCliente, @JsonKey(name: 'DIRECCION_ID') this.direccionId, @JsonKey(name: 'DIRECCION1') this.direccion1, @JsonKey(name: 'DIRECCION2') this.direccion2, @JsonKey(name: 'CODIGO_POSTAL') this.codigoPostal, @JsonKey(name: 'POBLACION') this.poblacion, @JsonKey(name: 'PROVINCIA') this.provincia, @JsonKey(name: 'PAIS_ID') this.paisId, @JsonKey(name: 'DIVISA_ID') this.divisaId, @JsonKey(name: 'PEDIDO_CLIENTE') this.pedidoCliente, @JsonKey(name: 'OBSERVACIONES') this.observaciones, @JsonKey(name: 'OFERTA_SN') required this.oferta, @JsonKey(name: 'OFERTA_FECHA_HASTA') this.ofertaFechaHasta, @JsonKey(name: 'FECHA_ALTA') required this.fechaAlta, @JsonKey(name: 'IVA') required this.iva, @JsonKey(name: 'DTO_BONIFICACION') required this.dtoBonificacion, @JsonKey(name: 'ENVIADA') required this.enviada, @JsonKey(name: 'TRATADA') required this.tratada, @JsonKey(name: 'BORRADOR') required this.borrador, @JsonKey(name: 'ERROR_SYNC') this.errorSyncMessage}): super._();
  factory _PedidoVentaLocalDTO.fromJson(Map<String, dynamic> json) => _$PedidoVentaLocalDTOFromJson(json);

@override@JsonKey(name: 'USUARIO_ID') final  String? usuarioId;
@override@JsonKey(name: 'PEDIDO_ID') final  String? pedidoId;
@override@JsonKey(name: 'EMPRESA_ID') final  String? empresaId;
@override@JsonKey(name: 'PEDIDO_APP_ID') final  String pedidoVentaAppId;
@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'NOMBRE_CLIENTE') final  String nombreCliente;
@override@JsonKey(name: 'DIRECCION_ID') final  String? direccionId;
@override@JsonKey(name: 'DIRECCION1') final  String? direccion1;
@override@JsonKey(name: 'DIRECCION2') final  String? direccion2;
@override@JsonKey(name: 'CODIGO_POSTAL') final  String? codigoPostal;
@override@JsonKey(name: 'POBLACION') final  String? poblacion;
@override@JsonKey(name: 'PROVINCIA') final  String? provincia;
@override@JsonKey(name: 'PAIS_ID') final  String? paisId;
@override@JsonKey(name: 'DIVISA_ID') final  String? divisaId;
@override@JsonKey(name: 'PEDIDO_CLIENTE') final  String? pedidoCliente;
@override@JsonKey(name: 'OBSERVACIONES') final  String? observaciones;
@override@JsonKey(name: 'OFERTA_SN') final  String oferta;
@override@JsonKey(name: 'OFERTA_FECHA_HASTA') final  DateTime? ofertaFechaHasta;
@override@JsonKey(name: 'FECHA_ALTA') final  DateTime fechaAlta;
@override@JsonKey(name: 'IVA') final  double iva;
@override@JsonKey(name: 'DTO_BONIFICACION') final  double dtoBonificacion;
@override@JsonKey(name: 'ENVIADA') final  String enviada;
@override@JsonKey(name: 'TRATADA') final  String tratada;
@override@JsonKey(name: 'BORRADOR') final  String borrador;
@override@JsonKey(name: 'ERROR_SYNC') final  String? errorSyncMessage;

/// Create a copy of PedidoVentaLocalDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PedidoVentaLocalDTOCopyWith<_PedidoVentaLocalDTO> get copyWith => __$PedidoVentaLocalDTOCopyWithImpl<_PedidoVentaLocalDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PedidoVentaLocalDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PedidoVentaLocalDTO&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.pedidoId, pedidoId) || other.pedidoId == pedidoId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoVentaAppId, pedidoVentaAppId) || other.pedidoVentaAppId == pedidoVentaAppId)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.direccion1, direccion1) || other.direccion1 == direccion1)&&(identical(other.direccion2, direccion2) || other.direccion2 == direccion2)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.pedidoCliente, pedidoCliente) || other.pedidoCliente == pedidoCliente)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.oferta, oferta) || other.oferta == oferta)&&(identical(other.ofertaFechaHasta, ofertaFechaHasta) || other.ofertaFechaHasta == ofertaFechaHasta)&&(identical(other.fechaAlta, fechaAlta) || other.fechaAlta == fechaAlta)&&(identical(other.iva, iva) || other.iva == iva)&&(identical(other.dtoBonificacion, dtoBonificacion) || other.dtoBonificacion == dtoBonificacion)&&(identical(other.enviada, enviada) || other.enviada == enviada)&&(identical(other.tratada, tratada) || other.tratada == tratada)&&(identical(other.borrador, borrador) || other.borrador == borrador)&&(identical(other.errorSyncMessage, errorSyncMessage) || other.errorSyncMessage == errorSyncMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,usuarioId,pedidoId,empresaId,pedidoVentaAppId,clienteId,nombreCliente,direccionId,direccion1,direccion2,codigoPostal,poblacion,provincia,paisId,divisaId,pedidoCliente,observaciones,oferta,ofertaFechaHasta,fechaAlta,iva,dtoBonificacion,enviada,tratada,borrador,errorSyncMessage]);

@override
String toString() {
  return 'PedidoVentaLocalDTO(usuarioId: $usuarioId, pedidoId: $pedidoId, empresaId: $empresaId, pedidoVentaAppId: $pedidoVentaAppId, clienteId: $clienteId, nombreCliente: $nombreCliente, direccionId: $direccionId, direccion1: $direccion1, direccion2: $direccion2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, paisId: $paisId, divisaId: $divisaId, pedidoCliente: $pedidoCliente, observaciones: $observaciones, oferta: $oferta, ofertaFechaHasta: $ofertaFechaHasta, fechaAlta: $fechaAlta, iva: $iva, dtoBonificacion: $dtoBonificacion, enviada: $enviada, tratada: $tratada, borrador: $borrador, errorSyncMessage: $errorSyncMessage)';
}


}

/// @nodoc
abstract mixin class _$PedidoVentaLocalDTOCopyWith<$Res> implements $PedidoVentaLocalDTOCopyWith<$Res> {
  factory _$PedidoVentaLocalDTOCopyWith(_PedidoVentaLocalDTO value, $Res Function(_PedidoVentaLocalDTO) _then) = __$PedidoVentaLocalDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'USUARIO_ID') String? usuarioId,@JsonKey(name: 'PEDIDO_ID') String? pedidoId,@JsonKey(name: 'EMPRESA_ID') String? empresaId,@JsonKey(name: 'PEDIDO_APP_ID') String pedidoVentaAppId,@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'NOMBRE_CLIENTE') String nombreCliente,@JsonKey(name: 'DIRECCION_ID') String? direccionId,@JsonKey(name: 'DIRECCION1') String? direccion1,@JsonKey(name: 'DIRECCION2') String? direccion2,@JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,@JsonKey(name: 'POBLACION') String? poblacion,@JsonKey(name: 'PROVINCIA') String? provincia,@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'DIVISA_ID') String? divisaId,@JsonKey(name: 'PEDIDO_CLIENTE') String? pedidoCliente,@JsonKey(name: 'OBSERVACIONES') String? observaciones,@JsonKey(name: 'OFERTA_SN') String oferta,@JsonKey(name: 'OFERTA_FECHA_HASTA') DateTime? ofertaFechaHasta,@JsonKey(name: 'FECHA_ALTA') DateTime fechaAlta,@JsonKey(name: 'IVA') double iva,@JsonKey(name: 'DTO_BONIFICACION') double dtoBonificacion,@JsonKey(name: 'ENVIADA') String enviada,@JsonKey(name: 'TRATADA') String tratada,@JsonKey(name: 'BORRADOR') String borrador,@JsonKey(name: 'ERROR_SYNC') String? errorSyncMessage
});




}
/// @nodoc
class __$PedidoVentaLocalDTOCopyWithImpl<$Res>
    implements _$PedidoVentaLocalDTOCopyWith<$Res> {
  __$PedidoVentaLocalDTOCopyWithImpl(this._self, this._then);

  final _PedidoVentaLocalDTO _self;
  final $Res Function(_PedidoVentaLocalDTO) _then;

/// Create a copy of PedidoVentaLocalDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? usuarioId = freezed,Object? pedidoId = freezed,Object? empresaId = freezed,Object? pedidoVentaAppId = null,Object? clienteId = null,Object? nombreCliente = null,Object? direccionId = freezed,Object? direccion1 = freezed,Object? direccion2 = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? paisId = freezed,Object? divisaId = freezed,Object? pedidoCliente = freezed,Object? observaciones = freezed,Object? oferta = null,Object? ofertaFechaHasta = freezed,Object? fechaAlta = null,Object? iva = null,Object? dtoBonificacion = null,Object? enviada = null,Object? tratada = null,Object? borrador = null,Object? errorSyncMessage = freezed,}) {
  return _then(_PedidoVentaLocalDTO(
usuarioId: freezed == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String?,pedidoId: freezed == pedidoId ? _self.pedidoId : pedidoId // ignore: cast_nullable_to_non_nullable
as String?,empresaId: freezed == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String?,pedidoVentaAppId: null == pedidoVentaAppId ? _self.pedidoVentaAppId : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
as String,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,nombreCliente: null == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String,direccionId: freezed == direccionId ? _self.direccionId : direccionId // ignore: cast_nullable_to_non_nullable
as String?,direccion1: freezed == direccion1 ? _self.direccion1 : direccion1 // ignore: cast_nullable_to_non_nullable
as String?,direccion2: freezed == direccion2 ? _self.direccion2 : direccion2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,divisaId: freezed == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String?,pedidoCliente: freezed == pedidoCliente ? _self.pedidoCliente : pedidoCliente // ignore: cast_nullable_to_non_nullable
as String?,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,oferta: null == oferta ? _self.oferta : oferta // ignore: cast_nullable_to_non_nullable
as String,ofertaFechaHasta: freezed == ofertaFechaHasta ? _self.ofertaFechaHasta : ofertaFechaHasta // ignore: cast_nullable_to_non_nullable
as DateTime?,fechaAlta: null == fechaAlta ? _self.fechaAlta : fechaAlta // ignore: cast_nullable_to_non_nullable
as DateTime,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double,dtoBonificacion: null == dtoBonificacion ? _self.dtoBonificacion : dtoBonificacion // ignore: cast_nullable_to_non_nullable
as double,enviada: null == enviada ? _self.enviada : enviada // ignore: cast_nullable_to_non_nullable
as String,tratada: null == tratada ? _self.tratada : tratada // ignore: cast_nullable_to_non_nullable
as String,borrador: null == borrador ? _self.borrador : borrador // ignore: cast_nullable_to_non_nullable
as String,errorSyncMessage: freezed == errorSyncMessage ? _self.errorSyncMessage : errorSyncMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
