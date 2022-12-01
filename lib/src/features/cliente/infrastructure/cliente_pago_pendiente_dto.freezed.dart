// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_pago_pendiente_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientePagoPendienteDTO _$ClientePagoPendienteDTOFromJson(
    Map<String, dynamic> json) {
  return _ClientePagoPendienteDTO.fromJson(json);
}

/// @nodoc
mixin _$ClientePagoPendienteDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'EFECTO_ID')
  String get efectoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'FACTURA_ID')
  String? get facutaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_FACUTRA')
  DateTime? get fechaFactura => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_VENCIMIENTO')
  DateTime? get fechaExpiracion => throw _privateConstructorUsedError;
  @JsonKey(name: 'METODO_COBRO_ID')
  String? get metodoDeCobroId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ESTADO_COBRO_ID')
  String? get estadoCobroId => throw _privateConstructorUsedError;
  @JsonKey(name: 'IMPORTE')
  double? get importe => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL')
  DateTime? get fechaExpiracionInicial => throw _privateConstructorUsedError;
  @JsonKey(name: 'VENCIDO_JBM')
  String? get vencidoJBM => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientePagoPendienteDTOCopyWith<ClientePagoPendienteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientePagoPendienteDTOCopyWith<$Res> {
  factory $ClientePagoPendienteDTOCopyWith(ClientePagoPendienteDTO value,
          $Res Function(ClientePagoPendienteDTO) then) =
      _$ClientePagoPendienteDTOCopyWithImpl<$Res, ClientePagoPendienteDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID')
          String clienteId,
      @JsonKey(name: 'EFECTO_ID')
          String efectoId,
      @JsonKey(name: 'FACTURA_ID')
          String? facutaId,
      @JsonKey(name: 'FECHA_FACUTRA')
          DateTime? fechaFactura,
      @JsonKey(name: 'FECHA_VENCIMIENTO')
          DateTime? fechaExpiracion,
      @JsonKey(name: 'METODO_COBRO_ID')
          String? metodoDeCobroId,
      @JsonKey(name: 'ESTADO_COBRO_ID')
          String? estadoCobroId,
      @JsonKey(name: 'IMPORTE')
          double? importe,
      @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL')
          DateTime? fechaExpiracionInicial,
      @JsonKey(name: 'VENCIDO_JBM')
          String? vencidoJBM,
      @JsonKey(name: 'LAST_UPDATED')
          DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          String deleted});
}

/// @nodoc
class _$ClientePagoPendienteDTOCopyWithImpl<$Res,
        $Val extends ClientePagoPendienteDTO>
    implements $ClientePagoPendienteDTOCopyWith<$Res> {
  _$ClientePagoPendienteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? efectoId = null,
    Object? facutaId = freezed,
    Object? fechaFactura = freezed,
    Object? fechaExpiracion = freezed,
    Object? metodoDeCobroId = freezed,
    Object? estadoCobroId = freezed,
    Object? importe = freezed,
    Object? fechaExpiracionInicial = freezed,
    Object? vencidoJBM = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      efectoId: null == efectoId
          ? _value.efectoId
          : efectoId // ignore: cast_nullable_to_non_nullable
              as String,
      facutaId: freezed == facutaId
          ? _value.facutaId
          : facutaId // ignore: cast_nullable_to_non_nullable
              as String?,
      fechaFactura: freezed == fechaFactura
          ? _value.fechaFactura
          : fechaFactura // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fechaExpiracion: freezed == fechaExpiracion
          ? _value.fechaExpiracion
          : fechaExpiracion // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metodoDeCobroId: freezed == metodoDeCobroId
          ? _value.metodoDeCobroId
          : metodoDeCobroId // ignore: cast_nullable_to_non_nullable
              as String?,
      estadoCobroId: freezed == estadoCobroId
          ? _value.estadoCobroId
          : estadoCobroId // ignore: cast_nullable_to_non_nullable
              as String?,
      importe: freezed == importe
          ? _value.importe
          : importe // ignore: cast_nullable_to_non_nullable
              as double?,
      fechaExpiracionInicial: freezed == fechaExpiracionInicial
          ? _value.fechaExpiracionInicial
          : fechaExpiracionInicial // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vencidoJBM: freezed == vencidoJBM
          ? _value.vencidoJBM
          : vencidoJBM // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ClientePagoPendienteDTOCopyWith<$Res>
    implements $ClientePagoPendienteDTOCopyWith<$Res> {
  factory _$$_ClientePagoPendienteDTOCopyWith(_$_ClientePagoPendienteDTO value,
          $Res Function(_$_ClientePagoPendienteDTO) then) =
      __$$_ClientePagoPendienteDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID')
          String clienteId,
      @JsonKey(name: 'EFECTO_ID')
          String efectoId,
      @JsonKey(name: 'FACTURA_ID')
          String? facutaId,
      @JsonKey(name: 'FECHA_FACUTRA')
          DateTime? fechaFactura,
      @JsonKey(name: 'FECHA_VENCIMIENTO')
          DateTime? fechaExpiracion,
      @JsonKey(name: 'METODO_COBRO_ID')
          String? metodoDeCobroId,
      @JsonKey(name: 'ESTADO_COBRO_ID')
          String? estadoCobroId,
      @JsonKey(name: 'IMPORTE')
          double? importe,
      @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL')
          DateTime? fechaExpiracionInicial,
      @JsonKey(name: 'VENCIDO_JBM')
          String? vencidoJBM,
      @JsonKey(name: 'LAST_UPDATED')
          DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          String deleted});
}

/// @nodoc
class __$$_ClientePagoPendienteDTOCopyWithImpl<$Res>
    extends _$ClientePagoPendienteDTOCopyWithImpl<$Res,
        _$_ClientePagoPendienteDTO>
    implements _$$_ClientePagoPendienteDTOCopyWith<$Res> {
  __$$_ClientePagoPendienteDTOCopyWithImpl(_$_ClientePagoPendienteDTO _value,
      $Res Function(_$_ClientePagoPendienteDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? efectoId = null,
    Object? facutaId = freezed,
    Object? fechaFactura = freezed,
    Object? fechaExpiracion = freezed,
    Object? metodoDeCobroId = freezed,
    Object? estadoCobroId = freezed,
    Object? importe = freezed,
    Object? fechaExpiracionInicial = freezed,
    Object? vencidoJBM = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$_ClientePagoPendienteDTO(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      efectoId: null == efectoId
          ? _value.efectoId
          : efectoId // ignore: cast_nullable_to_non_nullable
              as String,
      facutaId: freezed == facutaId
          ? _value.facutaId
          : facutaId // ignore: cast_nullable_to_non_nullable
              as String?,
      fechaFactura: freezed == fechaFactura
          ? _value.fechaFactura
          : fechaFactura // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fechaExpiracion: freezed == fechaExpiracion
          ? _value.fechaExpiracion
          : fechaExpiracion // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metodoDeCobroId: freezed == metodoDeCobroId
          ? _value.metodoDeCobroId
          : metodoDeCobroId // ignore: cast_nullable_to_non_nullable
              as String?,
      estadoCobroId: freezed == estadoCobroId
          ? _value.estadoCobroId
          : estadoCobroId // ignore: cast_nullable_to_non_nullable
              as String?,
      importe: freezed == importe
          ? _value.importe
          : importe // ignore: cast_nullable_to_non_nullable
              as double?,
      fechaExpiracionInicial: freezed == fechaExpiracionInicial
          ? _value.fechaExpiracionInicial
          : fechaExpiracionInicial // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vencidoJBM: freezed == vencidoJBM
          ? _value.vencidoJBM
          : vencidoJBM // ignore: cast_nullable_to_non_nullable
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
class _$_ClientePagoPendienteDTO extends _ClientePagoPendienteDTO {
  const _$_ClientePagoPendienteDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.clienteId,
      @JsonKey(name: 'EFECTO_ID') required this.efectoId,
      @JsonKey(name: 'FACTURA_ID') this.facutaId,
      @JsonKey(name: 'FECHA_FACUTRA') this.fechaFactura,
      @JsonKey(name: 'FECHA_VENCIMIENTO') this.fechaExpiracion,
      @JsonKey(name: 'METODO_COBRO_ID') this.metodoDeCobroId,
      @JsonKey(name: 'ESTADO_COBRO_ID') this.estadoCobroId,
      @JsonKey(name: 'IMPORTE') this.importe,
      @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL') this.fechaExpiracionInicial,
      @JsonKey(name: 'VENCIDO_JBM') this.vencidoJBM,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_ClientePagoPendienteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ClientePagoPendienteDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String clienteId;
  @override
  @JsonKey(name: 'EFECTO_ID')
  final String efectoId;
  @override
  @JsonKey(name: 'FACTURA_ID')
  final String? facutaId;
  @override
  @JsonKey(name: 'FECHA_FACUTRA')
  final DateTime? fechaFactura;
  @override
  @JsonKey(name: 'FECHA_VENCIMIENTO')
  final DateTime? fechaExpiracion;
  @override
  @JsonKey(name: 'METODO_COBRO_ID')
  final String? metodoDeCobroId;
  @override
  @JsonKey(name: 'ESTADO_COBRO_ID')
  final String? estadoCobroId;
  @override
  @JsonKey(name: 'IMPORTE')
  final double? importe;
  @override
  @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL')
  final DateTime? fechaExpiracionInicial;
  @override
  @JsonKey(name: 'VENCIDO_JBM')
  final String? vencidoJBM;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ClientePagoPendienteDTO(clienteId: $clienteId, efectoId: $efectoId, facutaId: $facutaId, fechaFactura: $fechaFactura, fechaExpiracion: $fechaExpiracion, metodoDeCobroId: $metodoDeCobroId, estadoCobroId: $estadoCobroId, importe: $importe, fechaExpiracionInicial: $fechaExpiracionInicial, vencidoJBM: $vencidoJBM, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientePagoPendienteDTO &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.efectoId, efectoId) ||
                other.efectoId == efectoId) &&
            (identical(other.facutaId, facutaId) ||
                other.facutaId == facutaId) &&
            (identical(other.fechaFactura, fechaFactura) ||
                other.fechaFactura == fechaFactura) &&
            (identical(other.fechaExpiracion, fechaExpiracion) ||
                other.fechaExpiracion == fechaExpiracion) &&
            (identical(other.metodoDeCobroId, metodoDeCobroId) ||
                other.metodoDeCobroId == metodoDeCobroId) &&
            (identical(other.estadoCobroId, estadoCobroId) ||
                other.estadoCobroId == estadoCobroId) &&
            (identical(other.importe, importe) || other.importe == importe) &&
            (identical(other.fechaExpiracionInicial, fechaExpiracionInicial) ||
                other.fechaExpiracionInicial == fechaExpiracionInicial) &&
            (identical(other.vencidoJBM, vencidoJBM) ||
                other.vencidoJBM == vencidoJBM) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      clienteId,
      efectoId,
      facutaId,
      fechaFactura,
      fechaExpiracion,
      metodoDeCobroId,
      estadoCobroId,
      importe,
      fechaExpiracionInicial,
      vencidoJBM,
      lastUpdated,
      deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientePagoPendienteDTOCopyWith<_$_ClientePagoPendienteDTO>
      get copyWith =>
          __$$_ClientePagoPendienteDTOCopyWithImpl<_$_ClientePagoPendienteDTO>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientePagoPendienteDTOToJson(
      this,
    );
  }
}

abstract class _ClientePagoPendienteDTO extends ClientePagoPendienteDTO {
  const factory _ClientePagoPendienteDTO(
      {@JsonKey(name: 'CLIENTE_ID')
          required final String clienteId,
      @JsonKey(name: 'EFECTO_ID')
          required final String efectoId,
      @JsonKey(name: 'FACTURA_ID')
          final String? facutaId,
      @JsonKey(name: 'FECHA_FACUTRA')
          final DateTime? fechaFactura,
      @JsonKey(name: 'FECHA_VENCIMIENTO')
          final DateTime? fechaExpiracion,
      @JsonKey(name: 'METODO_COBRO_ID')
          final String? metodoDeCobroId,
      @JsonKey(name: 'ESTADO_COBRO_ID')
          final String? estadoCobroId,
      @JsonKey(name: 'IMPORTE')
          final double? importe,
      @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL')
          final DateTime? fechaExpiracionInicial,
      @JsonKey(name: 'VENCIDO_JBM')
          final String? vencidoJBM,
      @JsonKey(name: 'LAST_UPDATED')
          required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          final String deleted}) = _$_ClientePagoPendienteDTO;
  const _ClientePagoPendienteDTO._() : super._();

  factory _ClientePagoPendienteDTO.fromJson(Map<String, dynamic> json) =
      _$_ClientePagoPendienteDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId;
  @override
  @JsonKey(name: 'EFECTO_ID')
  String get efectoId;
  @override
  @JsonKey(name: 'FACTURA_ID')
  String? get facutaId;
  @override
  @JsonKey(name: 'FECHA_FACUTRA')
  DateTime? get fechaFactura;
  @override
  @JsonKey(name: 'FECHA_VENCIMIENTO')
  DateTime? get fechaExpiracion;
  @override
  @JsonKey(name: 'METODO_COBRO_ID')
  String? get metodoDeCobroId;
  @override
  @JsonKey(name: 'ESTADO_COBRO_ID')
  String? get estadoCobroId;
  @override
  @JsonKey(name: 'IMPORTE')
  double? get importe;
  @override
  @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL')
  DateTime? get fechaExpiracionInicial;
  @override
  @JsonKey(name: 'VENCIDO_JBM')
  String? get vencidoJBM;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ClientePagoPendienteDTOCopyWith<_$_ClientePagoPendienteDTO>
      get copyWith => throw _privateConstructorUsedError;
}
