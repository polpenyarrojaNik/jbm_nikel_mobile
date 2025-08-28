// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_venta_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PedidoVentaDTO {

@JsonKey(name: 'EMPRESA_ID') String get empresaId;@JsonKey(name: 'PEDIDO_ID') String get pedidoVentaId;@JsonKey(name: 'FECHA_PEDIDO') DateTime get pedidoVentaDate;@JsonKey(name: 'TIPO_VENTA') String get tipoVenta;@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'DIRECCION_ID') String? get direccionId;@JsonKey(name: 'NOMBRE_CLIENTE') String get nombreCliente;@JsonKey(name: 'DIRECCION_ENVIO1') String? get direccionEntrga1;@JsonKey(name: 'DIRECCION_ENVIO2') String? get direccionEntrga2;@JsonKey(name: 'CODIGO_POSTAL') String? get codigoPostal;@JsonKey(name: 'POBLACION') String? get poblacion;@JsonKey(name: 'PROVINCIA') String? get provincia;@JsonKey(name: 'PAIS_ID') String? get paisId;@JsonKey(name: 'DIVISA_ID') String get divisaId;@JsonKey(name: 'BASE_IMPONIBLE') double get baseImponible;@JsonKey(name: 'TOTAL_LINEAS') double get totalLineas;@JsonKey(name: 'IMPORTE_PORTES') double get importePortes;@JsonKey(name: 'IMPORTE_IVA') double get importeIva;@JsonKey(name: 'TOTAL') double get total;@JsonKey(name: 'ESTADO_PEDIDO_ID') int get pedidoVentaEstadoId;@JsonKey(name: 'OFERTA_SN') String get oferta;@JsonKey(name: 'OFERTA_FECHA_HASTA') DateTime? get ofertaFechaHasta;@JsonKey(name: 'PEDIDO_APP_ID') String? get pedidoVentaAppId;@JsonKey(name: 'IVA') double get iva;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of PedidoVentaDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PedidoVentaDTOCopyWith<PedidoVentaDTO> get copyWith => _$PedidoVentaDTOCopyWithImpl<PedidoVentaDTO>(this as PedidoVentaDTO, _$identity);

  /// Serializes this PedidoVentaDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PedidoVentaDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoVentaId, pedidoVentaId) || other.pedidoVentaId == pedidoVentaId)&&(identical(other.pedidoVentaDate, pedidoVentaDate) || other.pedidoVentaDate == pedidoVentaDate)&&(identical(other.tipoVenta, tipoVenta) || other.tipoVenta == tipoVenta)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.direccionEntrga1, direccionEntrga1) || other.direccionEntrga1 == direccionEntrga1)&&(identical(other.direccionEntrga2, direccionEntrga2) || other.direccionEntrga2 == direccionEntrga2)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.baseImponible, baseImponible) || other.baseImponible == baseImponible)&&(identical(other.totalLineas, totalLineas) || other.totalLineas == totalLineas)&&(identical(other.importePortes, importePortes) || other.importePortes == importePortes)&&(identical(other.importeIva, importeIva) || other.importeIva == importeIva)&&(identical(other.total, total) || other.total == total)&&(identical(other.pedidoVentaEstadoId, pedidoVentaEstadoId) || other.pedidoVentaEstadoId == pedidoVentaEstadoId)&&(identical(other.oferta, oferta) || other.oferta == oferta)&&(identical(other.ofertaFechaHasta, ofertaFechaHasta) || other.ofertaFechaHasta == ofertaFechaHasta)&&(identical(other.pedidoVentaAppId, pedidoVentaAppId) || other.pedidoVentaAppId == pedidoVentaAppId)&&(identical(other.iva, iva) || other.iva == iva)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,empresaId,pedidoVentaId,pedidoVentaDate,tipoVenta,clienteId,direccionId,nombreCliente,direccionEntrga1,direccionEntrga2,codigoPostal,poblacion,provincia,paisId,divisaId,baseImponible,totalLineas,importePortes,importeIva,total,pedidoVentaEstadoId,oferta,ofertaFechaHasta,pedidoVentaAppId,iva,lastUpdated,deleted]);

@override
String toString() {
  return 'PedidoVentaDTO(empresaId: $empresaId, pedidoVentaId: $pedidoVentaId, pedidoVentaDate: $pedidoVentaDate, tipoVenta: $tipoVenta, clienteId: $clienteId, direccionId: $direccionId, nombreCliente: $nombreCliente, direccionEntrga1: $direccionEntrga1, direccionEntrga2: $direccionEntrga2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, paisId: $paisId, divisaId: $divisaId, baseImponible: $baseImponible, totalLineas: $totalLineas, importePortes: $importePortes, importeIva: $importeIva, total: $total, pedidoVentaEstadoId: $pedidoVentaEstadoId, oferta: $oferta, ofertaFechaHasta: $ofertaFechaHasta, pedidoVentaAppId: $pedidoVentaAppId, iva: $iva, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $PedidoVentaDTOCopyWith<$Res>  {
  factory $PedidoVentaDTOCopyWith(PedidoVentaDTO value, $Res Function(PedidoVentaDTO) _then) = _$PedidoVentaDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'PEDIDO_ID') String pedidoVentaId,@JsonKey(name: 'FECHA_PEDIDO') DateTime pedidoVentaDate,@JsonKey(name: 'TIPO_VENTA') String tipoVenta,@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'DIRECCION_ID') String? direccionId,@JsonKey(name: 'NOMBRE_CLIENTE') String nombreCliente,@JsonKey(name: 'DIRECCION_ENVIO1') String? direccionEntrga1,@JsonKey(name: 'DIRECCION_ENVIO2') String? direccionEntrga2,@JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,@JsonKey(name: 'POBLACION') String? poblacion,@JsonKey(name: 'PROVINCIA') String? provincia,@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'DIVISA_ID') String divisaId,@JsonKey(name: 'BASE_IMPONIBLE') double baseImponible,@JsonKey(name: 'TOTAL_LINEAS') double totalLineas,@JsonKey(name: 'IMPORTE_PORTES') double importePortes,@JsonKey(name: 'IMPORTE_IVA') double importeIva,@JsonKey(name: 'TOTAL') double total,@JsonKey(name: 'ESTADO_PEDIDO_ID') int pedidoVentaEstadoId,@JsonKey(name: 'OFERTA_SN') String oferta,@JsonKey(name: 'OFERTA_FECHA_HASTA') DateTime? ofertaFechaHasta,@JsonKey(name: 'PEDIDO_APP_ID') String? pedidoVentaAppId,@JsonKey(name: 'IVA') double iva,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$PedidoVentaDTOCopyWithImpl<$Res>
    implements $PedidoVentaDTOCopyWith<$Res> {
  _$PedidoVentaDTOCopyWithImpl(this._self, this._then);

  final PedidoVentaDTO _self;
  final $Res Function(PedidoVentaDTO) _then;

/// Create a copy of PedidoVentaDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresaId = null,Object? pedidoVentaId = null,Object? pedidoVentaDate = null,Object? tipoVenta = null,Object? clienteId = null,Object? direccionId = freezed,Object? nombreCliente = null,Object? direccionEntrga1 = freezed,Object? direccionEntrga2 = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? paisId = freezed,Object? divisaId = null,Object? baseImponible = null,Object? totalLineas = null,Object? importePortes = null,Object? importeIva = null,Object? total = null,Object? pedidoVentaEstadoId = null,Object? oferta = null,Object? ofertaFechaHasta = freezed,Object? pedidoVentaAppId = freezed,Object? iva = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,pedidoVentaId: null == pedidoVentaId ? _self.pedidoVentaId : pedidoVentaId // ignore: cast_nullable_to_non_nullable
as String,pedidoVentaDate: null == pedidoVentaDate ? _self.pedidoVentaDate : pedidoVentaDate // ignore: cast_nullable_to_non_nullable
as DateTime,tipoVenta: null == tipoVenta ? _self.tipoVenta : tipoVenta // ignore: cast_nullable_to_non_nullable
as String,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,direccionId: freezed == direccionId ? _self.direccionId : direccionId // ignore: cast_nullable_to_non_nullable
as String?,nombreCliente: null == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String,direccionEntrga1: freezed == direccionEntrga1 ? _self.direccionEntrga1 : direccionEntrga1 // ignore: cast_nullable_to_non_nullable
as String?,direccionEntrga2: freezed == direccionEntrga2 ? _self.direccionEntrga2 : direccionEntrga2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,baseImponible: null == baseImponible ? _self.baseImponible : baseImponible // ignore: cast_nullable_to_non_nullable
as double,totalLineas: null == totalLineas ? _self.totalLineas : totalLineas // ignore: cast_nullable_to_non_nullable
as double,importePortes: null == importePortes ? _self.importePortes : importePortes // ignore: cast_nullable_to_non_nullable
as double,importeIva: null == importeIva ? _self.importeIva : importeIva // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,pedidoVentaEstadoId: null == pedidoVentaEstadoId ? _self.pedidoVentaEstadoId : pedidoVentaEstadoId // ignore: cast_nullable_to_non_nullable
as int,oferta: null == oferta ? _self.oferta : oferta // ignore: cast_nullable_to_non_nullable
as String,ofertaFechaHasta: freezed == ofertaFechaHasta ? _self.ofertaFechaHasta : ofertaFechaHasta // ignore: cast_nullable_to_non_nullable
as DateTime?,pedidoVentaAppId: freezed == pedidoVentaAppId ? _self.pedidoVentaAppId : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
as String?,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PedidoVentaDTO].
extension PedidoVentaDTOPatterns on PedidoVentaDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PedidoVentaDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PedidoVentaDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PedidoVentaDTO value)  $default,){
final _that = this;
switch (_that) {
case _PedidoVentaDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PedidoVentaDTO value)?  $default,){
final _that = this;
switch (_that) {
case _PedidoVentaDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PEDIDO_ID')  String pedidoVentaId, @JsonKey(name: 'FECHA_PEDIDO')  DateTime pedidoVentaDate, @JsonKey(name: 'TIPO_VENTA')  String tipoVenta, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'NOMBRE_CLIENTE')  String nombreCliente, @JsonKey(name: 'DIRECCION_ENVIO1')  String? direccionEntrga1, @JsonKey(name: 'DIRECCION_ENVIO2')  String? direccionEntrga2, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'BASE_IMPONIBLE')  double baseImponible, @JsonKey(name: 'TOTAL_LINEAS')  double totalLineas, @JsonKey(name: 'IMPORTE_PORTES')  double importePortes, @JsonKey(name: 'IMPORTE_IVA')  double importeIva, @JsonKey(name: 'TOTAL')  double total, @JsonKey(name: 'ESTADO_PEDIDO_ID')  int pedidoVentaEstadoId, @JsonKey(name: 'OFERTA_SN')  String oferta, @JsonKey(name: 'OFERTA_FECHA_HASTA')  DateTime? ofertaFechaHasta, @JsonKey(name: 'PEDIDO_APP_ID')  String? pedidoVentaAppId, @JsonKey(name: 'IVA')  double iva, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PedidoVentaDTO() when $default != null:
return $default(_that.empresaId,_that.pedidoVentaId,_that.pedidoVentaDate,_that.tipoVenta,_that.clienteId,_that.direccionId,_that.nombreCliente,_that.direccionEntrga1,_that.direccionEntrga2,_that.codigoPostal,_that.poblacion,_that.provincia,_that.paisId,_that.divisaId,_that.baseImponible,_that.totalLineas,_that.importePortes,_that.importeIva,_that.total,_that.pedidoVentaEstadoId,_that.oferta,_that.ofertaFechaHasta,_that.pedidoVentaAppId,_that.iva,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PEDIDO_ID')  String pedidoVentaId, @JsonKey(name: 'FECHA_PEDIDO')  DateTime pedidoVentaDate, @JsonKey(name: 'TIPO_VENTA')  String tipoVenta, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'NOMBRE_CLIENTE')  String nombreCliente, @JsonKey(name: 'DIRECCION_ENVIO1')  String? direccionEntrga1, @JsonKey(name: 'DIRECCION_ENVIO2')  String? direccionEntrga2, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'BASE_IMPONIBLE')  double baseImponible, @JsonKey(name: 'TOTAL_LINEAS')  double totalLineas, @JsonKey(name: 'IMPORTE_PORTES')  double importePortes, @JsonKey(name: 'IMPORTE_IVA')  double importeIva, @JsonKey(name: 'TOTAL')  double total, @JsonKey(name: 'ESTADO_PEDIDO_ID')  int pedidoVentaEstadoId, @JsonKey(name: 'OFERTA_SN')  String oferta, @JsonKey(name: 'OFERTA_FECHA_HASTA')  DateTime? ofertaFechaHasta, @JsonKey(name: 'PEDIDO_APP_ID')  String? pedidoVentaAppId, @JsonKey(name: 'IVA')  double iva, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _PedidoVentaDTO():
return $default(_that.empresaId,_that.pedidoVentaId,_that.pedidoVentaDate,_that.tipoVenta,_that.clienteId,_that.direccionId,_that.nombreCliente,_that.direccionEntrga1,_that.direccionEntrga2,_that.codigoPostal,_that.poblacion,_that.provincia,_that.paisId,_that.divisaId,_that.baseImponible,_that.totalLineas,_that.importePortes,_that.importeIva,_that.total,_that.pedidoVentaEstadoId,_that.oferta,_that.ofertaFechaHasta,_that.pedidoVentaAppId,_that.iva,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PEDIDO_ID')  String pedidoVentaId, @JsonKey(name: 'FECHA_PEDIDO')  DateTime pedidoVentaDate, @JsonKey(name: 'TIPO_VENTA')  String tipoVenta, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'NOMBRE_CLIENTE')  String nombreCliente, @JsonKey(name: 'DIRECCION_ENVIO1')  String? direccionEntrga1, @JsonKey(name: 'DIRECCION_ENVIO2')  String? direccionEntrga2, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'DIVISA_ID')  String divisaId, @JsonKey(name: 'BASE_IMPONIBLE')  double baseImponible, @JsonKey(name: 'TOTAL_LINEAS')  double totalLineas, @JsonKey(name: 'IMPORTE_PORTES')  double importePortes, @JsonKey(name: 'IMPORTE_IVA')  double importeIva, @JsonKey(name: 'TOTAL')  double total, @JsonKey(name: 'ESTADO_PEDIDO_ID')  int pedidoVentaEstadoId, @JsonKey(name: 'OFERTA_SN')  String oferta, @JsonKey(name: 'OFERTA_FECHA_HASTA')  DateTime? ofertaFechaHasta, @JsonKey(name: 'PEDIDO_APP_ID')  String? pedidoVentaAppId, @JsonKey(name: 'IVA')  double iva, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _PedidoVentaDTO() when $default != null:
return $default(_that.empresaId,_that.pedidoVentaId,_that.pedidoVentaDate,_that.tipoVenta,_that.clienteId,_that.direccionId,_that.nombreCliente,_that.direccionEntrga1,_that.direccionEntrga2,_that.codigoPostal,_that.poblacion,_that.provincia,_that.paisId,_that.divisaId,_that.baseImponible,_that.totalLineas,_that.importePortes,_that.importeIva,_that.total,_that.pedidoVentaEstadoId,_that.oferta,_that.ofertaFechaHasta,_that.pedidoVentaAppId,_that.iva,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PedidoVentaDTO extends PedidoVentaDTO {
  const _PedidoVentaDTO({@JsonKey(name: 'EMPRESA_ID') required this.empresaId, @JsonKey(name: 'PEDIDO_ID') required this.pedidoVentaId, @JsonKey(name: 'FECHA_PEDIDO') required this.pedidoVentaDate, @JsonKey(name: 'TIPO_VENTA') required this.tipoVenta, @JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'DIRECCION_ID') this.direccionId, @JsonKey(name: 'NOMBRE_CLIENTE') required this.nombreCliente, @JsonKey(name: 'DIRECCION_ENVIO1') this.direccionEntrga1, @JsonKey(name: 'DIRECCION_ENVIO2') this.direccionEntrga2, @JsonKey(name: 'CODIGO_POSTAL') this.codigoPostal, @JsonKey(name: 'POBLACION') this.poblacion, @JsonKey(name: 'PROVINCIA') this.provincia, @JsonKey(name: 'PAIS_ID') this.paisId, @JsonKey(name: 'DIVISA_ID') required this.divisaId, @JsonKey(name: 'BASE_IMPONIBLE') required this.baseImponible, @JsonKey(name: 'TOTAL_LINEAS') required this.totalLineas, @JsonKey(name: 'IMPORTE_PORTES') required this.importePortes, @JsonKey(name: 'IMPORTE_IVA') required this.importeIva, @JsonKey(name: 'TOTAL') required this.total, @JsonKey(name: 'ESTADO_PEDIDO_ID') required this.pedidoVentaEstadoId, @JsonKey(name: 'OFERTA_SN') required this.oferta, @JsonKey(name: 'OFERTA_FECHA_HASTA') this.ofertaFechaHasta, @JsonKey(name: 'PEDIDO_APP_ID') this.pedidoVentaAppId, @JsonKey(name: 'IVA') required this.iva, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') required this.deleted}): super._();
  factory _PedidoVentaDTO.fromJson(Map<String, dynamic> json) => _$PedidoVentaDTOFromJson(json);

@override@JsonKey(name: 'EMPRESA_ID') final  String empresaId;
@override@JsonKey(name: 'PEDIDO_ID') final  String pedidoVentaId;
@override@JsonKey(name: 'FECHA_PEDIDO') final  DateTime pedidoVentaDate;
@override@JsonKey(name: 'TIPO_VENTA') final  String tipoVenta;
@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'DIRECCION_ID') final  String? direccionId;
@override@JsonKey(name: 'NOMBRE_CLIENTE') final  String nombreCliente;
@override@JsonKey(name: 'DIRECCION_ENVIO1') final  String? direccionEntrga1;
@override@JsonKey(name: 'DIRECCION_ENVIO2') final  String? direccionEntrga2;
@override@JsonKey(name: 'CODIGO_POSTAL') final  String? codigoPostal;
@override@JsonKey(name: 'POBLACION') final  String? poblacion;
@override@JsonKey(name: 'PROVINCIA') final  String? provincia;
@override@JsonKey(name: 'PAIS_ID') final  String? paisId;
@override@JsonKey(name: 'DIVISA_ID') final  String divisaId;
@override@JsonKey(name: 'BASE_IMPONIBLE') final  double baseImponible;
@override@JsonKey(name: 'TOTAL_LINEAS') final  double totalLineas;
@override@JsonKey(name: 'IMPORTE_PORTES') final  double importePortes;
@override@JsonKey(name: 'IMPORTE_IVA') final  double importeIva;
@override@JsonKey(name: 'TOTAL') final  double total;
@override@JsonKey(name: 'ESTADO_PEDIDO_ID') final  int pedidoVentaEstadoId;
@override@JsonKey(name: 'OFERTA_SN') final  String oferta;
@override@JsonKey(name: 'OFERTA_FECHA_HASTA') final  DateTime? ofertaFechaHasta;
@override@JsonKey(name: 'PEDIDO_APP_ID') final  String? pedidoVentaAppId;
@override@JsonKey(name: 'IVA') final  double iva;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of PedidoVentaDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PedidoVentaDTOCopyWith<_PedidoVentaDTO> get copyWith => __$PedidoVentaDTOCopyWithImpl<_PedidoVentaDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PedidoVentaDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PedidoVentaDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoVentaId, pedidoVentaId) || other.pedidoVentaId == pedidoVentaId)&&(identical(other.pedidoVentaDate, pedidoVentaDate) || other.pedidoVentaDate == pedidoVentaDate)&&(identical(other.tipoVenta, tipoVenta) || other.tipoVenta == tipoVenta)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.nombreCliente, nombreCliente) || other.nombreCliente == nombreCliente)&&(identical(other.direccionEntrga1, direccionEntrga1) || other.direccionEntrga1 == direccionEntrga1)&&(identical(other.direccionEntrga2, direccionEntrga2) || other.direccionEntrga2 == direccionEntrga2)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.baseImponible, baseImponible) || other.baseImponible == baseImponible)&&(identical(other.totalLineas, totalLineas) || other.totalLineas == totalLineas)&&(identical(other.importePortes, importePortes) || other.importePortes == importePortes)&&(identical(other.importeIva, importeIva) || other.importeIva == importeIva)&&(identical(other.total, total) || other.total == total)&&(identical(other.pedidoVentaEstadoId, pedidoVentaEstadoId) || other.pedidoVentaEstadoId == pedidoVentaEstadoId)&&(identical(other.oferta, oferta) || other.oferta == oferta)&&(identical(other.ofertaFechaHasta, ofertaFechaHasta) || other.ofertaFechaHasta == ofertaFechaHasta)&&(identical(other.pedidoVentaAppId, pedidoVentaAppId) || other.pedidoVentaAppId == pedidoVentaAppId)&&(identical(other.iva, iva) || other.iva == iva)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,empresaId,pedidoVentaId,pedidoVentaDate,tipoVenta,clienteId,direccionId,nombreCliente,direccionEntrga1,direccionEntrga2,codigoPostal,poblacion,provincia,paisId,divisaId,baseImponible,totalLineas,importePortes,importeIva,total,pedidoVentaEstadoId,oferta,ofertaFechaHasta,pedidoVentaAppId,iva,lastUpdated,deleted]);

@override
String toString() {
  return 'PedidoVentaDTO(empresaId: $empresaId, pedidoVentaId: $pedidoVentaId, pedidoVentaDate: $pedidoVentaDate, tipoVenta: $tipoVenta, clienteId: $clienteId, direccionId: $direccionId, nombreCliente: $nombreCliente, direccionEntrga1: $direccionEntrga1, direccionEntrga2: $direccionEntrga2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, paisId: $paisId, divisaId: $divisaId, baseImponible: $baseImponible, totalLineas: $totalLineas, importePortes: $importePortes, importeIva: $importeIva, total: $total, pedidoVentaEstadoId: $pedidoVentaEstadoId, oferta: $oferta, ofertaFechaHasta: $ofertaFechaHasta, pedidoVentaAppId: $pedidoVentaAppId, iva: $iva, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$PedidoVentaDTOCopyWith<$Res> implements $PedidoVentaDTOCopyWith<$Res> {
  factory _$PedidoVentaDTOCopyWith(_PedidoVentaDTO value, $Res Function(_PedidoVentaDTO) _then) = __$PedidoVentaDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'PEDIDO_ID') String pedidoVentaId,@JsonKey(name: 'FECHA_PEDIDO') DateTime pedidoVentaDate,@JsonKey(name: 'TIPO_VENTA') String tipoVenta,@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'DIRECCION_ID') String? direccionId,@JsonKey(name: 'NOMBRE_CLIENTE') String nombreCliente,@JsonKey(name: 'DIRECCION_ENVIO1') String? direccionEntrga1,@JsonKey(name: 'DIRECCION_ENVIO2') String? direccionEntrga2,@JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,@JsonKey(name: 'POBLACION') String? poblacion,@JsonKey(name: 'PROVINCIA') String? provincia,@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'DIVISA_ID') String divisaId,@JsonKey(name: 'BASE_IMPONIBLE') double baseImponible,@JsonKey(name: 'TOTAL_LINEAS') double totalLineas,@JsonKey(name: 'IMPORTE_PORTES') double importePortes,@JsonKey(name: 'IMPORTE_IVA') double importeIva,@JsonKey(name: 'TOTAL') double total,@JsonKey(name: 'ESTADO_PEDIDO_ID') int pedidoVentaEstadoId,@JsonKey(name: 'OFERTA_SN') String oferta,@JsonKey(name: 'OFERTA_FECHA_HASTA') DateTime? ofertaFechaHasta,@JsonKey(name: 'PEDIDO_APP_ID') String? pedidoVentaAppId,@JsonKey(name: 'IVA') double iva,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$PedidoVentaDTOCopyWithImpl<$Res>
    implements _$PedidoVentaDTOCopyWith<$Res> {
  __$PedidoVentaDTOCopyWithImpl(this._self, this._then);

  final _PedidoVentaDTO _self;
  final $Res Function(_PedidoVentaDTO) _then;

/// Create a copy of PedidoVentaDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresaId = null,Object? pedidoVentaId = null,Object? pedidoVentaDate = null,Object? tipoVenta = null,Object? clienteId = null,Object? direccionId = freezed,Object? nombreCliente = null,Object? direccionEntrga1 = freezed,Object? direccionEntrga2 = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? paisId = freezed,Object? divisaId = null,Object? baseImponible = null,Object? totalLineas = null,Object? importePortes = null,Object? importeIva = null,Object? total = null,Object? pedidoVentaEstadoId = null,Object? oferta = null,Object? ofertaFechaHasta = freezed,Object? pedidoVentaAppId = freezed,Object? iva = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_PedidoVentaDTO(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,pedidoVentaId: null == pedidoVentaId ? _self.pedidoVentaId : pedidoVentaId // ignore: cast_nullable_to_non_nullable
as String,pedidoVentaDate: null == pedidoVentaDate ? _self.pedidoVentaDate : pedidoVentaDate // ignore: cast_nullable_to_non_nullable
as DateTime,tipoVenta: null == tipoVenta ? _self.tipoVenta : tipoVenta // ignore: cast_nullable_to_non_nullable
as String,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,direccionId: freezed == direccionId ? _self.direccionId : direccionId // ignore: cast_nullable_to_non_nullable
as String?,nombreCliente: null == nombreCliente ? _self.nombreCliente : nombreCliente // ignore: cast_nullable_to_non_nullable
as String,direccionEntrga1: freezed == direccionEntrga1 ? _self.direccionEntrga1 : direccionEntrga1 // ignore: cast_nullable_to_non_nullable
as String?,direccionEntrga2: freezed == direccionEntrga2 ? _self.direccionEntrga2 : direccionEntrga2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,baseImponible: null == baseImponible ? _self.baseImponible : baseImponible // ignore: cast_nullable_to_non_nullable
as double,totalLineas: null == totalLineas ? _self.totalLineas : totalLineas // ignore: cast_nullable_to_non_nullable
as double,importePortes: null == importePortes ? _self.importePortes : importePortes // ignore: cast_nullable_to_non_nullable
as double,importeIva: null == importeIva ? _self.importeIva : importeIva // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,pedidoVentaEstadoId: null == pedidoVentaEstadoId ? _self.pedidoVentaEstadoId : pedidoVentaEstadoId // ignore: cast_nullable_to_non_nullable
as int,oferta: null == oferta ? _self.oferta : oferta // ignore: cast_nullable_to_non_nullable
as String,ofertaFechaHasta: freezed == ofertaFechaHasta ? _self.ofertaFechaHasta : ofertaFechaHasta // ignore: cast_nullable_to_non_nullable
as DateTime?,pedidoVentaAppId: freezed == pedidoVentaAppId ? _self.pedidoVentaAppId : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
as String?,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
