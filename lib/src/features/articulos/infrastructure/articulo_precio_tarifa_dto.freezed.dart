// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_precio_tarifa_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticuloPrecioTarifaDTO _$ArticuloPrecioTarifaDTOFromJson(
    Map<String, dynamic> json) {
  return _ArticuloPrecioTarifaDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticuloPrecioTarifaDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TARIFA_ID')
  String get tarifaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TARIFA_DESCRIPCION')
  String? get tarifaDescripcion => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD_DESDE')
  int get cantidadDesde => throw _privateConstructorUsedError;
  @JsonKey(name: 'PRECIO')
  double get precio => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIVISA_ID')
  String get divisaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_PRECIO')
  int get tipoPrecio => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticuloPrecioTarifaDTOCopyWith<ArticuloPrecioTarifaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloPrecioTarifaDTOCopyWith<$Res> {
  factory $ArticuloPrecioTarifaDTOCopyWith(ArticuloPrecioTarifaDTO value,
          $Res Function(ArticuloPrecioTarifaDTO) then) =
      _$ArticuloPrecioTarifaDTOCopyWithImpl<$Res, ArticuloPrecioTarifaDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'TARIFA_ID') String tarifaId,
      @JsonKey(name: 'TARIFA_DESCRIPCION') String? tarifaDescripcion,
      @JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,
      @JsonKey(name: 'PRECIO') double precio,
      @JsonKey(name: 'DIVISA_ID') String divisaId,
      @JsonKey(name: 'TIPO_PRECIO') int tipoPrecio,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ArticuloPrecioTarifaDTOCopyWithImpl<$Res,
        $Val extends ArticuloPrecioTarifaDTO>
    implements $ArticuloPrecioTarifaDTOCopyWith<$Res> {
  _$ArticuloPrecioTarifaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? tarifaId = null,
    Object? tarifaDescripcion = freezed,
    Object? cantidadDesde = null,
    Object? precio = null,
    Object? divisaId = null,
    Object? tipoPrecio = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      tarifaId: null == tarifaId
          ? _value.tarifaId
          : tarifaId // ignore: cast_nullable_to_non_nullable
              as String,
      tarifaDescripcion: freezed == tarifaDescripcion
          ? _value.tarifaDescripcion
          : tarifaDescripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      cantidadDesde: null == cantidadDesde
          ? _value.cantidadDesde
          : cantidadDesde // ignore: cast_nullable_to_non_nullable
              as int,
      precio: null == precio
          ? _value.precio
          : precio // ignore: cast_nullable_to_non_nullable
              as double,
      divisaId: null == divisaId
          ? _value.divisaId
          : divisaId // ignore: cast_nullable_to_non_nullable
              as String,
      tipoPrecio: null == tipoPrecio
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ArticuloPrecioTarifaDTOCopyWith<$Res>
    implements $ArticuloPrecioTarifaDTOCopyWith<$Res> {
  factory _$$_ArticuloPrecioTarifaDTOCopyWith(_$_ArticuloPrecioTarifaDTO value,
          $Res Function(_$_ArticuloPrecioTarifaDTO) then) =
      __$$_ArticuloPrecioTarifaDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'TARIFA_ID') String tarifaId,
      @JsonKey(name: 'TARIFA_DESCRIPCION') String? tarifaDescripcion,
      @JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,
      @JsonKey(name: 'PRECIO') double precio,
      @JsonKey(name: 'DIVISA_ID') String divisaId,
      @JsonKey(name: 'TIPO_PRECIO') int tipoPrecio,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ArticuloPrecioTarifaDTOCopyWithImpl<$Res>
    extends _$ArticuloPrecioTarifaDTOCopyWithImpl<$Res,
        _$_ArticuloPrecioTarifaDTO>
    implements _$$_ArticuloPrecioTarifaDTOCopyWith<$Res> {
  __$$_ArticuloPrecioTarifaDTOCopyWithImpl(_$_ArticuloPrecioTarifaDTO _value,
      $Res Function(_$_ArticuloPrecioTarifaDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? tarifaId = null,
    Object? tarifaDescripcion = freezed,
    Object? cantidadDesde = null,
    Object? precio = null,
    Object? divisaId = null,
    Object? tipoPrecio = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$_ArticuloPrecioTarifaDTO(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      tarifaId: null == tarifaId
          ? _value.tarifaId
          : tarifaId // ignore: cast_nullable_to_non_nullable
              as String,
      tarifaDescripcion: freezed == tarifaDescripcion
          ? _value.tarifaDescripcion
          : tarifaDescripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      cantidadDesde: null == cantidadDesde
          ? _value.cantidadDesde
          : cantidadDesde // ignore: cast_nullable_to_non_nullable
              as int,
      precio: null == precio
          ? _value.precio
          : precio // ignore: cast_nullable_to_non_nullable
              as double,
      divisaId: null == divisaId
          ? _value.divisaId
          : divisaId // ignore: cast_nullable_to_non_nullable
              as String,
      tipoPrecio: null == tipoPrecio
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
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
class _$_ArticuloPrecioTarifaDTO extends _ArticuloPrecioTarifaDTO {
  const _$_ArticuloPrecioTarifaDTO(
      {@JsonKey(name: 'ARTICULO_ID') required this.articuloId,
      @JsonKey(name: 'TARIFA_ID') required this.tarifaId,
      @JsonKey(name: 'TARIFA_DESCRIPCION') this.tarifaDescripcion,
      @JsonKey(name: 'CANTIDAD_DESDE') required this.cantidadDesde,
      @JsonKey(name: 'PRECIO') required this.precio,
      @JsonKey(name: 'DIVISA_ID') required this.divisaId,
      @JsonKey(name: 'TIPO_PRECIO') required this.tipoPrecio,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_ArticuloPrecioTarifaDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArticuloPrecioTarifaDTOFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'TARIFA_ID')
  final String tarifaId;
  @override
  @JsonKey(name: 'TARIFA_DESCRIPCION')
  final String? tarifaDescripcion;
  @override
  @JsonKey(name: 'CANTIDAD_DESDE')
  final int cantidadDesde;
  @override
  @JsonKey(name: 'PRECIO')
  final double precio;
  @override
  @JsonKey(name: 'DIVISA_ID')
  final String divisaId;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  final int tipoPrecio;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ArticuloPrecioTarifaDTO(articuloId: $articuloId, tarifaId: $tarifaId, tarifaDescripcion: $tarifaDescripcion, cantidadDesde: $cantidadDesde, precio: $precio, divisaId: $divisaId, tipoPrecio: $tipoPrecio, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticuloPrecioTarifaDTO &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.tarifaId, tarifaId) ||
                other.tarifaId == tarifaId) &&
            (identical(other.tarifaDescripcion, tarifaDescripcion) ||
                other.tarifaDescripcion == tarifaDescripcion) &&
            (identical(other.cantidadDesde, cantidadDesde) ||
                other.cantidadDesde == cantidadDesde) &&
            (identical(other.precio, precio) || other.precio == precio) &&
            (identical(other.divisaId, divisaId) ||
                other.divisaId == divisaId) &&
            (identical(other.tipoPrecio, tipoPrecio) ||
                other.tipoPrecio == tipoPrecio) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      articuloId,
      tarifaId,
      tarifaDescripcion,
      cantidadDesde,
      precio,
      divisaId,
      tipoPrecio,
      lastUpdated,
      deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticuloPrecioTarifaDTOCopyWith<_$_ArticuloPrecioTarifaDTO>
      get copyWith =>
          __$$_ArticuloPrecioTarifaDTOCopyWithImpl<_$_ArticuloPrecioTarifaDTO>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticuloPrecioTarifaDTOToJson(
      this,
    );
  }
}

abstract class _ArticuloPrecioTarifaDTO extends ArticuloPrecioTarifaDTO {
  const factory _ArticuloPrecioTarifaDTO(
          {@JsonKey(name: 'ARTICULO_ID') required final String articuloId,
          @JsonKey(name: 'TARIFA_ID') required final String tarifaId,
          @JsonKey(name: 'TARIFA_DESCRIPCION') final String? tarifaDescripcion,
          @JsonKey(name: 'CANTIDAD_DESDE') required final int cantidadDesde,
          @JsonKey(name: 'PRECIO') required final double precio,
          @JsonKey(name: 'DIVISA_ID') required final String divisaId,
          @JsonKey(name: 'TIPO_PRECIO') required final int tipoPrecio,
          @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
          @JsonKey(name: 'DELETED') final String deleted}) =
      _$_ArticuloPrecioTarifaDTO;
  const _ArticuloPrecioTarifaDTO._() : super._();

  factory _ArticuloPrecioTarifaDTO.fromJson(Map<String, dynamic> json) =
      _$_ArticuloPrecioTarifaDTO.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'TARIFA_ID')
  String get tarifaId;
  @override
  @JsonKey(name: 'TARIFA_DESCRIPCION')
  String? get tarifaDescripcion;
  @override
  @JsonKey(name: 'CANTIDAD_DESDE')
  int get cantidadDesde;
  @override
  @JsonKey(name: 'PRECIO')
  double get precio;
  @override
  @JsonKey(name: 'DIVISA_ID')
  String get divisaId;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  int get tipoPrecio;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ArticuloPrecioTarifaDTOCopyWith<_$_ArticuloPrecioTarifaDTO>
      get copyWith => throw _privateConstructorUsedError;
}
