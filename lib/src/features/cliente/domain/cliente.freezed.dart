// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cliente.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Cliente {
  String get id => throw _privateConstructorUsedError;
  String? get nombreCliente => throw _privateConstructorUsedError;
  String? get nif => throw _privateConstructorUsedError;
  String? get nombreFiscal => throw _privateConstructorUsedError;
  String? get direccionFiscal1 => throw _privateConstructorUsedError;
  String? get direccionFiscal2 => throw _privateConstructorUsedError;
  String? get codigoPostalFiscal => throw _privateConstructorUsedError;
  String? get poblacionFiscal => throw _privateConstructorUsedError;
  String? get provinciaFiscal => throw _privateConstructorUsedError;
  Pais? get paisFiscal => throw _privateConstructorUsedError;
  double? get latitudFiscal => throw _privateConstructorUsedError;
  double? get longitudFiscal => throw _privateConstructorUsedError;
  String get empresaId => throw _privateConstructorUsedError;
  double? get ivaEspecial => throw _privateConstructorUsedError;
  String? get extentoIva => throw _privateConstructorUsedError;
  Money? get ventasAnyoActual => throw _privateConstructorUsedError;
  Money? get ventasAnyoAnterior => throw _privateConstructorUsedError;
  Money? get ventasHaceDosAnyos => throw _privateConstructorUsedError;
  double? get margenAnyoActual => throw _privateConstructorUsedError;
  double? get margenAnyoAnterior => throw _privateConstructorUsedError;
  double? get margenHaceDosAnyos => throw _privateConstructorUsedError;
  double? get porcentajeAbonos => throw _privateConstructorUsedError;
  double? get porcentajeGarantias => throw _privateConstructorUsedError;
  String? get centralCompras => throw _privateConstructorUsedError;
  String? get urlWeb => throw _privateConstructorUsedError;
  Divisa? get divisa => throw _privateConstructorUsedError;
  String? get tarifaId => throw _privateConstructorUsedError;
  String? get tarifaDescripcion => throw _privateConstructorUsedError;
  String? get descuentoGeneral => throw _privateConstructorUsedError;
  String? get descripcionDescuentoGeneral => throw _privateConstructorUsedError;
  String get tipoCalucloPrecio => throw _privateConstructorUsedError;
  PlazoDeCobro? get plazoDeCobro => throw _privateConstructorUsedError;
  MetodoDeCobro? get metodoDeCobro => throw _privateConstructorUsedError;
  double get descuentoProntoPago => throw _privateConstructorUsedError;
  Money get riesgoConcedidoInterno => throw _privateConstructorUsedError;
  DateTime? get riesgoConcedidoInternoDate =>
      throw _privateConstructorUsedError;
  Money get riesgoConcedidoCoafe => throw _privateConstructorUsedError;
  DateTime? get riesgoConcedidoCoafeFecha => throw _privateConstructorUsedError;
  Money get riesgoActual => throw _privateConstructorUsedError;
  Money? get riesgoConcedido => throw _privateConstructorUsedError;
  Money? get riesgoPendienteCobroVencido => throw _privateConstructorUsedError;
  Money? get riesgoPendienteCobroNoVencido =>
      throw _privateConstructorUsedError;
  Money? get riesgoPendienteServir => throw _privateConstructorUsedError;
  Money? get riesgoPendienteFacturar => throw _privateConstructorUsedError;
  String? get obvservacionesInternas => throw _privateConstructorUsedError;
  bool? get clientePotencial => throw _privateConstructorUsedError;
  ClienteEstadoPotencial? get clienteEstadoPotencial =>
      throw _privateConstructorUsedError;
  ClienteTipoPotencial? get clienteTipoPotencial =>
      throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClienteCopyWith<Cliente> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteCopyWith<$Res> {
  factory $ClienteCopyWith(Cliente value, $Res Function(Cliente) then) =
      _$ClienteCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? nombreCliente,
      String? nif,
      String? nombreFiscal,
      String? direccionFiscal1,
      String? direccionFiscal2,
      String? codigoPostalFiscal,
      String? poblacionFiscal,
      String? provinciaFiscal,
      Pais? paisFiscal,
      double? latitudFiscal,
      double? longitudFiscal,
      String empresaId,
      double? ivaEspecial,
      String? extentoIva,
      Money? ventasAnyoActual,
      Money? ventasAnyoAnterior,
      Money? ventasHaceDosAnyos,
      double? margenAnyoActual,
      double? margenAnyoAnterior,
      double? margenHaceDosAnyos,
      double? porcentajeAbonos,
      double? porcentajeGarantias,
      String? centralCompras,
      String? urlWeb,
      Divisa? divisa,
      String? tarifaId,
      String? tarifaDescripcion,
      String? descuentoGeneral,
      String? descripcionDescuentoGeneral,
      String tipoCalucloPrecio,
      PlazoDeCobro? plazoDeCobro,
      MetodoDeCobro? metodoDeCobro,
      double descuentoProntoPago,
      Money riesgoConcedidoInterno,
      DateTime? riesgoConcedidoInternoDate,
      Money riesgoConcedidoCoafe,
      DateTime? riesgoConcedidoCoafeFecha,
      Money riesgoActual,
      Money? riesgoConcedido,
      Money? riesgoPendienteCobroVencido,
      Money? riesgoPendienteCobroNoVencido,
      Money? riesgoPendienteServir,
      Money? riesgoPendienteFacturar,
      String? obvservacionesInternas,
      bool? clientePotencial,
      ClienteEstadoPotencial? clienteEstadoPotencial,
      ClienteTipoPotencial? clienteTipoPotencial,
      DateTime lastUpdated,
      bool deleted});

  $PaisCopyWith<$Res>? get paisFiscal;
  $DivisaCopyWith<$Res>? get divisa;
  $PlazoDeCobroCopyWith<$Res>? get plazoDeCobro;
  $MetodoDeCobroCopyWith<$Res>? get metodoDeCobro;
  $ClienteEstadoPotencialCopyWith<$Res>? get clienteEstadoPotencial;
  $ClienteTipoPotencialCopyWith<$Res>? get clienteTipoPotencial;
}

/// @nodoc
class _$ClienteCopyWithImpl<$Res> implements $ClienteCopyWith<$Res> {
  _$ClienteCopyWithImpl(this._value, this._then);

  final Cliente _value;
  // ignore: unused_field
  final $Res Function(Cliente) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nombreCliente = freezed,
    Object? nif = freezed,
    Object? nombreFiscal = freezed,
    Object? direccionFiscal1 = freezed,
    Object? direccionFiscal2 = freezed,
    Object? codigoPostalFiscal = freezed,
    Object? poblacionFiscal = freezed,
    Object? provinciaFiscal = freezed,
    Object? paisFiscal = freezed,
    Object? latitudFiscal = freezed,
    Object? longitudFiscal = freezed,
    Object? empresaId = freezed,
    Object? ivaEspecial = freezed,
    Object? extentoIva = freezed,
    Object? ventasAnyoActual = freezed,
    Object? ventasAnyoAnterior = freezed,
    Object? ventasHaceDosAnyos = freezed,
    Object? margenAnyoActual = freezed,
    Object? margenAnyoAnterior = freezed,
    Object? margenHaceDosAnyos = freezed,
    Object? porcentajeAbonos = freezed,
    Object? porcentajeGarantias = freezed,
    Object? centralCompras = freezed,
    Object? urlWeb = freezed,
    Object? divisa = freezed,
    Object? tarifaId = freezed,
    Object? tarifaDescripcion = freezed,
    Object? descuentoGeneral = freezed,
    Object? descripcionDescuentoGeneral = freezed,
    Object? tipoCalucloPrecio = freezed,
    Object? plazoDeCobro = freezed,
    Object? metodoDeCobro = freezed,
    Object? descuentoProntoPago = freezed,
    Object? riesgoConcedidoInterno = freezed,
    Object? riesgoConcedidoInternoDate = freezed,
    Object? riesgoConcedidoCoafe = freezed,
    Object? riesgoConcedidoCoafeFecha = freezed,
    Object? riesgoActual = freezed,
    Object? riesgoConcedido = freezed,
    Object? riesgoPendienteCobroVencido = freezed,
    Object? riesgoPendienteCobroNoVencido = freezed,
    Object? riesgoPendienteServir = freezed,
    Object? riesgoPendienteFacturar = freezed,
    Object? obvservacionesInternas = freezed,
    Object? clientePotencial = freezed,
    Object? clienteEstadoPotencial = freezed,
    Object? clienteTipoPotencial = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nombreCliente: nombreCliente == freezed
          ? _value.nombreCliente
          : nombreCliente // ignore: cast_nullable_to_non_nullable
              as String?,
      nif: nif == freezed
          ? _value.nif
          : nif // ignore: cast_nullable_to_non_nullable
              as String?,
      nombreFiscal: nombreFiscal == freezed
          ? _value.nombreFiscal
          : nombreFiscal // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionFiscal1: direccionFiscal1 == freezed
          ? _value.direccionFiscal1
          : direccionFiscal1 // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionFiscal2: direccionFiscal2 == freezed
          ? _value.direccionFiscal2
          : direccionFiscal2 // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPostalFiscal: codigoPostalFiscal == freezed
          ? _value.codigoPostalFiscal
          : codigoPostalFiscal // ignore: cast_nullable_to_non_nullable
              as String?,
      poblacionFiscal: poblacionFiscal == freezed
          ? _value.poblacionFiscal
          : poblacionFiscal // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaFiscal: provinciaFiscal == freezed
          ? _value.provinciaFiscal
          : provinciaFiscal // ignore: cast_nullable_to_non_nullable
              as String?,
      paisFiscal: paisFiscal == freezed
          ? _value.paisFiscal
          : paisFiscal // ignore: cast_nullable_to_non_nullable
              as Pais?,
      latitudFiscal: latitudFiscal == freezed
          ? _value.latitudFiscal
          : latitudFiscal // ignore: cast_nullable_to_non_nullable
              as double?,
      longitudFiscal: longitudFiscal == freezed
          ? _value.longitudFiscal
          : longitudFiscal // ignore: cast_nullable_to_non_nullable
              as double?,
      empresaId: empresaId == freezed
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      ivaEspecial: ivaEspecial == freezed
          ? _value.ivaEspecial
          : ivaEspecial // ignore: cast_nullable_to_non_nullable
              as double?,
      extentoIva: extentoIva == freezed
          ? _value.extentoIva
          : extentoIva // ignore: cast_nullable_to_non_nullable
              as String?,
      ventasAnyoActual: ventasAnyoActual == freezed
          ? _value.ventasAnyoActual
          : ventasAnyoActual // ignore: cast_nullable_to_non_nullable
              as Money?,
      ventasAnyoAnterior: ventasAnyoAnterior == freezed
          ? _value.ventasAnyoAnterior
          : ventasAnyoAnterior // ignore: cast_nullable_to_non_nullable
              as Money?,
      ventasHaceDosAnyos: ventasHaceDosAnyos == freezed
          ? _value.ventasHaceDosAnyos
          : ventasHaceDosAnyos // ignore: cast_nullable_to_non_nullable
              as Money?,
      margenAnyoActual: margenAnyoActual == freezed
          ? _value.margenAnyoActual
          : margenAnyoActual // ignore: cast_nullable_to_non_nullable
              as double?,
      margenAnyoAnterior: margenAnyoAnterior == freezed
          ? _value.margenAnyoAnterior
          : margenAnyoAnterior // ignore: cast_nullable_to_non_nullable
              as double?,
      margenHaceDosAnyos: margenHaceDosAnyos == freezed
          ? _value.margenHaceDosAnyos
          : margenHaceDosAnyos // ignore: cast_nullable_to_non_nullable
              as double?,
      porcentajeAbonos: porcentajeAbonos == freezed
          ? _value.porcentajeAbonos
          : porcentajeAbonos // ignore: cast_nullable_to_non_nullable
              as double?,
      porcentajeGarantias: porcentajeGarantias == freezed
          ? _value.porcentajeGarantias
          : porcentajeGarantias // ignore: cast_nullable_to_non_nullable
              as double?,
      centralCompras: centralCompras == freezed
          ? _value.centralCompras
          : centralCompras // ignore: cast_nullable_to_non_nullable
              as String?,
      urlWeb: urlWeb == freezed
          ? _value.urlWeb
          : urlWeb // ignore: cast_nullable_to_non_nullable
              as String?,
      divisa: divisa == freezed
          ? _value.divisa
          : divisa // ignore: cast_nullable_to_non_nullable
              as Divisa?,
      tarifaId: tarifaId == freezed
          ? _value.tarifaId
          : tarifaId // ignore: cast_nullable_to_non_nullable
              as String?,
      tarifaDescripcion: tarifaDescripcion == freezed
          ? _value.tarifaDescripcion
          : tarifaDescripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      descuentoGeneral: descuentoGeneral == freezed
          ? _value.descuentoGeneral
          : descuentoGeneral // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionDescuentoGeneral: descripcionDescuentoGeneral == freezed
          ? _value.descripcionDescuentoGeneral
          : descripcionDescuentoGeneral // ignore: cast_nullable_to_non_nullable
              as String?,
      tipoCalucloPrecio: tipoCalucloPrecio == freezed
          ? _value.tipoCalucloPrecio
          : tipoCalucloPrecio // ignore: cast_nullable_to_non_nullable
              as String,
      plazoDeCobro: plazoDeCobro == freezed
          ? _value.plazoDeCobro
          : plazoDeCobro // ignore: cast_nullable_to_non_nullable
              as PlazoDeCobro?,
      metodoDeCobro: metodoDeCobro == freezed
          ? _value.metodoDeCobro
          : metodoDeCobro // ignore: cast_nullable_to_non_nullable
              as MetodoDeCobro?,
      descuentoProntoPago: descuentoProntoPago == freezed
          ? _value.descuentoProntoPago
          : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
              as double,
      riesgoConcedidoInterno: riesgoConcedidoInterno == freezed
          ? _value.riesgoConcedidoInterno
          : riesgoConcedidoInterno // ignore: cast_nullable_to_non_nullable
              as Money,
      riesgoConcedidoInternoDate: riesgoConcedidoInternoDate == freezed
          ? _value.riesgoConcedidoInternoDate
          : riesgoConcedidoInternoDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riesgoConcedidoCoafe: riesgoConcedidoCoafe == freezed
          ? _value.riesgoConcedidoCoafe
          : riesgoConcedidoCoafe // ignore: cast_nullable_to_non_nullable
              as Money,
      riesgoConcedidoCoafeFecha: riesgoConcedidoCoafeFecha == freezed
          ? _value.riesgoConcedidoCoafeFecha
          : riesgoConcedidoCoafeFecha // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riesgoActual: riesgoActual == freezed
          ? _value.riesgoActual
          : riesgoActual // ignore: cast_nullable_to_non_nullable
              as Money,
      riesgoConcedido: riesgoConcedido == freezed
          ? _value.riesgoConcedido
          : riesgoConcedido // ignore: cast_nullable_to_non_nullable
              as Money?,
      riesgoPendienteCobroVencido: riesgoPendienteCobroVencido == freezed
          ? _value.riesgoPendienteCobroVencido
          : riesgoPendienteCobroVencido // ignore: cast_nullable_to_non_nullable
              as Money?,
      riesgoPendienteCobroNoVencido: riesgoPendienteCobroNoVencido == freezed
          ? _value.riesgoPendienteCobroNoVencido
          : riesgoPendienteCobroNoVencido // ignore: cast_nullable_to_non_nullable
              as Money?,
      riesgoPendienteServir: riesgoPendienteServir == freezed
          ? _value.riesgoPendienteServir
          : riesgoPendienteServir // ignore: cast_nullable_to_non_nullable
              as Money?,
      riesgoPendienteFacturar: riesgoPendienteFacturar == freezed
          ? _value.riesgoPendienteFacturar
          : riesgoPendienteFacturar // ignore: cast_nullable_to_non_nullable
              as Money?,
      obvservacionesInternas: obvservacionesInternas == freezed
          ? _value.obvservacionesInternas
          : obvservacionesInternas // ignore: cast_nullable_to_non_nullable
              as String?,
      clientePotencial: clientePotencial == freezed
          ? _value.clientePotencial
          : clientePotencial // ignore: cast_nullable_to_non_nullable
              as bool?,
      clienteEstadoPotencial: clienteEstadoPotencial == freezed
          ? _value.clienteEstadoPotencial
          : clienteEstadoPotencial // ignore: cast_nullable_to_non_nullable
              as ClienteEstadoPotencial?,
      clienteTipoPotencial: clienteTipoPotencial == freezed
          ? _value.clienteTipoPotencial
          : clienteTipoPotencial // ignore: cast_nullable_to_non_nullable
              as ClienteTipoPotencial?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $PaisCopyWith<$Res>? get paisFiscal {
    if (_value.paisFiscal == null) {
      return null;
    }

    return $PaisCopyWith<$Res>(_value.paisFiscal!, (value) {
      return _then(_value.copyWith(paisFiscal: value));
    });
  }

  @override
  $DivisaCopyWith<$Res>? get divisa {
    if (_value.divisa == null) {
      return null;
    }

    return $DivisaCopyWith<$Res>(_value.divisa!, (value) {
      return _then(_value.copyWith(divisa: value));
    });
  }

  @override
  $PlazoDeCobroCopyWith<$Res>? get plazoDeCobro {
    if (_value.plazoDeCobro == null) {
      return null;
    }

    return $PlazoDeCobroCopyWith<$Res>(_value.plazoDeCobro!, (value) {
      return _then(_value.copyWith(plazoDeCobro: value));
    });
  }

  @override
  $MetodoDeCobroCopyWith<$Res>? get metodoDeCobro {
    if (_value.metodoDeCobro == null) {
      return null;
    }

    return $MetodoDeCobroCopyWith<$Res>(_value.metodoDeCobro!, (value) {
      return _then(_value.copyWith(metodoDeCobro: value));
    });
  }

  @override
  $ClienteEstadoPotencialCopyWith<$Res>? get clienteEstadoPotencial {
    if (_value.clienteEstadoPotencial == null) {
      return null;
    }

    return $ClienteEstadoPotencialCopyWith<$Res>(_value.clienteEstadoPotencial!,
        (value) {
      return _then(_value.copyWith(clienteEstadoPotencial: value));
    });
  }

  @override
  $ClienteTipoPotencialCopyWith<$Res>? get clienteTipoPotencial {
    if (_value.clienteTipoPotencial == null) {
      return null;
    }

    return $ClienteTipoPotencialCopyWith<$Res>(_value.clienteTipoPotencial!,
        (value) {
      return _then(_value.copyWith(clienteTipoPotencial: value));
    });
  }
}

/// @nodoc
abstract class _$$_ClienteCopyWith<$Res> implements $ClienteCopyWith<$Res> {
  factory _$$_ClienteCopyWith(
          _$_Cliente value, $Res Function(_$_Cliente) then) =
      __$$_ClienteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? nombreCliente,
      String? nif,
      String? nombreFiscal,
      String? direccionFiscal1,
      String? direccionFiscal2,
      String? codigoPostalFiscal,
      String? poblacionFiscal,
      String? provinciaFiscal,
      Pais? paisFiscal,
      double? latitudFiscal,
      double? longitudFiscal,
      String empresaId,
      double? ivaEspecial,
      String? extentoIva,
      Money? ventasAnyoActual,
      Money? ventasAnyoAnterior,
      Money? ventasHaceDosAnyos,
      double? margenAnyoActual,
      double? margenAnyoAnterior,
      double? margenHaceDosAnyos,
      double? porcentajeAbonos,
      double? porcentajeGarantias,
      String? centralCompras,
      String? urlWeb,
      Divisa? divisa,
      String? tarifaId,
      String? tarifaDescripcion,
      String? descuentoGeneral,
      String? descripcionDescuentoGeneral,
      String tipoCalucloPrecio,
      PlazoDeCobro? plazoDeCobro,
      MetodoDeCobro? metodoDeCobro,
      double descuentoProntoPago,
      Money riesgoConcedidoInterno,
      DateTime? riesgoConcedidoInternoDate,
      Money riesgoConcedidoCoafe,
      DateTime? riesgoConcedidoCoafeFecha,
      Money riesgoActual,
      Money? riesgoConcedido,
      Money? riesgoPendienteCobroVencido,
      Money? riesgoPendienteCobroNoVencido,
      Money? riesgoPendienteServir,
      Money? riesgoPendienteFacturar,
      String? obvservacionesInternas,
      bool? clientePotencial,
      ClienteEstadoPotencial? clienteEstadoPotencial,
      ClienteTipoPotencial? clienteTipoPotencial,
      DateTime lastUpdated,
      bool deleted});

  @override
  $PaisCopyWith<$Res>? get paisFiscal;
  @override
  $DivisaCopyWith<$Res>? get divisa;
  @override
  $PlazoDeCobroCopyWith<$Res>? get plazoDeCobro;
  @override
  $MetodoDeCobroCopyWith<$Res>? get metodoDeCobro;
  @override
  $ClienteEstadoPotencialCopyWith<$Res>? get clienteEstadoPotencial;
  @override
  $ClienteTipoPotencialCopyWith<$Res>? get clienteTipoPotencial;
}

/// @nodoc
class __$$_ClienteCopyWithImpl<$Res> extends _$ClienteCopyWithImpl<$Res>
    implements _$$_ClienteCopyWith<$Res> {
  __$$_ClienteCopyWithImpl(_$_Cliente _value, $Res Function(_$_Cliente) _then)
      : super(_value, (v) => _then(v as _$_Cliente));

  @override
  _$_Cliente get _value => super._value as _$_Cliente;

  @override
  $Res call({
    Object? id = freezed,
    Object? nombreCliente = freezed,
    Object? nif = freezed,
    Object? nombreFiscal = freezed,
    Object? direccionFiscal1 = freezed,
    Object? direccionFiscal2 = freezed,
    Object? codigoPostalFiscal = freezed,
    Object? poblacionFiscal = freezed,
    Object? provinciaFiscal = freezed,
    Object? paisFiscal = freezed,
    Object? latitudFiscal = freezed,
    Object? longitudFiscal = freezed,
    Object? empresaId = freezed,
    Object? ivaEspecial = freezed,
    Object? extentoIva = freezed,
    Object? ventasAnyoActual = freezed,
    Object? ventasAnyoAnterior = freezed,
    Object? ventasHaceDosAnyos = freezed,
    Object? margenAnyoActual = freezed,
    Object? margenAnyoAnterior = freezed,
    Object? margenHaceDosAnyos = freezed,
    Object? porcentajeAbonos = freezed,
    Object? porcentajeGarantias = freezed,
    Object? centralCompras = freezed,
    Object? urlWeb = freezed,
    Object? divisa = freezed,
    Object? tarifaId = freezed,
    Object? tarifaDescripcion = freezed,
    Object? descuentoGeneral = freezed,
    Object? descripcionDescuentoGeneral = freezed,
    Object? tipoCalucloPrecio = freezed,
    Object? plazoDeCobro = freezed,
    Object? metodoDeCobro = freezed,
    Object? descuentoProntoPago = freezed,
    Object? riesgoConcedidoInterno = freezed,
    Object? riesgoConcedidoInternoDate = freezed,
    Object? riesgoConcedidoCoafe = freezed,
    Object? riesgoConcedidoCoafeFecha = freezed,
    Object? riesgoActual = freezed,
    Object? riesgoConcedido = freezed,
    Object? riesgoPendienteCobroVencido = freezed,
    Object? riesgoPendienteCobroNoVencido = freezed,
    Object? riesgoPendienteServir = freezed,
    Object? riesgoPendienteFacturar = freezed,
    Object? obvservacionesInternas = freezed,
    Object? clientePotencial = freezed,
    Object? clienteEstadoPotencial = freezed,
    Object? clienteTipoPotencial = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_Cliente(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nombreCliente: nombreCliente == freezed
          ? _value.nombreCliente
          : nombreCliente // ignore: cast_nullable_to_non_nullable
              as String?,
      nif: nif == freezed
          ? _value.nif
          : nif // ignore: cast_nullable_to_non_nullable
              as String?,
      nombreFiscal: nombreFiscal == freezed
          ? _value.nombreFiscal
          : nombreFiscal // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionFiscal1: direccionFiscal1 == freezed
          ? _value.direccionFiscal1
          : direccionFiscal1 // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionFiscal2: direccionFiscal2 == freezed
          ? _value.direccionFiscal2
          : direccionFiscal2 // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPostalFiscal: codigoPostalFiscal == freezed
          ? _value.codigoPostalFiscal
          : codigoPostalFiscal // ignore: cast_nullable_to_non_nullable
              as String?,
      poblacionFiscal: poblacionFiscal == freezed
          ? _value.poblacionFiscal
          : poblacionFiscal // ignore: cast_nullable_to_non_nullable
              as String?,
      provinciaFiscal: provinciaFiscal == freezed
          ? _value.provinciaFiscal
          : provinciaFiscal // ignore: cast_nullable_to_non_nullable
              as String?,
      paisFiscal: paisFiscal == freezed
          ? _value.paisFiscal
          : paisFiscal // ignore: cast_nullable_to_non_nullable
              as Pais?,
      latitudFiscal: latitudFiscal == freezed
          ? _value.latitudFiscal
          : latitudFiscal // ignore: cast_nullable_to_non_nullable
              as double?,
      longitudFiscal: longitudFiscal == freezed
          ? _value.longitudFiscal
          : longitudFiscal // ignore: cast_nullable_to_non_nullable
              as double?,
      empresaId: empresaId == freezed
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      ivaEspecial: ivaEspecial == freezed
          ? _value.ivaEspecial
          : ivaEspecial // ignore: cast_nullable_to_non_nullable
              as double?,
      extentoIva: extentoIva == freezed
          ? _value.extentoIva
          : extentoIva // ignore: cast_nullable_to_non_nullable
              as String?,
      ventasAnyoActual: ventasAnyoActual == freezed
          ? _value.ventasAnyoActual
          : ventasAnyoActual // ignore: cast_nullable_to_non_nullable
              as Money?,
      ventasAnyoAnterior: ventasAnyoAnterior == freezed
          ? _value.ventasAnyoAnterior
          : ventasAnyoAnterior // ignore: cast_nullable_to_non_nullable
              as Money?,
      ventasHaceDosAnyos: ventasHaceDosAnyos == freezed
          ? _value.ventasHaceDosAnyos
          : ventasHaceDosAnyos // ignore: cast_nullable_to_non_nullable
              as Money?,
      margenAnyoActual: margenAnyoActual == freezed
          ? _value.margenAnyoActual
          : margenAnyoActual // ignore: cast_nullable_to_non_nullable
              as double?,
      margenAnyoAnterior: margenAnyoAnterior == freezed
          ? _value.margenAnyoAnterior
          : margenAnyoAnterior // ignore: cast_nullable_to_non_nullable
              as double?,
      margenHaceDosAnyos: margenHaceDosAnyos == freezed
          ? _value.margenHaceDosAnyos
          : margenHaceDosAnyos // ignore: cast_nullable_to_non_nullable
              as double?,
      porcentajeAbonos: porcentajeAbonos == freezed
          ? _value.porcentajeAbonos
          : porcentajeAbonos // ignore: cast_nullable_to_non_nullable
              as double?,
      porcentajeGarantias: porcentajeGarantias == freezed
          ? _value.porcentajeGarantias
          : porcentajeGarantias // ignore: cast_nullable_to_non_nullable
              as double?,
      centralCompras: centralCompras == freezed
          ? _value.centralCompras
          : centralCompras // ignore: cast_nullable_to_non_nullable
              as String?,
      urlWeb: urlWeb == freezed
          ? _value.urlWeb
          : urlWeb // ignore: cast_nullable_to_non_nullable
              as String?,
      divisa: divisa == freezed
          ? _value.divisa
          : divisa // ignore: cast_nullable_to_non_nullable
              as Divisa?,
      tarifaId: tarifaId == freezed
          ? _value.tarifaId
          : tarifaId // ignore: cast_nullable_to_non_nullable
              as String?,
      tarifaDescripcion: tarifaDescripcion == freezed
          ? _value.tarifaDescripcion
          : tarifaDescripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      descuentoGeneral: descuentoGeneral == freezed
          ? _value.descuentoGeneral
          : descuentoGeneral // ignore: cast_nullable_to_non_nullable
              as String?,
      descripcionDescuentoGeneral: descripcionDescuentoGeneral == freezed
          ? _value.descripcionDescuentoGeneral
          : descripcionDescuentoGeneral // ignore: cast_nullable_to_non_nullable
              as String?,
      tipoCalucloPrecio: tipoCalucloPrecio == freezed
          ? _value.tipoCalucloPrecio
          : tipoCalucloPrecio // ignore: cast_nullable_to_non_nullable
              as String,
      plazoDeCobro: plazoDeCobro == freezed
          ? _value.plazoDeCobro
          : plazoDeCobro // ignore: cast_nullable_to_non_nullable
              as PlazoDeCobro?,
      metodoDeCobro: metodoDeCobro == freezed
          ? _value.metodoDeCobro
          : metodoDeCobro // ignore: cast_nullable_to_non_nullable
              as MetodoDeCobro?,
      descuentoProntoPago: descuentoProntoPago == freezed
          ? _value.descuentoProntoPago
          : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
              as double,
      riesgoConcedidoInterno: riesgoConcedidoInterno == freezed
          ? _value.riesgoConcedidoInterno
          : riesgoConcedidoInterno // ignore: cast_nullable_to_non_nullable
              as Money,
      riesgoConcedidoInternoDate: riesgoConcedidoInternoDate == freezed
          ? _value.riesgoConcedidoInternoDate
          : riesgoConcedidoInternoDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riesgoConcedidoCoafe: riesgoConcedidoCoafe == freezed
          ? _value.riesgoConcedidoCoafe
          : riesgoConcedidoCoafe // ignore: cast_nullable_to_non_nullable
              as Money,
      riesgoConcedidoCoafeFecha: riesgoConcedidoCoafeFecha == freezed
          ? _value.riesgoConcedidoCoafeFecha
          : riesgoConcedidoCoafeFecha // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riesgoActual: riesgoActual == freezed
          ? _value.riesgoActual
          : riesgoActual // ignore: cast_nullable_to_non_nullable
              as Money,
      riesgoConcedido: riesgoConcedido == freezed
          ? _value.riesgoConcedido
          : riesgoConcedido // ignore: cast_nullable_to_non_nullable
              as Money?,
      riesgoPendienteCobroVencido: riesgoPendienteCobroVencido == freezed
          ? _value.riesgoPendienteCobroVencido
          : riesgoPendienteCobroVencido // ignore: cast_nullable_to_non_nullable
              as Money?,
      riesgoPendienteCobroNoVencido: riesgoPendienteCobroNoVencido == freezed
          ? _value.riesgoPendienteCobroNoVencido
          : riesgoPendienteCobroNoVencido // ignore: cast_nullable_to_non_nullable
              as Money?,
      riesgoPendienteServir: riesgoPendienteServir == freezed
          ? _value.riesgoPendienteServir
          : riesgoPendienteServir // ignore: cast_nullable_to_non_nullable
              as Money?,
      riesgoPendienteFacturar: riesgoPendienteFacturar == freezed
          ? _value.riesgoPendienteFacturar
          : riesgoPendienteFacturar // ignore: cast_nullable_to_non_nullable
              as Money?,
      obvservacionesInternas: obvservacionesInternas == freezed
          ? _value.obvservacionesInternas
          : obvservacionesInternas // ignore: cast_nullable_to_non_nullable
              as String?,
      clientePotencial: clientePotencial == freezed
          ? _value.clientePotencial
          : clientePotencial // ignore: cast_nullable_to_non_nullable
              as bool?,
      clienteEstadoPotencial: clienteEstadoPotencial == freezed
          ? _value.clienteEstadoPotencial
          : clienteEstadoPotencial // ignore: cast_nullable_to_non_nullable
              as ClienteEstadoPotencial?,
      clienteTipoPotencial: clienteTipoPotencial == freezed
          ? _value.clienteTipoPotencial
          : clienteTipoPotencial // ignore: cast_nullable_to_non_nullable
              as ClienteTipoPotencial?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Cliente extends _Cliente {
  const _$_Cliente(
      {required this.id,
      this.nombreCliente,
      this.nif,
      this.nombreFiscal,
      this.direccionFiscal1,
      this.direccionFiscal2,
      this.codigoPostalFiscal,
      this.poblacionFiscal,
      this.provinciaFiscal,
      this.paisFiscal,
      this.latitudFiscal,
      this.longitudFiscal,
      required this.empresaId,
      this.ivaEspecial,
      this.extentoIva,
      this.ventasAnyoActual,
      this.ventasAnyoAnterior,
      this.ventasHaceDosAnyos,
      this.margenAnyoActual,
      this.margenAnyoAnterior,
      this.margenHaceDosAnyos,
      this.porcentajeAbonos,
      this.porcentajeGarantias,
      this.centralCompras,
      this.urlWeb,
      this.divisa,
      this.tarifaId,
      this.tarifaDescripcion,
      this.descuentoGeneral,
      this.descripcionDescuentoGeneral,
      required this.tipoCalucloPrecio,
      this.plazoDeCobro,
      this.metodoDeCobro,
      required this.descuentoProntoPago,
      required this.riesgoConcedidoInterno,
      this.riesgoConcedidoInternoDate,
      required this.riesgoConcedidoCoafe,
      this.riesgoConcedidoCoafeFecha,
      required this.riesgoActual,
      this.riesgoConcedido,
      this.riesgoPendienteCobroVencido,
      this.riesgoPendienteCobroNoVencido,
      this.riesgoPendienteServir,
      this.riesgoPendienteFacturar,
      this.obvservacionesInternas,
      this.clientePotencial,
      this.clienteEstadoPotencial,
      this.clienteTipoPotencial,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String id;
  @override
  final String? nombreCliente;
  @override
  final String? nif;
  @override
  final String? nombreFiscal;
  @override
  final String? direccionFiscal1;
  @override
  final String? direccionFiscal2;
  @override
  final String? codigoPostalFiscal;
  @override
  final String? poblacionFiscal;
  @override
  final String? provinciaFiscal;
  @override
  final Pais? paisFiscal;
  @override
  final double? latitudFiscal;
  @override
  final double? longitudFiscal;
  @override
  final String empresaId;
  @override
  final double? ivaEspecial;
  @override
  final String? extentoIva;
  @override
  final Money? ventasAnyoActual;
  @override
  final Money? ventasAnyoAnterior;
  @override
  final Money? ventasHaceDosAnyos;
  @override
  final double? margenAnyoActual;
  @override
  final double? margenAnyoAnterior;
  @override
  final double? margenHaceDosAnyos;
  @override
  final double? porcentajeAbonos;
  @override
  final double? porcentajeGarantias;
  @override
  final String? centralCompras;
  @override
  final String? urlWeb;
  @override
  final Divisa? divisa;
  @override
  final String? tarifaId;
  @override
  final String? tarifaDescripcion;
  @override
  final String? descuentoGeneral;
  @override
  final String? descripcionDescuentoGeneral;
  @override
  final String tipoCalucloPrecio;
  @override
  final PlazoDeCobro? plazoDeCobro;
  @override
  final MetodoDeCobro? metodoDeCobro;
  @override
  final double descuentoProntoPago;
  @override
  final Money riesgoConcedidoInterno;
  @override
  final DateTime? riesgoConcedidoInternoDate;
  @override
  final Money riesgoConcedidoCoafe;
  @override
  final DateTime? riesgoConcedidoCoafeFecha;
  @override
  final Money riesgoActual;
  @override
  final Money? riesgoConcedido;
  @override
  final Money? riesgoPendienteCobroVencido;
  @override
  final Money? riesgoPendienteCobroNoVencido;
  @override
  final Money? riesgoPendienteServir;
  @override
  final Money? riesgoPendienteFacturar;
  @override
  final String? obvservacionesInternas;
  @override
  final bool? clientePotencial;
  @override
  final ClienteEstadoPotencial? clienteEstadoPotencial;
  @override
  final ClienteTipoPotencial? clienteTipoPotencial;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'Cliente(id: $id, nombreCliente: $nombreCliente, nif: $nif, nombreFiscal: $nombreFiscal, direccionFiscal1: $direccionFiscal1, direccionFiscal2: $direccionFiscal2, codigoPostalFiscal: $codigoPostalFiscal, poblacionFiscal: $poblacionFiscal, provinciaFiscal: $provinciaFiscal, paisFiscal: $paisFiscal, latitudFiscal: $latitudFiscal, longitudFiscal: $longitudFiscal, empresaId: $empresaId, ivaEspecial: $ivaEspecial, extentoIva: $extentoIva, ventasAnyoActual: $ventasAnyoActual, ventasAnyoAnterior: $ventasAnyoAnterior, ventasHaceDosAnyos: $ventasHaceDosAnyos, margenAnyoActual: $margenAnyoActual, margenAnyoAnterior: $margenAnyoAnterior, margenHaceDosAnyos: $margenHaceDosAnyos, porcentajeAbonos: $porcentajeAbonos, porcentajeGarantias: $porcentajeGarantias, centralCompras: $centralCompras, urlWeb: $urlWeb, divisa: $divisa, tarifaId: $tarifaId, tarifaDescripcion: $tarifaDescripcion, descuentoGeneral: $descuentoGeneral, descripcionDescuentoGeneral: $descripcionDescuentoGeneral, tipoCalucloPrecio: $tipoCalucloPrecio, plazoDeCobro: $plazoDeCobro, metodoDeCobro: $metodoDeCobro, descuentoProntoPago: $descuentoProntoPago, riesgoConcedidoInterno: $riesgoConcedidoInterno, riesgoConcedidoInternoDate: $riesgoConcedidoInternoDate, riesgoConcedidoCoafe: $riesgoConcedidoCoafe, riesgoConcedidoCoafeFecha: $riesgoConcedidoCoafeFecha, riesgoActual: $riesgoActual, riesgoConcedido: $riesgoConcedido, riesgoPendienteCobroVencido: $riesgoPendienteCobroVencido, riesgoPendienteCobroNoVencido: $riesgoPendienteCobroNoVencido, riesgoPendienteServir: $riesgoPendienteServir, riesgoPendienteFacturar: $riesgoPendienteFacturar, obvservacionesInternas: $obvservacionesInternas, clientePotencial: $clientePotencial, clienteEstadoPotencial: $clienteEstadoPotencial, clienteTipoPotencial: $clienteTipoPotencial, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cliente &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.nombreCliente, nombreCliente) &&
            const DeepCollectionEquality().equals(other.nif, nif) &&
            const DeepCollectionEquality()
                .equals(other.nombreFiscal, nombreFiscal) &&
            const DeepCollectionEquality()
                .equals(other.direccionFiscal1, direccionFiscal1) &&
            const DeepCollectionEquality()
                .equals(other.direccionFiscal2, direccionFiscal2) &&
            const DeepCollectionEquality()
                .equals(other.codigoPostalFiscal, codigoPostalFiscal) &&
            const DeepCollectionEquality()
                .equals(other.poblacionFiscal, poblacionFiscal) &&
            const DeepCollectionEquality()
                .equals(other.provinciaFiscal, provinciaFiscal) &&
            const DeepCollectionEquality()
                .equals(other.paisFiscal, paisFiscal) &&
            const DeepCollectionEquality()
                .equals(other.latitudFiscal, latitudFiscal) &&
            const DeepCollectionEquality()
                .equals(other.longitudFiscal, longitudFiscal) &&
            const DeepCollectionEquality().equals(other.empresaId, empresaId) &&
            const DeepCollectionEquality()
                .equals(other.ivaEspecial, ivaEspecial) &&
            const DeepCollectionEquality()
                .equals(other.extentoIva, extentoIva) &&
            const DeepCollectionEquality()
                .equals(other.ventasAnyoActual, ventasAnyoActual) &&
            const DeepCollectionEquality()
                .equals(other.ventasAnyoAnterior, ventasAnyoAnterior) &&
            const DeepCollectionEquality()
                .equals(other.ventasHaceDosAnyos, ventasHaceDosAnyos) &&
            const DeepCollectionEquality()
                .equals(other.margenAnyoActual, margenAnyoActual) &&
            const DeepCollectionEquality()
                .equals(other.margenAnyoAnterior, margenAnyoAnterior) &&
            const DeepCollectionEquality()
                .equals(other.margenHaceDosAnyos, margenHaceDosAnyos) &&
            const DeepCollectionEquality()
                .equals(other.porcentajeAbonos, porcentajeAbonos) &&
            const DeepCollectionEquality()
                .equals(other.porcentajeGarantias, porcentajeGarantias) &&
            const DeepCollectionEquality()
                .equals(other.centralCompras, centralCompras) &&
            const DeepCollectionEquality().equals(other.urlWeb, urlWeb) &&
            const DeepCollectionEquality().equals(other.divisa, divisa) &&
            const DeepCollectionEquality().equals(other.tarifaId, tarifaId) &&
            const DeepCollectionEquality()
                .equals(other.tarifaDescripcion, tarifaDescripcion) &&
            const DeepCollectionEquality()
                .equals(other.descuentoGeneral, descuentoGeneral) &&
            const DeepCollectionEquality().equals(
                other.descripcionDescuentoGeneral,
                descripcionDescuentoGeneral) &&
            const DeepCollectionEquality()
                .equals(other.tipoCalucloPrecio, tipoCalucloPrecio) &&
            const DeepCollectionEquality()
                .equals(other.plazoDeCobro, plazoDeCobro) &&
            const DeepCollectionEquality()
                .equals(other.metodoDeCobro, metodoDeCobro) &&
            const DeepCollectionEquality()
                .equals(other.descuentoProntoPago, descuentoProntoPago) &&
            const DeepCollectionEquality()
                .equals(other.riesgoConcedidoInterno, riesgoConcedidoInterno) &&
            const DeepCollectionEquality().equals(
                other.riesgoConcedidoInternoDate, riesgoConcedidoInternoDate) &&
            const DeepCollectionEquality()
                .equals(other.riesgoConcedidoCoafe, riesgoConcedidoCoafe) &&
            const DeepCollectionEquality().equals(
                other.riesgoConcedidoCoafeFecha, riesgoConcedidoCoafeFecha) &&
            const DeepCollectionEquality()
                .equals(other.riesgoActual, riesgoActual) &&
            const DeepCollectionEquality()
                .equals(other.riesgoConcedido, riesgoConcedido) &&
            const DeepCollectionEquality().equals(
                other.riesgoPendienteCobroVencido,
                riesgoPendienteCobroVencido) &&
            const DeepCollectionEquality().equals(
                other.riesgoPendienteCobroNoVencido,
                riesgoPendienteCobroNoVencido) &&
            const DeepCollectionEquality()
                .equals(other.riesgoPendienteServir, riesgoPendienteServir) &&
            const DeepCollectionEquality().equals(
                other.riesgoPendienteFacturar, riesgoPendienteFacturar) &&
            const DeepCollectionEquality()
                .equals(other.obvservacionesInternas, obvservacionesInternas) &&
            const DeepCollectionEquality().equals(other.clientePotencial, clientePotencial) &&
            const DeepCollectionEquality().equals(other.clienteEstadoPotencial, clienteEstadoPotencial) &&
            const DeepCollectionEquality().equals(other.clienteTipoPotencial, clienteTipoPotencial) &&
            const DeepCollectionEquality().equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(nombreCliente),
        const DeepCollectionEquality().hash(nif),
        const DeepCollectionEquality().hash(nombreFiscal),
        const DeepCollectionEquality().hash(direccionFiscal1),
        const DeepCollectionEquality().hash(direccionFiscal2),
        const DeepCollectionEquality().hash(codigoPostalFiscal),
        const DeepCollectionEquality().hash(poblacionFiscal),
        const DeepCollectionEquality().hash(provinciaFiscal),
        const DeepCollectionEquality().hash(paisFiscal),
        const DeepCollectionEquality().hash(latitudFiscal),
        const DeepCollectionEquality().hash(longitudFiscal),
        const DeepCollectionEquality().hash(empresaId),
        const DeepCollectionEquality().hash(ivaEspecial),
        const DeepCollectionEquality().hash(extentoIva),
        const DeepCollectionEquality().hash(ventasAnyoActual),
        const DeepCollectionEquality().hash(ventasAnyoAnterior),
        const DeepCollectionEquality().hash(ventasHaceDosAnyos),
        const DeepCollectionEquality().hash(margenAnyoActual),
        const DeepCollectionEquality().hash(margenAnyoAnterior),
        const DeepCollectionEquality().hash(margenHaceDosAnyos),
        const DeepCollectionEquality().hash(porcentajeAbonos),
        const DeepCollectionEquality().hash(porcentajeGarantias),
        const DeepCollectionEquality().hash(centralCompras),
        const DeepCollectionEquality().hash(urlWeb),
        const DeepCollectionEquality().hash(divisa),
        const DeepCollectionEquality().hash(tarifaId),
        const DeepCollectionEquality().hash(tarifaDescripcion),
        const DeepCollectionEquality().hash(descuentoGeneral),
        const DeepCollectionEquality().hash(descripcionDescuentoGeneral),
        const DeepCollectionEquality().hash(tipoCalucloPrecio),
        const DeepCollectionEquality().hash(plazoDeCobro),
        const DeepCollectionEquality().hash(metodoDeCobro),
        const DeepCollectionEquality().hash(descuentoProntoPago),
        const DeepCollectionEquality().hash(riesgoConcedidoInterno),
        const DeepCollectionEquality().hash(riesgoConcedidoInternoDate),
        const DeepCollectionEquality().hash(riesgoConcedidoCoafe),
        const DeepCollectionEquality().hash(riesgoConcedidoCoafeFecha),
        const DeepCollectionEquality().hash(riesgoActual),
        const DeepCollectionEquality().hash(riesgoConcedido),
        const DeepCollectionEquality().hash(riesgoPendienteCobroVencido),
        const DeepCollectionEquality().hash(riesgoPendienteCobroNoVencido),
        const DeepCollectionEquality().hash(riesgoPendienteServir),
        const DeepCollectionEquality().hash(riesgoPendienteFacturar),
        const DeepCollectionEquality().hash(obvservacionesInternas),
        const DeepCollectionEquality().hash(clientePotencial),
        const DeepCollectionEquality().hash(clienteEstadoPotencial),
        const DeepCollectionEquality().hash(clienteTipoPotencial),
        const DeepCollectionEquality().hash(lastUpdated),
        const DeepCollectionEquality().hash(deleted)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_ClienteCopyWith<_$_Cliente> get copyWith =>
      __$$_ClienteCopyWithImpl<_$_Cliente>(this, _$identity);
}

abstract class _Cliente extends Cliente {
  const factory _Cliente(
      {required final String id,
      final String? nombreCliente,
      final String? nif,
      final String? nombreFiscal,
      final String? direccionFiscal1,
      final String? direccionFiscal2,
      final String? codigoPostalFiscal,
      final String? poblacionFiscal,
      final String? provinciaFiscal,
      final Pais? paisFiscal,
      final double? latitudFiscal,
      final double? longitudFiscal,
      required final String empresaId,
      final double? ivaEspecial,
      final String? extentoIva,
      final Money? ventasAnyoActual,
      final Money? ventasAnyoAnterior,
      final Money? ventasHaceDosAnyos,
      final double? margenAnyoActual,
      final double? margenAnyoAnterior,
      final double? margenHaceDosAnyos,
      final double? porcentajeAbonos,
      final double? porcentajeGarantias,
      final String? centralCompras,
      final String? urlWeb,
      final Divisa? divisa,
      final String? tarifaId,
      final String? tarifaDescripcion,
      final String? descuentoGeneral,
      final String? descripcionDescuentoGeneral,
      required final String tipoCalucloPrecio,
      final PlazoDeCobro? plazoDeCobro,
      final MetodoDeCobro? metodoDeCobro,
      required final double descuentoProntoPago,
      required final Money riesgoConcedidoInterno,
      final DateTime? riesgoConcedidoInternoDate,
      required final Money riesgoConcedidoCoafe,
      final DateTime? riesgoConcedidoCoafeFecha,
      required final Money riesgoActual,
      final Money? riesgoConcedido,
      final Money? riesgoPendienteCobroVencido,
      final Money? riesgoPendienteCobroNoVencido,
      final Money? riesgoPendienteServir,
      final Money? riesgoPendienteFacturar,
      final String? obvservacionesInternas,
      final bool? clientePotencial,
      final ClienteEstadoPotencial? clienteEstadoPotencial,
      final ClienteTipoPotencial? clienteTipoPotencial,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_Cliente;
  const _Cliente._() : super._();

  @override
  String get id;
  @override
  String? get nombreCliente;
  @override
  String? get nif;
  @override
  String? get nombreFiscal;
  @override
  String? get direccionFiscal1;
  @override
  String? get direccionFiscal2;
  @override
  String? get codigoPostalFiscal;
  @override
  String? get poblacionFiscal;
  @override
  String? get provinciaFiscal;
  @override
  Pais? get paisFiscal;
  @override
  double? get latitudFiscal;
  @override
  double? get longitudFiscal;
  @override
  String get empresaId;
  @override
  double? get ivaEspecial;
  @override
  String? get extentoIva;
  @override
  Money? get ventasAnyoActual;
  @override
  Money? get ventasAnyoAnterior;
  @override
  Money? get ventasHaceDosAnyos;
  @override
  double? get margenAnyoActual;
  @override
  double? get margenAnyoAnterior;
  @override
  double? get margenHaceDosAnyos;
  @override
  double? get porcentajeAbonos;
  @override
  double? get porcentajeGarantias;
  @override
  String? get centralCompras;
  @override
  String? get urlWeb;
  @override
  Divisa? get divisa;
  @override
  String? get tarifaId;
  @override
  String? get tarifaDescripcion;
  @override
  String? get descuentoGeneral;
  @override
  String? get descripcionDescuentoGeneral;
  @override
  String get tipoCalucloPrecio;
  @override
  PlazoDeCobro? get plazoDeCobro;
  @override
  MetodoDeCobro? get metodoDeCobro;
  @override
  double get descuentoProntoPago;
  @override
  Money get riesgoConcedidoInterno;
  @override
  DateTime? get riesgoConcedidoInternoDate;
  @override
  Money get riesgoConcedidoCoafe;
  @override
  DateTime? get riesgoConcedidoCoafeFecha;
  @override
  Money get riesgoActual;
  @override
  Money? get riesgoConcedido;
  @override
  Money? get riesgoPendienteCobroVencido;
  @override
  Money? get riesgoPendienteCobroNoVencido;
  @override
  Money? get riesgoPendienteServir;
  @override
  Money? get riesgoPendienteFacturar;
  @override
  String? get obvservacionesInternas;
  @override
  bool? get clientePotencial;
  @override
  ClienteEstadoPotencial? get clienteEstadoPotencial;
  @override
  ClienteTipoPotencial? get clienteTipoPotencial;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteCopyWith<_$_Cliente> get copyWith =>
      throw _privateConstructorUsedError;
}
