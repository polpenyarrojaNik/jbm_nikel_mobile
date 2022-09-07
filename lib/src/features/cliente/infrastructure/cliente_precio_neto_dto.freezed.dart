// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  double get cantidadDesDe => throw _privateConstructorUsedError;
  @JsonKey(name: 'PRECIO')
  double get precio => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_PRECIO')
  double? get tipoPrecio => throw _privateConstructorUsedError;
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
      _$ClientePrecioNetoDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'CANTIDAD_DESDE') double cantidadDesDe,
      @JsonKey(name: 'PRECIO') double precio,
      @JsonKey(name: 'TIPO_PRECIO') double? tipoPrecio,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ClientePrecioNetoDTOCopyWithImpl<$Res>
    implements $ClientePrecioNetoDTOCopyWith<$Res> {
  _$ClientePrecioNetoDTOCopyWithImpl(this._value, this._then);

  final ClientePrecioNetoDTO _value;
  // ignore: unused_field
  final $Res Function(ClientePrecioNetoDTO) _then;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? articuloId = freezed,
    Object? cantidadDesDe = freezed,
    Object? precio = freezed,
    Object? tipoPrecio = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      cantidadDesDe: cantidadDesDe == freezed
          ? _value.cantidadDesDe
          : cantidadDesDe // ignore: cast_nullable_to_non_nullable
              as double,
      precio: precio == freezed
          ? _value.precio
          : precio // ignore: cast_nullable_to_non_nullable
              as double,
      tipoPrecio: tipoPrecio == freezed
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
              as double?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ClientePrecioNetoDTOCopyWith<$Res>
    implements $ClientePrecioNetoDTOCopyWith<$Res> {
  factory _$$_ClientePrecioNetoDTOCopyWith(_$_ClientePrecioNetoDTO value,
          $Res Function(_$_ClientePrecioNetoDTO) then) =
      __$$_ClientePrecioNetoDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'CANTIDAD_DESDE') double cantidadDesDe,
      @JsonKey(name: 'PRECIO') double precio,
      @JsonKey(name: 'TIPO_PRECIO') double? tipoPrecio,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ClientePrecioNetoDTOCopyWithImpl<$Res>
    extends _$ClientePrecioNetoDTOCopyWithImpl<$Res>
    implements _$$_ClientePrecioNetoDTOCopyWith<$Res> {
  __$$_ClientePrecioNetoDTOCopyWithImpl(_$_ClientePrecioNetoDTO _value,
      $Res Function(_$_ClientePrecioNetoDTO) _then)
      : super(_value, (v) => _then(v as _$_ClientePrecioNetoDTO));

  @override
  _$_ClientePrecioNetoDTO get _value => super._value as _$_ClientePrecioNetoDTO;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? articuloId = freezed,
    Object? cantidadDesDe = freezed,
    Object? precio = freezed,
    Object? tipoPrecio = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ClientePrecioNetoDTO(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      cantidadDesDe: cantidadDesDe == freezed
          ? _value.cantidadDesDe
          : cantidadDesDe // ignore: cast_nullable_to_non_nullable
              as double,
      precio: precio == freezed
          ? _value.precio
          : precio // ignore: cast_nullable_to_non_nullable
              as double,
      tipoPrecio: tipoPrecio == freezed
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
              as double?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientePrecioNetoDTO extends _ClientePrecioNetoDTO {
  const _$_ClientePrecioNetoDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.clienteId,
      @JsonKey(name: 'ARTICULO_ID') required this.articuloId,
      @JsonKey(name: 'CANTIDAD_DESDE') required this.cantidadDesDe,
      @JsonKey(name: 'PRECIO') required this.precio,
      @JsonKey(name: 'TIPO_PRECIO') this.tipoPrecio,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_ClientePrecioNetoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ClientePrecioNetoDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String clienteId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'CANTIDAD_DESDE')
  final double cantidadDesDe;
  @override
  @JsonKey(name: 'PRECIO')
  final double precio;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  final double? tipoPrecio;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ClientePrecioNetoDTO(clienteId: $clienteId, articuloId: $articuloId, cantidadDesDe: $cantidadDesDe, precio: $precio, tipoPrecio: $tipoPrecio, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientePrecioNetoDTO &&
            const DeepCollectionEquality().equals(other.clienteId, clienteId) &&
            const DeepCollectionEquality()
                .equals(other.articuloId, articuloId) &&
            const DeepCollectionEquality()
                .equals(other.cantidadDesDe, cantidadDesDe) &&
            const DeepCollectionEquality().equals(other.precio, precio) &&
            const DeepCollectionEquality()
                .equals(other.tipoPrecio, tipoPrecio) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clienteId),
      const DeepCollectionEquality().hash(articuloId),
      const DeepCollectionEquality().hash(cantidadDesDe),
      const DeepCollectionEquality().hash(precio),
      const DeepCollectionEquality().hash(tipoPrecio),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ClientePrecioNetoDTOCopyWith<_$_ClientePrecioNetoDTO> get copyWith =>
      __$$_ClientePrecioNetoDTOCopyWithImpl<_$_ClientePrecioNetoDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientePrecioNetoDTOToJson(
      this,
    );
  }
}

abstract class _ClientePrecioNetoDTO extends ClientePrecioNetoDTO {
  const factory _ClientePrecioNetoDTO(
          {@JsonKey(name: 'CLIENTE_ID') required final String clienteId,
          @JsonKey(name: 'ARTICULO_ID') required final String articuloId,
          @JsonKey(name: 'CANTIDAD_DESDE') required final double cantidadDesDe,
          @JsonKey(name: 'PRECIO') required final double precio,
          @JsonKey(name: 'TIPO_PRECIO') final double? tipoPrecio,
          @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
          @JsonKey(name: 'DELETED') final String deleted}) =
      _$_ClientePrecioNetoDTO;
  const _ClientePrecioNetoDTO._() : super._();

  factory _ClientePrecioNetoDTO.fromJson(Map<String, dynamic> json) =
      _$_ClientePrecioNetoDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'CANTIDAD_DESDE')
  double get cantidadDesDe;
  @override
  @JsonKey(name: 'PRECIO')
  double get precio;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  double? get tipoPrecio;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ClientePrecioNetoDTOCopyWith<_$_ClientePrecioNetoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
