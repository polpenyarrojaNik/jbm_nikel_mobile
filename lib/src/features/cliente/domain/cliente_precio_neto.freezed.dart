// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cliente_precio_neto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClientePrecioNeto {
  String get clienteId => throw _privateConstructorUsedError;
  String get articuloId => throw _privateConstructorUsedError;
  int get cantidadDesde => throw _privateConstructorUsedError;
  Money get precio => throw _privateConstructorUsedError;
  int get tipoPrecio => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientePrecioNetoCopyWith<ClientePrecioNeto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientePrecioNetoCopyWith<$Res> {
  factory $ClientePrecioNetoCopyWith(
          ClientePrecioNeto value, $Res Function(ClientePrecioNeto) then) =
      _$ClientePrecioNetoCopyWithImpl<$Res>;
  $Res call(
      {String clienteId,
      String articuloId,
      int cantidadDesde,
      Money precio,
      int tipoPrecio,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class _$ClientePrecioNetoCopyWithImpl<$Res>
    implements $ClientePrecioNetoCopyWith<$Res> {
  _$ClientePrecioNetoCopyWithImpl(this._value, this._then);

  final ClientePrecioNeto _value;
  // ignore: unused_field
  final $Res Function(ClientePrecioNeto) _then;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? articuloId = freezed,
    Object? cantidadDesde = freezed,
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
      cantidadDesde: cantidadDesde == freezed
          ? _value.cantidadDesde
          : cantidadDesde // ignore: cast_nullable_to_non_nullable
              as int,
      precio: precio == freezed
          ? _value.precio
          : precio // ignore: cast_nullable_to_non_nullable
              as Money,
      tipoPrecio: tipoPrecio == freezed
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ClientePrecioNetoCopyWith<$Res>
    implements $ClientePrecioNetoCopyWith<$Res> {
  factory _$$_ClientePrecioNetoCopyWith(_$_ClientePrecioNeto value,
          $Res Function(_$_ClientePrecioNeto) then) =
      __$$_ClientePrecioNetoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String clienteId,
      String articuloId,
      int cantidadDesde,
      Money precio,
      int tipoPrecio,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class __$$_ClientePrecioNetoCopyWithImpl<$Res>
    extends _$ClientePrecioNetoCopyWithImpl<$Res>
    implements _$$_ClientePrecioNetoCopyWith<$Res> {
  __$$_ClientePrecioNetoCopyWithImpl(
      _$_ClientePrecioNeto _value, $Res Function(_$_ClientePrecioNeto) _then)
      : super(_value, (v) => _then(v as _$_ClientePrecioNeto));

  @override
  _$_ClientePrecioNeto get _value => super._value as _$_ClientePrecioNeto;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? articuloId = freezed,
    Object? cantidadDesde = freezed,
    Object? precio = freezed,
    Object? tipoPrecio = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ClientePrecioNeto(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      cantidadDesde: cantidadDesde == freezed
          ? _value.cantidadDesde
          : cantidadDesde // ignore: cast_nullable_to_non_nullable
              as int,
      precio: precio == freezed
          ? _value.precio
          : precio // ignore: cast_nullable_to_non_nullable
              as Money,
      tipoPrecio: tipoPrecio == freezed
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ClientePrecioNeto extends _ClientePrecioNeto {
  const _$_ClientePrecioNeto(
      {required this.clienteId,
      required this.articuloId,
      required this.cantidadDesde,
      required this.precio,
      required this.tipoPrecio,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String clienteId;
  @override
  final String articuloId;
  @override
  final int cantidadDesde;
  @override
  final Money precio;
  @override
  final int tipoPrecio;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ClientePrecioNeto(clienteId: $clienteId, articuloId: $articuloId, cantidadDesde: $cantidadDesde, precio: $precio, tipoPrecio: $tipoPrecio, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientePrecioNeto &&
            const DeepCollectionEquality().equals(other.clienteId, clienteId) &&
            const DeepCollectionEquality()
                .equals(other.articuloId, articuloId) &&
            const DeepCollectionEquality()
                .equals(other.cantidadDesde, cantidadDesde) &&
            const DeepCollectionEquality().equals(other.precio, precio) &&
            const DeepCollectionEquality()
                .equals(other.tipoPrecio, tipoPrecio) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clienteId),
      const DeepCollectionEquality().hash(articuloId),
      const DeepCollectionEquality().hash(cantidadDesde),
      const DeepCollectionEquality().hash(precio),
      const DeepCollectionEquality().hash(tipoPrecio),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ClientePrecioNetoCopyWith<_$_ClientePrecioNeto> get copyWith =>
      __$$_ClientePrecioNetoCopyWithImpl<_$_ClientePrecioNeto>(
          this, _$identity);
}

abstract class _ClientePrecioNeto extends ClientePrecioNeto {
  const factory _ClientePrecioNeto(
      {required final String clienteId,
      required final String articuloId,
      required final int cantidadDesde,
      required final Money precio,
      required final int tipoPrecio,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_ClientePrecioNeto;
  const _ClientePrecioNeto._() : super._();

  @override
  String get clienteId;
  @override
  String get articuloId;
  @override
  int get cantidadDesde;
  @override
  Money get precio;
  @override
  int get tipoPrecio;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ClientePrecioNetoCopyWith<_$_ClientePrecioNeto> get copyWith =>
      throw _privateConstructorUsedError;
}
