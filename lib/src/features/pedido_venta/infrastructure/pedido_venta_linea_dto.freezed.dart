// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_venta_linea_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PedidoVentaLineaDTO _$PedidoVentaLineaDTOFromJson(Map<String, dynamic> json) {
  return _PedidoVentaLineaDTO.fromJson(json);
}

/// @nodoc
mixin _$PedidoVentaLineaDTO {
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PEDIDO_ID')
  String get pedidoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PEDIDO_LINEA_ID')
  String get pedidoVentaLineaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_DESCRIPCION')
  String get articuloDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD')
  int get cantidad => throw _privateConstructorUsedError;
  @JsonKey(name: 'PRECIO_DIVISA')
  double get precioDivisa => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_PRECIO')
  int get tipoPrecio => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO1')
  double get descuento1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO2')
  double get descuento2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO3')
  double get descuento3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')
  String? get pedidoLineaIdComponente => throw _privateConstructorUsedError;
  @JsonKey(name: 'TOTAL_LINEA')
  double? get importeLinea => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD_SERVIDA')
  int get cantidadServida => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PedidoVentaLineaDTOCopyWith<PedidoVentaLineaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PedidoVentaLineaDTOCopyWith<$Res> {
  factory $PedidoVentaLineaDTOCopyWith(
          PedidoVentaLineaDTO value, $Res Function(PedidoVentaLineaDTO) then) =
      _$PedidoVentaLineaDTOCopyWithImpl<$Res, PedidoVentaLineaDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'EMPRESA_ID') String empresaId,
      @JsonKey(name: 'PEDIDO_ID') String pedidoId,
      @JsonKey(name: 'PEDIDO_LINEA_ID') String pedidoVentaLineaId,
      @JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'ARTICULO_DESCRIPCION') String articuloDescription,
      @JsonKey(name: 'CANTIDAD') int cantidad,
      @JsonKey(name: 'PRECIO_DIVISA') double precioDivisa,
      @JsonKey(name: 'TIPO_PRECIO') int tipoPrecio,
      @JsonKey(name: 'DESCUENTO1') double descuento1,
      @JsonKey(name: 'DESCUENTO2') double descuento2,
      @JsonKey(name: 'DESCUENTO3') double descuento3,
      @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')
      String? pedidoLineaIdComponente,
      @JsonKey(name: 'TOTAL_LINEA') double? importeLinea,
      @JsonKey(name: 'CANTIDAD_SERVIDA') int cantidadServida,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$PedidoVentaLineaDTOCopyWithImpl<$Res, $Val extends PedidoVentaLineaDTO>
    implements $PedidoVentaLineaDTOCopyWith<$Res> {
  _$PedidoVentaLineaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? pedidoId = null,
    Object? pedidoVentaLineaId = null,
    Object? articuloId = null,
    Object? articuloDescription = null,
    Object? cantidad = null,
    Object? precioDivisa = null,
    Object? tipoPrecio = null,
    Object? descuento1 = null,
    Object? descuento2 = null,
    Object? descuento3 = null,
    Object? pedidoLineaIdComponente = freezed,
    Object? importeLinea = freezed,
    Object? cantidadServida = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      pedidoId: null == pedidoId
          ? _value.pedidoId
          : pedidoId // ignore: cast_nullable_to_non_nullable
              as String,
      pedidoVentaLineaId: null == pedidoVentaLineaId
          ? _value.pedidoVentaLineaId
          : pedidoVentaLineaId // ignore: cast_nullable_to_non_nullable
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
      pedidoLineaIdComponente: freezed == pedidoLineaIdComponente
          ? _value.pedidoLineaIdComponente
          : pedidoLineaIdComponente // ignore: cast_nullable_to_non_nullable
              as String?,
      importeLinea: freezed == importeLinea
          ? _value.importeLinea
          : importeLinea // ignore: cast_nullable_to_non_nullable
              as double?,
      cantidadServida: null == cantidadServida
          ? _value.cantidadServida
          : cantidadServida // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$PedidoVentaLineaDTOImplCopyWith<$Res>
    implements $PedidoVentaLineaDTOCopyWith<$Res> {
  factory _$$PedidoVentaLineaDTOImplCopyWith(_$PedidoVentaLineaDTOImpl value,
          $Res Function(_$PedidoVentaLineaDTOImpl) then) =
      __$$PedidoVentaLineaDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'EMPRESA_ID') String empresaId,
      @JsonKey(name: 'PEDIDO_ID') String pedidoId,
      @JsonKey(name: 'PEDIDO_LINEA_ID') String pedidoVentaLineaId,
      @JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'ARTICULO_DESCRIPCION') String articuloDescription,
      @JsonKey(name: 'CANTIDAD') int cantidad,
      @JsonKey(name: 'PRECIO_DIVISA') double precioDivisa,
      @JsonKey(name: 'TIPO_PRECIO') int tipoPrecio,
      @JsonKey(name: 'DESCUENTO1') double descuento1,
      @JsonKey(name: 'DESCUENTO2') double descuento2,
      @JsonKey(name: 'DESCUENTO3') double descuento3,
      @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')
      String? pedidoLineaIdComponente,
      @JsonKey(name: 'TOTAL_LINEA') double? importeLinea,
      @JsonKey(name: 'CANTIDAD_SERVIDA') int cantidadServida,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$PedidoVentaLineaDTOImplCopyWithImpl<$Res>
    extends _$PedidoVentaLineaDTOCopyWithImpl<$Res, _$PedidoVentaLineaDTOImpl>
    implements _$$PedidoVentaLineaDTOImplCopyWith<$Res> {
  __$$PedidoVentaLineaDTOImplCopyWithImpl(_$PedidoVentaLineaDTOImpl _value,
      $Res Function(_$PedidoVentaLineaDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? pedidoId = null,
    Object? pedidoVentaLineaId = null,
    Object? articuloId = null,
    Object? articuloDescription = null,
    Object? cantidad = null,
    Object? precioDivisa = null,
    Object? tipoPrecio = null,
    Object? descuento1 = null,
    Object? descuento2 = null,
    Object? descuento3 = null,
    Object? pedidoLineaIdComponente = freezed,
    Object? importeLinea = freezed,
    Object? cantidadServida = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$PedidoVentaLineaDTOImpl(
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      pedidoId: null == pedidoId
          ? _value.pedidoId
          : pedidoId // ignore: cast_nullable_to_non_nullable
              as String,
      pedidoVentaLineaId: null == pedidoVentaLineaId
          ? _value.pedidoVentaLineaId
          : pedidoVentaLineaId // ignore: cast_nullable_to_non_nullable
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
      pedidoLineaIdComponente: freezed == pedidoLineaIdComponente
          ? _value.pedidoLineaIdComponente
          : pedidoLineaIdComponente // ignore: cast_nullable_to_non_nullable
              as String?,
      importeLinea: freezed == importeLinea
          ? _value.importeLinea
          : importeLinea // ignore: cast_nullable_to_non_nullable
              as double?,
      cantidadServida: null == cantidadServida
          ? _value.cantidadServida
          : cantidadServida // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$PedidoVentaLineaDTOImpl extends _PedidoVentaLineaDTO {
  const _$PedidoVentaLineaDTOImpl(
      {@JsonKey(name: 'EMPRESA_ID') required this.empresaId,
      @JsonKey(name: 'PEDIDO_ID') required this.pedidoId,
      @JsonKey(name: 'PEDIDO_LINEA_ID') required this.pedidoVentaLineaId,
      @JsonKey(name: 'ARTICULO_ID') required this.articuloId,
      @JsonKey(name: 'ARTICULO_DESCRIPCION') required this.articuloDescription,
      @JsonKey(name: 'CANTIDAD') required this.cantidad,
      @JsonKey(name: 'PRECIO_DIVISA') required this.precioDivisa,
      @JsonKey(name: 'TIPO_PRECIO') required this.tipoPrecio,
      @JsonKey(name: 'DESCUENTO1') required this.descuento1,
      @JsonKey(name: 'DESCUENTO2') required this.descuento2,
      @JsonKey(name: 'DESCUENTO3') required this.descuento3,
      @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE') this.pedidoLineaIdComponente,
      @JsonKey(name: 'TOTAL_LINEA') this.importeLinea,
      @JsonKey(name: 'CANTIDAD_SERVIDA') required this.cantidadServida,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') required this.deleted})
      : super._();

  factory _$PedidoVentaLineaDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PedidoVentaLineaDTOImplFromJson(json);

  @override
  @JsonKey(name: 'EMPRESA_ID')
  final String empresaId;
  @override
  @JsonKey(name: 'PEDIDO_ID')
  final String pedidoId;
  @override
  @JsonKey(name: 'PEDIDO_LINEA_ID')
  final String pedidoVentaLineaId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'ARTICULO_DESCRIPCION')
  final String articuloDescription;
  @override
  @JsonKey(name: 'CANTIDAD')
  final int cantidad;
  @override
  @JsonKey(name: 'PRECIO_DIVISA')
  final double precioDivisa;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  final int tipoPrecio;
  @override
  @JsonKey(name: 'DESCUENTO1')
  final double descuento1;
  @override
  @JsonKey(name: 'DESCUENTO2')
  final double descuento2;
  @override
  @JsonKey(name: 'DESCUENTO3')
  final double descuento3;
  @override
  @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')
  final String? pedidoLineaIdComponente;
  @override
  @JsonKey(name: 'TOTAL_LINEA')
  final double? importeLinea;
  @override
  @JsonKey(name: 'CANTIDAD_SERVIDA')
  final int cantidadServida;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'PedidoVentaLineaDTO(empresaId: $empresaId, pedidoId: $pedidoId, pedidoVentaLineaId: $pedidoVentaLineaId, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidad: $cantidad, precioDivisa: $precioDivisa, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, pedidoLineaIdComponente: $pedidoLineaIdComponente, importeLinea: $importeLinea, cantidadServida: $cantidadServida, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PedidoVentaLineaDTOImpl &&
            (identical(other.empresaId, empresaId) ||
                other.empresaId == empresaId) &&
            (identical(other.pedidoId, pedidoId) ||
                other.pedidoId == pedidoId) &&
            (identical(other.pedidoVentaLineaId, pedidoVentaLineaId) ||
                other.pedidoVentaLineaId == pedidoVentaLineaId) &&
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
            (identical(
                    other.pedidoLineaIdComponente, pedidoLineaIdComponente) ||
                other.pedidoLineaIdComponente == pedidoLineaIdComponente) &&
            (identical(other.importeLinea, importeLinea) ||
                other.importeLinea == importeLinea) &&
            (identical(other.cantidadServida, cantidadServida) ||
                other.cantidadServida == cantidadServida) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      empresaId,
      pedidoId,
      pedidoVentaLineaId,
      articuloId,
      articuloDescription,
      cantidad,
      precioDivisa,
      tipoPrecio,
      descuento1,
      descuento2,
      descuento3,
      pedidoLineaIdComponente,
      importeLinea,
      cantidadServida,
      lastUpdated,
      deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PedidoVentaLineaDTOImplCopyWith<_$PedidoVentaLineaDTOImpl> get copyWith =>
      __$$PedidoVentaLineaDTOImplCopyWithImpl<_$PedidoVentaLineaDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PedidoVentaLineaDTOImplToJson(
      this,
    );
  }
}

abstract class _PedidoVentaLineaDTO extends PedidoVentaLineaDTO {
  const factory _PedidoVentaLineaDTO(
          {@JsonKey(name: 'EMPRESA_ID') required final String empresaId,
          @JsonKey(name: 'PEDIDO_ID') required final String pedidoId,
          @JsonKey(name: 'PEDIDO_LINEA_ID')
          required final String pedidoVentaLineaId,
          @JsonKey(name: 'ARTICULO_ID') required final String articuloId,
          @JsonKey(name: 'ARTICULO_DESCRIPCION')
          required final String articuloDescription,
          @JsonKey(name: 'CANTIDAD') required final int cantidad,
          @JsonKey(name: 'PRECIO_DIVISA') required final double precioDivisa,
          @JsonKey(name: 'TIPO_PRECIO') required final int tipoPrecio,
          @JsonKey(name: 'DESCUENTO1') required final double descuento1,
          @JsonKey(name: 'DESCUENTO2') required final double descuento2,
          @JsonKey(name: 'DESCUENTO3') required final double descuento3,
          @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')
          final String? pedidoLineaIdComponente,
          @JsonKey(name: 'TOTAL_LINEA') final double? importeLinea,
          @JsonKey(name: 'CANTIDAD_SERVIDA') required final int cantidadServida,
          @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
          @JsonKey(name: 'DELETED') required final String deleted}) =
      _$PedidoVentaLineaDTOImpl;
  const _PedidoVentaLineaDTO._() : super._();

  factory _PedidoVentaLineaDTO.fromJson(Map<String, dynamic> json) =
      _$PedidoVentaLineaDTOImpl.fromJson;

  @override
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId;
  @override
  @JsonKey(name: 'PEDIDO_ID')
  String get pedidoId;
  @override
  @JsonKey(name: 'PEDIDO_LINEA_ID')
  String get pedidoVentaLineaId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'ARTICULO_DESCRIPCION')
  String get articuloDescription;
  @override
  @JsonKey(name: 'CANTIDAD')
  int get cantidad;
  @override
  @JsonKey(name: 'PRECIO_DIVISA')
  double get precioDivisa;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  int get tipoPrecio;
  @override
  @JsonKey(name: 'DESCUENTO1')
  double get descuento1;
  @override
  @JsonKey(name: 'DESCUENTO2')
  double get descuento2;
  @override
  @JsonKey(name: 'DESCUENTO3')
  double get descuento3;
  @override
  @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')
  String? get pedidoLineaIdComponente;
  @override
  @JsonKey(name: 'TOTAL_LINEA')
  double? get importeLinea;
  @override
  @JsonKey(name: 'CANTIDAD_SERVIDA')
  int get cantidadServida;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$PedidoVentaLineaDTOImplCopyWith<_$PedidoVentaLineaDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
