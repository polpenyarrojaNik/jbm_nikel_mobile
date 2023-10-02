// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClienteDTO _$ClienteDTOFromJson(Map<String, dynamic> json) {
  return _ClienteDTO.fromJson(json);
}

/// @nodoc
mixin _$ClienteDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE')
  String get nombreCliente => throw _privateConstructorUsedError;
  @JsonKey(name: 'NIF')
  String? get nif => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE_FISCAL')
  String get nombreFiscal => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION_FISCAL1')
  String? get direccionFiscal1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION_FISCAL2')
  String? get direccionFiscal2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'CODIGO_POSTAL_FISCAL')
  String? get codigoPostalFiscal => throw _privateConstructorUsedError;
  @JsonKey(name: 'POBLACION_FISCAL')
  String? get poblacionFiscal => throw _privateConstructorUsedError;
  @JsonKey(name: 'PAIS_ID_FISCAL')
  String? get paisFiscalId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PROVINCIA_FISCAL')
  String? get provinciaFiscal => throw _privateConstructorUsedError;
  @JsonKey(name: 'LATITUD_FISCAL')
  double get latitudFiscal => throw _privateConstructorUsedError;
  @JsonKey(name: 'LONGITUD_FISCAL')
  double get longitudFiscal => throw _privateConstructorUsedError;
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'IVA')
  double get iva => throw _privateConstructorUsedError;
  @JsonKey(name: 'VENTAS_ANYO_ACTUAL')
  double get ventasAnyoActual => throw _privateConstructorUsedError;
  @JsonKey(name: 'VENTAS_ANYO_ANTERIOR')
  double get ventasAnyoAnterior => throw _privateConstructorUsedError;
  @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS')
  double get ventasHaceDosAnyos => throw _privateConstructorUsedError;
  @JsonKey(name: 'MARGEN_ANYO_ACTUAL')
  double get margenAnyoActual => throw _privateConstructorUsedError;
  @JsonKey(name: 'MARGEN_ANYO_ANTERIOR')
  double get margenAnyoAnterior => throw _privateConstructorUsedError;
  @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS')
  double get margenHaceDosAnyos => throw _privateConstructorUsedError;
  @JsonKey(name: 'PORCENTAJE_ABONOS')
  double get porcentajeAbonos => throw _privateConstructorUsedError;
  @JsonKey(name: 'PORCENTAJE_GARANTIAS')
  double get porcentajeGarantias => throw _privateConstructorUsedError;
  @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE')
  String? get centralCompras => throw _privateConstructorUsedError;
  @JsonKey(name: 'URL_WEB')
  String? get urlWeb => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIVISA_ID')
  String? get divisaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TARIFA_ID')
  String? get tarifaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TARIFA_DESCRIPCION')
  String? get tarifaDescripcion => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO_GENERAL_ID')
  String? get descuentoGeneralId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
  String? get descripcionDescuentoGeneral => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_CALCULO_PRECIO')
  String get tipoCalculoPrecio => throw _privateConstructorUsedError;
  @JsonKey(name: 'PLAZO_COBRO_ID')
  String? get plazoDeCobroId => throw _privateConstructorUsedError;
  @JsonKey(name: 'METODO_COBRO_ID')
  String? get metodoDeCobroId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
  double get descuentoProntoPago => throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')
  double get riesgoConcedidoInterno => throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')
  DateTime? get riesgoConcedidoInternoDate =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE')
  double get riesgoConcedidoCoafe => throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')
  DateTime? get riesgoConcedidoCoafeFecha => throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_CONCEDIDO')
  double? get riesgoConcedido => throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')
  double? get riesgoPendienteCobroVencido => throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')
  double? get riesgoPendienteCobroNoVencido =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE')
  double? get riesgoPendienteServir => throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')
  double? get riesgoPendienteFacturar => throw _privateConstructorUsedError;
  @JsonKey(name: 'OBSERVACIONES_INTERNAS')
  String? get obvservacionesInternas => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLIENTE_POTENCIAL')
  String? get clientePotencial => throw _privateConstructorUsedError;
  @JsonKey(name: 'ESTADO_POTENCIAL_ID')
  String? get clienteEstadoPotencialId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_POTENCIAL_ID')
  String? get clienteTipoPotencialId => throw _privateConstructorUsedError;
  @JsonKey(name: 'REPRESENTANTE1_ID')
  String? get representante1Id => throw _privateConstructorUsedError;
  @JsonKey(name: 'REPRESENTANTE1_NOMBRE')
  String? get representante1Nombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'REPRESENTANTE2_ID')
  String? get representante2Id => throw _privateConstructorUsedError;
  @JsonKey(name: 'REPRESENTANTE2_NOMBRE')
  String? get representante2Nombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClienteDTOCopyWith<ClienteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteDTOCopyWith<$Res> {
  factory $ClienteDTOCopyWith(
          ClienteDTO value, $Res Function(ClienteDTO) then) =
      _$ClienteDTOCopyWithImpl<$Res, ClienteDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String id,
      @JsonKey(name: 'NOMBRE') String nombreCliente,
      @JsonKey(name: 'NIF') String? nif,
      @JsonKey(name: 'NOMBRE_FISCAL') String nombreFiscal,
      @JsonKey(name: 'DIRECCION_FISCAL1') String? direccionFiscal1,
      @JsonKey(name: 'DIRECCION_FISCAL2') String? direccionFiscal2,
      @JsonKey(name: 'CODIGO_POSTAL_FISCAL') String? codigoPostalFiscal,
      @JsonKey(name: 'POBLACION_FISCAL') String? poblacionFiscal,
      @JsonKey(name: 'PAIS_ID_FISCAL') String? paisFiscalId,
      @JsonKey(name: 'PROVINCIA_FISCAL') String? provinciaFiscal,
      @JsonKey(name: 'LATITUD_FISCAL') double latitudFiscal,
      @JsonKey(name: 'LONGITUD_FISCAL') double longitudFiscal,
      @JsonKey(name: 'EMPRESA_ID') String empresaId,
      @JsonKey(name: 'IVA') double iva,
      @JsonKey(name: 'VENTAS_ANYO_ACTUAL') double ventasAnyoActual,
      @JsonKey(name: 'VENTAS_ANYO_ANTERIOR') double ventasAnyoAnterior,
      @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS') double ventasHaceDosAnyos,
      @JsonKey(name: 'MARGEN_ANYO_ACTUAL') double margenAnyoActual,
      @JsonKey(name: 'MARGEN_ANYO_ANTERIOR') double margenAnyoAnterior,
      @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS') double margenHaceDosAnyos,
      @JsonKey(name: 'PORCENTAJE_ABONOS') double porcentajeAbonos,
      @JsonKey(name: 'PORCENTAJE_GARANTIAS') double porcentajeGarantias,
      @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE') String? centralCompras,
      @JsonKey(name: 'URL_WEB') String? urlWeb,
      @JsonKey(name: 'DIVISA_ID') String? divisaId,
      @JsonKey(name: 'TARIFA_ID') String? tarifaId,
      @JsonKey(name: 'TARIFA_DESCRIPCION') String? tarifaDescripcion,
      @JsonKey(name: 'DESCUENTO_GENERAL_ID') String? descuentoGeneralId,
      @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
      String? descripcionDescuentoGeneral,
      @JsonKey(name: 'TIPO_CALCULO_PRECIO') String tipoCalculoPrecio,
      @JsonKey(name: 'PLAZO_COBRO_ID') String? plazoDeCobroId,
      @JsonKey(name: 'METODO_COBRO_ID') String? metodoDeCobroId,
      @JsonKey(name: 'DESCUENTO_PRONTO_PAGO') double descuentoProntoPago,
      @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO') double riesgoConcedidoInterno,
      @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')
      DateTime? riesgoConcedidoInternoDate,
      @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE') double riesgoConcedidoCoafe,
      @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')
      DateTime? riesgoConcedidoCoafeFecha,
      @JsonKey(name: 'RIESGO_CONCEDIDO') double? riesgoConcedido,
      @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')
      double? riesgoPendienteCobroVencido,
      @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')
      double? riesgoPendienteCobroNoVencido,
      @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE')
      double? riesgoPendienteServir,
      @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')
      double? riesgoPendienteFacturar,
      @JsonKey(name: 'OBSERVACIONES_INTERNAS') String? obvservacionesInternas,
      @JsonKey(name: 'CLIENTE_POTENCIAL') String? clientePotencial,
      @JsonKey(name: 'ESTADO_POTENCIAL_ID') String? clienteEstadoPotencialId,
      @JsonKey(name: 'TIPO_POTENCIAL_ID') String? clienteTipoPotencialId,
      @JsonKey(name: 'REPRESENTANTE1_ID') String? representante1Id,
      @JsonKey(name: 'REPRESENTANTE1_NOMBRE') String? representante1Nombre,
      @JsonKey(name: 'REPRESENTANTE2_ID') String? representante2Id,
      @JsonKey(name: 'REPRESENTANTE2_NOMBRE') String? representante2Nombre,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ClienteDTOCopyWithImpl<$Res, $Val extends ClienteDTO>
    implements $ClienteDTOCopyWith<$Res> {
  _$ClienteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombreCliente = null,
    Object? nif = freezed,
    Object? nombreFiscal = null,
    Object? direccionFiscal1 = freezed,
    Object? direccionFiscal2 = freezed,
    Object? codigoPostalFiscal = freezed,
    Object? poblacionFiscal = freezed,
    Object? paisFiscalId = freezed,
    Object? provinciaFiscal = freezed,
    Object? latitudFiscal = null,
    Object? longitudFiscal = null,
    Object? empresaId = null,
    Object? iva = null,
    Object? ventasAnyoActual = null,
    Object? ventasAnyoAnterior = null,
    Object? ventasHaceDosAnyos = null,
    Object? margenAnyoActual = null,
    Object? margenAnyoAnterior = null,
    Object? margenHaceDosAnyos = null,
    Object? porcentajeAbonos = null,
    Object? porcentajeGarantias = null,
    Object? centralCompras = freezed,
    Object? urlWeb = freezed,
    Object? divisaId = freezed,
    Object? tarifaId = freezed,
    Object? tarifaDescripcion = freezed,
    Object? descuentoGeneralId = freezed,
    Object? descripcionDescuentoGeneral = freezed,
    Object? tipoCalculoPrecio = null,
    Object? plazoDeCobroId = freezed,
    Object? metodoDeCobroId = freezed,
    Object? descuentoProntoPago = null,
    Object? riesgoConcedidoInterno = null,
    Object? riesgoConcedidoInternoDate = freezed,
    Object? riesgoConcedidoCoafe = null,
    Object? riesgoConcedidoCoafeFecha = freezed,
    Object? riesgoConcedido = freezed,
    Object? riesgoPendienteCobroVencido = freezed,
    Object? riesgoPendienteCobroNoVencido = freezed,
    Object? riesgoPendienteServir = freezed,
    Object? riesgoPendienteFacturar = freezed,
    Object? obvservacionesInternas = freezed,
    Object? clientePotencial = freezed,
    Object? clienteEstadoPotencialId = freezed,
    Object? clienteTipoPotencialId = freezed,
    Object? representante1Id = freezed,
    Object? representante1Nombre = freezed,
    Object? representante2Id = freezed,
    Object? representante2Nombre = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nombreCliente: null == nombreCliente
          ? _value.nombreCliente
          : nombreCliente // ignore: cast_nullable_to_non_nullable
              as String,
      nif: freezed == nif
          ? _value.nif
          : nif // ignore: cast_nullable_to_non_nullable
              as String?,
      nombreFiscal: null == nombreFiscal
          ? _value.nombreFiscal
          : nombreFiscal // ignore: cast_nullable_to_non_nullable
              as String,
      direccionFiscal1: freezed == direccionFiscal1
          ? _value.direccionFiscal1
          : direccionFiscal1 // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionFiscal2: freezed == direccionFiscal2
          ? _value.direccionFiscal2
          : direccionFiscal2 // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPostalFiscal: freezed == codigoPostalFiscal
          ? _value.codigoPostalFiscal
          : codigoPostalFiscal // ignore: cast_nullable_to_non_nullable
              as String?,
      poblacionFiscal: freezed == poblacionFiscal
          ? _value.poblacionFiscal
          : poblacionFiscal // ignore: cast_nullable_to_non_nullable
              as String?,
      paisFiscalId: freezed == paisFiscalId
          ? _value.paisFiscalId
          : paisFiscalId // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaFiscal: freezed == provinciaFiscal
          ? _value.provinciaFiscal
          : provinciaFiscal // ignore: cast_nullable_to_non_nullable
              as String?,
      latitudFiscal: null == latitudFiscal
          ? _value.latitudFiscal
          : latitudFiscal // ignore: cast_nullable_to_non_nullable
              as double,
      longitudFiscal: null == longitudFiscal
          ? _value.longitudFiscal
          : longitudFiscal // ignore: cast_nullable_to_non_nullable
              as double,
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      iva: null == iva
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as double,
      ventasAnyoActual: null == ventasAnyoActual
          ? _value.ventasAnyoActual
          : ventasAnyoActual // ignore: cast_nullable_to_non_nullable
              as double,
      ventasAnyoAnterior: null == ventasAnyoAnterior
          ? _value.ventasAnyoAnterior
          : ventasAnyoAnterior // ignore: cast_nullable_to_non_nullable
              as double,
      ventasHaceDosAnyos: null == ventasHaceDosAnyos
          ? _value.ventasHaceDosAnyos
          : ventasHaceDosAnyos // ignore: cast_nullable_to_non_nullable
              as double,
      margenAnyoActual: null == margenAnyoActual
          ? _value.margenAnyoActual
          : margenAnyoActual // ignore: cast_nullable_to_non_nullable
              as double,
      margenAnyoAnterior: null == margenAnyoAnterior
          ? _value.margenAnyoAnterior
          : margenAnyoAnterior // ignore: cast_nullable_to_non_nullable
              as double,
      margenHaceDosAnyos: null == margenHaceDosAnyos
          ? _value.margenHaceDosAnyos
          : margenHaceDosAnyos // ignore: cast_nullable_to_non_nullable
              as double,
      porcentajeAbonos: null == porcentajeAbonos
          ? _value.porcentajeAbonos
          : porcentajeAbonos // ignore: cast_nullable_to_non_nullable
              as double,
      porcentajeGarantias: null == porcentajeGarantias
          ? _value.porcentajeGarantias
          : porcentajeGarantias // ignore: cast_nullable_to_non_nullable
              as double,
      centralCompras: freezed == centralCompras
          ? _value.centralCompras
          : centralCompras // ignore: cast_nullable_to_non_nullable
              as String?,
      urlWeb: freezed == urlWeb
          ? _value.urlWeb
          : urlWeb // ignore: cast_nullable_to_non_nullable
              as String?,
      divisaId: freezed == divisaId
          ? _value.divisaId
          : divisaId // ignore: cast_nullable_to_non_nullable
              as String?,
      tarifaId: freezed == tarifaId
          ? _value.tarifaId
          : tarifaId // ignore: cast_nullable_to_non_nullable
              as String?,
      tarifaDescripcion: freezed == tarifaDescripcion
          ? _value.tarifaDescripcion
          : tarifaDescripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      descuentoGeneralId: freezed == descuentoGeneralId
          ? _value.descuentoGeneralId
          : descuentoGeneralId // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionDescuentoGeneral: freezed == descripcionDescuentoGeneral
          ? _value.descripcionDescuentoGeneral
          : descripcionDescuentoGeneral // ignore: cast_nullable_to_non_nullable
              as String?,
      tipoCalculoPrecio: null == tipoCalculoPrecio
          ? _value.tipoCalculoPrecio
          : tipoCalculoPrecio // ignore: cast_nullable_to_non_nullable
              as String,
      plazoDeCobroId: freezed == plazoDeCobroId
          ? _value.plazoDeCobroId
          : plazoDeCobroId // ignore: cast_nullable_to_non_nullable
              as String?,
      metodoDeCobroId: freezed == metodoDeCobroId
          ? _value.metodoDeCobroId
          : metodoDeCobroId // ignore: cast_nullable_to_non_nullable
              as String?,
      descuentoProntoPago: null == descuentoProntoPago
          ? _value.descuentoProntoPago
          : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
              as double,
      riesgoConcedidoInterno: null == riesgoConcedidoInterno
          ? _value.riesgoConcedidoInterno
          : riesgoConcedidoInterno // ignore: cast_nullable_to_non_nullable
              as double,
      riesgoConcedidoInternoDate: freezed == riesgoConcedidoInternoDate
          ? _value.riesgoConcedidoInternoDate
          : riesgoConcedidoInternoDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riesgoConcedidoCoafe: null == riesgoConcedidoCoafe
          ? _value.riesgoConcedidoCoafe
          : riesgoConcedidoCoafe // ignore: cast_nullable_to_non_nullable
              as double,
      riesgoConcedidoCoafeFecha: freezed == riesgoConcedidoCoafeFecha
          ? _value.riesgoConcedidoCoafeFecha
          : riesgoConcedidoCoafeFecha // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riesgoConcedido: freezed == riesgoConcedido
          ? _value.riesgoConcedido
          : riesgoConcedido // ignore: cast_nullable_to_non_nullable
              as double?,
      riesgoPendienteCobroVencido: freezed == riesgoPendienteCobroVencido
          ? _value.riesgoPendienteCobroVencido
          : riesgoPendienteCobroVencido // ignore: cast_nullable_to_non_nullable
              as double?,
      riesgoPendienteCobroNoVencido: freezed == riesgoPendienteCobroNoVencido
          ? _value.riesgoPendienteCobroNoVencido
          : riesgoPendienteCobroNoVencido // ignore: cast_nullable_to_non_nullable
              as double?,
      riesgoPendienteServir: freezed == riesgoPendienteServir
          ? _value.riesgoPendienteServir
          : riesgoPendienteServir // ignore: cast_nullable_to_non_nullable
              as double?,
      riesgoPendienteFacturar: freezed == riesgoPendienteFacturar
          ? _value.riesgoPendienteFacturar
          : riesgoPendienteFacturar // ignore: cast_nullable_to_non_nullable
              as double?,
      obvservacionesInternas: freezed == obvservacionesInternas
          ? _value.obvservacionesInternas
          : obvservacionesInternas // ignore: cast_nullable_to_non_nullable
              as String?,
      clientePotencial: freezed == clientePotencial
          ? _value.clientePotencial
          : clientePotencial // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteEstadoPotencialId: freezed == clienteEstadoPotencialId
          ? _value.clienteEstadoPotencialId
          : clienteEstadoPotencialId // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteTipoPotencialId: freezed == clienteTipoPotencialId
          ? _value.clienteTipoPotencialId
          : clienteTipoPotencialId // ignore: cast_nullable_to_non_nullable
              as String?,
      representante1Id: freezed == representante1Id
          ? _value.representante1Id
          : representante1Id // ignore: cast_nullable_to_non_nullable
              as String?,
      representante1Nombre: freezed == representante1Nombre
          ? _value.representante1Nombre
          : representante1Nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      representante2Id: freezed == representante2Id
          ? _value.representante2Id
          : representante2Id // ignore: cast_nullable_to_non_nullable
              as String?,
      representante2Nombre: freezed == representante2Nombre
          ? _value.representante2Nombre
          : representante2Nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClienteDTOImplCopyWith<$Res>
    implements $ClienteDTOCopyWith<$Res> {
  factory _$$ClienteDTOImplCopyWith(
          _$ClienteDTOImpl value, $Res Function(_$ClienteDTOImpl) then) =
      __$$ClienteDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String id,
      @JsonKey(name: 'NOMBRE') String nombreCliente,
      @JsonKey(name: 'NIF') String? nif,
      @JsonKey(name: 'NOMBRE_FISCAL') String nombreFiscal,
      @JsonKey(name: 'DIRECCION_FISCAL1') String? direccionFiscal1,
      @JsonKey(name: 'DIRECCION_FISCAL2') String? direccionFiscal2,
      @JsonKey(name: 'CODIGO_POSTAL_FISCAL') String? codigoPostalFiscal,
      @JsonKey(name: 'POBLACION_FISCAL') String? poblacionFiscal,
      @JsonKey(name: 'PAIS_ID_FISCAL') String? paisFiscalId,
      @JsonKey(name: 'PROVINCIA_FISCAL') String? provinciaFiscal,
      @JsonKey(name: 'LATITUD_FISCAL') double latitudFiscal,
      @JsonKey(name: 'LONGITUD_FISCAL') double longitudFiscal,
      @JsonKey(name: 'EMPRESA_ID') String empresaId,
      @JsonKey(name: 'IVA') double iva,
      @JsonKey(name: 'VENTAS_ANYO_ACTUAL') double ventasAnyoActual,
      @JsonKey(name: 'VENTAS_ANYO_ANTERIOR') double ventasAnyoAnterior,
      @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS') double ventasHaceDosAnyos,
      @JsonKey(name: 'MARGEN_ANYO_ACTUAL') double margenAnyoActual,
      @JsonKey(name: 'MARGEN_ANYO_ANTERIOR') double margenAnyoAnterior,
      @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS') double margenHaceDosAnyos,
      @JsonKey(name: 'PORCENTAJE_ABONOS') double porcentajeAbonos,
      @JsonKey(name: 'PORCENTAJE_GARANTIAS') double porcentajeGarantias,
      @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE') String? centralCompras,
      @JsonKey(name: 'URL_WEB') String? urlWeb,
      @JsonKey(name: 'DIVISA_ID') String? divisaId,
      @JsonKey(name: 'TARIFA_ID') String? tarifaId,
      @JsonKey(name: 'TARIFA_DESCRIPCION') String? tarifaDescripcion,
      @JsonKey(name: 'DESCUENTO_GENERAL_ID') String? descuentoGeneralId,
      @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
      String? descripcionDescuentoGeneral,
      @JsonKey(name: 'TIPO_CALCULO_PRECIO') String tipoCalculoPrecio,
      @JsonKey(name: 'PLAZO_COBRO_ID') String? plazoDeCobroId,
      @JsonKey(name: 'METODO_COBRO_ID') String? metodoDeCobroId,
      @JsonKey(name: 'DESCUENTO_PRONTO_PAGO') double descuentoProntoPago,
      @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO') double riesgoConcedidoInterno,
      @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')
      DateTime? riesgoConcedidoInternoDate,
      @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE') double riesgoConcedidoCoafe,
      @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')
      DateTime? riesgoConcedidoCoafeFecha,
      @JsonKey(name: 'RIESGO_CONCEDIDO') double? riesgoConcedido,
      @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')
      double? riesgoPendienteCobroVencido,
      @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')
      double? riesgoPendienteCobroNoVencido,
      @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE')
      double? riesgoPendienteServir,
      @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')
      double? riesgoPendienteFacturar,
      @JsonKey(name: 'OBSERVACIONES_INTERNAS') String? obvservacionesInternas,
      @JsonKey(name: 'CLIENTE_POTENCIAL') String? clientePotencial,
      @JsonKey(name: 'ESTADO_POTENCIAL_ID') String? clienteEstadoPotencialId,
      @JsonKey(name: 'TIPO_POTENCIAL_ID') String? clienteTipoPotencialId,
      @JsonKey(name: 'REPRESENTANTE1_ID') String? representante1Id,
      @JsonKey(name: 'REPRESENTANTE1_NOMBRE') String? representante1Nombre,
      @JsonKey(name: 'REPRESENTANTE2_ID') String? representante2Id,
      @JsonKey(name: 'REPRESENTANTE2_NOMBRE') String? representante2Nombre,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$ClienteDTOImplCopyWithImpl<$Res>
    extends _$ClienteDTOCopyWithImpl<$Res, _$ClienteDTOImpl>
    implements _$$ClienteDTOImplCopyWith<$Res> {
  __$$ClienteDTOImplCopyWithImpl(
      _$ClienteDTOImpl _value, $Res Function(_$ClienteDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nombreCliente = null,
    Object? nif = freezed,
    Object? nombreFiscal = null,
    Object? direccionFiscal1 = freezed,
    Object? direccionFiscal2 = freezed,
    Object? codigoPostalFiscal = freezed,
    Object? poblacionFiscal = freezed,
    Object? paisFiscalId = freezed,
    Object? provinciaFiscal = freezed,
    Object? latitudFiscal = null,
    Object? longitudFiscal = null,
    Object? empresaId = null,
    Object? iva = null,
    Object? ventasAnyoActual = null,
    Object? ventasAnyoAnterior = null,
    Object? ventasHaceDosAnyos = null,
    Object? margenAnyoActual = null,
    Object? margenAnyoAnterior = null,
    Object? margenHaceDosAnyos = null,
    Object? porcentajeAbonos = null,
    Object? porcentajeGarantias = null,
    Object? centralCompras = freezed,
    Object? urlWeb = freezed,
    Object? divisaId = freezed,
    Object? tarifaId = freezed,
    Object? tarifaDescripcion = freezed,
    Object? descuentoGeneralId = freezed,
    Object? descripcionDescuentoGeneral = freezed,
    Object? tipoCalculoPrecio = null,
    Object? plazoDeCobroId = freezed,
    Object? metodoDeCobroId = freezed,
    Object? descuentoProntoPago = null,
    Object? riesgoConcedidoInterno = null,
    Object? riesgoConcedidoInternoDate = freezed,
    Object? riesgoConcedidoCoafe = null,
    Object? riesgoConcedidoCoafeFecha = freezed,
    Object? riesgoConcedido = freezed,
    Object? riesgoPendienteCobroVencido = freezed,
    Object? riesgoPendienteCobroNoVencido = freezed,
    Object? riesgoPendienteServir = freezed,
    Object? riesgoPendienteFacturar = freezed,
    Object? obvservacionesInternas = freezed,
    Object? clientePotencial = freezed,
    Object? clienteEstadoPotencialId = freezed,
    Object? clienteTipoPotencialId = freezed,
    Object? representante1Id = freezed,
    Object? representante1Nombre = freezed,
    Object? representante2Id = freezed,
    Object? representante2Nombre = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$ClienteDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nombreCliente: null == nombreCliente
          ? _value.nombreCliente
          : nombreCliente // ignore: cast_nullable_to_non_nullable
              as String,
      nif: freezed == nif
          ? _value.nif
          : nif // ignore: cast_nullable_to_non_nullable
              as String?,
      nombreFiscal: null == nombreFiscal
          ? _value.nombreFiscal
          : nombreFiscal // ignore: cast_nullable_to_non_nullable
              as String,
      direccionFiscal1: freezed == direccionFiscal1
          ? _value.direccionFiscal1
          : direccionFiscal1 // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionFiscal2: freezed == direccionFiscal2
          ? _value.direccionFiscal2
          : direccionFiscal2 // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPostalFiscal: freezed == codigoPostalFiscal
          ? _value.codigoPostalFiscal
          : codigoPostalFiscal // ignore: cast_nullable_to_non_nullable
              as String?,
      poblacionFiscal: freezed == poblacionFiscal
          ? _value.poblacionFiscal
          : poblacionFiscal // ignore: cast_nullable_to_non_nullable
              as String?,
      paisFiscalId: freezed == paisFiscalId
          ? _value.paisFiscalId
          : paisFiscalId // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaFiscal: freezed == provinciaFiscal
          ? _value.provinciaFiscal
          : provinciaFiscal // ignore: cast_nullable_to_non_nullable
              as String?,
      latitudFiscal: null == latitudFiscal
          ? _value.latitudFiscal
          : latitudFiscal // ignore: cast_nullable_to_non_nullable
              as double,
      longitudFiscal: null == longitudFiscal
          ? _value.longitudFiscal
          : longitudFiscal // ignore: cast_nullable_to_non_nullable
              as double,
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      iva: null == iva
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as double,
      ventasAnyoActual: null == ventasAnyoActual
          ? _value.ventasAnyoActual
          : ventasAnyoActual // ignore: cast_nullable_to_non_nullable
              as double,
      ventasAnyoAnterior: null == ventasAnyoAnterior
          ? _value.ventasAnyoAnterior
          : ventasAnyoAnterior // ignore: cast_nullable_to_non_nullable
              as double,
      ventasHaceDosAnyos: null == ventasHaceDosAnyos
          ? _value.ventasHaceDosAnyos
          : ventasHaceDosAnyos // ignore: cast_nullable_to_non_nullable
              as double,
      margenAnyoActual: null == margenAnyoActual
          ? _value.margenAnyoActual
          : margenAnyoActual // ignore: cast_nullable_to_non_nullable
              as double,
      margenAnyoAnterior: null == margenAnyoAnterior
          ? _value.margenAnyoAnterior
          : margenAnyoAnterior // ignore: cast_nullable_to_non_nullable
              as double,
      margenHaceDosAnyos: null == margenHaceDosAnyos
          ? _value.margenHaceDosAnyos
          : margenHaceDosAnyos // ignore: cast_nullable_to_non_nullable
              as double,
      porcentajeAbonos: null == porcentajeAbonos
          ? _value.porcentajeAbonos
          : porcentajeAbonos // ignore: cast_nullable_to_non_nullable
              as double,
      porcentajeGarantias: null == porcentajeGarantias
          ? _value.porcentajeGarantias
          : porcentajeGarantias // ignore: cast_nullable_to_non_nullable
              as double,
      centralCompras: freezed == centralCompras
          ? _value.centralCompras
          : centralCompras // ignore: cast_nullable_to_non_nullable
              as String?,
      urlWeb: freezed == urlWeb
          ? _value.urlWeb
          : urlWeb // ignore: cast_nullable_to_non_nullable
              as String?,
      divisaId: freezed == divisaId
          ? _value.divisaId
          : divisaId // ignore: cast_nullable_to_non_nullable
              as String?,
      tarifaId: freezed == tarifaId
          ? _value.tarifaId
          : tarifaId // ignore: cast_nullable_to_non_nullable
              as String?,
      tarifaDescripcion: freezed == tarifaDescripcion
          ? _value.tarifaDescripcion
          : tarifaDescripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      descuentoGeneralId: freezed == descuentoGeneralId
          ? _value.descuentoGeneralId
          : descuentoGeneralId // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionDescuentoGeneral: freezed == descripcionDescuentoGeneral
          ? _value.descripcionDescuentoGeneral
          : descripcionDescuentoGeneral // ignore: cast_nullable_to_non_nullable
              as String?,
      tipoCalculoPrecio: null == tipoCalculoPrecio
          ? _value.tipoCalculoPrecio
          : tipoCalculoPrecio // ignore: cast_nullable_to_non_nullable
              as String,
      plazoDeCobroId: freezed == plazoDeCobroId
          ? _value.plazoDeCobroId
          : plazoDeCobroId // ignore: cast_nullable_to_non_nullable
              as String?,
      metodoDeCobroId: freezed == metodoDeCobroId
          ? _value.metodoDeCobroId
          : metodoDeCobroId // ignore: cast_nullable_to_non_nullable
              as String?,
      descuentoProntoPago: null == descuentoProntoPago
          ? _value.descuentoProntoPago
          : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
              as double,
      riesgoConcedidoInterno: null == riesgoConcedidoInterno
          ? _value.riesgoConcedidoInterno
          : riesgoConcedidoInterno // ignore: cast_nullable_to_non_nullable
              as double,
      riesgoConcedidoInternoDate: freezed == riesgoConcedidoInternoDate
          ? _value.riesgoConcedidoInternoDate
          : riesgoConcedidoInternoDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riesgoConcedidoCoafe: null == riesgoConcedidoCoafe
          ? _value.riesgoConcedidoCoafe
          : riesgoConcedidoCoafe // ignore: cast_nullable_to_non_nullable
              as double,
      riesgoConcedidoCoafeFecha: freezed == riesgoConcedidoCoafeFecha
          ? _value.riesgoConcedidoCoafeFecha
          : riesgoConcedidoCoafeFecha // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riesgoConcedido: freezed == riesgoConcedido
          ? _value.riesgoConcedido
          : riesgoConcedido // ignore: cast_nullable_to_non_nullable
              as double?,
      riesgoPendienteCobroVencido: freezed == riesgoPendienteCobroVencido
          ? _value.riesgoPendienteCobroVencido
          : riesgoPendienteCobroVencido // ignore: cast_nullable_to_non_nullable
              as double?,
      riesgoPendienteCobroNoVencido: freezed == riesgoPendienteCobroNoVencido
          ? _value.riesgoPendienteCobroNoVencido
          : riesgoPendienteCobroNoVencido // ignore: cast_nullable_to_non_nullable
              as double?,
      riesgoPendienteServir: freezed == riesgoPendienteServir
          ? _value.riesgoPendienteServir
          : riesgoPendienteServir // ignore: cast_nullable_to_non_nullable
              as double?,
      riesgoPendienteFacturar: freezed == riesgoPendienteFacturar
          ? _value.riesgoPendienteFacturar
          : riesgoPendienteFacturar // ignore: cast_nullable_to_non_nullable
              as double?,
      obvservacionesInternas: freezed == obvservacionesInternas
          ? _value.obvservacionesInternas
          : obvservacionesInternas // ignore: cast_nullable_to_non_nullable
              as String?,
      clientePotencial: freezed == clientePotencial
          ? _value.clientePotencial
          : clientePotencial // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteEstadoPotencialId: freezed == clienteEstadoPotencialId
          ? _value.clienteEstadoPotencialId
          : clienteEstadoPotencialId // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteTipoPotencialId: freezed == clienteTipoPotencialId
          ? _value.clienteTipoPotencialId
          : clienteTipoPotencialId // ignore: cast_nullable_to_non_nullable
              as String?,
      representante1Id: freezed == representante1Id
          ? _value.representante1Id
          : representante1Id // ignore: cast_nullable_to_non_nullable
              as String?,
      representante1Nombre: freezed == representante1Nombre
          ? _value.representante1Nombre
          : representante1Nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      representante2Id: freezed == representante2Id
          ? _value.representante2Id
          : representante2Id // ignore: cast_nullable_to_non_nullable
              as String?,
      representante2Nombre: freezed == representante2Nombre
          ? _value.representante2Nombre
          : representante2Nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClienteDTOImpl extends _ClienteDTO {
  const _$ClienteDTOImpl(
      {@JsonKey(name: 'CLIENTE_ID') required this.id,
      @JsonKey(name: 'NOMBRE') required this.nombreCliente,
      @JsonKey(name: 'NIF') this.nif,
      @JsonKey(name: 'NOMBRE_FISCAL') required this.nombreFiscal,
      @JsonKey(name: 'DIRECCION_FISCAL1') this.direccionFiscal1,
      @JsonKey(name: 'DIRECCION_FISCAL2') this.direccionFiscal2,
      @JsonKey(name: 'CODIGO_POSTAL_FISCAL') this.codigoPostalFiscal,
      @JsonKey(name: 'POBLACION_FISCAL') this.poblacionFiscal,
      @JsonKey(name: 'PAIS_ID_FISCAL') this.paisFiscalId,
      @JsonKey(name: 'PROVINCIA_FISCAL') this.provinciaFiscal,
      @JsonKey(name: 'LATITUD_FISCAL') required this.latitudFiscal,
      @JsonKey(name: 'LONGITUD_FISCAL') required this.longitudFiscal,
      @JsonKey(name: 'EMPRESA_ID') required this.empresaId,
      @JsonKey(name: 'IVA') required this.iva,
      @JsonKey(name: 'VENTAS_ANYO_ACTUAL') required this.ventasAnyoActual,
      @JsonKey(name: 'VENTAS_ANYO_ANTERIOR') required this.ventasAnyoAnterior,
      @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS') required this.ventasHaceDosAnyos,
      @JsonKey(name: 'MARGEN_ANYO_ACTUAL') required this.margenAnyoActual,
      @JsonKey(name: 'MARGEN_ANYO_ANTERIOR') required this.margenAnyoAnterior,
      @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS') required this.margenHaceDosAnyos,
      @JsonKey(name: 'PORCENTAJE_ABONOS') required this.porcentajeAbonos,
      @JsonKey(name: 'PORCENTAJE_GARANTIAS') required this.porcentajeGarantias,
      @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE') this.centralCompras,
      @JsonKey(name: 'URL_WEB') this.urlWeb,
      @JsonKey(name: 'DIVISA_ID') this.divisaId,
      @JsonKey(name: 'TARIFA_ID') this.tarifaId,
      @JsonKey(name: 'TARIFA_DESCRIPCION') this.tarifaDescripcion,
      @JsonKey(name: 'DESCUENTO_GENERAL_ID') this.descuentoGeneralId,
      @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
      this.descripcionDescuentoGeneral,
      @JsonKey(name: 'TIPO_CALCULO_PRECIO') required this.tipoCalculoPrecio,
      @JsonKey(name: 'PLAZO_COBRO_ID') this.plazoDeCobroId,
      @JsonKey(name: 'METODO_COBRO_ID') this.metodoDeCobroId,
      @JsonKey(name: 'DESCUENTO_PRONTO_PAGO') required this.descuentoProntoPago,
      @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')
      required this.riesgoConcedidoInterno,
      @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')
      this.riesgoConcedidoInternoDate,
      @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE')
      required this.riesgoConcedidoCoafe,
      @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')
      this.riesgoConcedidoCoafeFecha,
      @JsonKey(name: 'RIESGO_CONCEDIDO') this.riesgoConcedido,
      @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')
      this.riesgoPendienteCobroVencido,
      @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')
      this.riesgoPendienteCobroNoVencido,
      @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE') this.riesgoPendienteServir,
      @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')
      this.riesgoPendienteFacturar,
      @JsonKey(name: 'OBSERVACIONES_INTERNAS') this.obvservacionesInternas,
      @JsonKey(name: 'CLIENTE_POTENCIAL') this.clientePotencial,
      @JsonKey(name: 'ESTADO_POTENCIAL_ID') this.clienteEstadoPotencialId,
      @JsonKey(name: 'TIPO_POTENCIAL_ID') this.clienteTipoPotencialId,
      @JsonKey(name: 'REPRESENTANTE1_ID') this.representante1Id,
      @JsonKey(name: 'REPRESENTANTE1_NOMBRE') this.representante1Nombre,
      @JsonKey(name: 'REPRESENTANTE2_ID') this.representante2Id,
      @JsonKey(name: 'REPRESENTANTE2_NOMBRE') this.representante2Nombre,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$ClienteDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClienteDTOImplFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String id;
  @override
  @JsonKey(name: 'NOMBRE')
  final String nombreCliente;
  @override
  @JsonKey(name: 'NIF')
  final String? nif;
  @override
  @JsonKey(name: 'NOMBRE_FISCAL')
  final String nombreFiscal;
  @override
  @JsonKey(name: 'DIRECCION_FISCAL1')
  final String? direccionFiscal1;
  @override
  @JsonKey(name: 'DIRECCION_FISCAL2')
  final String? direccionFiscal2;
  @override
  @JsonKey(name: 'CODIGO_POSTAL_FISCAL')
  final String? codigoPostalFiscal;
  @override
  @JsonKey(name: 'POBLACION_FISCAL')
  final String? poblacionFiscal;
  @override
  @JsonKey(name: 'PAIS_ID_FISCAL')
  final String? paisFiscalId;
  @override
  @JsonKey(name: 'PROVINCIA_FISCAL')
  final String? provinciaFiscal;
  @override
  @JsonKey(name: 'LATITUD_FISCAL')
  final double latitudFiscal;
  @override
  @JsonKey(name: 'LONGITUD_FISCAL')
  final double longitudFiscal;
  @override
  @JsonKey(name: 'EMPRESA_ID')
  final String empresaId;
  @override
  @JsonKey(name: 'IVA')
  final double iva;
  @override
  @JsonKey(name: 'VENTAS_ANYO_ACTUAL')
  final double ventasAnyoActual;
  @override
  @JsonKey(name: 'VENTAS_ANYO_ANTERIOR')
  final double ventasAnyoAnterior;
  @override
  @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS')
  final double ventasHaceDosAnyos;
  @override
  @JsonKey(name: 'MARGEN_ANYO_ACTUAL')
  final double margenAnyoActual;
  @override
  @JsonKey(name: 'MARGEN_ANYO_ANTERIOR')
  final double margenAnyoAnterior;
  @override
  @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS')
  final double margenHaceDosAnyos;
  @override
  @JsonKey(name: 'PORCENTAJE_ABONOS')
  final double porcentajeAbonos;
  @override
  @JsonKey(name: 'PORCENTAJE_GARANTIAS')
  final double porcentajeGarantias;
  @override
  @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE')
  final String? centralCompras;
  @override
  @JsonKey(name: 'URL_WEB')
  final String? urlWeb;
  @override
  @JsonKey(name: 'DIVISA_ID')
  final String? divisaId;
  @override
  @JsonKey(name: 'TARIFA_ID')
  final String? tarifaId;
  @override
  @JsonKey(name: 'TARIFA_DESCRIPCION')
  final String? tarifaDescripcion;
  @override
  @JsonKey(name: 'DESCUENTO_GENERAL_ID')
  final String? descuentoGeneralId;
  @override
  @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
  final String? descripcionDescuentoGeneral;
  @override
  @JsonKey(name: 'TIPO_CALCULO_PRECIO')
  final String tipoCalculoPrecio;
  @override
  @JsonKey(name: 'PLAZO_COBRO_ID')
  final String? plazoDeCobroId;
  @override
  @JsonKey(name: 'METODO_COBRO_ID')
  final String? metodoDeCobroId;
  @override
  @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
  final double descuentoProntoPago;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')
  final double riesgoConcedidoInterno;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')
  final DateTime? riesgoConcedidoInternoDate;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE')
  final double riesgoConcedidoCoafe;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')
  final DateTime? riesgoConcedidoCoafeFecha;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO')
  final double? riesgoConcedido;
  @override
  @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')
  final double? riesgoPendienteCobroVencido;
  @override
  @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')
  final double? riesgoPendienteCobroNoVencido;
  @override
  @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE')
  final double? riesgoPendienteServir;
  @override
  @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')
  final double? riesgoPendienteFacturar;
  @override
  @JsonKey(name: 'OBSERVACIONES_INTERNAS')
  final String? obvservacionesInternas;
  @override
  @JsonKey(name: 'CLIENTE_POTENCIAL')
  final String? clientePotencial;
  @override
  @JsonKey(name: 'ESTADO_POTENCIAL_ID')
  final String? clienteEstadoPotencialId;
  @override
  @JsonKey(name: 'TIPO_POTENCIAL_ID')
  final String? clienteTipoPotencialId;
  @override
  @JsonKey(name: 'REPRESENTANTE1_ID')
  final String? representante1Id;
  @override
  @JsonKey(name: 'REPRESENTANTE1_NOMBRE')
  final String? representante1Nombre;
  @override
  @JsonKey(name: 'REPRESENTANTE2_ID')
  final String? representante2Id;
  @override
  @JsonKey(name: 'REPRESENTANTE2_NOMBRE')
  final String? representante2Nombre;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ClienteDTO(id: $id, nombreCliente: $nombreCliente, nif: $nif, nombreFiscal: $nombreFiscal, direccionFiscal1: $direccionFiscal1, direccionFiscal2: $direccionFiscal2, codigoPostalFiscal: $codigoPostalFiscal, poblacionFiscal: $poblacionFiscal, paisFiscalId: $paisFiscalId, provinciaFiscal: $provinciaFiscal, latitudFiscal: $latitudFiscal, longitudFiscal: $longitudFiscal, empresaId: $empresaId, iva: $iva, ventasAnyoActual: $ventasAnyoActual, ventasAnyoAnterior: $ventasAnyoAnterior, ventasHaceDosAnyos: $ventasHaceDosAnyos, margenAnyoActual: $margenAnyoActual, margenAnyoAnterior: $margenAnyoAnterior, margenHaceDosAnyos: $margenHaceDosAnyos, porcentajeAbonos: $porcentajeAbonos, porcentajeGarantias: $porcentajeGarantias, centralCompras: $centralCompras, urlWeb: $urlWeb, divisaId: $divisaId, tarifaId: $tarifaId, tarifaDescripcion: $tarifaDescripcion, descuentoGeneralId: $descuentoGeneralId, descripcionDescuentoGeneral: $descripcionDescuentoGeneral, tipoCalculoPrecio: $tipoCalculoPrecio, plazoDeCobroId: $plazoDeCobroId, metodoDeCobroId: $metodoDeCobroId, descuentoProntoPago: $descuentoProntoPago, riesgoConcedidoInterno: $riesgoConcedidoInterno, riesgoConcedidoInternoDate: $riesgoConcedidoInternoDate, riesgoConcedidoCoafe: $riesgoConcedidoCoafe, riesgoConcedidoCoafeFecha: $riesgoConcedidoCoafeFecha, riesgoConcedido: $riesgoConcedido, riesgoPendienteCobroVencido: $riesgoPendienteCobroVencido, riesgoPendienteCobroNoVencido: $riesgoPendienteCobroNoVencido, riesgoPendienteServir: $riesgoPendienteServir, riesgoPendienteFacturar: $riesgoPendienteFacturar, obvservacionesInternas: $obvservacionesInternas, clientePotencial: $clientePotencial, clienteEstadoPotencialId: $clienteEstadoPotencialId, clienteTipoPotencialId: $clienteTipoPotencialId, representante1Id: $representante1Id, representante1Nombre: $representante1Nombre, representante2Id: $representante2Id, representante2Nombre: $representante2Nombre, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nombreCliente, nombreCliente) ||
                other.nombreCliente == nombreCliente) &&
            (identical(other.nif, nif) || other.nif == nif) &&
            (identical(other.nombreFiscal, nombreFiscal) ||
                other.nombreFiscal == nombreFiscal) &&
            (identical(other.direccionFiscal1, direccionFiscal1) ||
                other.direccionFiscal1 == direccionFiscal1) &&
            (identical(other.direccionFiscal2, direccionFiscal2) ||
                other.direccionFiscal2 == direccionFiscal2) &&
            (identical(other.codigoPostalFiscal, codigoPostalFiscal) ||
                other.codigoPostalFiscal == codigoPostalFiscal) &&
            (identical(other.poblacionFiscal, poblacionFiscal) ||
                other.poblacionFiscal == poblacionFiscal) &&
            (identical(other.paisFiscalId, paisFiscalId) ||
                other.paisFiscalId == paisFiscalId) &&
            (identical(other.provinciaFiscal, provinciaFiscal) ||
                other.provinciaFiscal == provinciaFiscal) &&
            (identical(other.latitudFiscal, latitudFiscal) ||
                other.latitudFiscal == latitudFiscal) &&
            (identical(other.longitudFiscal, longitudFiscal) ||
                other.longitudFiscal == longitudFiscal) &&
            (identical(other.empresaId, empresaId) ||
                other.empresaId == empresaId) &&
            (identical(other.iva, iva) || other.iva == iva) &&
            (identical(other.ventasAnyoActual, ventasAnyoActual) ||
                other.ventasAnyoActual == ventasAnyoActual) &&
            (identical(other.ventasAnyoAnterior, ventasAnyoAnterior) ||
                other.ventasAnyoAnterior == ventasAnyoAnterior) &&
            (identical(other.ventasHaceDosAnyos, ventasHaceDosAnyos) ||
                other.ventasHaceDosAnyos == ventasHaceDosAnyos) &&
            (identical(other.margenAnyoActual, margenAnyoActual) ||
                other.margenAnyoActual == margenAnyoActual) &&
            (identical(other.margenAnyoAnterior, margenAnyoAnterior) ||
                other.margenAnyoAnterior == margenAnyoAnterior) &&
            (identical(other.margenHaceDosAnyos, margenHaceDosAnyos) ||
                other.margenHaceDosAnyos == margenHaceDosAnyos) &&
            (identical(other.porcentajeAbonos, porcentajeAbonos) ||
                other.porcentajeAbonos == porcentajeAbonos) &&
            (identical(other.porcentajeGarantias, porcentajeGarantias) ||
                other.porcentajeGarantias == porcentajeGarantias) &&
            (identical(other.centralCompras, centralCompras) ||
                other.centralCompras == centralCompras) &&
            (identical(other.urlWeb, urlWeb) || other.urlWeb == urlWeb) &&
            (identical(other.divisaId, divisaId) ||
                other.divisaId == divisaId) &&
            (identical(other.tarifaId, tarifaId) ||
                other.tarifaId == tarifaId) &&
            (identical(other.tarifaDescripcion, tarifaDescripcion) ||
                other.tarifaDescripcion == tarifaDescripcion) &&
            (identical(other.descuentoGeneralId, descuentoGeneralId) ||
                other.descuentoGeneralId == descuentoGeneralId) &&
            (identical(other.descripcionDescuentoGeneral, descripcionDescuentoGeneral) ||
                other.descripcionDescuentoGeneral ==
                    descripcionDescuentoGeneral) &&
            (identical(other.tipoCalculoPrecio, tipoCalculoPrecio) ||
                other.tipoCalculoPrecio == tipoCalculoPrecio) &&
            (identical(other.plazoDeCobroId, plazoDeCobroId) ||
                other.plazoDeCobroId == plazoDeCobroId) &&
            (identical(other.metodoDeCobroId, metodoDeCobroId) ||
                other.metodoDeCobroId == metodoDeCobroId) &&
            (identical(other.descuentoProntoPago, descuentoProntoPago) ||
                other.descuentoProntoPago == descuentoProntoPago) &&
            (identical(other.riesgoConcedidoInterno, riesgoConcedidoInterno) ||
                other.riesgoConcedidoInterno == riesgoConcedidoInterno) &&
            (identical(other.riesgoConcedidoInternoDate, riesgoConcedidoInternoDate) ||
                other.riesgoConcedidoInternoDate ==
                    riesgoConcedidoInternoDate) &&
            (identical(other.riesgoConcedidoCoafe, riesgoConcedidoCoafe) ||
                other.riesgoConcedidoCoafe == riesgoConcedidoCoafe) &&
            (identical(other.riesgoConcedidoCoafeFecha, riesgoConcedidoCoafeFecha) ||
                other.riesgoConcedidoCoafeFecha == riesgoConcedidoCoafeFecha) &&
            (identical(other.riesgoConcedido, riesgoConcedido) ||
                other.riesgoConcedido == riesgoConcedido) &&
            (identical(other.riesgoPendienteCobroVencido, riesgoPendienteCobroVencido) ||
                other.riesgoPendienteCobroVencido ==
                    riesgoPendienteCobroVencido) &&
            (identical(other.riesgoPendienteCobroNoVencido, riesgoPendienteCobroNoVencido) ||
                other.riesgoPendienteCobroNoVencido ==
                    riesgoPendienteCobroNoVencido) &&
            (identical(other.riesgoPendienteServir, riesgoPendienteServir) ||
                other.riesgoPendienteServir == riesgoPendienteServir) &&
            (identical(other.riesgoPendienteFacturar, riesgoPendienteFacturar) || other.riesgoPendienteFacturar == riesgoPendienteFacturar) &&
            (identical(other.obvservacionesInternas, obvservacionesInternas) || other.obvservacionesInternas == obvservacionesInternas) &&
            (identical(other.clientePotencial, clientePotencial) || other.clientePotencial == clientePotencial) &&
            (identical(other.clienteEstadoPotencialId, clienteEstadoPotencialId) || other.clienteEstadoPotencialId == clienteEstadoPotencialId) &&
            (identical(other.clienteTipoPotencialId, clienteTipoPotencialId) || other.clienteTipoPotencialId == clienteTipoPotencialId) &&
            (identical(other.representante1Id, representante1Id) || other.representante1Id == representante1Id) &&
            (identical(other.representante1Nombre, representante1Nombre) || other.representante1Nombre == representante1Nombre) &&
            (identical(other.representante2Id, representante2Id) || other.representante2Id == representante2Id) &&
            (identical(other.representante2Nombre, representante2Nombre) || other.representante2Nombre == representante2Nombre) &&
            (identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        nombreCliente,
        nif,
        nombreFiscal,
        direccionFiscal1,
        direccionFiscal2,
        codigoPostalFiscal,
        poblacionFiscal,
        paisFiscalId,
        provinciaFiscal,
        latitudFiscal,
        longitudFiscal,
        empresaId,
        iva,
        ventasAnyoActual,
        ventasAnyoAnterior,
        ventasHaceDosAnyos,
        margenAnyoActual,
        margenAnyoAnterior,
        margenHaceDosAnyos,
        porcentajeAbonos,
        porcentajeGarantias,
        centralCompras,
        urlWeb,
        divisaId,
        tarifaId,
        tarifaDescripcion,
        descuentoGeneralId,
        descripcionDescuentoGeneral,
        tipoCalculoPrecio,
        plazoDeCobroId,
        metodoDeCobroId,
        descuentoProntoPago,
        riesgoConcedidoInterno,
        riesgoConcedidoInternoDate,
        riesgoConcedidoCoafe,
        riesgoConcedidoCoafeFecha,
        riesgoConcedido,
        riesgoPendienteCobroVencido,
        riesgoPendienteCobroNoVencido,
        riesgoPendienteServir,
        riesgoPendienteFacturar,
        obvservacionesInternas,
        clientePotencial,
        clienteEstadoPotencialId,
        clienteTipoPotencialId,
        representante1Id,
        representante1Nombre,
        representante2Id,
        representante2Nombre,
        lastUpdated,
        deleted
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteDTOImplCopyWith<_$ClienteDTOImpl> get copyWith =>
      __$$ClienteDTOImplCopyWithImpl<_$ClienteDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClienteDTOImplToJson(
      this,
    );
  }
}

abstract class _ClienteDTO extends ClienteDTO {
  const factory _ClienteDTO(
      {@JsonKey(name: 'CLIENTE_ID') required final String id,
      @JsonKey(name: 'NOMBRE') required final String nombreCliente,
      @JsonKey(name: 'NIF') final String? nif,
      @JsonKey(name: 'NOMBRE_FISCAL') required final String nombreFiscal,
      @JsonKey(name: 'DIRECCION_FISCAL1') final String? direccionFiscal1,
      @JsonKey(name: 'DIRECCION_FISCAL2') final String? direccionFiscal2,
      @JsonKey(name: 'CODIGO_POSTAL_FISCAL') final String? codigoPostalFiscal,
      @JsonKey(name: 'POBLACION_FISCAL') final String? poblacionFiscal,
      @JsonKey(name: 'PAIS_ID_FISCAL') final String? paisFiscalId,
      @JsonKey(name: 'PROVINCIA_FISCAL') final String? provinciaFiscal,
      @JsonKey(name: 'LATITUD_FISCAL') required final double latitudFiscal,
      @JsonKey(name: 'LONGITUD_FISCAL') required final double longitudFiscal,
      @JsonKey(name: 'EMPRESA_ID') required final String empresaId,
      @JsonKey(name: 'IVA') required final double iva,
      @JsonKey(name: 'VENTAS_ANYO_ACTUAL')
      required final double ventasAnyoActual,
      @JsonKey(name: 'VENTAS_ANYO_ANTERIOR')
      required final double ventasAnyoAnterior,
      @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS')
      required final double ventasHaceDosAnyos,
      @JsonKey(name: 'MARGEN_ANYO_ACTUAL')
      required final double margenAnyoActual,
      @JsonKey(name: 'MARGEN_ANYO_ANTERIOR')
      required final double margenAnyoAnterior,
      @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS')
      required final double margenHaceDosAnyos,
      @JsonKey(name: 'PORCENTAJE_ABONOS')
      required final double porcentajeAbonos,
      @JsonKey(name: 'PORCENTAJE_GARANTIAS')
      required final double porcentajeGarantias,
      @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE') final String? centralCompras,
      @JsonKey(name: 'URL_WEB') final String? urlWeb,
      @JsonKey(name: 'DIVISA_ID') final String? divisaId,
      @JsonKey(name: 'TARIFA_ID') final String? tarifaId,
      @JsonKey(name: 'TARIFA_DESCRIPCION') final String? tarifaDescripcion,
      @JsonKey(name: 'DESCUENTO_GENERAL_ID') final String? descuentoGeneralId,
      @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
      final String? descripcionDescuentoGeneral,
      @JsonKey(name: 'TIPO_CALCULO_PRECIO')
      required final String tipoCalculoPrecio,
      @JsonKey(name: 'PLAZO_COBRO_ID') final String? plazoDeCobroId,
      @JsonKey(name: 'METODO_COBRO_ID') final String? metodoDeCobroId,
      @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
      required final double descuentoProntoPago,
      @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')
      required final double riesgoConcedidoInterno,
      @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')
      final DateTime? riesgoConcedidoInternoDate,
      @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE')
      required final double riesgoConcedidoCoafe,
      @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')
      final DateTime? riesgoConcedidoCoafeFecha,
      @JsonKey(name: 'RIESGO_CONCEDIDO') final double? riesgoConcedido,
      @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')
      final double? riesgoPendienteCobroVencido,
      @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')
      final double? riesgoPendienteCobroNoVencido,
      @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE')
      final double? riesgoPendienteServir,
      @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')
      final double? riesgoPendienteFacturar,
      @JsonKey(name: 'OBSERVACIONES_INTERNAS')
      final String? obvservacionesInternas,
      @JsonKey(name: 'CLIENTE_POTENCIAL') final String? clientePotencial,
      @JsonKey(name: 'ESTADO_POTENCIAL_ID')
      final String? clienteEstadoPotencialId,
      @JsonKey(name: 'TIPO_POTENCIAL_ID') final String? clienteTipoPotencialId,
      @JsonKey(name: 'REPRESENTANTE1_ID') final String? representante1Id,
      @JsonKey(name: 'REPRESENTANTE1_NOMBRE')
      final String? representante1Nombre,
      @JsonKey(name: 'REPRESENTANTE2_ID') final String? representante2Id,
      @JsonKey(name: 'REPRESENTANTE2_NOMBRE')
      final String? representante2Nombre,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$ClienteDTOImpl;
  const _ClienteDTO._() : super._();

  factory _ClienteDTO.fromJson(Map<String, dynamic> json) =
      _$ClienteDTOImpl.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get id;
  @override
  @JsonKey(name: 'NOMBRE')
  String get nombreCliente;
  @override
  @JsonKey(name: 'NIF')
  String? get nif;
  @override
  @JsonKey(name: 'NOMBRE_FISCAL')
  String get nombreFiscal;
  @override
  @JsonKey(name: 'DIRECCION_FISCAL1')
  String? get direccionFiscal1;
  @override
  @JsonKey(name: 'DIRECCION_FISCAL2')
  String? get direccionFiscal2;
  @override
  @JsonKey(name: 'CODIGO_POSTAL_FISCAL')
  String? get codigoPostalFiscal;
  @override
  @JsonKey(name: 'POBLACION_FISCAL')
  String? get poblacionFiscal;
  @override
  @JsonKey(name: 'PAIS_ID_FISCAL')
  String? get paisFiscalId;
  @override
  @JsonKey(name: 'PROVINCIA_FISCAL')
  String? get provinciaFiscal;
  @override
  @JsonKey(name: 'LATITUD_FISCAL')
  double get latitudFiscal;
  @override
  @JsonKey(name: 'LONGITUD_FISCAL')
  double get longitudFiscal;
  @override
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId;
  @override
  @JsonKey(name: 'IVA')
  double get iva;
  @override
  @JsonKey(name: 'VENTAS_ANYO_ACTUAL')
  double get ventasAnyoActual;
  @override
  @JsonKey(name: 'VENTAS_ANYO_ANTERIOR')
  double get ventasAnyoAnterior;
  @override
  @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS')
  double get ventasHaceDosAnyos;
  @override
  @JsonKey(name: 'MARGEN_ANYO_ACTUAL')
  double get margenAnyoActual;
  @override
  @JsonKey(name: 'MARGEN_ANYO_ANTERIOR')
  double get margenAnyoAnterior;
  @override
  @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS')
  double get margenHaceDosAnyos;
  @override
  @JsonKey(name: 'PORCENTAJE_ABONOS')
  double get porcentajeAbonos;
  @override
  @JsonKey(name: 'PORCENTAJE_GARANTIAS')
  double get porcentajeGarantias;
  @override
  @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE')
  String? get centralCompras;
  @override
  @JsonKey(name: 'URL_WEB')
  String? get urlWeb;
  @override
  @JsonKey(name: 'DIVISA_ID')
  String? get divisaId;
  @override
  @JsonKey(name: 'TARIFA_ID')
  String? get tarifaId;
  @override
  @JsonKey(name: 'TARIFA_DESCRIPCION')
  String? get tarifaDescripcion;
  @override
  @JsonKey(name: 'DESCUENTO_GENERAL_ID')
  String? get descuentoGeneralId;
  @override
  @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
  String? get descripcionDescuentoGeneral;
  @override
  @JsonKey(name: 'TIPO_CALCULO_PRECIO')
  String get tipoCalculoPrecio;
  @override
  @JsonKey(name: 'PLAZO_COBRO_ID')
  String? get plazoDeCobroId;
  @override
  @JsonKey(name: 'METODO_COBRO_ID')
  String? get metodoDeCobroId;
  @override
  @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
  double get descuentoProntoPago;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')
  double get riesgoConcedidoInterno;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')
  DateTime? get riesgoConcedidoInternoDate;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE')
  double get riesgoConcedidoCoafe;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')
  DateTime? get riesgoConcedidoCoafeFecha;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO')
  double? get riesgoConcedido;
  @override
  @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')
  double? get riesgoPendienteCobroVencido;
  @override
  @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')
  double? get riesgoPendienteCobroNoVencido;
  @override
  @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE')
  double? get riesgoPendienteServir;
  @override
  @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')
  double? get riesgoPendienteFacturar;
  @override
  @JsonKey(name: 'OBSERVACIONES_INTERNAS')
  String? get obvservacionesInternas;
  @override
  @JsonKey(name: 'CLIENTE_POTENCIAL')
  String? get clientePotencial;
  @override
  @JsonKey(name: 'ESTADO_POTENCIAL_ID')
  String? get clienteEstadoPotencialId;
  @override
  @JsonKey(name: 'TIPO_POTENCIAL_ID')
  String? get clienteTipoPotencialId;
  @override
  @JsonKey(name: 'REPRESENTANTE1_ID')
  String? get representante1Id;
  @override
  @JsonKey(name: 'REPRESENTANTE1_NOMBRE')
  String? get representante1Nombre;
  @override
  @JsonKey(name: 'REPRESENTANTE2_ID')
  String? get representante2Id;
  @override
  @JsonKey(name: 'REPRESENTANTE2_NOMBRE')
  String? get representante2Nombre;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$ClienteDTOImplCopyWith<_$ClienteDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
