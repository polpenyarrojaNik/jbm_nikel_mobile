// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_precio_neto_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientePrecioNetoDTO _$ClientePrecioNetoDTOFromJson(Map<String, dynamic> json) {
  return _ClientePrecioNetoDTO.fromJson(json);
}

/// @nodoc
mixin _$ClientePrecioNetoDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD_DESDE')
  int get cantidadDesde => throw _privateConstructorUsedError;
  @JsonKey(name: 'PRECIO')
  double get precio => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_PRECIO')
  int? get tipoPrecio => throw _privateConstructorUsedError;
  @JsonKey(name: 'DTO_ADICIONAL')
  double? get dtoAdicional => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientePrecioNetoDTOCopyWith<ClientePrecioNetoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientePrecioNetoDTOCopyWith<$Res> {
  factory $ClientePrecioNetoDTOCopyWith(ClientePrecioNetoDTO value,
          $Res Function(ClientePrecioNetoDTO) then) =
      _$ClientePrecioNetoDTOCopyWithImpl<$Res, ClientePrecioNetoDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,
      @JsonKey(name: 'PRECIO') double precio,
      @JsonKey(name: 'TIPO_PRECIO') int? tipoPrecio,
      @JsonKey(name: 'DTO_ADICIONAL') double? dtoAdicional,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ClientePrecioNetoDTOCopyWithImpl<$Res,
        $Val extends ClientePrecioNetoDTO>
    implements $ClientePrecioNetoDTOCopyWith<$Res> {
  _$ClientePrecioNetoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? articuloId = null,
    Object? cantidadDesde = null,
    Object? precio = null,
    Object? tipoPrecio = freezed,
    Object? dtoAdicional = freezed,
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
      cantidadDesde: null == cantidadDesde
          ? _value.cantidadDesde
          : cantidadDesde // ignore: cast_nullable_to_non_nullable
              as int,
      precio: null == precio
          ? _value.precio
          : precio // ignore: cast_nullable_to_non_nullable
              as double,
      tipoPrecio: freezed == tipoPrecio
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
              as int?,
      dtoAdicional: freezed == dtoAdicional
          ? _value.dtoAdicional
          : dtoAdicional // ignore: cast_nullable_to_non_nullable
              as double?,
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
abstract class _$$ClientePrecioNetoDTOImplCopyWith<$Res>
    implements $ClientePrecioNetoDTOCopyWith<$Res> {
  factory _$$ClientePrecioNetoDTOImplCopyWith(_$ClientePrecioNetoDTOImpl value,
          $Res Function(_$ClientePrecioNetoDTOImpl) then) =
      __$$ClientePrecioNetoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'CANTIDAD_DESDE') int cantidadDesde,
      @JsonKey(name: 'PRECIO') double precio,
      @JsonKey(name: 'TIPO_PRECIO') int? tipoPrecio,
      @JsonKey(name: 'DTO_ADICIONAL') double? dtoAdicional,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$ClientePrecioNetoDTOImplCopyWithImpl<$Res>
    extends _$ClientePrecioNetoDTOCopyWithImpl<$Res, _$ClientePrecioNetoDTOImpl>
    implements _$$ClientePrecioNetoDTOImplCopyWith<$Res> {
  __$$ClientePrecioNetoDTOImplCopyWithImpl(_$ClientePrecioNetoDTOImpl _value,
      $Res Function(_$ClientePrecioNetoDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? articuloId = null,
    Object? cantidadDesde = null,
    Object? precio = null,
    Object? tipoPrecio = freezed,
    Object? dtoAdicional = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$ClientePrecioNetoDTOImpl(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      cantidadDesde: null == cantidadDesde
          ? _value.cantidadDesde
          : cantidadDesde // ignore: cast_nullable_to_non_nullable
              as int,
      precio: null == precio
          ? _value.precio
          : precio // ignore: cast_nullable_to_non_nullable
              as double,
      tipoPrecio: freezed == tipoPrecio
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
              as int?,
      dtoAdicional: freezed == dtoAdicional
          ? _value.dtoAdicional
          : dtoAdicional // ignore: cast_nullable_to_non_nullable
              as double?,
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
class _$ClientePrecioNetoDTOImpl extends _ClientePrecioNetoDTO {
  const _$ClientePrecioNetoDTOImpl(
      {@JsonKey(name: 'CLIENTE_ID') required this.clienteId,
      @JsonKey(name: 'ARTICULO_ID') required this.articuloId,
      @JsonKey(name: 'CANTIDAD_DESDE') required this.cantidadDesde,
      @JsonKey(name: 'PRECIO') required this.precio,
      @JsonKey(name: 'TIPO_PRECIO') this.tipoPrecio,
      @JsonKey(name: 'DTO_ADICIONAL') this.dtoAdicional,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$ClientePrecioNetoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientePrecioNetoDTOImplFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String clienteId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'CANTIDAD_DESDE')
  final int cantidadDesde;
  @override
  @JsonKey(name: 'PRECIO')
  final double precio;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  final int? tipoPrecio;
  @override
  @JsonKey(name: 'DTO_ADICIONAL')
  final double? dtoAdicional;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ClientePrecioNetoDTO(clienteId: $clienteId, articuloId: $articuloId, cantidadDesde: $cantidadDesde, precio: $precio, tipoPrecio: $tipoPrecio, dtoAdicional: $dtoAdicional, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientePrecioNetoDTOImpl &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.cantidadDesde, cantidadDesde) ||
                other.cantidadDesde == cantidadDesde) &&
            (identical(other.precio, precio) || other.precio == precio) &&
            (identical(other.tipoPrecio, tipoPrecio) ||
                other.tipoPrecio == tipoPrecio) &&
            (identical(other.dtoAdicional, dtoAdicional) ||
                other.dtoAdicional == dtoAdicional) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clienteId, articuloId,
      cantidadDesde, precio, tipoPrecio, dtoAdicional, lastUpdated, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientePrecioNetoDTOImplCopyWith<_$ClientePrecioNetoDTOImpl>
      get copyWith =>
          __$$ClientePrecioNetoDTOImplCopyWithImpl<_$ClientePrecioNetoDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientePrecioNetoDTOImplToJson(
      this,
    );
  }
}

abstract class _ClientePrecioNetoDTO extends ClientePrecioNetoDTO {
  const factory _ClientePrecioNetoDTO(
          {@JsonKey(name: 'CLIENTE_ID') required final String clienteId,
          @JsonKey(name: 'ARTICULO_ID') required final String articuloId,
          @JsonKey(name: 'CANTIDAD_DESDE') required final int cantidadDesde,
          @JsonKey(name: 'PRECIO') required final double precio,
          @JsonKey(name: 'TIPO_PRECIO') final int? tipoPrecio,
          @JsonKey(name: 'DTO_ADICIONAL') final double? dtoAdicional,
          @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
          @JsonKey(name: 'DELETED') final String deleted}) =
      _$ClientePrecioNetoDTOImpl;
  const _ClientePrecioNetoDTO._() : super._();

  factory _ClientePrecioNetoDTO.fromJson(Map<String, dynamic> json) =
      _$ClientePrecioNetoDTOImpl.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'CANTIDAD_DESDE')
  int get cantidadDesde;
  @override
  @JsonKey(name: 'PRECIO')
  double get precio;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  int? get tipoPrecio;
  @override
  @JsonKey(name: 'DTO_ADICIONAL')
  double? get dtoAdicional;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$ClientePrecioNetoDTOImplCopyWith<_$ClientePrecioNetoDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
