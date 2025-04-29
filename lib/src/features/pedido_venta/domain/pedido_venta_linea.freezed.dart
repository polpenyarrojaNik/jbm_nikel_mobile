// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_venta_linea.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PedidoVentaLinea {
  String? get empresaId => throw _privateConstructorUsedError;
  String? get pedidoId => throw _privateConstructorUsedError;
  String? get pedidoVentaLineaId => throw _privateConstructorUsedError;
  String? get pedidoVentaAppId =>
      throw _privateConstructorUsedError; // String? pedidoVentaLineaAppId,
  String get articuloId => throw _privateConstructorUsedError;
  String get articuloDescription => throw _privateConstructorUsedError;
  int get cantidad => throw _privateConstructorUsedError;
  Money get precioDivisa => throw _privateConstructorUsedError;
  String get divisaId => throw _privateConstructorUsedError;
  int get tipoPrecio => throw _privateConstructorUsedError;
  double get descuento1 => throw _privateConstructorUsedError;
  double get descuento2 => throw _privateConstructorUsedError;
  double get descuento3 => throw _privateConstructorUsedError;
  double? get descuentoProntoPago => throw _privateConstructorUsedError;
  String? get pedidoLineaIdComponente => throw _privateConstructorUsedError;
  Money? get importeLinea => throw _privateConstructorUsedError;
  bool? get stockDisponibleSN => throw _privateConstructorUsedError;
  int? get stockDisponible => throw _privateConstructorUsedError;
  DateTime? get fechaDisponible => throw _privateConstructorUsedError;
  double? get iva => throw _privateConstructorUsedError;
  int get cantidadPendiente => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// Create a copy of PedidoVentaLinea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PedidoVentaLineaCopyWith<PedidoVentaLinea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PedidoVentaLineaCopyWith<$Res> {
  factory $PedidoVentaLineaCopyWith(
    PedidoVentaLinea value,
    $Res Function(PedidoVentaLinea) then,
  ) = _$PedidoVentaLineaCopyWithImpl<$Res, PedidoVentaLinea>;
  @useResult
  $Res call({
    String? empresaId,
    String? pedidoId,
    String? pedidoVentaLineaId,
    String? pedidoVentaAppId,
    String articuloId,
    String articuloDescription,
    int cantidad,
    Money precioDivisa,
    String divisaId,
    int tipoPrecio,
    double descuento1,
    double descuento2,
    double descuento3,
    double? descuentoProntoPago,
    String? pedidoLineaIdComponente,
    Money? importeLinea,
    bool? stockDisponibleSN,
    int? stockDisponible,
    DateTime? fechaDisponible,
    double? iva,
    int cantidadPendiente,
    DateTime lastUpdated,
    bool deleted,
  });
}

/// @nodoc
class _$PedidoVentaLineaCopyWithImpl<$Res, $Val extends PedidoVentaLinea>
    implements $PedidoVentaLineaCopyWith<$Res> {
  _$PedidoVentaLineaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PedidoVentaLinea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = freezed,
    Object? pedidoId = freezed,
    Object? pedidoVentaLineaId = freezed,
    Object? pedidoVentaAppId = freezed,
    Object? articuloId = null,
    Object? articuloDescription = null,
    Object? cantidad = null,
    Object? precioDivisa = null,
    Object? divisaId = null,
    Object? tipoPrecio = null,
    Object? descuento1 = null,
    Object? descuento2 = null,
    Object? descuento3 = null,
    Object? descuentoProntoPago = freezed,
    Object? pedidoLineaIdComponente = freezed,
    Object? importeLinea = freezed,
    Object? stockDisponibleSN = freezed,
    Object? stockDisponible = freezed,
    Object? fechaDisponible = freezed,
    Object? iva = freezed,
    Object? cantidadPendiente = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(
      _value.copyWith(
            empresaId:
                freezed == empresaId
                    ? _value.empresaId
                    : empresaId // ignore: cast_nullable_to_non_nullable
                        as String?,
            pedidoId:
                freezed == pedidoId
                    ? _value.pedidoId
                    : pedidoId // ignore: cast_nullable_to_non_nullable
                        as String?,
            pedidoVentaLineaId:
                freezed == pedidoVentaLineaId
                    ? _value.pedidoVentaLineaId
                    : pedidoVentaLineaId // ignore: cast_nullable_to_non_nullable
                        as String?,
            pedidoVentaAppId:
                freezed == pedidoVentaAppId
                    ? _value.pedidoVentaAppId
                    : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
                        as String?,
            articuloId:
                null == articuloId
                    ? _value.articuloId
                    : articuloId // ignore: cast_nullable_to_non_nullable
                        as String,
            articuloDescription:
                null == articuloDescription
                    ? _value.articuloDescription
                    : articuloDescription // ignore: cast_nullable_to_non_nullable
                        as String,
            cantidad:
                null == cantidad
                    ? _value.cantidad
                    : cantidad // ignore: cast_nullable_to_non_nullable
                        as int,
            precioDivisa:
                null == precioDivisa
                    ? _value.precioDivisa
                    : precioDivisa // ignore: cast_nullable_to_non_nullable
                        as Money,
            divisaId:
                null == divisaId
                    ? _value.divisaId
                    : divisaId // ignore: cast_nullable_to_non_nullable
                        as String,
            tipoPrecio:
                null == tipoPrecio
                    ? _value.tipoPrecio
                    : tipoPrecio // ignore: cast_nullable_to_non_nullable
                        as int,
            descuento1:
                null == descuento1
                    ? _value.descuento1
                    : descuento1 // ignore: cast_nullable_to_non_nullable
                        as double,
            descuento2:
                null == descuento2
                    ? _value.descuento2
                    : descuento2 // ignore: cast_nullable_to_non_nullable
                        as double,
            descuento3:
                null == descuento3
                    ? _value.descuento3
                    : descuento3 // ignore: cast_nullable_to_non_nullable
                        as double,
            descuentoProntoPago:
                freezed == descuentoProntoPago
                    ? _value.descuentoProntoPago
                    : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
                        as double?,
            pedidoLineaIdComponente:
                freezed == pedidoLineaIdComponente
                    ? _value.pedidoLineaIdComponente
                    : pedidoLineaIdComponente // ignore: cast_nullable_to_non_nullable
                        as String?,
            importeLinea:
                freezed == importeLinea
                    ? _value.importeLinea
                    : importeLinea // ignore: cast_nullable_to_non_nullable
                        as Money?,
            stockDisponibleSN:
                freezed == stockDisponibleSN
                    ? _value.stockDisponibleSN
                    : stockDisponibleSN // ignore: cast_nullable_to_non_nullable
                        as bool?,
            stockDisponible:
                freezed == stockDisponible
                    ? _value.stockDisponible
                    : stockDisponible // ignore: cast_nullable_to_non_nullable
                        as int?,
            fechaDisponible:
                freezed == fechaDisponible
                    ? _value.fechaDisponible
                    : fechaDisponible // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            iva:
                freezed == iva
                    ? _value.iva
                    : iva // ignore: cast_nullable_to_non_nullable
                        as double?,
            cantidadPendiente:
                null == cantidadPendiente
                    ? _value.cantidadPendiente
                    : cantidadPendiente // ignore: cast_nullable_to_non_nullable
                        as int,
            lastUpdated:
                null == lastUpdated
                    ? _value.lastUpdated
                    : lastUpdated // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            deleted:
                null == deleted
                    ? _value.deleted
                    : deleted // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PedidoVentaLineaImplCopyWith<$Res>
    implements $PedidoVentaLineaCopyWith<$Res> {
  factory _$$PedidoVentaLineaImplCopyWith(
    _$PedidoVentaLineaImpl value,
    $Res Function(_$PedidoVentaLineaImpl) then,
  ) = __$$PedidoVentaLineaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? empresaId,
    String? pedidoId,
    String? pedidoVentaLineaId,
    String? pedidoVentaAppId,
    String articuloId,
    String articuloDescription,
    int cantidad,
    Money precioDivisa,
    String divisaId,
    int tipoPrecio,
    double descuento1,
    double descuento2,
    double descuento3,
    double? descuentoProntoPago,
    String? pedidoLineaIdComponente,
    Money? importeLinea,
    bool? stockDisponibleSN,
    int? stockDisponible,
    DateTime? fechaDisponible,
    double? iva,
    int cantidadPendiente,
    DateTime lastUpdated,
    bool deleted,
  });
}

/// @nodoc
class __$$PedidoVentaLineaImplCopyWithImpl<$Res>
    extends _$PedidoVentaLineaCopyWithImpl<$Res, _$PedidoVentaLineaImpl>
    implements _$$PedidoVentaLineaImplCopyWith<$Res> {
  __$$PedidoVentaLineaImplCopyWithImpl(
    _$PedidoVentaLineaImpl _value,
    $Res Function(_$PedidoVentaLineaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PedidoVentaLinea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = freezed,
    Object? pedidoId = freezed,
    Object? pedidoVentaLineaId = freezed,
    Object? pedidoVentaAppId = freezed,
    Object? articuloId = null,
    Object? articuloDescription = null,
    Object? cantidad = null,
    Object? precioDivisa = null,
    Object? divisaId = null,
    Object? tipoPrecio = null,
    Object? descuento1 = null,
    Object? descuento2 = null,
    Object? descuento3 = null,
    Object? descuentoProntoPago = freezed,
    Object? pedidoLineaIdComponente = freezed,
    Object? importeLinea = freezed,
    Object? stockDisponibleSN = freezed,
    Object? stockDisponible = freezed,
    Object? fechaDisponible = freezed,
    Object? iva = freezed,
    Object? cantidadPendiente = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(
      _$PedidoVentaLineaImpl(
        empresaId:
            freezed == empresaId
                ? _value.empresaId
                : empresaId // ignore: cast_nullable_to_non_nullable
                    as String?,
        pedidoId:
            freezed == pedidoId
                ? _value.pedidoId
                : pedidoId // ignore: cast_nullable_to_non_nullable
                    as String?,
        pedidoVentaLineaId:
            freezed == pedidoVentaLineaId
                ? _value.pedidoVentaLineaId
                : pedidoVentaLineaId // ignore: cast_nullable_to_non_nullable
                    as String?,
        pedidoVentaAppId:
            freezed == pedidoVentaAppId
                ? _value.pedidoVentaAppId
                : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
                    as String?,
        articuloId:
            null == articuloId
                ? _value.articuloId
                : articuloId // ignore: cast_nullable_to_non_nullable
                    as String,
        articuloDescription:
            null == articuloDescription
                ? _value.articuloDescription
                : articuloDescription // ignore: cast_nullable_to_non_nullable
                    as String,
        cantidad:
            null == cantidad
                ? _value.cantidad
                : cantidad // ignore: cast_nullable_to_non_nullable
                    as int,
        precioDivisa:
            null == precioDivisa
                ? _value.precioDivisa
                : precioDivisa // ignore: cast_nullable_to_non_nullable
                    as Money,
        divisaId:
            null == divisaId
                ? _value.divisaId
                : divisaId // ignore: cast_nullable_to_non_nullable
                    as String,
        tipoPrecio:
            null == tipoPrecio
                ? _value.tipoPrecio
                : tipoPrecio // ignore: cast_nullable_to_non_nullable
                    as int,
        descuento1:
            null == descuento1
                ? _value.descuento1
                : descuento1 // ignore: cast_nullable_to_non_nullable
                    as double,
        descuento2:
            null == descuento2
                ? _value.descuento2
                : descuento2 // ignore: cast_nullable_to_non_nullable
                    as double,
        descuento3:
            null == descuento3
                ? _value.descuento3
                : descuento3 // ignore: cast_nullable_to_non_nullable
                    as double,
        descuentoProntoPago:
            freezed == descuentoProntoPago
                ? _value.descuentoProntoPago
                : descuentoProntoPago // ignore: cast_nullable_to_non_nullable
                    as double?,
        pedidoLineaIdComponente:
            freezed == pedidoLineaIdComponente
                ? _value.pedidoLineaIdComponente
                : pedidoLineaIdComponente // ignore: cast_nullable_to_non_nullable
                    as String?,
        importeLinea:
            freezed == importeLinea
                ? _value.importeLinea
                : importeLinea // ignore: cast_nullable_to_non_nullable
                    as Money?,
        stockDisponibleSN:
            freezed == stockDisponibleSN
                ? _value.stockDisponibleSN
                : stockDisponibleSN // ignore: cast_nullable_to_non_nullable
                    as bool?,
        stockDisponible:
            freezed == stockDisponible
                ? _value.stockDisponible
                : stockDisponible // ignore: cast_nullable_to_non_nullable
                    as int?,
        fechaDisponible:
            freezed == fechaDisponible
                ? _value.fechaDisponible
                : fechaDisponible // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        iva:
            freezed == iva
                ? _value.iva
                : iva // ignore: cast_nullable_to_non_nullable
                    as double?,
        cantidadPendiente:
            null == cantidadPendiente
                ? _value.cantidadPendiente
                : cantidadPendiente // ignore: cast_nullable_to_non_nullable
                    as int,
        lastUpdated:
            null == lastUpdated
                ? _value.lastUpdated
                : lastUpdated // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        deleted:
            null == deleted
                ? _value.deleted
                : deleted // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$PedidoVentaLineaImpl extends _PedidoVentaLinea {
  const _$PedidoVentaLineaImpl({
    this.empresaId,
    this.pedidoId,
    this.pedidoVentaLineaId,
    this.pedidoVentaAppId,
    required this.articuloId,
    required this.articuloDescription,
    required this.cantidad,
    required this.precioDivisa,
    required this.divisaId,
    required this.tipoPrecio,
    required this.descuento1,
    required this.descuento2,
    required this.descuento3,
    this.descuentoProntoPago,
    this.pedidoLineaIdComponente,
    this.importeLinea,
    this.stockDisponibleSN,
    this.stockDisponible,
    this.fechaDisponible,
    this.iva,
    required this.cantidadPendiente,
    required this.lastUpdated,
    required this.deleted,
  }) : super._();

  @override
  final String? empresaId;
  @override
  final String? pedidoId;
  @override
  final String? pedidoVentaLineaId;
  @override
  final String? pedidoVentaAppId;
  // String? pedidoVentaLineaAppId,
  @override
  final String articuloId;
  @override
  final String articuloDescription;
  @override
  final int cantidad;
  @override
  final Money precioDivisa;
  @override
  final String divisaId;
  @override
  final int tipoPrecio;
  @override
  final double descuento1;
  @override
  final double descuento2;
  @override
  final double descuento3;
  @override
  final double? descuentoProntoPago;
  @override
  final String? pedidoLineaIdComponente;
  @override
  final Money? importeLinea;
  @override
  final bool? stockDisponibleSN;
  @override
  final int? stockDisponible;
  @override
  final DateTime? fechaDisponible;
  @override
  final double? iva;
  @override
  final int cantidadPendiente;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'PedidoVentaLinea(empresaId: $empresaId, pedidoId: $pedidoId, pedidoVentaLineaId: $pedidoVentaLineaId, pedidoVentaAppId: $pedidoVentaAppId, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidad: $cantidad, precioDivisa: $precioDivisa, divisaId: $divisaId, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, descuentoProntoPago: $descuentoProntoPago, pedidoLineaIdComponente: $pedidoLineaIdComponente, importeLinea: $importeLinea, stockDisponibleSN: $stockDisponibleSN, stockDisponible: $stockDisponible, fechaDisponible: $fechaDisponible, iva: $iva, cantidadPendiente: $cantidadPendiente, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PedidoVentaLineaImpl &&
            (identical(other.empresaId, empresaId) ||
                other.empresaId == empresaId) &&
            (identical(other.pedidoId, pedidoId) ||
                other.pedidoId == pedidoId) &&
            (identical(other.pedidoVentaLineaId, pedidoVentaLineaId) ||
                other.pedidoVentaLineaId == pedidoVentaLineaId) &&
            (identical(other.pedidoVentaAppId, pedidoVentaAppId) ||
                other.pedidoVentaAppId == pedidoVentaAppId) &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.articuloDescription, articuloDescription) ||
                other.articuloDescription == articuloDescription) &&
            (identical(other.cantidad, cantidad) ||
                other.cantidad == cantidad) &&
            (identical(other.precioDivisa, precioDivisa) ||
                other.precioDivisa == precioDivisa) &&
            (identical(other.divisaId, divisaId) ||
                other.divisaId == divisaId) &&
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
            (identical(
                  other.pedidoLineaIdComponente,
                  pedidoLineaIdComponente,
                ) ||
                other.pedidoLineaIdComponente == pedidoLineaIdComponente) &&
            (identical(other.importeLinea, importeLinea) ||
                other.importeLinea == importeLinea) &&
            (identical(other.stockDisponibleSN, stockDisponibleSN) ||
                other.stockDisponibleSN == stockDisponibleSN) &&
            (identical(other.stockDisponible, stockDisponible) ||
                other.stockDisponible == stockDisponible) &&
            (identical(other.fechaDisponible, fechaDisponible) ||
                other.fechaDisponible == fechaDisponible) &&
            (identical(other.iva, iva) || other.iva == iva) &&
            (identical(other.cantidadPendiente, cantidadPendiente) ||
                other.cantidadPendiente == cantidadPendiente) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    empresaId,
    pedidoId,
    pedidoVentaLineaId,
    pedidoVentaAppId,
    articuloId,
    articuloDescription,
    cantidad,
    precioDivisa,
    divisaId,
    tipoPrecio,
    descuento1,
    descuento2,
    descuento3,
    descuentoProntoPago,
    pedidoLineaIdComponente,
    importeLinea,
    stockDisponibleSN,
    stockDisponible,
    fechaDisponible,
    iva,
    cantidadPendiente,
    lastUpdated,
    deleted,
  ]);

  /// Create a copy of PedidoVentaLinea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PedidoVentaLineaImplCopyWith<_$PedidoVentaLineaImpl> get copyWith =>
      __$$PedidoVentaLineaImplCopyWithImpl<_$PedidoVentaLineaImpl>(
        this,
        _$identity,
      );
}

abstract class _PedidoVentaLinea extends PedidoVentaLinea {
  const factory _PedidoVentaLinea({
    final String? empresaId,
    final String? pedidoId,
    final String? pedidoVentaLineaId,
    final String? pedidoVentaAppId,
    required final String articuloId,
    required final String articuloDescription,
    required final int cantidad,
    required final Money precioDivisa,
    required final String divisaId,
    required final int tipoPrecio,
    required final double descuento1,
    required final double descuento2,
    required final double descuento3,
    final double? descuentoProntoPago,
    final String? pedidoLineaIdComponente,
    final Money? importeLinea,
    final bool? stockDisponibleSN,
    final int? stockDisponible,
    final DateTime? fechaDisponible,
    final double? iva,
    required final int cantidadPendiente,
    required final DateTime lastUpdated,
    required final bool deleted,
  }) = _$PedidoVentaLineaImpl;
  const _PedidoVentaLinea._() : super._();

  @override
  String? get empresaId;
  @override
  String? get pedidoId;
  @override
  String? get pedidoVentaLineaId;
  @override
  String? get pedidoVentaAppId; // String? pedidoVentaLineaAppId,
  @override
  String get articuloId;
  @override
  String get articuloDescription;
  @override
  int get cantidad;
  @override
  Money get precioDivisa;
  @override
  String get divisaId;
  @override
  int get tipoPrecio;
  @override
  double get descuento1;
  @override
  double get descuento2;
  @override
  double get descuento3;
  @override
  double? get descuentoProntoPago;
  @override
  String? get pedidoLineaIdComponente;
  @override
  Money? get importeLinea;
  @override
  bool? get stockDisponibleSN;
  @override
  int? get stockDisponible;
  @override
  DateTime? get fechaDisponible;
  @override
  double? get iva;
  @override
  int get cantidadPendiente;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;

  /// Create a copy of PedidoVentaLinea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PedidoVentaLineaImplCopyWith<_$PedidoVentaLineaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
