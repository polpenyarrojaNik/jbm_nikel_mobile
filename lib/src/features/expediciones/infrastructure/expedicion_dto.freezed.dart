// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expedicion_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ExpedicionDTO _$ExpedicionDTOFromJson(Map<String, dynamic> json) {
  return _ExpedicionDTO.fromJson(json);
}

/// @nodoc
mixin _$ExpedicionDTO {
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PEDIDO_ID')
  String get pedidoVentaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_PEDIDO')
  DateTime get pedidoVentaDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION_ID')
  String? get direccionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMRE_CLIENTE')
  String get nombreCliente => throw _privateConstructorUsedError;
  @JsonKey(name: 'CODIGO_POSTAL')
  String? get codigoPostal => throw _privateConstructorUsedError;
  @JsonKey(name: 'POBLACION')
  String? get poblacion => throw _privateConstructorUsedError;
  @JsonKey(name: 'PROVINCIA')
  String? get provincia => throw _privateConstructorUsedError;
  @JsonKey(name: 'PAIS_ID')
  String? get paisId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIVISA_ID')
  String get divisaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'BASE_IMPONIBLE')
  double get baseImponible => throw _privateConstructorUsedError;
  @JsonKey(name: 'ESTADO_PEDIDO_ID')
  int get pedidoVentaEstadoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'NUM_LINEAS')
  int get numLineas => throw _privateConstructorUsedError;
  @JsonKey(name: 'TRACKING_ESTADO')
  String get estadoTrackingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ALBARAN_ID')
  String get albaranId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TRACK_ID')
  String? get trackId => throw _privateConstructorUsedError;
  @JsonKey(name: 'AGENCIA')
  String? get agencia => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_ALBARAN')
  DateTime get fechaAlbaran => throw _privateConstructorUsedError;
  @JsonKey(name: 'OFERTA_SN')
  String get oferta => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  /// Serializes this ExpedicionDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExpedicionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpedicionDTOCopyWith<ExpedicionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpedicionDTOCopyWith<$Res> {
  factory $ExpedicionDTOCopyWith(
    ExpedicionDTO value,
    $Res Function(ExpedicionDTO) then,
  ) = _$ExpedicionDTOCopyWithImpl<$Res, ExpedicionDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'EMPRESA_ID') String empresaId,
    @JsonKey(name: 'PEDIDO_ID') String pedidoVentaId,
    @JsonKey(name: 'FECHA_PEDIDO') DateTime pedidoVentaDate,
    @JsonKey(name: 'CLIENTE_ID') String clienteId,
    @JsonKey(name: 'DIRECCION_ID') String? direccionId,
    @JsonKey(name: 'NOMRE_CLIENTE') String nombreCliente,
    @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
    @JsonKey(name: 'POBLACION') String? poblacion,
    @JsonKey(name: 'PROVINCIA') String? provincia,
    @JsonKey(name: 'PAIS_ID') String? paisId,
    @JsonKey(name: 'DIVISA_ID') String divisaId,
    @JsonKey(name: 'BASE_IMPONIBLE') double baseImponible,
    @JsonKey(name: 'ESTADO_PEDIDO_ID') int pedidoVentaEstadoId,
    @JsonKey(name: 'NUM_LINEAS') int numLineas,
    @JsonKey(name: 'TRACKING_ESTADO') String estadoTrackingId,
    @JsonKey(name: 'ALBARAN_ID') String albaranId,
    @JsonKey(name: 'TRACK_ID') String? trackId,
    @JsonKey(name: 'AGENCIA') String? agencia,
    @JsonKey(name: 'FECHA_ALBARAN') DateTime fechaAlbaran,
    @JsonKey(name: 'OFERTA_SN') String oferta,
    @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
    @JsonKey(name: 'DELETED') String deleted,
  });
}

/// @nodoc
class _$ExpedicionDTOCopyWithImpl<$Res, $Val extends ExpedicionDTO>
    implements $ExpedicionDTOCopyWith<$Res> {
  _$ExpedicionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpedicionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? pedidoVentaId = null,
    Object? pedidoVentaDate = null,
    Object? clienteId = null,
    Object? direccionId = freezed,
    Object? nombreCliente = null,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? paisId = freezed,
    Object? divisaId = null,
    Object? baseImponible = null,
    Object? pedidoVentaEstadoId = null,
    Object? numLineas = null,
    Object? estadoTrackingId = null,
    Object? albaranId = null,
    Object? trackId = freezed,
    Object? agencia = freezed,
    Object? fechaAlbaran = null,
    Object? oferta = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(
      _value.copyWith(
            empresaId:
                null == empresaId
                    ? _value.empresaId
                    : empresaId // ignore: cast_nullable_to_non_nullable
                        as String,
            pedidoVentaId:
                null == pedidoVentaId
                    ? _value.pedidoVentaId
                    : pedidoVentaId // ignore: cast_nullable_to_non_nullable
                        as String,
            pedidoVentaDate:
                null == pedidoVentaDate
                    ? _value.pedidoVentaDate
                    : pedidoVentaDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            clienteId:
                null == clienteId
                    ? _value.clienteId
                    : clienteId // ignore: cast_nullable_to_non_nullable
                        as String,
            direccionId:
                freezed == direccionId
                    ? _value.direccionId
                    : direccionId // ignore: cast_nullable_to_non_nullable
                        as String?,
            nombreCliente:
                null == nombreCliente
                    ? _value.nombreCliente
                    : nombreCliente // ignore: cast_nullable_to_non_nullable
                        as String,
            codigoPostal:
                freezed == codigoPostal
                    ? _value.codigoPostal
                    : codigoPostal // ignore: cast_nullable_to_non_nullable
                        as String?,
            poblacion:
                freezed == poblacion
                    ? _value.poblacion
                    : poblacion // ignore: cast_nullable_to_non_nullable
                        as String?,
            provincia:
                freezed == provincia
                    ? _value.provincia
                    : provincia // ignore: cast_nullable_to_non_nullable
                        as String?,
            paisId:
                freezed == paisId
                    ? _value.paisId
                    : paisId // ignore: cast_nullable_to_non_nullable
                        as String?,
            divisaId:
                null == divisaId
                    ? _value.divisaId
                    : divisaId // ignore: cast_nullable_to_non_nullable
                        as String,
            baseImponible:
                null == baseImponible
                    ? _value.baseImponible
                    : baseImponible // ignore: cast_nullable_to_non_nullable
                        as double,
            pedidoVentaEstadoId:
                null == pedidoVentaEstadoId
                    ? _value.pedidoVentaEstadoId
                    : pedidoVentaEstadoId // ignore: cast_nullable_to_non_nullable
                        as int,
            numLineas:
                null == numLineas
                    ? _value.numLineas
                    : numLineas // ignore: cast_nullable_to_non_nullable
                        as int,
            estadoTrackingId:
                null == estadoTrackingId
                    ? _value.estadoTrackingId
                    : estadoTrackingId // ignore: cast_nullable_to_non_nullable
                        as String,
            albaranId:
                null == albaranId
                    ? _value.albaranId
                    : albaranId // ignore: cast_nullable_to_non_nullable
                        as String,
            trackId:
                freezed == trackId
                    ? _value.trackId
                    : trackId // ignore: cast_nullable_to_non_nullable
                        as String?,
            agencia:
                freezed == agencia
                    ? _value.agencia
                    : agencia // ignore: cast_nullable_to_non_nullable
                        as String?,
            fechaAlbaran:
                null == fechaAlbaran
                    ? _value.fechaAlbaran
                    : fechaAlbaran // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            oferta:
                null == oferta
                    ? _value.oferta
                    : oferta // ignore: cast_nullable_to_non_nullable
                        as String,
            lastUpdated:
                null == lastUpdated
                    ? _value.lastUpdated
                    : lastUpdated // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            deleted:
                null == deleted
                    ? _value.deleted
                    : deleted // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExpedicionDTOImplCopyWith<$Res>
    implements $ExpedicionDTOCopyWith<$Res> {
  factory _$$ExpedicionDTOImplCopyWith(
    _$ExpedicionDTOImpl value,
    $Res Function(_$ExpedicionDTOImpl) then,
  ) = __$$ExpedicionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'EMPRESA_ID') String empresaId,
    @JsonKey(name: 'PEDIDO_ID') String pedidoVentaId,
    @JsonKey(name: 'FECHA_PEDIDO') DateTime pedidoVentaDate,
    @JsonKey(name: 'CLIENTE_ID') String clienteId,
    @JsonKey(name: 'DIRECCION_ID') String? direccionId,
    @JsonKey(name: 'NOMRE_CLIENTE') String nombreCliente,
    @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
    @JsonKey(name: 'POBLACION') String? poblacion,
    @JsonKey(name: 'PROVINCIA') String? provincia,
    @JsonKey(name: 'PAIS_ID') String? paisId,
    @JsonKey(name: 'DIVISA_ID') String divisaId,
    @JsonKey(name: 'BASE_IMPONIBLE') double baseImponible,
    @JsonKey(name: 'ESTADO_PEDIDO_ID') int pedidoVentaEstadoId,
    @JsonKey(name: 'NUM_LINEAS') int numLineas,
    @JsonKey(name: 'TRACKING_ESTADO') String estadoTrackingId,
    @JsonKey(name: 'ALBARAN_ID') String albaranId,
    @JsonKey(name: 'TRACK_ID') String? trackId,
    @JsonKey(name: 'AGENCIA') String? agencia,
    @JsonKey(name: 'FECHA_ALBARAN') DateTime fechaAlbaran,
    @JsonKey(name: 'OFERTA_SN') String oferta,
    @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
    @JsonKey(name: 'DELETED') String deleted,
  });
}

/// @nodoc
class __$$ExpedicionDTOImplCopyWithImpl<$Res>
    extends _$ExpedicionDTOCopyWithImpl<$Res, _$ExpedicionDTOImpl>
    implements _$$ExpedicionDTOImplCopyWith<$Res> {
  __$$ExpedicionDTOImplCopyWithImpl(
    _$ExpedicionDTOImpl _value,
    $Res Function(_$ExpedicionDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExpedicionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? pedidoVentaId = null,
    Object? pedidoVentaDate = null,
    Object? clienteId = null,
    Object? direccionId = freezed,
    Object? nombreCliente = null,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? paisId = freezed,
    Object? divisaId = null,
    Object? baseImponible = null,
    Object? pedidoVentaEstadoId = null,
    Object? numLineas = null,
    Object? estadoTrackingId = null,
    Object? albaranId = null,
    Object? trackId = freezed,
    Object? agencia = freezed,
    Object? fechaAlbaran = null,
    Object? oferta = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(
      _$ExpedicionDTOImpl(
        empresaId:
            null == empresaId
                ? _value.empresaId
                : empresaId // ignore: cast_nullable_to_non_nullable
                    as String,
        pedidoVentaId:
            null == pedidoVentaId
                ? _value.pedidoVentaId
                : pedidoVentaId // ignore: cast_nullable_to_non_nullable
                    as String,
        pedidoVentaDate:
            null == pedidoVentaDate
                ? _value.pedidoVentaDate
                : pedidoVentaDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        clienteId:
            null == clienteId
                ? _value.clienteId
                : clienteId // ignore: cast_nullable_to_non_nullable
                    as String,
        direccionId:
            freezed == direccionId
                ? _value.direccionId
                : direccionId // ignore: cast_nullable_to_non_nullable
                    as String?,
        nombreCliente:
            null == nombreCliente
                ? _value.nombreCliente
                : nombreCliente // ignore: cast_nullable_to_non_nullable
                    as String,
        codigoPostal:
            freezed == codigoPostal
                ? _value.codigoPostal
                : codigoPostal // ignore: cast_nullable_to_non_nullable
                    as String?,
        poblacion:
            freezed == poblacion
                ? _value.poblacion
                : poblacion // ignore: cast_nullable_to_non_nullable
                    as String?,
        provincia:
            freezed == provincia
                ? _value.provincia
                : provincia // ignore: cast_nullable_to_non_nullable
                    as String?,
        paisId:
            freezed == paisId
                ? _value.paisId
                : paisId // ignore: cast_nullable_to_non_nullable
                    as String?,
        divisaId:
            null == divisaId
                ? _value.divisaId
                : divisaId // ignore: cast_nullable_to_non_nullable
                    as String,
        baseImponible:
            null == baseImponible
                ? _value.baseImponible
                : baseImponible // ignore: cast_nullable_to_non_nullable
                    as double,
        pedidoVentaEstadoId:
            null == pedidoVentaEstadoId
                ? _value.pedidoVentaEstadoId
                : pedidoVentaEstadoId // ignore: cast_nullable_to_non_nullable
                    as int,
        numLineas:
            null == numLineas
                ? _value.numLineas
                : numLineas // ignore: cast_nullable_to_non_nullable
                    as int,
        estadoTrackingId:
            null == estadoTrackingId
                ? _value.estadoTrackingId
                : estadoTrackingId // ignore: cast_nullable_to_non_nullable
                    as String,
        albaranId:
            null == albaranId
                ? _value.albaranId
                : albaranId // ignore: cast_nullable_to_non_nullable
                    as String,
        trackId:
            freezed == trackId
                ? _value.trackId
                : trackId // ignore: cast_nullable_to_non_nullable
                    as String?,
        agencia:
            freezed == agencia
                ? _value.agencia
                : agencia // ignore: cast_nullable_to_non_nullable
                    as String?,
        fechaAlbaran:
            null == fechaAlbaran
                ? _value.fechaAlbaran
                : fechaAlbaran // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        oferta:
            null == oferta
                ? _value.oferta
                : oferta // ignore: cast_nullable_to_non_nullable
                    as String,
        lastUpdated:
            null == lastUpdated
                ? _value.lastUpdated
                : lastUpdated // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        deleted:
            null == deleted
                ? _value.deleted
                : deleted // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpedicionDTOImpl extends _ExpedicionDTO {
  const _$ExpedicionDTOImpl({
    @JsonKey(name: 'EMPRESA_ID') required this.empresaId,
    @JsonKey(name: 'PEDIDO_ID') required this.pedidoVentaId,
    @JsonKey(name: 'FECHA_PEDIDO') required this.pedidoVentaDate,
    @JsonKey(name: 'CLIENTE_ID') required this.clienteId,
    @JsonKey(name: 'DIRECCION_ID') this.direccionId,
    @JsonKey(name: 'NOMRE_CLIENTE') required this.nombreCliente,
    @JsonKey(name: 'CODIGO_POSTAL') this.codigoPostal,
    @JsonKey(name: 'POBLACION') this.poblacion,
    @JsonKey(name: 'PROVINCIA') this.provincia,
    @JsonKey(name: 'PAIS_ID') this.paisId,
    @JsonKey(name: 'DIVISA_ID') required this.divisaId,
    @JsonKey(name: 'BASE_IMPONIBLE') required this.baseImponible,
    @JsonKey(name: 'ESTADO_PEDIDO_ID') required this.pedidoVentaEstadoId,
    @JsonKey(name: 'NUM_LINEAS') required this.numLineas,
    @JsonKey(name: 'TRACKING_ESTADO') required this.estadoTrackingId,
    @JsonKey(name: 'ALBARAN_ID') required this.albaranId,
    @JsonKey(name: 'TRACK_ID') this.trackId,
    @JsonKey(name: 'AGENCIA') this.agencia,
    @JsonKey(name: 'FECHA_ALBARAN') required this.fechaAlbaran,
    @JsonKey(name: 'OFERTA_SN') required this.oferta,
    @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
    @JsonKey(name: 'DELETED') required this.deleted,
  }) : super._();

  factory _$ExpedicionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpedicionDTOImplFromJson(json);

  @override
  @JsonKey(name: 'EMPRESA_ID')
  final String empresaId;
  @override
  @JsonKey(name: 'PEDIDO_ID')
  final String pedidoVentaId;
  @override
  @JsonKey(name: 'FECHA_PEDIDO')
  final DateTime pedidoVentaDate;
  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String clienteId;
  @override
  @JsonKey(name: 'DIRECCION_ID')
  final String? direccionId;
  @override
  @JsonKey(name: 'NOMRE_CLIENTE')
  final String nombreCliente;
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
  final String divisaId;
  @override
  @JsonKey(name: 'BASE_IMPONIBLE')
  final double baseImponible;
  @override
  @JsonKey(name: 'ESTADO_PEDIDO_ID')
  final int pedidoVentaEstadoId;
  @override
  @JsonKey(name: 'NUM_LINEAS')
  final int numLineas;
  @override
  @JsonKey(name: 'TRACKING_ESTADO')
  final String estadoTrackingId;
  @override
  @JsonKey(name: 'ALBARAN_ID')
  final String albaranId;
  @override
  @JsonKey(name: 'TRACK_ID')
  final String? trackId;
  @override
  @JsonKey(name: 'AGENCIA')
  final String? agencia;
  @override
  @JsonKey(name: 'FECHA_ALBARAN')
  final DateTime fechaAlbaran;
  @override
  @JsonKey(name: 'OFERTA_SN')
  final String oferta;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ExpedicionDTO(empresaId: $empresaId, pedidoVentaId: $pedidoVentaId, pedidoVentaDate: $pedidoVentaDate, clienteId: $clienteId, direccionId: $direccionId, nombreCliente: $nombreCliente, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, paisId: $paisId, divisaId: $divisaId, baseImponible: $baseImponible, pedidoVentaEstadoId: $pedidoVentaEstadoId, numLineas: $numLineas, estadoTrackingId: $estadoTrackingId, albaranId: $albaranId, trackId: $trackId, agencia: $agencia, fechaAlbaran: $fechaAlbaran, oferta: $oferta, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpedicionDTOImpl &&
            (identical(other.empresaId, empresaId) ||
                other.empresaId == empresaId) &&
            (identical(other.pedidoVentaId, pedidoVentaId) ||
                other.pedidoVentaId == pedidoVentaId) &&
            (identical(other.pedidoVentaDate, pedidoVentaDate) ||
                other.pedidoVentaDate == pedidoVentaDate) &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.direccionId, direccionId) ||
                other.direccionId == direccionId) &&
            (identical(other.nombreCliente, nombreCliente) ||
                other.nombreCliente == nombreCliente) &&
            (identical(other.codigoPostal, codigoPostal) ||
                other.codigoPostal == codigoPostal) &&
            (identical(other.poblacion, poblacion) ||
                other.poblacion == poblacion) &&
            (identical(other.provincia, provincia) ||
                other.provincia == provincia) &&
            (identical(other.paisId, paisId) || other.paisId == paisId) &&
            (identical(other.divisaId, divisaId) ||
                other.divisaId == divisaId) &&
            (identical(other.baseImponible, baseImponible) ||
                other.baseImponible == baseImponible) &&
            (identical(other.pedidoVentaEstadoId, pedidoVentaEstadoId) ||
                other.pedidoVentaEstadoId == pedidoVentaEstadoId) &&
            (identical(other.numLineas, numLineas) ||
                other.numLineas == numLineas) &&
            (identical(other.estadoTrackingId, estadoTrackingId) ||
                other.estadoTrackingId == estadoTrackingId) &&
            (identical(other.albaranId, albaranId) ||
                other.albaranId == albaranId) &&
            (identical(other.trackId, trackId) || other.trackId == trackId) &&
            (identical(other.agencia, agencia) || other.agencia == agencia) &&
            (identical(other.fechaAlbaran, fechaAlbaran) ||
                other.fechaAlbaran == fechaAlbaran) &&
            (identical(other.oferta, oferta) || other.oferta == oferta) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    empresaId,
    pedidoVentaId,
    pedidoVentaDate,
    clienteId,
    direccionId,
    nombreCliente,
    codigoPostal,
    poblacion,
    provincia,
    paisId,
    divisaId,
    baseImponible,
    pedidoVentaEstadoId,
    numLineas,
    estadoTrackingId,
    albaranId,
    trackId,
    agencia,
    fechaAlbaran,
    oferta,
    lastUpdated,
    deleted,
  ]);

  /// Create a copy of ExpedicionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpedicionDTOImplCopyWith<_$ExpedicionDTOImpl> get copyWith =>
      __$$ExpedicionDTOImplCopyWithImpl<_$ExpedicionDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpedicionDTOImplToJson(this);
  }
}

abstract class _ExpedicionDTO extends ExpedicionDTO {
  const factory _ExpedicionDTO({
    @JsonKey(name: 'EMPRESA_ID') required final String empresaId,
    @JsonKey(name: 'PEDIDO_ID') required final String pedidoVentaId,
    @JsonKey(name: 'FECHA_PEDIDO') required final DateTime pedidoVentaDate,
    @JsonKey(name: 'CLIENTE_ID') required final String clienteId,
    @JsonKey(name: 'DIRECCION_ID') final String? direccionId,
    @JsonKey(name: 'NOMRE_CLIENTE') required final String nombreCliente,
    @JsonKey(name: 'CODIGO_POSTAL') final String? codigoPostal,
    @JsonKey(name: 'POBLACION') final String? poblacion,
    @JsonKey(name: 'PROVINCIA') final String? provincia,
    @JsonKey(name: 'PAIS_ID') final String? paisId,
    @JsonKey(name: 'DIVISA_ID') required final String divisaId,
    @JsonKey(name: 'BASE_IMPONIBLE') required final double baseImponible,
    @JsonKey(name: 'ESTADO_PEDIDO_ID') required final int pedidoVentaEstadoId,
    @JsonKey(name: 'NUM_LINEAS') required final int numLineas,
    @JsonKey(name: 'TRACKING_ESTADO') required final String estadoTrackingId,
    @JsonKey(name: 'ALBARAN_ID') required final String albaranId,
    @JsonKey(name: 'TRACK_ID') final String? trackId,
    @JsonKey(name: 'AGENCIA') final String? agencia,
    @JsonKey(name: 'FECHA_ALBARAN') required final DateTime fechaAlbaran,
    @JsonKey(name: 'OFERTA_SN') required final String oferta,
    @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
    @JsonKey(name: 'DELETED') required final String deleted,
  }) = _$ExpedicionDTOImpl;
  const _ExpedicionDTO._() : super._();

  factory _ExpedicionDTO.fromJson(Map<String, dynamic> json) =
      _$ExpedicionDTOImpl.fromJson;

  @override
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId;
  @override
  @JsonKey(name: 'PEDIDO_ID')
  String get pedidoVentaId;
  @override
  @JsonKey(name: 'FECHA_PEDIDO')
  DateTime get pedidoVentaDate;
  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId;
  @override
  @JsonKey(name: 'DIRECCION_ID')
  String? get direccionId;
  @override
  @JsonKey(name: 'NOMRE_CLIENTE')
  String get nombreCliente;
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
  String get divisaId;
  @override
  @JsonKey(name: 'BASE_IMPONIBLE')
  double get baseImponible;
  @override
  @JsonKey(name: 'ESTADO_PEDIDO_ID')
  int get pedidoVentaEstadoId;
  @override
  @JsonKey(name: 'NUM_LINEAS')
  int get numLineas;
  @override
  @JsonKey(name: 'TRACKING_ESTADO')
  String get estadoTrackingId;
  @override
  @JsonKey(name: 'ALBARAN_ID')
  String get albaranId;
  @override
  @JsonKey(name: 'TRACK_ID')
  String? get trackId;
  @override
  @JsonKey(name: 'AGENCIA')
  String? get agencia;
  @override
  @JsonKey(name: 'FECHA_ALBARAN')
  DateTime get fechaAlbaran;
  @override
  @JsonKey(name: 'OFERTA_SN')
  String get oferta;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;

  /// Create a copy of ExpedicionDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpedicionDTOImplCopyWith<_$ExpedicionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
