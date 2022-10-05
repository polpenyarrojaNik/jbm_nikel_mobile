// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cliente_direccion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClienteDireccion {
  String get clienteId => throw _privateConstructorUsedError;
  String get direccionId => throw _privateConstructorUsedError;
  String? get nombre => throw _privateConstructorUsedError;
  String? get direccion1 => throw _privateConstructorUsedError;
  String? get direccion2 => throw _privateConstructorUsedError;
  String? get codigoPostal => throw _privateConstructorUsedError;
  String? get poblacion => throw _privateConstructorUsedError;
  String? get provincia => throw _privateConstructorUsedError;
  Pais? get pais => throw _privateConstructorUsedError;
  double get latitud => throw _privateConstructorUsedError;
  double get longitud =>
      throw _privateConstructorUsedError; // required bool predeterminada,
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClienteDireccionCopyWith<ClienteDireccion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteDireccionCopyWith<$Res> {
  factory $ClienteDireccionCopyWith(
          ClienteDireccion value, $Res Function(ClienteDireccion) then) =
      _$ClienteDireccionCopyWithImpl<$Res>;
  $Res call(
      {String clienteId,
      String direccionId,
      String? nombre,
      String? direccion1,
      String? direccion2,
      String? codigoPostal,
      String? poblacion,
      String? provincia,
      Pais? pais,
      double latitud,
      double longitud,
      DateTime lastUpdated,
      bool deleted});

  $PaisCopyWith<$Res>? get pais;
}

/// @nodoc
class _$ClienteDireccionCopyWithImpl<$Res>
    implements $ClienteDireccionCopyWith<$Res> {
  _$ClienteDireccionCopyWithImpl(this._value, this._then);

  final ClienteDireccion _value;
  // ignore: unused_field
  final $Res Function(ClienteDireccion) _then;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? direccionId = freezed,
    Object? nombre = freezed,
    Object? direccion1 = freezed,
    Object? direccion2 = freezed,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? pais = freezed,
    Object? latitud = freezed,
    Object? longitud = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      direccionId: direccionId == freezed
          ? _value.direccionId
          : direccionId // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      direccion1: direccion1 == freezed
          ? _value.direccion1
          : direccion1 // ignore: cast_nullable_to_non_nullable
              as String?,
      direccion2: direccion2 == freezed
          ? _value.direccion2
          : direccion2 // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPostal: codigoPostal == freezed
          ? _value.codigoPostal
          : codigoPostal // ignore: cast_nullable_to_non_nullable
              as String?,
      poblacion: poblacion == freezed
          ? _value.poblacion
          : poblacion // ignore: cast_nullable_to_non_nullable
              as String?,
      provincia: provincia == freezed
          ? _value.provincia
          : provincia // ignore: cast_nullable_to_non_nullable
              as String?,
      pais: pais == freezed
          ? _value.pais
          : pais // ignore: cast_nullable_to_non_nullable
              as Pais?,
      latitud: latitud == freezed
          ? _value.latitud
          : latitud // ignore: cast_nullable_to_non_nullable
              as double,
      longitud: longitud == freezed
          ? _value.longitud
          : longitud // ignore: cast_nullable_to_non_nullable
              as double,
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

  @override
  $PaisCopyWith<$Res>? get pais {
    if (_value.pais == null) {
      return null;
    }

    return $PaisCopyWith<$Res>(_value.pais!, (value) {
      return _then(_value.copyWith(pais: value));
    });
  }
}

/// @nodoc
abstract class _$$_ClienteDireccionCopyWith<$Res>
    implements $ClienteDireccionCopyWith<$Res> {
  factory _$$_ClienteDireccionCopyWith(
          _$_ClienteDireccion value, $Res Function(_$_ClienteDireccion) then) =
      __$$_ClienteDireccionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String clienteId,
      String direccionId,
      String? nombre,
      String? direccion1,
      String? direccion2,
      String? codigoPostal,
      String? poblacion,
      String? provincia,
      Pais? pais,
      double latitud,
      double longitud,
      DateTime lastUpdated,
      bool deleted});

  @override
  $PaisCopyWith<$Res>? get pais;
}

/// @nodoc
class __$$_ClienteDireccionCopyWithImpl<$Res>
    extends _$ClienteDireccionCopyWithImpl<$Res>
    implements _$$_ClienteDireccionCopyWith<$Res> {
  __$$_ClienteDireccionCopyWithImpl(
      _$_ClienteDireccion _value, $Res Function(_$_ClienteDireccion) _then)
      : super(_value, (v) => _then(v as _$_ClienteDireccion));

  @override
  _$_ClienteDireccion get _value => super._value as _$_ClienteDireccion;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? direccionId = freezed,
    Object? nombre = freezed,
    Object? direccion1 = freezed,
    Object? direccion2 = freezed,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? pais = freezed,
    Object? latitud = freezed,
    Object? longitud = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ClienteDireccion(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      direccionId: direccionId == freezed
          ? _value.direccionId
          : direccionId // ignore: cast_nullable_to_non_nullable
              as String,
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      direccion1: direccion1 == freezed
          ? _value.direccion1
          : direccion1 // ignore: cast_nullable_to_non_nullable
              as String?,
      direccion2: direccion2 == freezed
          ? _value.direccion2
          : direccion2 // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPostal: codigoPostal == freezed
          ? _value.codigoPostal
          : codigoPostal // ignore: cast_nullable_to_non_nullable
              as String?,
      poblacion: poblacion == freezed
          ? _value.poblacion
          : poblacion // ignore: cast_nullable_to_non_nullable
              as String?,
      provincia: provincia == freezed
          ? _value.provincia
          : provincia // ignore: cast_nullable_to_non_nullable
              as String?,
      pais: pais == freezed
          ? _value.pais
          : pais // ignore: cast_nullable_to_non_nullable
              as Pais?,
      latitud: latitud == freezed
          ? _value.latitud
          : latitud // ignore: cast_nullable_to_non_nullable
              as double,
      longitud: longitud == freezed
          ? _value.longitud
          : longitud // ignore: cast_nullable_to_non_nullable
              as double,
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

class _$_ClienteDireccion extends _ClienteDireccion {
  const _$_ClienteDireccion(
      {required this.clienteId,
      required this.direccionId,
      this.nombre,
      this.direccion1,
      this.direccion2,
      this.codigoPostal,
      this.poblacion,
      this.provincia,
      this.pais,
      required this.latitud,
      required this.longitud,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String clienteId;
  @override
  final String direccionId;
  @override
  final String? nombre;
  @override
  final String? direccion1;
  @override
  final String? direccion2;
  @override
  final String? codigoPostal;
  @override
  final String? poblacion;
  @override
  final String? provincia;
  @override
  final Pais? pais;
  @override
  final double latitud;
  @override
  final double longitud;
// required bool predeterminada,
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ClienteDireccion(clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccion1: $direccion1, direccion2: $direccion2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, pais: $pais, latitud: $latitud, longitud: $longitud, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteDireccion &&
            const DeepCollectionEquality().equals(other.clienteId, clienteId) &&
            const DeepCollectionEquality()
                .equals(other.direccionId, direccionId) &&
            const DeepCollectionEquality().equals(other.nombre, nombre) &&
            const DeepCollectionEquality()
                .equals(other.direccion1, direccion1) &&
            const DeepCollectionEquality()
                .equals(other.direccion2, direccion2) &&
            const DeepCollectionEquality()
                .equals(other.codigoPostal, codigoPostal) &&
            const DeepCollectionEquality().equals(other.poblacion, poblacion) &&
            const DeepCollectionEquality().equals(other.provincia, provincia) &&
            const DeepCollectionEquality().equals(other.pais, pais) &&
            const DeepCollectionEquality().equals(other.latitud, latitud) &&
            const DeepCollectionEquality().equals(other.longitud, longitud) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clienteId),
      const DeepCollectionEquality().hash(direccionId),
      const DeepCollectionEquality().hash(nombre),
      const DeepCollectionEquality().hash(direccion1),
      const DeepCollectionEquality().hash(direccion2),
      const DeepCollectionEquality().hash(codigoPostal),
      const DeepCollectionEquality().hash(poblacion),
      const DeepCollectionEquality().hash(provincia),
      const DeepCollectionEquality().hash(pais),
      const DeepCollectionEquality().hash(latitud),
      const DeepCollectionEquality().hash(longitud),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ClienteDireccionCopyWith<_$_ClienteDireccion> get copyWith =>
      __$$_ClienteDireccionCopyWithImpl<_$_ClienteDireccion>(this, _$identity);
}

abstract class _ClienteDireccion extends ClienteDireccion {
  const factory _ClienteDireccion(
      {required final String clienteId,
      required final String direccionId,
      final String? nombre,
      final String? direccion1,
      final String? direccion2,
      final String? codigoPostal,
      final String? poblacion,
      final String? provincia,
      final Pais? pais,
      required final double latitud,
      required final double longitud,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_ClienteDireccion;
  const _ClienteDireccion._() : super._();

  @override
  String get clienteId;
  @override
  String get direccionId;
  @override
  String? get nombre;
  @override
  String? get direccion1;
  @override
  String? get direccion2;
  @override
  String? get codigoPostal;
  @override
  String? get poblacion;
  @override
  String? get provincia;
  @override
  Pais? get pais;
  @override
  double get latitud;
  @override
  double get longitud;
  @override // required bool predeterminada,
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteDireccionCopyWith<_$_ClienteDireccion> get copyWith =>
      throw _privateConstructorUsedError;
}
