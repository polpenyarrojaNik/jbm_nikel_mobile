// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_venta_linea_local_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PedidoVentaLineaLocalDTO _$PedidoVentaLineaLocalDTOFromJson(
    Map<String, dynamic> json) {
  return _PedidoVentaLineaLocalDTO.fromJson(json);
}

/// @nodoc
mixin _$PedidoVentaLineaLocalDTO {
  @JsonKey(name: 'PEDIDO_APP_ID')
  String get pedidoVentaAppId => throw _privateConstructorUsedError;
  @JsonKey(name: 'EMPRESA_ID')
  String? get empresaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PEDIDO_ID')
  String? get pedidoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'LIN_APP_ID')
  String get pedidoVentaLineaAppId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PRODUCTO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DENOMINACION')
  String get articuloDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD')
  int get cantidad => throw _privateConstructorUsedError;
  @JsonKey(name: 'PRECIO_DIVISA')
  double get precioDivisa => throw _privateConstructorUsedError;
  @JsonKey(name: 'TPRECIO')
  int get tipoPrecio => throw _privateConstructorUsedError;
  @JsonKey(name: 'DTO1')
  double get descuento1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DTO2')
  double get descuento2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DTO3')
  double get descuento3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DTO_PP')
  double get descuentoProntoPago => throw _privateConstructorUsedError;
  @JsonKey(name: 'STOCK_DISPONIBLE_SN')
  String get stockDisponibleSN => throw _privateConstructorUsedError;
  @JsonKey(name: 'F_DISPONIBLE')
  DateTime? get fechaDisponible => throw _privateConstructorUsedError;
  @JsonKey(name: 'IVA')
  double get iva => throw _privateConstructorUsedError;
  @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')
  String? get pedidoLineaComponenteId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PedidoVentaLineaLocalDTOCopyWith<PedidoVentaLineaLocalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PedidoVentaLineaLocalDTOCopyWith<$Res> {
  factory $PedidoVentaLineaLocalDTOCopyWith(PedidoVentaLineaLocalDTO value,
          $Res Function(PedidoVentaLineaLocalDTO) then) =
      _$PedidoVentaLineaLocalDTOCopyWithImpl<$Res, PedidoVentaLineaLocalDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'PEDIDO_APP_ID') String pedidoVentaAppId,
      @JsonKey(name: 'EMPRESA_ID') String? empresaId,
      @JsonKey(name: 'PEDIDO_ID') String? pedidoId,
      @JsonKey(name: 'LIN_APP_ID') String pedidoVentaLineaAppId,
      @JsonKey(name: 'PRODUCTO_ID') String articuloId,
      @JsonKey(name: 'DENOMINACION') String articuloDescription,
      @JsonKey(name: 'CANTIDAD') int cantidad,
      @JsonKey(name: 'PRECIO_DIVISA') double precioDivisa,
      @JsonKey(name: 'TPRECIO') int tipoPrecio,
      @JsonKey(name: 'DTO1') double descuento1,
      @JsonKey(name: 'DTO2') double descuento2,
      @JsonKey(name: 'DTO3') double descuento3,
      @JsonKey(name: 'DTO_PP') double descuentoProntoPago,
      @JsonKey(name: 'STOCK_DISPONIBLE_SN') String stockDisponibleSN,
      @JsonKey(name: 'F_DISPONIBLE') DateTime? fechaDisponible,
      @JsonKey(name: 'IVA') double iva,
      @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')
      String? pedidoLineaComponenteId});
}

/// @nodoc
class _$PedidoVentaLineaLocalDTOCopyWithImpl<$Res,
        $Val extends PedidoVentaLineaLocalDTO>
    implements $PedidoVentaLineaLocalDTOCopyWith<$Res> {
  _$PedidoVentaLineaLocalDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pedidoVentaAppId = null,
    Object? empresaId = freezed,
    Object? pedidoId = freezed,
    Object? pedidoVentaLineaAppId = null,
    Object? articuloId = null,
    Object? articuloDescription = null,
    Object? cantidad = null,
    Object? precioDivisa = null,
    Object? tipoPrecio = null,
    Object? descuento1 = null,
    Object? descuento2 = null,
    Object? descuento3 = null,
    Object? descuentoProntoPago = null,
    Object? stockDisponibleSN = null,
    Object? fechaDisponible = freezed,
    Object? iva = null,
    Object? pedidoLineaComponenteId = freezed,
  }) {
    return _then(_value.copyWith(
      pedidoVentaAppId: null == pedidoVentaAppId
          ? _value.pedidoVentaAppId
          : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
              as String,
      empresaId: freezed == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoId: freezed == pedidoId
          ? _value.pedidoId
          : pedidoId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoVentaLineaAppId: null == pedidoVentaLineaAppId
          ? _value.pedidoVentaLineaAppId
          : pedidoVentaLineaAppId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloDescription: null == articuloDescription
          ? _value.articuloDescription
          : articuloDescription // ignore: cast_nullable_to_non_nullable
              as String,
      cantidad: null == cantidad
          ? _value.cantidad
          : cantidad // ignore: cast_nullable_to_non_nullable
              as int,
      precioDivisa: null == precioDivisa
          ? _value.precioDivisa
          : precioDivisa // ignore: cast_nullable_to_non_nullable
              as double,
      tipoPrecio: null == tipoPrecio
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
              as int,
      descuento1: null == descuento1
          ? _value.descuento1
          : descuento1 // ignore: cast_nullable_to_non_nullable
              as double,
      descuento2: null == descuento2
          ? _value.descuento2
          : descuento2 // ignore: cast_nullable_to_non_nullable
              as double,
      descuento3: null == descuento3
          ? _value.descuento3
          : descuento3 // ignore: cast_nullable_to_non_nullable
              as double,
      descuentoProntoPago: null == descuentoProntoPago
          ? _value.descuentoProntoPago
          : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
              as double,
      stockDisponibleSN: null == stockDisponibleSN
          ? _value.stockDisponibleSN
          : stockDisponibleSN // ignore: cast_nullable_to_non_nullable
              as String,
      fechaDisponible: freezed == fechaDisponible
          ? _value.fechaDisponible
          : fechaDisponible // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      iva: null == iva
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as double,
      pedidoLineaComponenteId: freezed == pedidoLineaComponenteId
          ? _value.pedidoLineaComponenteId
          : pedidoLineaComponenteId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PedidoVentaLineaLocalDTOImplCopyWith<$Res>
    implements $PedidoVentaLineaLocalDTOCopyWith<$Res> {
  factory _$$PedidoVentaLineaLocalDTOImplCopyWith(
          _$PedidoVentaLineaLocalDTOImpl value,
          $Res Function(_$PedidoVentaLineaLocalDTOImpl) then) =
      __$$PedidoVentaLineaLocalDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'PEDIDO_APP_ID') String pedidoVentaAppId,
      @JsonKey(name: 'EMPRESA_ID') String? empresaId,
      @JsonKey(name: 'PEDIDO_ID') String? pedidoId,
      @JsonKey(name: 'LIN_APP_ID') String pedidoVentaLineaAppId,
      @JsonKey(name: 'PRODUCTO_ID') String articuloId,
      @JsonKey(name: 'DENOMINACION') String articuloDescription,
      @JsonKey(name: 'CANTIDAD') int cantidad,
      @JsonKey(name: 'PRECIO_DIVISA') double precioDivisa,
      @JsonKey(name: 'TPRECIO') int tipoPrecio,
      @JsonKey(name: 'DTO1') double descuento1,
      @JsonKey(name: 'DTO2') double descuento2,
      @JsonKey(name: 'DTO3') double descuento3,
      @JsonKey(name: 'DTO_PP') double descuentoProntoPago,
      @JsonKey(name: 'STOCK_DISPONIBLE_SN') String stockDisponibleSN,
      @JsonKey(name: 'F_DISPONIBLE') DateTime? fechaDisponible,
      @JsonKey(name: 'IVA') double iva,
      @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')
      String? pedidoLineaComponenteId});
}

/// @nodoc
class __$$PedidoVentaLineaLocalDTOImplCopyWithImpl<$Res>
    extends _$PedidoVentaLineaLocalDTOCopyWithImpl<$Res,
        _$PedidoVentaLineaLocalDTOImpl>
    implements _$$PedidoVentaLineaLocalDTOImplCopyWith<$Res> {
  __$$PedidoVentaLineaLocalDTOImplCopyWithImpl(
      _$PedidoVentaLineaLocalDTOImpl _value,
      $Res Function(_$PedidoVentaLineaLocalDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pedidoVentaAppId = null,
    Object? empresaId = freezed,
    Object? pedidoId = freezed,
    Object? pedidoVentaLineaAppId = null,
    Object? articuloId = null,
    Object? articuloDescription = null,
    Object? cantidad = null,
    Object? precioDivisa = null,
    Object? tipoPrecio = null,
    Object? descuento1 = null,
    Object? descuento2 = null,
    Object? descuento3 = null,
    Object? descuentoProntoPago = null,
    Object? stockDisponibleSN = null,
    Object? fechaDisponible = freezed,
    Object? iva = null,
    Object? pedidoLineaComponenteId = freezed,
  }) {
    return _then(_$PedidoVentaLineaLocalDTOImpl(
      pedidoVentaAppId: null == pedidoVentaAppId
          ? _value.pedidoVentaAppId
          : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
              as String,
      empresaId: freezed == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoId: freezed == pedidoId
          ? _value.pedidoId
          : pedidoId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoVentaLineaAppId: null == pedidoVentaLineaAppId
          ? _value.pedidoVentaLineaAppId
          : pedidoVentaLineaAppId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloDescription: null == articuloDescription
          ? _value.articuloDescription
          : articuloDescription // ignore: cast_nullable_to_non_nullable
              as String,
      cantidad: null == cantidad
          ? _value.cantidad
          : cantidad // ignore: cast_nullable_to_non_nullable
              as int,
      precioDivisa: null == precioDivisa
          ? _value.precioDivisa
          : precioDivisa // ignore: cast_nullable_to_non_nullable
              as double,
      tipoPrecio: null == tipoPrecio
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
              as int,
      descuento1: null == descuento1
          ? _value.descuento1
          : descuento1 // ignore: cast_nullable_to_non_nullable
              as double,
      descuento2: null == descuento2
          ? _value.descuento2
          : descuento2 // ignore: cast_nullable_to_non_nullable
              as double,
      descuento3: null == descuento3
          ? _value.descuento3
          : descuento3 // ignore: cast_nullable_to_non_nullable
              as double,
      descuentoProntoPago: null == descuentoProntoPago
          ? _value.descuentoProntoPago
          : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
              as double,
      stockDisponibleSN: null == stockDisponibleSN
          ? _value.stockDisponibleSN
          : stockDisponibleSN // ignore: cast_nullable_to_non_nullable
              as String,
      fechaDisponible: freezed == fechaDisponible
          ? _value.fechaDisponible
          : fechaDisponible // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      iva: null == iva
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as double,
      pedidoLineaComponenteId: freezed == pedidoLineaComponenteId
          ? _value.pedidoLineaComponenteId
          : pedidoLineaComponenteId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PedidoVentaLineaLocalDTOImpl extends _PedidoVentaLineaLocalDTO {
  const _$PedidoVentaLineaLocalDTOImpl(
      {@JsonKey(name: 'PEDIDO_APP_ID') required this.pedidoVentaAppId,
      @JsonKey(name: 'EMPRESA_ID') this.empresaId,
      @JsonKey(name: 'PEDIDO_ID') this.pedidoId,
      @JsonKey(name: 'LIN_APP_ID') required this.pedidoVentaLineaAppId,
      @JsonKey(name: 'PRODUCTO_ID') required this.articuloId,
      @JsonKey(name: 'DENOMINACION') required this.articuloDescription,
      @JsonKey(name: 'CANTIDAD') required this.cantidad,
      @JsonKey(name: 'PRECIO_DIVISA') required this.precioDivisa,
      @JsonKey(name: 'TPRECIO') required this.tipoPrecio,
      @JsonKey(name: 'DTO1') required this.descuento1,
      @JsonKey(name: 'DTO2') required this.descuento2,
      @JsonKey(name: 'DTO3') required this.descuento3,
      @JsonKey(name: 'DTO_PP') required this.descuentoProntoPago,
      @JsonKey(name: 'STOCK_DISPONIBLE_SN') required this.stockDisponibleSN,
      @JsonKey(name: 'F_DISPONIBLE') this.fechaDisponible,
      @JsonKey(name: 'IVA') required this.iva,
      @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')
      this.pedidoLineaComponenteId})
      : super._();

  factory _$PedidoVentaLineaLocalDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PedidoVentaLineaLocalDTOImplFromJson(json);

  @override
  @JsonKey(name: 'PEDIDO_APP_ID')
  final String pedidoVentaAppId;
  @override
  @JsonKey(name: 'EMPRESA_ID')
  final String? empresaId;
  @override
  @JsonKey(name: 'PEDIDO_ID')
  final String? pedidoId;
  @override
  @JsonKey(name: 'LIN_APP_ID')
  final String pedidoVentaLineaAppId;
  @override
  @JsonKey(name: 'PRODUCTO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'DENOMINACION')
  final String articuloDescription;
  @override
  @JsonKey(name: 'CANTIDAD')
  final int cantidad;
  @override
  @JsonKey(name: 'PRECIO_DIVISA')
  final double precioDivisa;
  @override
  @JsonKey(name: 'TPRECIO')
  final int tipoPrecio;
  @override
  @JsonKey(name: 'DTO1')
  final double descuento1;
  @override
  @JsonKey(name: 'DTO2')
  final double descuento2;
  @override
  @JsonKey(name: 'DTO3')
  final double descuento3;
  @override
  @JsonKey(name: 'DTO_PP')
  final double descuentoProntoPago;
  @override
  @JsonKey(name: 'STOCK_DISPONIBLE_SN')
  final String stockDisponibleSN;
  @override
  @JsonKey(name: 'F_DISPONIBLE')
  final DateTime? fechaDisponible;
  @override
  @JsonKey(name: 'IVA')
  final double iva;
  @override
  @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')
  final String? pedidoLineaComponenteId;

  @override
  String toString() {
    return 'PedidoVentaLineaLocalDTO(pedidoVentaAppId: $pedidoVentaAppId, empresaId: $empresaId, pedidoId: $pedidoId, pedidoVentaLineaAppId: $pedidoVentaLineaAppId, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidad: $cantidad, precioDivisa: $precioDivisa, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, descuentoProntoPago: $descuentoProntoPago, stockDisponibleSN: $stockDisponibleSN, fechaDisponible: $fechaDisponible, iva: $iva, pedidoLineaComponenteId: $pedidoLineaComponenteId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PedidoVentaLineaLocalDTOImpl &&
            (identical(other.pedidoVentaAppId, pedidoVentaAppId) ||
                other.pedidoVentaAppId == pedidoVentaAppId) &&
            (identical(other.empresaId, empresaId) ||
                other.empresaId == empresaId) &&
            (identical(other.pedidoId, pedidoId) ||
                other.pedidoId == pedidoId) &&
            (identical(other.pedidoVentaLineaAppId, pedidoVentaLineaAppId) ||
                other.pedidoVentaLineaAppId == pedidoVentaLineaAppId) &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.articuloDescription, articuloDescription) ||
                other.articuloDescription == articuloDescription) &&
            (identical(other.cantidad, cantidad) ||
                other.cantidad == cantidad) &&
            (identical(other.precioDivisa, precioDivisa) ||
                other.precioDivisa == precioDivisa) &&
            (identical(other.tipoPrecio, tipoPrecio) ||
                other.tipoPrecio == tipoPrecio) &&
            (identical(other.descuento1, descuento1) ||
                other.descuento1 == descuento1) &&
            (identical(other.descuento2, descuento2) ||
                other.descuento2 == descuento2) &&
            (identical(other.descuento3, descuento3) ||
                other.descuento3 == descuento3) &&
            (identical(other.descuentoProntoPago, descuentoProntoPago) ||
                other.descuentoProntoPago == descuentoProntoPago) &&
            (identical(other.stockDisponibleSN, stockDisponibleSN) ||
                other.stockDisponibleSN == stockDisponibleSN) &&
            (identical(other.fechaDisponible, fechaDisponible) ||
                other.fechaDisponible == fechaDisponible) &&
            (identical(other.iva, iva) || other.iva == iva) &&
            (identical(
                    other.pedidoLineaComponenteId, pedidoLineaComponenteId) ||
                other.pedidoLineaComponenteId == pedidoLineaComponenteId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pedidoVentaAppId,
      empresaId,
      pedidoId,
      pedidoVentaLineaAppId,
      articuloId,
      articuloDescription,
      cantidad,
      precioDivisa,
      tipoPrecio,
      descuento1,
      descuento2,
      descuento3,
      descuentoProntoPago,
      stockDisponibleSN,
      fechaDisponible,
      iva,
      pedidoLineaComponenteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PedidoVentaLineaLocalDTOImplCopyWith<_$PedidoVentaLineaLocalDTOImpl>
      get copyWith => __$$PedidoVentaLineaLocalDTOImplCopyWithImpl<
          _$PedidoVentaLineaLocalDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PedidoVentaLineaLocalDTOImplToJson(
      this,
    );
  }
}

abstract class _PedidoVentaLineaLocalDTO extends PedidoVentaLineaLocalDTO {
  const factory _PedidoVentaLineaLocalDTO(
      {@JsonKey(name: 'PEDIDO_APP_ID') required final String pedidoVentaAppId,
      @JsonKey(name: 'EMPRESA_ID') final String? empresaId,
      @JsonKey(name: 'PEDIDO_ID') final String? pedidoId,
      @JsonKey(name: 'LIN_APP_ID') required final String pedidoVentaLineaAppId,
      @JsonKey(name: 'PRODUCTO_ID') required final String articuloId,
      @JsonKey(name: 'DENOMINACION') required final String articuloDescription,
      @JsonKey(name: 'CANTIDAD') required final int cantidad,
      @JsonKey(name: 'PRECIO_DIVISA') required final double precioDivisa,
      @JsonKey(name: 'TPRECIO') required final int tipoPrecio,
      @JsonKey(name: 'DTO1') required final double descuento1,
      @JsonKey(name: 'DTO2') required final double descuento2,
      @JsonKey(name: 'DTO3') required final double descuento3,
      @JsonKey(name: 'DTO_PP') required final double descuentoProntoPago,
      @JsonKey(name: 'STOCK_DISPONIBLE_SN')
      required final String stockDisponibleSN,
      @JsonKey(name: 'F_DISPONIBLE') final DateTime? fechaDisponible,
      @JsonKey(name: 'IVA') required final double iva,
      @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')
      final String? pedidoLineaComponenteId}) = _$PedidoVentaLineaLocalDTOImpl;
  const _PedidoVentaLineaLocalDTO._() : super._();

  factory _PedidoVentaLineaLocalDTO.fromJson(Map<String, dynamic> json) =
      _$PedidoVentaLineaLocalDTOImpl.fromJson;

  @override
  @JsonKey(name: 'PEDIDO_APP_ID')
  String get pedidoVentaAppId;
  @override
  @JsonKey(name: 'EMPRESA_ID')
  String? get empresaId;
  @override
  @JsonKey(name: 'PEDIDO_ID')
  String? get pedidoId;
  @override
  @JsonKey(name: 'LIN_APP_ID')
  String get pedidoVentaLineaAppId;
  @override
  @JsonKey(name: 'PRODUCTO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'DENOMINACION')
  String get articuloDescription;
  @override
  @JsonKey(name: 'CANTIDAD')
  int get cantidad;
  @override
  @JsonKey(name: 'PRECIO_DIVISA')
  double get precioDivisa;
  @override
  @JsonKey(name: 'TPRECIO')
  int get tipoPrecio;
  @override
  @JsonKey(name: 'DTO1')
  double get descuento1;
  @override
  @JsonKey(name: 'DTO2')
  double get descuento2;
  @override
  @JsonKey(name: 'DTO3')
  double get descuento3;
  @override
  @JsonKey(name: 'DTO_PP')
  double get descuentoProntoPago;
  @override
  @JsonKey(name: 'STOCK_DISPONIBLE_SN')
  String get stockDisponibleSN;
  @override
  @JsonKey(name: 'F_DISPONIBLE')
  DateTime? get fechaDisponible;
  @override
  @JsonKey(name: 'IVA')
  double get iva;
  @override
  @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')
  String? get pedidoLineaComponenteId;
  @override
  @JsonKey(ignore: true)
  _$$PedidoVentaLineaLocalDTOImplCopyWith<_$PedidoVentaLineaLocalDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
