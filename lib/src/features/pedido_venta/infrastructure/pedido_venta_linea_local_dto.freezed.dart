// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  @JsonKey(name: 'LIN_APP_ID')
  String get pedidoVentaLineaAppId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PRODUCTO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DENOMINACION')
  String? get articuloDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD')
  double get cantidad => throw _privateConstructorUsedError;
  @JsonKey(name: 'PRECIO_DIVISA')
  double get precioDivisa => throw _privateConstructorUsedError;
  @JsonKey(name: 'TPRECIO')
  double get tipoPrecio => throw _privateConstructorUsedError;
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PedidoVentaLineaLocalDTOCopyWith<PedidoVentaLineaLocalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PedidoVentaLineaLocalDTOCopyWith<$Res> {
  factory $PedidoVentaLineaLocalDTOCopyWith(PedidoVentaLineaLocalDTO value,
          $Res Function(PedidoVentaLineaLocalDTO) then) =
      _$PedidoVentaLineaLocalDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'PEDIDO_APP_ID') String pedidoVentaAppId,
      @JsonKey(name: 'LIN_APP_ID') String pedidoVentaLineaAppId,
      @JsonKey(name: 'PRODUCTO_ID') String articuloId,
      @JsonKey(name: 'DENOMINACION') String? articuloDescription,
      @JsonKey(name: 'CANTIDAD') double cantidad,
      @JsonKey(name: 'PRECIO_DIVISA') double precioDivisa,
      @JsonKey(name: 'TPRECIO') double tipoPrecio,
      @JsonKey(name: 'DTO1') double descuento1,
      @JsonKey(name: 'DTO2') double descuento2,
      @JsonKey(name: 'DTO3') double descuento3,
      @JsonKey(name: 'DTO_PP') double descuentoProntoPago,
      @JsonKey(name: 'STOCK_DISPONIBLE_SN') String stockDisponibleSN,
      @JsonKey(name: 'F_DISPONIBLE') DateTime? fechaDisponible,
      @JsonKey(name: 'IVA') double iva});
}

/// @nodoc
class _$PedidoVentaLineaLocalDTOCopyWithImpl<$Res>
    implements $PedidoVentaLineaLocalDTOCopyWith<$Res> {
  _$PedidoVentaLineaLocalDTOCopyWithImpl(this._value, this._then);

  final PedidoVentaLineaLocalDTO _value;
  // ignore: unused_field
  final $Res Function(PedidoVentaLineaLocalDTO) _then;

  @override
  $Res call({
    Object? pedidoVentaAppId = freezed,
    Object? pedidoVentaLineaAppId = freezed,
    Object? articuloId = freezed,
    Object? articuloDescription = freezed,
    Object? cantidad = freezed,
    Object? precioDivisa = freezed,
    Object? tipoPrecio = freezed,
    Object? descuento1 = freezed,
    Object? descuento2 = freezed,
    Object? descuento3 = freezed,
    Object? descuentoProntoPago = freezed,
    Object? stockDisponibleSN = freezed,
    Object? fechaDisponible = freezed,
    Object? iva = freezed,
  }) {
    return _then(_value.copyWith(
      pedidoVentaAppId: pedidoVentaAppId == freezed
          ? _value.pedidoVentaAppId
          : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
              as String,
      pedidoVentaLineaAppId: pedidoVentaLineaAppId == freezed
          ? _value.pedidoVentaLineaAppId
          : pedidoVentaLineaAppId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloDescription: articuloDescription == freezed
          ? _value.articuloDescription
          : articuloDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      cantidad: cantidad == freezed
          ? _value.cantidad
          : cantidad // ignore: cast_nullable_to_non_nullable
              as double,
      precioDivisa: precioDivisa == freezed
          ? _value.precioDivisa
          : precioDivisa // ignore: cast_nullable_to_non_nullable
              as double,
      tipoPrecio: tipoPrecio == freezed
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
              as double,
      descuento1: descuento1 == freezed
          ? _value.descuento1
          : descuento1 // ignore: cast_nullable_to_non_nullable
              as double,
      descuento2: descuento2 == freezed
          ? _value.descuento2
          : descuento2 // ignore: cast_nullable_to_non_nullable
              as double,
      descuento3: descuento3 == freezed
          ? _value.descuento3
          : descuento3 // ignore: cast_nullable_to_non_nullable
              as double,
      descuentoProntoPago: descuentoProntoPago == freezed
          ? _value.descuentoProntoPago
          : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
              as double,
      stockDisponibleSN: stockDisponibleSN == freezed
          ? _value.stockDisponibleSN
          : stockDisponibleSN // ignore: cast_nullable_to_non_nullable
              as String,
      fechaDisponible: fechaDisponible == freezed
          ? _value.fechaDisponible
          : fechaDisponible // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      iva: iva == freezed
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_PedidoVentaLineaLocalDTOCopyWith<$Res>
    implements $PedidoVentaLineaLocalDTOCopyWith<$Res> {
  factory _$$_PedidoVentaLineaLocalDTOCopyWith(
          _$_PedidoVentaLineaLocalDTO value,
          $Res Function(_$_PedidoVentaLineaLocalDTO) then) =
      __$$_PedidoVentaLineaLocalDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'PEDIDO_APP_ID') String pedidoVentaAppId,
      @JsonKey(name: 'LIN_APP_ID') String pedidoVentaLineaAppId,
      @JsonKey(name: 'PRODUCTO_ID') String articuloId,
      @JsonKey(name: 'DENOMINACION') String? articuloDescription,
      @JsonKey(name: 'CANTIDAD') double cantidad,
      @JsonKey(name: 'PRECIO_DIVISA') double precioDivisa,
      @JsonKey(name: 'TPRECIO') double tipoPrecio,
      @JsonKey(name: 'DTO1') double descuento1,
      @JsonKey(name: 'DTO2') double descuento2,
      @JsonKey(name: 'DTO3') double descuento3,
      @JsonKey(name: 'DTO_PP') double descuentoProntoPago,
      @JsonKey(name: 'STOCK_DISPONIBLE_SN') String stockDisponibleSN,
      @JsonKey(name: 'F_DISPONIBLE') DateTime? fechaDisponible,
      @JsonKey(name: 'IVA') double iva});
}

/// @nodoc
class __$$_PedidoVentaLineaLocalDTOCopyWithImpl<$Res>
    extends _$PedidoVentaLineaLocalDTOCopyWithImpl<$Res>
    implements _$$_PedidoVentaLineaLocalDTOCopyWith<$Res> {
  __$$_PedidoVentaLineaLocalDTOCopyWithImpl(_$_PedidoVentaLineaLocalDTO _value,
      $Res Function(_$_PedidoVentaLineaLocalDTO) _then)
      : super(_value, (v) => _then(v as _$_PedidoVentaLineaLocalDTO));

  @override
  _$_PedidoVentaLineaLocalDTO get _value =>
      super._value as _$_PedidoVentaLineaLocalDTO;

  @override
  $Res call({
    Object? pedidoVentaAppId = freezed,
    Object? pedidoVentaLineaAppId = freezed,
    Object? articuloId = freezed,
    Object? articuloDescription = freezed,
    Object? cantidad = freezed,
    Object? precioDivisa = freezed,
    Object? tipoPrecio = freezed,
    Object? descuento1 = freezed,
    Object? descuento2 = freezed,
    Object? descuento3 = freezed,
    Object? descuentoProntoPago = freezed,
    Object? stockDisponibleSN = freezed,
    Object? fechaDisponible = freezed,
    Object? iva = freezed,
  }) {
    return _then(_$_PedidoVentaLineaLocalDTO(
      pedidoVentaAppId: pedidoVentaAppId == freezed
          ? _value.pedidoVentaAppId
          : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
              as String,
      pedidoVentaLineaAppId: pedidoVentaLineaAppId == freezed
          ? _value.pedidoVentaLineaAppId
          : pedidoVentaLineaAppId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloDescription: articuloDescription == freezed
          ? _value.articuloDescription
          : articuloDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      cantidad: cantidad == freezed
          ? _value.cantidad
          : cantidad // ignore: cast_nullable_to_non_nullable
              as double,
      precioDivisa: precioDivisa == freezed
          ? _value.precioDivisa
          : precioDivisa // ignore: cast_nullable_to_non_nullable
              as double,
      tipoPrecio: tipoPrecio == freezed
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
              as double,
      descuento1: descuento1 == freezed
          ? _value.descuento1
          : descuento1 // ignore: cast_nullable_to_non_nullable
              as double,
      descuento2: descuento2 == freezed
          ? _value.descuento2
          : descuento2 // ignore: cast_nullable_to_non_nullable
              as double,
      descuento3: descuento3 == freezed
          ? _value.descuento3
          : descuento3 // ignore: cast_nullable_to_non_nullable
              as double,
      descuentoProntoPago: descuentoProntoPago == freezed
          ? _value.descuentoProntoPago
          : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
              as double,
      stockDisponibleSN: stockDisponibleSN == freezed
          ? _value.stockDisponibleSN
          : stockDisponibleSN // ignore: cast_nullable_to_non_nullable
              as String,
      fechaDisponible: fechaDisponible == freezed
          ? _value.fechaDisponible
          : fechaDisponible // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      iva: iva == freezed
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PedidoVentaLineaLocalDTO extends _PedidoVentaLineaLocalDTO {
  const _$_PedidoVentaLineaLocalDTO(
      {@JsonKey(name: 'PEDIDO_APP_ID') required this.pedidoVentaAppId,
      @JsonKey(name: 'LIN_APP_ID') required this.pedidoVentaLineaAppId,
      @JsonKey(name: 'PRODUCTO_ID') required this.articuloId,
      @JsonKey(name: 'DENOMINACION') this.articuloDescription,
      @JsonKey(name: 'CANTIDAD') required this.cantidad,
      @JsonKey(name: 'PRECIO_DIVISA') required this.precioDivisa,
      @JsonKey(name: 'TPRECIO') required this.tipoPrecio,
      @JsonKey(name: 'DTO1') required this.descuento1,
      @JsonKey(name: 'DTO2') required this.descuento2,
      @JsonKey(name: 'DTO3') required this.descuento3,
      @JsonKey(name: 'DTO_PP') required this.descuentoProntoPago,
      @JsonKey(name: 'STOCK_DISPONIBLE_SN') required this.stockDisponibleSN,
      @JsonKey(name: 'F_DISPONIBLE') this.fechaDisponible,
      @JsonKey(name: 'IVA') required this.iva})
      : super._();

  factory _$_PedidoVentaLineaLocalDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PedidoVentaLineaLocalDTOFromJson(json);

  @override
  @JsonKey(name: 'PEDIDO_APP_ID')
  final String pedidoVentaAppId;
  @override
  @JsonKey(name: 'LIN_APP_ID')
  final String pedidoVentaLineaAppId;
  @override
  @JsonKey(name: 'PRODUCTO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'DENOMINACION')
  final String? articuloDescription;
  @override
  @JsonKey(name: 'CANTIDAD')
  final double cantidad;
  @override
  @JsonKey(name: 'PRECIO_DIVISA')
  final double precioDivisa;
  @override
  @JsonKey(name: 'TPRECIO')
  final double tipoPrecio;
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
  String toString() {
    return 'PedidoVentaLineaLocalDTO(pedidoVentaAppId: $pedidoVentaAppId, pedidoVentaLineaAppId: $pedidoVentaLineaAppId, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidad: $cantidad, precioDivisa: $precioDivisa, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, descuentoProntoPago: $descuentoProntoPago, stockDisponibleSN: $stockDisponibleSN, fechaDisponible: $fechaDisponible, iva: $iva)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PedidoVentaLineaLocalDTO &&
            const DeepCollectionEquality()
                .equals(other.pedidoVentaAppId, pedidoVentaAppId) &&
            const DeepCollectionEquality()
                .equals(other.pedidoVentaLineaAppId, pedidoVentaLineaAppId) &&
            const DeepCollectionEquality()
                .equals(other.articuloId, articuloId) &&
            const DeepCollectionEquality()
                .equals(other.articuloDescription, articuloDescription) &&
            const DeepCollectionEquality().equals(other.cantidad, cantidad) &&
            const DeepCollectionEquality()
                .equals(other.precioDivisa, precioDivisa) &&
            const DeepCollectionEquality()
                .equals(other.tipoPrecio, tipoPrecio) &&
            const DeepCollectionEquality()
                .equals(other.descuento1, descuento1) &&
            const DeepCollectionEquality()
                .equals(other.descuento2, descuento2) &&
            const DeepCollectionEquality()
                .equals(other.descuento3, descuento3) &&
            const DeepCollectionEquality()
                .equals(other.descuentoProntoPago, descuentoProntoPago) &&
            const DeepCollectionEquality()
                .equals(other.stockDisponibleSN, stockDisponibleSN) &&
            const DeepCollectionEquality()
                .equals(other.fechaDisponible, fechaDisponible) &&
            const DeepCollectionEquality().equals(other.iva, iva));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pedidoVentaAppId),
      const DeepCollectionEquality().hash(pedidoVentaLineaAppId),
      const DeepCollectionEquality().hash(articuloId),
      const DeepCollectionEquality().hash(articuloDescription),
      const DeepCollectionEquality().hash(cantidad),
      const DeepCollectionEquality().hash(precioDivisa),
      const DeepCollectionEquality().hash(tipoPrecio),
      const DeepCollectionEquality().hash(descuento1),
      const DeepCollectionEquality().hash(descuento2),
      const DeepCollectionEquality().hash(descuento3),
      const DeepCollectionEquality().hash(descuentoProntoPago),
      const DeepCollectionEquality().hash(stockDisponibleSN),
      const DeepCollectionEquality().hash(fechaDisponible),
      const DeepCollectionEquality().hash(iva));

  @JsonKey(ignore: true)
  @override
  _$$_PedidoVentaLineaLocalDTOCopyWith<_$_PedidoVentaLineaLocalDTO>
      get copyWith => __$$_PedidoVentaLineaLocalDTOCopyWithImpl<
          _$_PedidoVentaLineaLocalDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PedidoVentaLineaLocalDTOToJson(
      this,
    );
  }
}

abstract class _PedidoVentaLineaLocalDTO extends PedidoVentaLineaLocalDTO {
  const factory _PedidoVentaLineaLocalDTO(
      {@JsonKey(name: 'PEDIDO_APP_ID')
          required final String pedidoVentaAppId,
      @JsonKey(name: 'LIN_APP_ID')
          required final String pedidoVentaLineaAppId,
      @JsonKey(name: 'PRODUCTO_ID')
          required final String articuloId,
      @JsonKey(name: 'DENOMINACION')
          final String? articuloDescription,
      @JsonKey(name: 'CANTIDAD')
          required final double cantidad,
      @JsonKey(name: 'PRECIO_DIVISA')
          required final double precioDivisa,
      @JsonKey(name: 'TPRECIO')
          required final double tipoPrecio,
      @JsonKey(name: 'DTO1')
          required final double descuento1,
      @JsonKey(name: 'DTO2')
          required final double descuento2,
      @JsonKey(name: 'DTO3')
          required final double descuento3,
      @JsonKey(name: 'DTO_PP')
          required final double descuentoProntoPago,
      @JsonKey(name: 'STOCK_DISPONIBLE_SN')
          required final String stockDisponibleSN,
      @JsonKey(name: 'F_DISPONIBLE')
          final DateTime? fechaDisponible,
      @JsonKey(name: 'IVA')
          required final double iva}) = _$_PedidoVentaLineaLocalDTO;
  const _PedidoVentaLineaLocalDTO._() : super._();

  factory _PedidoVentaLineaLocalDTO.fromJson(Map<String, dynamic> json) =
      _$_PedidoVentaLineaLocalDTO.fromJson;

  @override
  @JsonKey(name: 'PEDIDO_APP_ID')
  String get pedidoVentaAppId;
  @override
  @JsonKey(name: 'LIN_APP_ID')
  String get pedidoVentaLineaAppId;
  @override
  @JsonKey(name: 'PRODUCTO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'DENOMINACION')
  String? get articuloDescription;
  @override
  @JsonKey(name: 'CANTIDAD')
  double get cantidad;
  @override
  @JsonKey(name: 'PRECIO_DIVISA')
  double get precioDivisa;
  @override
  @JsonKey(name: 'TPRECIO')
  double get tipoPrecio;
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
  @JsonKey(ignore: true)
  _$$_PedidoVentaLineaLocalDTOCopyWith<_$_PedidoVentaLineaLocalDTO>
      get copyWith => throw _privateConstructorUsedError;
}
