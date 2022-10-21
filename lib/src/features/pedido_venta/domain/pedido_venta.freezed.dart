// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pedido_venta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PedidoVenta {
  String get empresaId => throw _privateConstructorUsedError;
  String? get pedidoVentaId => throw _privateConstructorUsedError;
  String? get pedidoVentaAppId => throw _privateConstructorUsedError;
  String? get usuarioId => throw _privateConstructorUsedError;
  DateTime get pedidoVentaDate => throw _privateConstructorUsedError;
  String? get tipoVenta => throw _privateConstructorUsedError;
  String? get clienteId => throw _privateConstructorUsedError;
  String? get direccionId => throw _privateConstructorUsedError;
  String get nombreCliente => throw _privateConstructorUsedError;
  String? get direccionEntrga1 => throw _privateConstructorUsedError;
  String? get direccionEntrga2 => throw _privateConstructorUsedError;
  String? get codigoPostal => throw _privateConstructorUsedError;
  String? get poblacion => throw _privateConstructorUsedError;
  String? get provincia => throw _privateConstructorUsedError;
  Pais? get pais => throw _privateConstructorUsedError;
  Divisa get divisa => throw _privateConstructorUsedError;
  String? get pedidoCliente => throw _privateConstructorUsedError;
  String? get observaciones => throw _privateConstructorUsedError;
  Money? get totalLineas => throw _privateConstructorUsedError;
  Money? get baseImponible => throw _privateConstructorUsedError;
  Money? get importePortes => throw _privateConstructorUsedError;
  Money? get importeIva => throw _privateConstructorUsedError;
  Money? get total => throw _privateConstructorUsedError;
  PedidoVentaEstado? get pedidoVentaEstado =>
      throw _privateConstructorUsedError;
  bool? get oferta => throw _privateConstructorUsedError;
  double? get dtoBonificacion => throw _privateConstructorUsedError;
  double get iva => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  bool get enviada => throw _privateConstructorUsedError;
  bool get tratada => throw _privateConstructorUsedError;
  String? get errorSyncMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PedidoVentaCopyWith<PedidoVenta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PedidoVentaCopyWith<$Res> {
  factory $PedidoVentaCopyWith(
          PedidoVenta value, $Res Function(PedidoVenta) then) =
      _$PedidoVentaCopyWithImpl<$Res, PedidoVenta>;
  @useResult
  $Res call(
      {String empresaId,
      String? pedidoVentaId,
      String? pedidoVentaAppId,
      String? usuarioId,
      DateTime pedidoVentaDate,
      String? tipoVenta,
      String? clienteId,
      String? direccionId,
      String nombreCliente,
      String? direccionEntrga1,
      String? direccionEntrga2,
      String? codigoPostal,
      String? poblacion,
      String? provincia,
      Pais? pais,
      Divisa divisa,
      String? pedidoCliente,
      String? observaciones,
      Money? totalLineas,
      Money? baseImponible,
      Money? importePortes,
      Money? importeIva,
      Money? total,
      PedidoVentaEstado? pedidoVentaEstado,
      bool? oferta,
      double? dtoBonificacion,
      double iva,
      DateTime lastUpdated,
      bool deleted,
      bool enviada,
      bool tratada,
      String? errorSyncMessage});

  $PaisCopyWith<$Res>? get pais;
  $DivisaCopyWith<$Res> get divisa;
  $PedidoVentaEstadoCopyWith<$Res>? get pedidoVentaEstado;
}

/// @nodoc
class _$PedidoVentaCopyWithImpl<$Res, $Val extends PedidoVenta>
    implements $PedidoVentaCopyWith<$Res> {
  _$PedidoVentaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? pedidoVentaId = freezed,
    Object? pedidoVentaAppId = freezed,
    Object? usuarioId = freezed,
    Object? pedidoVentaDate = null,
    Object? tipoVenta = freezed,
    Object? clienteId = freezed,
    Object? direccionId = freezed,
    Object? nombreCliente = null,
    Object? direccionEntrga1 = freezed,
    Object? direccionEntrga2 = freezed,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? pais = freezed,
    Object? divisa = null,
    Object? pedidoCliente = freezed,
    Object? observaciones = freezed,
    Object? totalLineas = freezed,
    Object? baseImponible = freezed,
    Object? importePortes = freezed,
    Object? importeIva = freezed,
    Object? total = freezed,
    Object? pedidoVentaEstado = freezed,
    Object? oferta = freezed,
    Object? dtoBonificacion = freezed,
    Object? iva = null,
    Object? lastUpdated = null,
    Object? deleted = null,
    Object? enviada = null,
    Object? tratada = null,
    Object? errorSyncMessage = freezed,
  }) {
    return _then(_value.copyWith(
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      pedidoVentaId: freezed == pedidoVentaId
          ? _value.pedidoVentaId
          : pedidoVentaId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoVentaAppId: freezed == pedidoVentaAppId
          ? _value.pedidoVentaAppId
          : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
              as String?,
      usuarioId: freezed == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoVentaDate: null == pedidoVentaDate
          ? _value.pedidoVentaDate
          : pedidoVentaDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tipoVenta: freezed == tipoVenta
          ? _value.tipoVenta
          : tipoVenta // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteId: freezed == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionId: freezed == direccionId
          ? _value.direccionId
          : direccionId // ignore: cast_nullable_to_non_nullable
              as String?,
      nombreCliente: null == nombreCliente
          ? _value.nombreCliente
          : nombreCliente // ignore: cast_nullable_to_non_nullable
              as String,
      direccionEntrga1: freezed == direccionEntrga1
          ? _value.direccionEntrga1
          : direccionEntrga1 // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionEntrga2: freezed == direccionEntrga2
          ? _value.direccionEntrga2
          : direccionEntrga2 // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPostal: freezed == codigoPostal
          ? _value.codigoPostal
          : codigoPostal // ignore: cast_nullable_to_non_nullable
              as String?,
      poblacion: freezed == poblacion
          ? _value.poblacion
          : poblacion // ignore: cast_nullable_to_non_nullable
              as String?,
      provincia: freezed == provincia
          ? _value.provincia
          : provincia // ignore: cast_nullable_to_non_nullable
              as String?,
      pais: freezed == pais
          ? _value.pais
          : pais // ignore: cast_nullable_to_non_nullable
              as Pais?,
      divisa: null == divisa
          ? _value.divisa
          : divisa // ignore: cast_nullable_to_non_nullable
              as Divisa,
      pedidoCliente: freezed == pedidoCliente
          ? _value.pedidoCliente
          : pedidoCliente // ignore: cast_nullable_to_non_nullable
              as String?,
      observaciones: freezed == observaciones
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as String?,
      totalLineas: freezed == totalLineas
          ? _value.totalLineas
          : totalLineas // ignore: cast_nullable_to_non_nullable
              as Money?,
      baseImponible: freezed == baseImponible
          ? _value.baseImponible
          : baseImponible // ignore: cast_nullable_to_non_nullable
              as Money?,
      importePortes: freezed == importePortes
          ? _value.importePortes
          : importePortes // ignore: cast_nullable_to_non_nullable
              as Money?,
      importeIva: freezed == importeIva
          ? _value.importeIva
          : importeIva // ignore: cast_nullable_to_non_nullable
              as Money?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Money?,
      pedidoVentaEstado: freezed == pedidoVentaEstado
          ? _value.pedidoVentaEstado
          : pedidoVentaEstado // ignore: cast_nullable_to_non_nullable
              as PedidoVentaEstado?,
      oferta: freezed == oferta
          ? _value.oferta
          : oferta // ignore: cast_nullable_to_non_nullable
              as bool?,
      dtoBonificacion: freezed == dtoBonificacion
          ? _value.dtoBonificacion
          : dtoBonificacion // ignore: cast_nullable_to_non_nullable
              as double?,
      iva: null == iva
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      enviada: null == enviada
          ? _value.enviada
          : enviada // ignore: cast_nullable_to_non_nullable
              as bool,
      tratada: null == tratada
          ? _value.tratada
          : tratada // ignore: cast_nullable_to_non_nullable
              as bool,
      errorSyncMessage: freezed == errorSyncMessage
          ? _value.errorSyncMessage
          : errorSyncMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaisCopyWith<$Res>? get pais {
    if (_value.pais == null) {
      return null;
    }

    return $PaisCopyWith<$Res>(_value.pais!, (value) {
      return _then(_value.copyWith(pais: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DivisaCopyWith<$Res> get divisa {
    return $DivisaCopyWith<$Res>(_value.divisa, (value) {
      return _then(_value.copyWith(divisa: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PedidoVentaEstadoCopyWith<$Res>? get pedidoVentaEstado {
    if (_value.pedidoVentaEstado == null) {
      return null;
    }

    return $PedidoVentaEstadoCopyWith<$Res>(_value.pedidoVentaEstado!, (value) {
      return _then(_value.copyWith(pedidoVentaEstado: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PedidoVentaCopyWith<$Res>
    implements $PedidoVentaCopyWith<$Res> {
  factory _$$_PedidoVentaCopyWith(
          _$_PedidoVenta value, $Res Function(_$_PedidoVenta) then) =
      __$$_PedidoVentaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String empresaId,
      String? pedidoVentaId,
      String? pedidoVentaAppId,
      String? usuarioId,
      DateTime pedidoVentaDate,
      String? tipoVenta,
      String? clienteId,
      String? direccionId,
      String nombreCliente,
      String? direccionEntrga1,
      String? direccionEntrga2,
      String? codigoPostal,
      String? poblacion,
      String? provincia,
      Pais? pais,
      Divisa divisa,
      String? pedidoCliente,
      String? observaciones,
      Money? totalLineas,
      Money? baseImponible,
      Money? importePortes,
      Money? importeIva,
      Money? total,
      PedidoVentaEstado? pedidoVentaEstado,
      bool? oferta,
      double? dtoBonificacion,
      double iva,
      DateTime lastUpdated,
      bool deleted,
      bool enviada,
      bool tratada,
      String? errorSyncMessage});

  @override
  $PaisCopyWith<$Res>? get pais;
  @override
  $DivisaCopyWith<$Res> get divisa;
  @override
  $PedidoVentaEstadoCopyWith<$Res>? get pedidoVentaEstado;
}

/// @nodoc
class __$$_PedidoVentaCopyWithImpl<$Res>
    extends _$PedidoVentaCopyWithImpl<$Res, _$_PedidoVenta>
    implements _$$_PedidoVentaCopyWith<$Res> {
  __$$_PedidoVentaCopyWithImpl(
      _$_PedidoVenta _value, $Res Function(_$_PedidoVenta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? pedidoVentaId = freezed,
    Object? pedidoVentaAppId = freezed,
    Object? usuarioId = freezed,
    Object? pedidoVentaDate = null,
    Object? tipoVenta = freezed,
    Object? clienteId = freezed,
    Object? direccionId = freezed,
    Object? nombreCliente = null,
    Object? direccionEntrga1 = freezed,
    Object? direccionEntrga2 = freezed,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? pais = freezed,
    Object? divisa = null,
    Object? pedidoCliente = freezed,
    Object? observaciones = freezed,
    Object? totalLineas = freezed,
    Object? baseImponible = freezed,
    Object? importePortes = freezed,
    Object? importeIva = freezed,
    Object? total = freezed,
    Object? pedidoVentaEstado = freezed,
    Object? oferta = freezed,
    Object? dtoBonificacion = freezed,
    Object? iva = null,
    Object? lastUpdated = null,
    Object? deleted = null,
    Object? enviada = null,
    Object? tratada = null,
    Object? errorSyncMessage = freezed,
  }) {
    return _then(_$_PedidoVenta(
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      pedidoVentaId: freezed == pedidoVentaId
          ? _value.pedidoVentaId
          : pedidoVentaId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoVentaAppId: freezed == pedidoVentaAppId
          ? _value.pedidoVentaAppId
          : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
              as String?,
      usuarioId: freezed == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoVentaDate: null == pedidoVentaDate
          ? _value.pedidoVentaDate
          : pedidoVentaDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tipoVenta: freezed == tipoVenta
          ? _value.tipoVenta
          : tipoVenta // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteId: freezed == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionId: freezed == direccionId
          ? _value.direccionId
          : direccionId // ignore: cast_nullable_to_non_nullable
              as String?,
      nombreCliente: null == nombreCliente
          ? _value.nombreCliente
          : nombreCliente // ignore: cast_nullable_to_non_nullable
              as String,
      direccionEntrga1: freezed == direccionEntrga1
          ? _value.direccionEntrga1
          : direccionEntrga1 // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionEntrga2: freezed == direccionEntrga2
          ? _value.direccionEntrga2
          : direccionEntrga2 // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPostal: freezed == codigoPostal
          ? _value.codigoPostal
          : codigoPostal // ignore: cast_nullable_to_non_nullable
              as String?,
      poblacion: freezed == poblacion
          ? _value.poblacion
          : poblacion // ignore: cast_nullable_to_non_nullable
              as String?,
      provincia: freezed == provincia
          ? _value.provincia
          : provincia // ignore: cast_nullable_to_non_nullable
              as String?,
      pais: freezed == pais
          ? _value.pais
          : pais // ignore: cast_nullable_to_non_nullable
              as Pais?,
      divisa: null == divisa
          ? _value.divisa
          : divisa // ignore: cast_nullable_to_non_nullable
              as Divisa,
      pedidoCliente: freezed == pedidoCliente
          ? _value.pedidoCliente
          : pedidoCliente // ignore: cast_nullable_to_non_nullable
              as String?,
      observaciones: freezed == observaciones
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as String?,
      totalLineas: freezed == totalLineas
          ? _value.totalLineas
          : totalLineas // ignore: cast_nullable_to_non_nullable
              as Money?,
      baseImponible: freezed == baseImponible
          ? _value.baseImponible
          : baseImponible // ignore: cast_nullable_to_non_nullable
              as Money?,
      importePortes: freezed == importePortes
          ? _value.importePortes
          : importePortes // ignore: cast_nullable_to_non_nullable
              as Money?,
      importeIva: freezed == importeIva
          ? _value.importeIva
          : importeIva // ignore: cast_nullable_to_non_nullable
              as Money?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Money?,
      pedidoVentaEstado: freezed == pedidoVentaEstado
          ? _value.pedidoVentaEstado
          : pedidoVentaEstado // ignore: cast_nullable_to_non_nullable
              as PedidoVentaEstado?,
      oferta: freezed == oferta
          ? _value.oferta
          : oferta // ignore: cast_nullable_to_non_nullable
              as bool?,
      dtoBonificacion: freezed == dtoBonificacion
          ? _value.dtoBonificacion
          : dtoBonificacion // ignore: cast_nullable_to_non_nullable
              as double?,
      iva: null == iva
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      enviada: null == enviada
          ? _value.enviada
          : enviada // ignore: cast_nullable_to_non_nullable
              as bool,
      tratada: null == tratada
          ? _value.tratada
          : tratada // ignore: cast_nullable_to_non_nullable
              as bool,
      errorSyncMessage: freezed == errorSyncMessage
          ? _value.errorSyncMessage
          : errorSyncMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PedidoVenta extends _PedidoVenta {
  const _$_PedidoVenta(
      {required this.empresaId,
      this.pedidoVentaId,
      this.pedidoVentaAppId,
      this.usuarioId,
      required this.pedidoVentaDate,
      this.tipoVenta,
      this.clienteId,
      this.direccionId,
      required this.nombreCliente,
      this.direccionEntrga1,
      this.direccionEntrga2,
      this.codigoPostal,
      this.poblacion,
      this.provincia,
      this.pais,
      required this.divisa,
      this.pedidoCliente,
      this.observaciones,
      this.totalLineas,
      this.baseImponible,
      this.importePortes,
      this.importeIva,
      this.total,
      this.pedidoVentaEstado,
      this.oferta,
      this.dtoBonificacion,
      required this.iva,
      required this.lastUpdated,
      required this.deleted,
      required this.enviada,
      required this.tratada,
      this.errorSyncMessage})
      : super._();

  @override
  final String empresaId;
  @override
  final String? pedidoVentaId;
  @override
  final String? pedidoVentaAppId;
  @override
  final String? usuarioId;
  @override
  final DateTime pedidoVentaDate;
  @override
  final String? tipoVenta;
  @override
  final String? clienteId;
  @override
  final String? direccionId;
  @override
  final String nombreCliente;
  @override
  final String? direccionEntrga1;
  @override
  final String? direccionEntrga2;
  @override
  final String? codigoPostal;
  @override
  final String? poblacion;
  @override
  final String? provincia;
  @override
  final Pais? pais;
  @override
  final Divisa divisa;
  @override
  final String? pedidoCliente;
  @override
  final String? observaciones;
  @override
  final Money? totalLineas;
  @override
  final Money? baseImponible;
  @override
  final Money? importePortes;
  @override
  final Money? importeIva;
  @override
  final Money? total;
  @override
  final PedidoVentaEstado? pedidoVentaEstado;
  @override
  final bool? oferta;
  @override
  final double? dtoBonificacion;
  @override
  final double iva;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;
  @override
  final bool enviada;
  @override
  final bool tratada;
  @override
  final String? errorSyncMessage;

  @override
  String toString() {
    return 'PedidoVenta(empresaId: $empresaId, pedidoVentaId: $pedidoVentaId, pedidoVentaAppId: $pedidoVentaAppId, usuarioId: $usuarioId, pedidoVentaDate: $pedidoVentaDate, tipoVenta: $tipoVenta, clienteId: $clienteId, direccionId: $direccionId, nombreCliente: $nombreCliente, direccionEntrga1: $direccionEntrga1, direccionEntrga2: $direccionEntrga2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, pais: $pais, divisa: $divisa, pedidoCliente: $pedidoCliente, observaciones: $observaciones, totalLineas: $totalLineas, baseImponible: $baseImponible, importePortes: $importePortes, importeIva: $importeIva, total: $total, pedidoVentaEstado: $pedidoVentaEstado, oferta: $oferta, dtoBonificacion: $dtoBonificacion, iva: $iva, lastUpdated: $lastUpdated, deleted: $deleted, enviada: $enviada, tratada: $tratada, errorSyncMessage: $errorSyncMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PedidoVenta &&
            (identical(other.empresaId, empresaId) ||
                other.empresaId == empresaId) &&
            (identical(other.pedidoVentaId, pedidoVentaId) ||
                other.pedidoVentaId == pedidoVentaId) &&
            (identical(other.pedidoVentaAppId, pedidoVentaAppId) ||
                other.pedidoVentaAppId == pedidoVentaAppId) &&
            (identical(other.usuarioId, usuarioId) ||
                other.usuarioId == usuarioId) &&
            (identical(other.pedidoVentaDate, pedidoVentaDate) ||
                other.pedidoVentaDate == pedidoVentaDate) &&
            (identical(other.tipoVenta, tipoVenta) ||
                other.tipoVenta == tipoVenta) &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.direccionId, direccionId) ||
                other.direccionId == direccionId) &&
            (identical(other.nombreCliente, nombreCliente) ||
                other.nombreCliente == nombreCliente) &&
            (identical(other.direccionEntrga1, direccionEntrga1) ||
                other.direccionEntrga1 == direccionEntrga1) &&
            (identical(other.direccionEntrga2, direccionEntrga2) ||
                other.direccionEntrga2 == direccionEntrga2) &&
            (identical(other.codigoPostal, codigoPostal) ||
                other.codigoPostal == codigoPostal) &&
            (identical(other.poblacion, poblacion) ||
                other.poblacion == poblacion) &&
            (identical(other.provincia, provincia) ||
                other.provincia == provincia) &&
            (identical(other.pais, pais) || other.pais == pais) &&
            (identical(other.divisa, divisa) || other.divisa == divisa) &&
            (identical(other.pedidoCliente, pedidoCliente) ||
                other.pedidoCliente == pedidoCliente) &&
            (identical(other.observaciones, observaciones) ||
                other.observaciones == observaciones) &&
            (identical(other.totalLineas, totalLineas) ||
                other.totalLineas == totalLineas) &&
            (identical(other.baseImponible, baseImponible) ||
                other.baseImponible == baseImponible) &&
            (identical(other.importePortes, importePortes) ||
                other.importePortes == importePortes) &&
            (identical(other.importeIva, importeIva) ||
                other.importeIva == importeIva) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pedidoVentaEstado, pedidoVentaEstado) ||
                other.pedidoVentaEstado == pedidoVentaEstado) &&
            (identical(other.oferta, oferta) || other.oferta == oferta) &&
            (identical(other.dtoBonificacion, dtoBonificacion) ||
                other.dtoBonificacion == dtoBonificacion) &&
            (identical(other.iva, iva) || other.iva == iva) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.enviada, enviada) || other.enviada == enviada) &&
            (identical(other.tratada, tratada) || other.tratada == tratada) &&
            (identical(other.errorSyncMessage, errorSyncMessage) ||
                other.errorSyncMessage == errorSyncMessage));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        empresaId,
        pedidoVentaId,
        pedidoVentaAppId,
        usuarioId,
        pedidoVentaDate,
        tipoVenta,
        clienteId,
        direccionId,
        nombreCliente,
        direccionEntrga1,
        direccionEntrga2,
        codigoPostal,
        poblacion,
        provincia,
        pais,
        divisa,
        pedidoCliente,
        observaciones,
        totalLineas,
        baseImponible,
        importePortes,
        importeIva,
        total,
        pedidoVentaEstado,
        oferta,
        dtoBonificacion,
        iva,
        lastUpdated,
        deleted,
        enviada,
        tratada,
        errorSyncMessage
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PedidoVentaCopyWith<_$_PedidoVenta> get copyWith =>
      __$$_PedidoVentaCopyWithImpl<_$_PedidoVenta>(this, _$identity);
}

abstract class _PedidoVenta extends PedidoVenta {
  const factory _PedidoVenta(
      {required final String empresaId,
      final String? pedidoVentaId,
      final String? pedidoVentaAppId,
      final String? usuarioId,
      required final DateTime pedidoVentaDate,
      final String? tipoVenta,
      final String? clienteId,
      final String? direccionId,
      required final String nombreCliente,
      final String? direccionEntrga1,
      final String? direccionEntrga2,
      final String? codigoPostal,
      final String? poblacion,
      final String? provincia,
      final Pais? pais,
      required final Divisa divisa,
      final String? pedidoCliente,
      final String? observaciones,
      final Money? totalLineas,
      final Money? baseImponible,
      final Money? importePortes,
      final Money? importeIva,
      final Money? total,
      final PedidoVentaEstado? pedidoVentaEstado,
      final bool? oferta,
      final double? dtoBonificacion,
      required final double iva,
      required final DateTime lastUpdated,
      required final bool deleted,
      required final bool enviada,
      required final bool tratada,
      final String? errorSyncMessage}) = _$_PedidoVenta;
  const _PedidoVenta._() : super._();

  @override
  String get empresaId;
  @override
  String? get pedidoVentaId;
  @override
  String? get pedidoVentaAppId;
  @override
  String? get usuarioId;
  @override
  DateTime get pedidoVentaDate;
  @override
  String? get tipoVenta;
  @override
  String? get clienteId;
  @override
  String? get direccionId;
  @override
  String get nombreCliente;
  @override
  String? get direccionEntrga1;
  @override
  String? get direccionEntrga2;
  @override
  String? get codigoPostal;
  @override
  String? get poblacion;
  @override
  String? get provincia;
  @override
  Pais? get pais;
  @override
  Divisa get divisa;
  @override
  String? get pedidoCliente;
  @override
  String? get observaciones;
  @override
  Money? get totalLineas;
  @override
  Money? get baseImponible;
  @override
  Money? get importePortes;
  @override
  Money? get importeIva;
  @override
  Money? get total;
  @override
  PedidoVentaEstado? get pedidoVentaEstado;
  @override
  bool? get oferta;
  @override
  double? get dtoBonificacion;
  @override
  double get iva;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  bool get enviada;
  @override
  bool get tratada;
  @override
  String? get errorSyncMessage;
  @override
  @JsonKey(ignore: true)
  _$$_PedidoVentaCopyWith<_$_PedidoVenta> get copyWith =>
      throw _privateConstructorUsedError;
}
