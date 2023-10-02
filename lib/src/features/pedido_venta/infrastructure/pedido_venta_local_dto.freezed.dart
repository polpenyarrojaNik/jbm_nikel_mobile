// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_venta_local_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PedidoVentaLocalDTO _$PedidoVentaLocalDTOFromJson(Map<String, dynamic> json) {
  return _PedidoVentaLocalDTO.fromJson(json);
}

/// @nodoc
mixin _$PedidoVentaLocalDTO {
  @JsonKey(name: 'USUARIO_ID')
  String? get usuarioId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PEDIDO_ID')
  String? get pedidoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'EMPRESA_ID')
  String? get empresaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PEDIDO_APP_ID')
  String get pedidoVentaAppId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE_CLIENTE')
  String get nombreCliente => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION_ID')
  String? get direccionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION1')
  String? get direccion1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION2')
  String? get direccion2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'CODIGO_POSTAL')
  String? get codigoPostal => throw _privateConstructorUsedError;
  @JsonKey(name: 'POBLACION')
  String? get poblacion => throw _privateConstructorUsedError;
  @JsonKey(name: 'PROVINCIA')
  String? get provincia => throw _privateConstructorUsedError;
  @JsonKey(name: 'PAIS_ID')
  String? get paisId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIVISA_ID')
  String? get divisaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PEDIDO_CLIENTE')
  String? get pedidoCliente => throw _privateConstructorUsedError;
  @JsonKey(name: 'OBSERVACIONES')
  String? get observaciones => throw _privateConstructorUsedError;
  @JsonKey(name: 'OFERTA_SN')
  String get oferta => throw _privateConstructorUsedError;
  @JsonKey(name: 'OFERTA_FECHA_HASTA')
  DateTime? get ofertaFechaHasta => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_ALTA')
  DateTime get fechaAlta => throw _privateConstructorUsedError;
  @JsonKey(name: 'IVA')
  double get iva => throw _privateConstructorUsedError;
  @JsonKey(name: 'DTO_BONIFICACION')
  double get dtoBonificacion => throw _privateConstructorUsedError;
  @JsonKey(name: 'ENVIADA')
  String get enviada => throw _privateConstructorUsedError;
  @JsonKey(name: 'TRATADA')
  String get tratada => throw _privateConstructorUsedError;
  @JsonKey(name: 'BORRADOR')
  String get borrador => throw _privateConstructorUsedError;
  @JsonKey(name: 'ERROR_SYNC')
  String? get errorSyncMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PedidoVentaLocalDTOCopyWith<PedidoVentaLocalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PedidoVentaLocalDTOCopyWith<$Res> {
  factory $PedidoVentaLocalDTOCopyWith(
          PedidoVentaLocalDTO value, $Res Function(PedidoVentaLocalDTO) then) =
      _$PedidoVentaLocalDTOCopyWithImpl<$Res, PedidoVentaLocalDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'USUARIO_ID') String? usuarioId,
      @JsonKey(name: 'PEDIDO_ID') String? pedidoId,
      @JsonKey(name: 'EMPRESA_ID') String? empresaId,
      @JsonKey(name: 'PEDIDO_APP_ID') String pedidoVentaAppId,
      @JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'NOMBRE_CLIENTE') String nombreCliente,
      @JsonKey(name: 'DIRECCION_ID') String? direccionId,
      @JsonKey(name: 'DIRECCION1') String? direccion1,
      @JsonKey(name: 'DIRECCION2') String? direccion2,
      @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
      @JsonKey(name: 'POBLACION') String? poblacion,
      @JsonKey(name: 'PROVINCIA') String? provincia,
      @JsonKey(name: 'PAIS_ID') String? paisId,
      @JsonKey(name: 'DIVISA_ID') String? divisaId,
      @JsonKey(name: 'PEDIDO_CLIENTE') String? pedidoCliente,
      @JsonKey(name: 'OBSERVACIONES') String? observaciones,
      @JsonKey(name: 'OFERTA_SN') String oferta,
      @JsonKey(name: 'OFERTA_FECHA_HASTA') DateTime? ofertaFechaHasta,
      @JsonKey(name: 'FECHA_ALTA') DateTime fechaAlta,
      @JsonKey(name: 'IVA') double iva,
      @JsonKey(name: 'DTO_BONIFICACION') double dtoBonificacion,
      @JsonKey(name: 'ENVIADA') String enviada,
      @JsonKey(name: 'TRATADA') String tratada,
      @JsonKey(name: 'BORRADOR') String borrador,
      @JsonKey(name: 'ERROR_SYNC') String? errorSyncMessage});
}

/// @nodoc
class _$PedidoVentaLocalDTOCopyWithImpl<$Res, $Val extends PedidoVentaLocalDTO>
    implements $PedidoVentaLocalDTOCopyWith<$Res> {
  _$PedidoVentaLocalDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usuarioId = freezed,
    Object? pedidoId = freezed,
    Object? empresaId = freezed,
    Object? pedidoVentaAppId = null,
    Object? clienteId = null,
    Object? nombreCliente = null,
    Object? direccionId = freezed,
    Object? direccion1 = freezed,
    Object? direccion2 = freezed,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? paisId = freezed,
    Object? divisaId = freezed,
    Object? pedidoCliente = freezed,
    Object? observaciones = freezed,
    Object? oferta = null,
    Object? ofertaFechaHasta = freezed,
    Object? fechaAlta = null,
    Object? iva = null,
    Object? dtoBonificacion = null,
    Object? enviada = null,
    Object? tratada = null,
    Object? borrador = null,
    Object? errorSyncMessage = freezed,
  }) {
    return _then(_value.copyWith(
      usuarioId: freezed == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoId: freezed == pedidoId
          ? _value.pedidoId
          : pedidoId // ignore: cast_nullable_to_non_nullable
              as String?,
      empresaId: freezed == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoVentaAppId: null == pedidoVentaAppId
          ? _value.pedidoVentaAppId
          : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
              as String,
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreCliente: null == nombreCliente
          ? _value.nombreCliente
          : nombreCliente // ignore: cast_nullable_to_non_nullable
              as String,
      direccionId: freezed == direccionId
          ? _value.direccionId
          : direccionId // ignore: cast_nullable_to_non_nullable
              as String?,
      direccion1: freezed == direccion1
          ? _value.direccion1
          : direccion1 // ignore: cast_nullable_to_non_nullable
              as String?,
      direccion2: freezed == direccion2
          ? _value.direccion2
          : direccion2 // ignore: cast_nullable_to_non_nullable
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
      paisId: freezed == paisId
          ? _value.paisId
          : paisId // ignore: cast_nullable_to_non_nullable
              as String?,
      divisaId: freezed == divisaId
          ? _value.divisaId
          : divisaId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoCliente: freezed == pedidoCliente
          ? _value.pedidoCliente
          : pedidoCliente // ignore: cast_nullable_to_non_nullable
              as String?,
      observaciones: freezed == observaciones
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as String?,
      oferta: null == oferta
          ? _value.oferta
          : oferta // ignore: cast_nullable_to_non_nullable
              as String,
      ofertaFechaHasta: freezed == ofertaFechaHasta
          ? _value.ofertaFechaHasta
          : ofertaFechaHasta // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fechaAlta: null == fechaAlta
          ? _value.fechaAlta
          : fechaAlta // ignore: cast_nullable_to_non_nullable
              as DateTime,
      iva: null == iva
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as double,
      dtoBonificacion: null == dtoBonificacion
          ? _value.dtoBonificacion
          : dtoBonificacion // ignore: cast_nullable_to_non_nullable
              as double,
      enviada: null == enviada
          ? _value.enviada
          : enviada // ignore: cast_nullable_to_non_nullable
              as String,
      tratada: null == tratada
          ? _value.tratada
          : tratada // ignore: cast_nullable_to_non_nullable
              as String,
      borrador: null == borrador
          ? _value.borrador
          : borrador // ignore: cast_nullable_to_non_nullable
              as String,
      errorSyncMessage: freezed == errorSyncMessage
          ? _value.errorSyncMessage
          : errorSyncMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PedidoVentaLocalDTOImplCopyWith<$Res>
    implements $PedidoVentaLocalDTOCopyWith<$Res> {
  factory _$$PedidoVentaLocalDTOImplCopyWith(_$PedidoVentaLocalDTOImpl value,
          $Res Function(_$PedidoVentaLocalDTOImpl) then) =
      __$$PedidoVentaLocalDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'USUARIO_ID') String? usuarioId,
      @JsonKey(name: 'PEDIDO_ID') String? pedidoId,
      @JsonKey(name: 'EMPRESA_ID') String? empresaId,
      @JsonKey(name: 'PEDIDO_APP_ID') String pedidoVentaAppId,
      @JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'NOMBRE_CLIENTE') String nombreCliente,
      @JsonKey(name: 'DIRECCION_ID') String? direccionId,
      @JsonKey(name: 'DIRECCION1') String? direccion1,
      @JsonKey(name: 'DIRECCION2') String? direccion2,
      @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
      @JsonKey(name: 'POBLACION') String? poblacion,
      @JsonKey(name: 'PROVINCIA') String? provincia,
      @JsonKey(name: 'PAIS_ID') String? paisId,
      @JsonKey(name: 'DIVISA_ID') String? divisaId,
      @JsonKey(name: 'PEDIDO_CLIENTE') String? pedidoCliente,
      @JsonKey(name: 'OBSERVACIONES') String? observaciones,
      @JsonKey(name: 'OFERTA_SN') String oferta,
      @JsonKey(name: 'OFERTA_FECHA_HASTA') DateTime? ofertaFechaHasta,
      @JsonKey(name: 'FECHA_ALTA') DateTime fechaAlta,
      @JsonKey(name: 'IVA') double iva,
      @JsonKey(name: 'DTO_BONIFICACION') double dtoBonificacion,
      @JsonKey(name: 'ENVIADA') String enviada,
      @JsonKey(name: 'TRATADA') String tratada,
      @JsonKey(name: 'BORRADOR') String borrador,
      @JsonKey(name: 'ERROR_SYNC') String? errorSyncMessage});
}

/// @nodoc
class __$$PedidoVentaLocalDTOImplCopyWithImpl<$Res>
    extends _$PedidoVentaLocalDTOCopyWithImpl<$Res, _$PedidoVentaLocalDTOImpl>
    implements _$$PedidoVentaLocalDTOImplCopyWith<$Res> {
  __$$PedidoVentaLocalDTOImplCopyWithImpl(_$PedidoVentaLocalDTOImpl _value,
      $Res Function(_$PedidoVentaLocalDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usuarioId = freezed,
    Object? pedidoId = freezed,
    Object? empresaId = freezed,
    Object? pedidoVentaAppId = null,
    Object? clienteId = null,
    Object? nombreCliente = null,
    Object? direccionId = freezed,
    Object? direccion1 = freezed,
    Object? direccion2 = freezed,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? paisId = freezed,
    Object? divisaId = freezed,
    Object? pedidoCliente = freezed,
    Object? observaciones = freezed,
    Object? oferta = null,
    Object? ofertaFechaHasta = freezed,
    Object? fechaAlta = null,
    Object? iva = null,
    Object? dtoBonificacion = null,
    Object? enviada = null,
    Object? tratada = null,
    Object? borrador = null,
    Object? errorSyncMessage = freezed,
  }) {
    return _then(_$PedidoVentaLocalDTOImpl(
      usuarioId: freezed == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoId: freezed == pedidoId
          ? _value.pedidoId
          : pedidoId // ignore: cast_nullable_to_non_nullable
              as String?,
      empresaId: freezed == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoVentaAppId: null == pedidoVentaAppId
          ? _value.pedidoVentaAppId
          : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
              as String,
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreCliente: null == nombreCliente
          ? _value.nombreCliente
          : nombreCliente // ignore: cast_nullable_to_non_nullable
              as String,
      direccionId: freezed == direccionId
          ? _value.direccionId
          : direccionId // ignore: cast_nullable_to_non_nullable
              as String?,
      direccion1: freezed == direccion1
          ? _value.direccion1
          : direccion1 // ignore: cast_nullable_to_non_nullable
              as String?,
      direccion2: freezed == direccion2
          ? _value.direccion2
          : direccion2 // ignore: cast_nullable_to_non_nullable
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
      paisId: freezed == paisId
          ? _value.paisId
          : paisId // ignore: cast_nullable_to_non_nullable
              as String?,
      divisaId: freezed == divisaId
          ? _value.divisaId
          : divisaId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoCliente: freezed == pedidoCliente
          ? _value.pedidoCliente
          : pedidoCliente // ignore: cast_nullable_to_non_nullable
              as String?,
      observaciones: freezed == observaciones
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as String?,
      oferta: null == oferta
          ? _value.oferta
          : oferta // ignore: cast_nullable_to_non_nullable
              as String,
      ofertaFechaHasta: freezed == ofertaFechaHasta
          ? _value.ofertaFechaHasta
          : ofertaFechaHasta // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fechaAlta: null == fechaAlta
          ? _value.fechaAlta
          : fechaAlta // ignore: cast_nullable_to_non_nullable
              as DateTime,
      iva: null == iva
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as double,
      dtoBonificacion: null == dtoBonificacion
          ? _value.dtoBonificacion
          : dtoBonificacion // ignore: cast_nullable_to_non_nullable
              as double,
      enviada: null == enviada
          ? _value.enviada
          : enviada // ignore: cast_nullable_to_non_nullable
              as String,
      tratada: null == tratada
          ? _value.tratada
          : tratada // ignore: cast_nullable_to_non_nullable
              as String,
      borrador: null == borrador
          ? _value.borrador
          : borrador // ignore: cast_nullable_to_non_nullable
              as String,
      errorSyncMessage: freezed == errorSyncMessage
          ? _value.errorSyncMessage
          : errorSyncMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PedidoVentaLocalDTOImpl extends _PedidoVentaLocalDTO {
  const _$PedidoVentaLocalDTOImpl(
      {@JsonKey(name: 'USUARIO_ID') this.usuarioId,
      @JsonKey(name: 'PEDIDO_ID') this.pedidoId,
      @JsonKey(name: 'EMPRESA_ID') this.empresaId,
      @JsonKey(name: 'PEDIDO_APP_ID') required this.pedidoVentaAppId,
      @JsonKey(name: 'CLIENTE_ID') required this.clienteId,
      @JsonKey(name: 'NOMBRE_CLIENTE') required this.nombreCliente,
      @JsonKey(name: 'DIRECCION_ID') this.direccionId,
      @JsonKey(name: 'DIRECCION1') this.direccion1,
      @JsonKey(name: 'DIRECCION2') this.direccion2,
      @JsonKey(name: 'CODIGO_POSTAL') this.codigoPostal,
      @JsonKey(name: 'POBLACION') this.poblacion,
      @JsonKey(name: 'PROVINCIA') this.provincia,
      @JsonKey(name: 'PAIS_ID') this.paisId,
      @JsonKey(name: 'DIVISA_ID') this.divisaId,
      @JsonKey(name: 'PEDIDO_CLIENTE') this.pedidoCliente,
      @JsonKey(name: 'OBSERVACIONES') this.observaciones,
      @JsonKey(name: 'OFERTA_SN') required this.oferta,
      @JsonKey(name: 'OFERTA_FECHA_HASTA') this.ofertaFechaHasta,
      @JsonKey(name: 'FECHA_ALTA') required this.fechaAlta,
      @JsonKey(name: 'IVA') required this.iva,
      @JsonKey(name: 'DTO_BONIFICACION') required this.dtoBonificacion,
      @JsonKey(name: 'ENVIADA') required this.enviada,
      @JsonKey(name: 'TRATADA') required this.tratada,
      @JsonKey(name: 'BORRADOR') required this.borrador,
      @JsonKey(name: 'ERROR_SYNC') this.errorSyncMessage})
      : super._();

  factory _$PedidoVentaLocalDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PedidoVentaLocalDTOImplFromJson(json);

  @override
  @JsonKey(name: 'USUARIO_ID')
  final String? usuarioId;
  @override
  @JsonKey(name: 'PEDIDO_ID')
  final String? pedidoId;
  @override
  @JsonKey(name: 'EMPRESA_ID')
  final String? empresaId;
  @override
  @JsonKey(name: 'PEDIDO_APP_ID')
  final String pedidoVentaAppId;
  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String clienteId;
  @override
  @JsonKey(name: 'NOMBRE_CLIENTE')
  final String nombreCliente;
  @override
  @JsonKey(name: 'DIRECCION_ID')
  final String? direccionId;
  @override
  @JsonKey(name: 'DIRECCION1')
  final String? direccion1;
  @override
  @JsonKey(name: 'DIRECCION2')
  final String? direccion2;
  @override
  @JsonKey(name: 'CODIGO_POSTAL')
  final String? codigoPostal;
  @override
  @JsonKey(name: 'POBLACION')
  final String? poblacion;
  @override
  @JsonKey(name: 'PROVINCIA')
  final String? provincia;
  @override
  @JsonKey(name: 'PAIS_ID')
  final String? paisId;
  @override
  @JsonKey(name: 'DIVISA_ID')
  final String? divisaId;
  @override
  @JsonKey(name: 'PEDIDO_CLIENTE')
  final String? pedidoCliente;
  @override
  @JsonKey(name: 'OBSERVACIONES')
  final String? observaciones;
  @override
  @JsonKey(name: 'OFERTA_SN')
  final String oferta;
  @override
  @JsonKey(name: 'OFERTA_FECHA_HASTA')
  final DateTime? ofertaFechaHasta;
  @override
  @JsonKey(name: 'FECHA_ALTA')
  final DateTime fechaAlta;
  @override
  @JsonKey(name: 'IVA')
  final double iva;
  @override
  @JsonKey(name: 'DTO_BONIFICACION')
  final double dtoBonificacion;
  @override
  @JsonKey(name: 'ENVIADA')
  final String enviada;
  @override
  @JsonKey(name: 'TRATADA')
  final String tratada;
  @override
  @JsonKey(name: 'BORRADOR')
  final String borrador;
  @override
  @JsonKey(name: 'ERROR_SYNC')
  final String? errorSyncMessage;

  @override
  String toString() {
    return 'PedidoVentaLocalDTO(usuarioId: $usuarioId, pedidoId: $pedidoId, empresaId: $empresaId, pedidoVentaAppId: $pedidoVentaAppId, clienteId: $clienteId, nombreCliente: $nombreCliente, direccionId: $direccionId, direccion1: $direccion1, direccion2: $direccion2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, paisId: $paisId, divisaId: $divisaId, pedidoCliente: $pedidoCliente, observaciones: $observaciones, oferta: $oferta, ofertaFechaHasta: $ofertaFechaHasta, fechaAlta: $fechaAlta, iva: $iva, dtoBonificacion: $dtoBonificacion, enviada: $enviada, tratada: $tratada, borrador: $borrador, errorSyncMessage: $errorSyncMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PedidoVentaLocalDTOImpl &&
            (identical(other.usuarioId, usuarioId) ||
                other.usuarioId == usuarioId) &&
            (identical(other.pedidoId, pedidoId) ||
                other.pedidoId == pedidoId) &&
            (identical(other.empresaId, empresaId) ||
                other.empresaId == empresaId) &&
            (identical(other.pedidoVentaAppId, pedidoVentaAppId) ||
                other.pedidoVentaAppId == pedidoVentaAppId) &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.nombreCliente, nombreCliente) ||
                other.nombreCliente == nombreCliente) &&
            (identical(other.direccionId, direccionId) ||
                other.direccionId == direccionId) &&
            (identical(other.direccion1, direccion1) ||
                other.direccion1 == direccion1) &&
            (identical(other.direccion2, direccion2) ||
                other.direccion2 == direccion2) &&
            (identical(other.codigoPostal, codigoPostal) ||
                other.codigoPostal == codigoPostal) &&
            (identical(other.poblacion, poblacion) ||
                other.poblacion == poblacion) &&
            (identical(other.provincia, provincia) ||
                other.provincia == provincia) &&
            (identical(other.paisId, paisId) || other.paisId == paisId) &&
            (identical(other.divisaId, divisaId) ||
                other.divisaId == divisaId) &&
            (identical(other.pedidoCliente, pedidoCliente) ||
                other.pedidoCliente == pedidoCliente) &&
            (identical(other.observaciones, observaciones) ||
                other.observaciones == observaciones) &&
            (identical(other.oferta, oferta) || other.oferta == oferta) &&
            (identical(other.ofertaFechaHasta, ofertaFechaHasta) ||
                other.ofertaFechaHasta == ofertaFechaHasta) &&
            (identical(other.fechaAlta, fechaAlta) ||
                other.fechaAlta == fechaAlta) &&
            (identical(other.iva, iva) || other.iva == iva) &&
            (identical(other.dtoBonificacion, dtoBonificacion) ||
                other.dtoBonificacion == dtoBonificacion) &&
            (identical(other.enviada, enviada) || other.enviada == enviada) &&
            (identical(other.tratada, tratada) || other.tratada == tratada) &&
            (identical(other.borrador, borrador) ||
                other.borrador == borrador) &&
            (identical(other.errorSyncMessage, errorSyncMessage) ||
                other.errorSyncMessage == errorSyncMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        usuarioId,
        pedidoId,
        empresaId,
        pedidoVentaAppId,
        clienteId,
        nombreCliente,
        direccionId,
        direccion1,
        direccion2,
        codigoPostal,
        poblacion,
        provincia,
        paisId,
        divisaId,
        pedidoCliente,
        observaciones,
        oferta,
        ofertaFechaHasta,
        fechaAlta,
        iva,
        dtoBonificacion,
        enviada,
        tratada,
        borrador,
        errorSyncMessage
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PedidoVentaLocalDTOImplCopyWith<_$PedidoVentaLocalDTOImpl> get copyWith =>
      __$$PedidoVentaLocalDTOImplCopyWithImpl<_$PedidoVentaLocalDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PedidoVentaLocalDTOImplToJson(
      this,
    );
  }
}

abstract class _PedidoVentaLocalDTO extends PedidoVentaLocalDTO {
  const factory _PedidoVentaLocalDTO(
      {@JsonKey(name: 'USUARIO_ID') final String? usuarioId,
      @JsonKey(name: 'PEDIDO_ID') final String? pedidoId,
      @JsonKey(name: 'EMPRESA_ID') final String? empresaId,
      @JsonKey(name: 'PEDIDO_APP_ID') required final String pedidoVentaAppId,
      @JsonKey(name: 'CLIENTE_ID') required final String clienteId,
      @JsonKey(name: 'NOMBRE_CLIENTE') required final String nombreCliente,
      @JsonKey(name: 'DIRECCION_ID') final String? direccionId,
      @JsonKey(name: 'DIRECCION1') final String? direccion1,
      @JsonKey(name: 'DIRECCION2') final String? direccion2,
      @JsonKey(name: 'CODIGO_POSTAL') final String? codigoPostal,
      @JsonKey(name: 'POBLACION') final String? poblacion,
      @JsonKey(name: 'PROVINCIA') final String? provincia,
      @JsonKey(name: 'PAIS_ID') final String? paisId,
      @JsonKey(name: 'DIVISA_ID') final String? divisaId,
      @JsonKey(name: 'PEDIDO_CLIENTE') final String? pedidoCliente,
      @JsonKey(name: 'OBSERVACIONES') final String? observaciones,
      @JsonKey(name: 'OFERTA_SN') required final String oferta,
      @JsonKey(name: 'OFERTA_FECHA_HASTA') final DateTime? ofertaFechaHasta,
      @JsonKey(name: 'FECHA_ALTA') required final DateTime fechaAlta,
      @JsonKey(name: 'IVA') required final double iva,
      @JsonKey(name: 'DTO_BONIFICACION') required final double dtoBonificacion,
      @JsonKey(name: 'ENVIADA') required final String enviada,
      @JsonKey(name: 'TRATADA') required final String tratada,
      @JsonKey(name: 'BORRADOR') required final String borrador,
      @JsonKey(name: 'ERROR_SYNC')
      final String? errorSyncMessage}) = _$PedidoVentaLocalDTOImpl;
  const _PedidoVentaLocalDTO._() : super._();

  factory _PedidoVentaLocalDTO.fromJson(Map<String, dynamic> json) =
      _$PedidoVentaLocalDTOImpl.fromJson;

  @override
  @JsonKey(name: 'USUARIO_ID')
  String? get usuarioId;
  @override
  @JsonKey(name: 'PEDIDO_ID')
  String? get pedidoId;
  @override
  @JsonKey(name: 'EMPRESA_ID')
  String? get empresaId;
  @override
  @JsonKey(name: 'PEDIDO_APP_ID')
  String get pedidoVentaAppId;
  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId;
  @override
  @JsonKey(name: 'NOMBRE_CLIENTE')
  String get nombreCliente;
  @override
  @JsonKey(name: 'DIRECCION_ID')
  String? get direccionId;
  @override
  @JsonKey(name: 'DIRECCION1')
  String? get direccion1;
  @override
  @JsonKey(name: 'DIRECCION2')
  String? get direccion2;
  @override
  @JsonKey(name: 'CODIGO_POSTAL')
  String? get codigoPostal;
  @override
  @JsonKey(name: 'POBLACION')
  String? get poblacion;
  @override
  @JsonKey(name: 'PROVINCIA')
  String? get provincia;
  @override
  @JsonKey(name: 'PAIS_ID')
  String? get paisId;
  @override
  @JsonKey(name: 'DIVISA_ID')
  String? get divisaId;
  @override
  @JsonKey(name: 'PEDIDO_CLIENTE')
  String? get pedidoCliente;
  @override
  @JsonKey(name: 'OBSERVACIONES')
  String? get observaciones;
  @override
  @JsonKey(name: 'OFERTA_SN')
  String get oferta;
  @override
  @JsonKey(name: 'OFERTA_FECHA_HASTA')
  DateTime? get ofertaFechaHasta;
  @override
  @JsonKey(name: 'FECHA_ALTA')
  DateTime get fechaAlta;
  @override
  @JsonKey(name: 'IVA')
  double get iva;
  @override
  @JsonKey(name: 'DTO_BONIFICACION')
  double get dtoBonificacion;
  @override
  @JsonKey(name: 'ENVIADA')
  String get enviada;
  @override
  @JsonKey(name: 'TRATADA')
  String get tratada;
  @override
  @JsonKey(name: 'BORRADOR')
  String get borrador;
  @override
  @JsonKey(name: 'ERROR_SYNC')
  String? get errorSyncMessage;
  @override
  @JsonKey(ignore: true)
  _$$PedidoVentaLocalDTOImplCopyWith<_$PedidoVentaLocalDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
