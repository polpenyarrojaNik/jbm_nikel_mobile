// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estadisticas_ultimos_precios_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EstadisticasUltimosPreciosDTO _$EstadisticasUltimosPreciosDTOFromJson(
    Map<String, dynamic> json) {
  return _EstadisticasUltimosPreciosDTO.fromJson(json);
}

/// @nodoc
mixin _$EstadisticasUltimosPreciosDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'LINEA')
  int get linea => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD')
  int get cantidad => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA')
  DateTime get fecha => throw _privateConstructorUsedError;
  @JsonKey(name: 'PRECIO_DIVISA')
  double get precioDivisa => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIVISA_ID')
  String get divisaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_PRECIO')
  int get tipoPrecio => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO1')
  double get descuento1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO2')
  double get descuento2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO3')
  double get descuento3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  /// Serializes this EstadisticasUltimosPreciosDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EstadisticasUltimosPreciosDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EstadisticasUltimosPreciosDTOCopyWith<EstadisticasUltimosPreciosDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstadisticasUltimosPreciosDTOCopyWith<$Res> {
  factory $EstadisticasUltimosPreciosDTOCopyWith(
          EstadisticasUltimosPreciosDTO value,
          $Res Function(EstadisticasUltimosPreciosDTO) then) =
      _$EstadisticasUltimosPreciosDTOCopyWithImpl<$Res,
          EstadisticasUltimosPreciosDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'LINEA') int linea,
      @JsonKey(name: 'CANTIDAD') int cantidad,
      @JsonKey(name: 'FECHA') DateTime fecha,
      @JsonKey(name: 'PRECIO_DIVISA') double precioDivisa,
      @JsonKey(name: 'DIVISA_ID') String divisaId,
      @JsonKey(name: 'TIPO_PRECIO') int tipoPrecio,
      @JsonKey(name: 'DESCUENTO1') double descuento1,
      @JsonKey(name: 'DESCUENTO2') double descuento2,
      @JsonKey(name: 'DESCUENTO3') double descuento3,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$EstadisticasUltimosPreciosDTOCopyWithImpl<$Res,
        $Val extends EstadisticasUltimosPreciosDTO>
    implements $EstadisticasUltimosPreciosDTOCopyWith<$Res> {
  _$EstadisticasUltimosPreciosDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EstadisticasUltimosPreciosDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? articuloId = null,
    Object? linea = null,
    Object? cantidad = null,
    Object? fecha = null,
    Object? precioDivisa = null,
    Object? divisaId = null,
    Object? tipoPrecio = null,
    Object? descuento1 = null,
    Object? descuento2 = null,
    Object? descuento3 = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      linea: null == linea
          ? _value.linea
          : linea // ignore: cast_nullable_to_non_nullable
              as int,
      cantidad: null == cantidad
          ? _value.cantidad
          : cantidad // ignore: cast_nullable_to_non_nullable
              as int,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      precioDivisa: null == precioDivisa
          ? _value.precioDivisa
          : precioDivisa // ignore: cast_nullable_to_non_nullable
              as double,
      divisaId: null == divisaId
          ? _value.divisaId
          : divisaId // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$EstadisticasUltimosPreciosDTOImplCopyWith<$Res>
    implements $EstadisticasUltimosPreciosDTOCopyWith<$Res> {
  factory _$$EstadisticasUltimosPreciosDTOImplCopyWith(
          _$EstadisticasUltimosPreciosDTOImpl value,
          $Res Function(_$EstadisticasUltimosPreciosDTOImpl) then) =
      __$$EstadisticasUltimosPreciosDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'LINEA') int linea,
      @JsonKey(name: 'CANTIDAD') int cantidad,
      @JsonKey(name: 'FECHA') DateTime fecha,
      @JsonKey(name: 'PRECIO_DIVISA') double precioDivisa,
      @JsonKey(name: 'DIVISA_ID') String divisaId,
      @JsonKey(name: 'TIPO_PRECIO') int tipoPrecio,
      @JsonKey(name: 'DESCUENTO1') double descuento1,
      @JsonKey(name: 'DESCUENTO2') double descuento2,
      @JsonKey(name: 'DESCUENTO3') double descuento3,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$EstadisticasUltimosPreciosDTOImplCopyWithImpl<$Res>
    extends _$EstadisticasUltimosPreciosDTOCopyWithImpl<$Res,
        _$EstadisticasUltimosPreciosDTOImpl>
    implements _$$EstadisticasUltimosPreciosDTOImplCopyWith<$Res> {
  __$$EstadisticasUltimosPreciosDTOImplCopyWithImpl(
      _$EstadisticasUltimosPreciosDTOImpl _value,
      $Res Function(_$EstadisticasUltimosPreciosDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of EstadisticasUltimosPreciosDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? articuloId = null,
    Object? linea = null,
    Object? cantidad = null,
    Object? fecha = null,
    Object? precioDivisa = null,
    Object? divisaId = null,
    Object? tipoPrecio = null,
    Object? descuento1 = null,
    Object? descuento2 = null,
    Object? descuento3 = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$EstadisticasUltimosPreciosDTOImpl(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      linea: null == linea
          ? _value.linea
          : linea // ignore: cast_nullable_to_non_nullable
              as int,
      cantidad: null == cantidad
          ? _value.cantidad
          : cantidad // ignore: cast_nullable_to_non_nullable
              as int,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      precioDivisa: null == precioDivisa
          ? _value.precioDivisa
          : precioDivisa // ignore: cast_nullable_to_non_nullable
              as double,
      divisaId: null == divisaId
          ? _value.divisaId
          : divisaId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$EstadisticasUltimosPreciosDTOImpl
    extends _EstadisticasUltimosPreciosDTO {
  const _$EstadisticasUltimosPreciosDTOImpl(
      {@JsonKey(name: 'CLIENTE_ID') required this.clienteId,
      @JsonKey(name: 'ARTICULO_ID') required this.articuloId,
      @JsonKey(name: 'LINEA') required this.linea,
      @JsonKey(name: 'CANTIDAD') required this.cantidad,
      @JsonKey(name: 'FECHA') required this.fecha,
      @JsonKey(name: 'PRECIO_DIVISA') required this.precioDivisa,
      @JsonKey(name: 'DIVISA_ID') required this.divisaId,
      @JsonKey(name: 'TIPO_PRECIO') required this.tipoPrecio,
      @JsonKey(name: 'DESCUENTO1') required this.descuento1,
      @JsonKey(name: 'DESCUENTO2') required this.descuento2,
      @JsonKey(name: 'DESCUENTO3') required this.descuento3,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$EstadisticasUltimosPreciosDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EstadisticasUltimosPreciosDTOImplFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String clienteId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'LINEA')
  final int linea;
  @override
  @JsonKey(name: 'CANTIDAD')
  final int cantidad;
  @override
  @JsonKey(name: 'FECHA')
  final DateTime fecha;
  @override
  @JsonKey(name: 'PRECIO_DIVISA')
  final double precioDivisa;
  @override
  @JsonKey(name: 'DIVISA_ID')
  final String divisaId;
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
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'EstadisticasUltimosPreciosDTO(clienteId: $clienteId, articuloId: $articuloId, linea: $linea, cantidad: $cantidad, fecha: $fecha, precioDivisa: $precioDivisa, divisaId: $divisaId, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EstadisticasUltimosPreciosDTOImpl &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.linea, linea) || other.linea == linea) &&
            (identical(other.cantidad, cantidad) ||
                other.cantidad == cantidad) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
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
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      clienteId,
      articuloId,
      linea,
      cantidad,
      fecha,
      precioDivisa,
      divisaId,
      tipoPrecio,
      descuento1,
      descuento2,
      descuento3,
      lastUpdated,
      deleted);

  /// Create a copy of EstadisticasUltimosPreciosDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EstadisticasUltimosPreciosDTOImplCopyWith<
          _$EstadisticasUltimosPreciosDTOImpl>
      get copyWith => __$$EstadisticasUltimosPreciosDTOImplCopyWithImpl<
          _$EstadisticasUltimosPreciosDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EstadisticasUltimosPreciosDTOImplToJson(
      this,
    );
  }
}

abstract class _EstadisticasUltimosPreciosDTO
    extends EstadisticasUltimosPreciosDTO {
  const factory _EstadisticasUltimosPreciosDTO(
          {@JsonKey(name: 'CLIENTE_ID') required final String clienteId,
          @JsonKey(name: 'ARTICULO_ID') required final String articuloId,
          @JsonKey(name: 'LINEA') required final int linea,
          @JsonKey(name: 'CANTIDAD') required final int cantidad,
          @JsonKey(name: 'FECHA') required final DateTime fecha,
          @JsonKey(name: 'PRECIO_DIVISA') required final double precioDivisa,
          @JsonKey(name: 'DIVISA_ID') required final String divisaId,
          @JsonKey(name: 'TIPO_PRECIO') required final int tipoPrecio,
          @JsonKey(name: 'DESCUENTO1') required final double descuento1,
          @JsonKey(name: 'DESCUENTO2') required final double descuento2,
          @JsonKey(name: 'DESCUENTO3') required final double descuento3,
          @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
          @JsonKey(name: 'DELETED') final String deleted}) =
      _$EstadisticasUltimosPreciosDTOImpl;
  const _EstadisticasUltimosPreciosDTO._() : super._();

  factory _EstadisticasUltimosPreciosDTO.fromJson(Map<String, dynamic> json) =
      _$EstadisticasUltimosPreciosDTOImpl.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'LINEA')
  int get linea;
  @override
  @JsonKey(name: 'CANTIDAD')
  int get cantidad;
  @override
  @JsonKey(name: 'FECHA')
  DateTime get fecha;
  @override
  @JsonKey(name: 'PRECIO_DIVISA')
  double get precioDivisa;
  @override
  @JsonKey(name: 'DIVISA_ID')
  String get divisaId;
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
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;

  /// Create a copy of EstadisticasUltimosPreciosDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EstadisticasUltimosPreciosDTOImplCopyWith<
          _$EstadisticasUltimosPreciosDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
