// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  String? get direccionId => throw _privateConstructorUsedError;
  String? get direccionImpGuid => throw _privateConstructorUsedError;
  String? get nombre => throw _privateConstructorUsedError;
  String? get direccion1 => throw _privateConstructorUsedError;
  String? get direccion2 => throw _privateConstructorUsedError;
  String? get codigoPostal => throw _privateConstructorUsedError;
  String? get poblacion => throw _privateConstructorUsedError;
  String? get provincia => throw _privateConstructorUsedError;
  Pais? get pais => throw _privateConstructorUsedError;
  double get latitud => throw _privateConstructorUsedError;
  double get longitud => throw _privateConstructorUsedError;
  bool get predeterminada => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get enviada => throw _privateConstructorUsedError;
  bool get tratada => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClienteDireccionCopyWith<ClienteDireccion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteDireccionCopyWith<$Res> {
  factory $ClienteDireccionCopyWith(
          ClienteDireccion value, $Res Function(ClienteDireccion) then) =
      _$ClienteDireccionCopyWithImpl<$Res, ClienteDireccion>;
  @useResult
  $Res call(
      {String clienteId,
      String? direccionId,
      String? direccionImpGuid,
      String? nombre,
      String? direccion1,
      String? direccion2,
      String? codigoPostal,
      String? poblacion,
      String? provincia,
      Pais? pais,
      double latitud,
      double longitud,
      bool predeterminada,
      DateTime lastUpdated,
      bool enviada,
      bool tratada,
      bool deleted});

  $PaisCopyWith<$Res>? get pais;
}

/// @nodoc
class _$ClienteDireccionCopyWithImpl<$Res, $Val extends ClienteDireccion>
    implements $ClienteDireccionCopyWith<$Res> {
  _$ClienteDireccionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? direccionId = freezed,
    Object? direccionImpGuid = freezed,
    Object? nombre = freezed,
    Object? direccion1 = freezed,
    Object? direccion2 = freezed,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? pais = freezed,
    Object? latitud = null,
    Object? longitud = null,
    Object? predeterminada = null,
    Object? lastUpdated = null,
    Object? enviada = null,
    Object? tratada = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      direccionId: freezed == direccionId
          ? _value.direccionId
          : direccionId // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionImpGuid: freezed == direccionImpGuid
          ? _value.direccionImpGuid
          : direccionImpGuid // ignore: cast_nullable_to_non_nullable
              as String?,
      nombre: freezed == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      direccion1: freezed == direccion1
          ? _value.direccion1
          : direccion1 // ignore: cast_nullable_to_non_nullable
              as String?,
      direccion2: freezed == direccion2
          ? _value.direccion2
          : direccion2 // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPostal: freezed == codigoPostal
          ? _value.codigoPostal
          : codigoPostal // ignore: cast_nullable_to_non_nullable
              as String?,
      poblacion: freezed == poblacion
          ? _value.poblacion
          : poblacion // ignore: cast_nullable_to_non_nullable
              as String?,
      provincia: freezed == provincia
          ? _value.provincia
          : provincia // ignore: cast_nullable_to_non_nullable
              as String?,
      pais: freezed == pais
          ? _value.pais
          : pais // ignore: cast_nullable_to_non_nullable
              as Pais?,
      latitud: null == latitud
          ? _value.latitud
          : latitud // ignore: cast_nullable_to_non_nullable
              as double,
      longitud: null == longitud
          ? _value.longitud
          : longitud // ignore: cast_nullable_to_non_nullable
              as double,
      predeterminada: null == predeterminada
          ? _value.predeterminada
          : predeterminada // ignore: cast_nullable_to_non_nullable
              as bool,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      enviada: null == enviada
          ? _value.enviada
          : enviada // ignore: cast_nullable_to_non_nullable
              as bool,
      tratada: null == tratada
          ? _value.tratada
          : tratada // ignore: cast_nullable_to_non_nullable
              as bool,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaisCopyWith<$Res>? get pais {
    if (_value.pais == null) {
      return null;
    }

    return $PaisCopyWith<$Res>(_value.pais!, (value) {
      return _then(_value.copyWith(pais: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClienteDireccionImplCopyWith<$Res>
    implements $ClienteDireccionCopyWith<$Res> {
  factory _$$ClienteDireccionImplCopyWith(_$ClienteDireccionImpl value,
          $Res Function(_$ClienteDireccionImpl) then) =
      __$$ClienteDireccionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String clienteId,
      String? direccionId,
      String? direccionImpGuid,
      String? nombre,
      String? direccion1,
      String? direccion2,
      String? codigoPostal,
      String? poblacion,
      String? provincia,
      Pais? pais,
      double latitud,
      double longitud,
      bool predeterminada,
      DateTime lastUpdated,
      bool enviada,
      bool tratada,
      bool deleted});

  @override
  $PaisCopyWith<$Res>? get pais;
}

/// @nodoc
class __$$ClienteDireccionImplCopyWithImpl<$Res>
    extends _$ClienteDireccionCopyWithImpl<$Res, _$ClienteDireccionImpl>
    implements _$$ClienteDireccionImplCopyWith<$Res> {
  __$$ClienteDireccionImplCopyWithImpl(_$ClienteDireccionImpl _value,
      $Res Function(_$ClienteDireccionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? direccionId = freezed,
    Object? direccionImpGuid = freezed,
    Object? nombre = freezed,
    Object? direccion1 = freezed,
    Object? direccion2 = freezed,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? pais = freezed,
    Object? latitud = null,
    Object? longitud = null,
    Object? predeterminada = null,
    Object? lastUpdated = null,
    Object? enviada = null,
    Object? tratada = null,
    Object? deleted = null,
  }) {
    return _then(_$ClienteDireccionImpl(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      direccionId: freezed == direccionId
          ? _value.direccionId
          : direccionId // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionImpGuid: freezed == direccionImpGuid
          ? _value.direccionImpGuid
          : direccionImpGuid // ignore: cast_nullable_to_non_nullable
              as String?,
      nombre: freezed == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      direccion1: freezed == direccion1
          ? _value.direccion1
          : direccion1 // ignore: cast_nullable_to_non_nullable
              as String?,
      direccion2: freezed == direccion2
          ? _value.direccion2
          : direccion2 // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPostal: freezed == codigoPostal
          ? _value.codigoPostal
          : codigoPostal // ignore: cast_nullable_to_non_nullable
              as String?,
      poblacion: freezed == poblacion
          ? _value.poblacion
          : poblacion // ignore: cast_nullable_to_non_nullable
              as String?,
      provincia: freezed == provincia
          ? _value.provincia
          : provincia // ignore: cast_nullable_to_non_nullable
              as String?,
      pais: freezed == pais
          ? _value.pais
          : pais // ignore: cast_nullable_to_non_nullable
              as Pais?,
      latitud: null == latitud
          ? _value.latitud
          : latitud // ignore: cast_nullable_to_non_nullable
              as double,
      longitud: null == longitud
          ? _value.longitud
          : longitud // ignore: cast_nullable_to_non_nullable
              as double,
      predeterminada: null == predeterminada
          ? _value.predeterminada
          : predeterminada // ignore: cast_nullable_to_non_nullable
              as bool,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      enviada: null == enviada
          ? _value.enviada
          : enviada // ignore: cast_nullable_to_non_nullable
              as bool,
      tratada: null == tratada
          ? _value.tratada
          : tratada // ignore: cast_nullable_to_non_nullable
              as bool,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ClienteDireccionImpl extends _ClienteDireccion {
  const _$ClienteDireccionImpl(
      {required this.clienteId,
      required this.direccionId,
      required this.direccionImpGuid,
      this.nombre,
      this.direccion1,
      this.direccion2,
      this.codigoPostal,
      this.poblacion,
      this.provincia,
      this.pais,
      required this.latitud,
      required this.longitud,
      required this.predeterminada,
      required this.lastUpdated,
      required this.enviada,
      required this.tratada,
      required this.deleted})
      : super._();

  @override
  final String clienteId;
  @override
  final String? direccionId;
  @override
  final String? direccionImpGuid;
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
  @override
  final bool predeterminada;
  @override
  final DateTime lastUpdated;
  @override
  final bool enviada;
  @override
  final bool tratada;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ClienteDireccion(clienteId: $clienteId, direccionId: $direccionId, direccionImpGuid: $direccionImpGuid, nombre: $nombre, direccion1: $direccion1, direccion2: $direccion2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, pais: $pais, latitud: $latitud, longitud: $longitud, predeterminada: $predeterminada, lastUpdated: $lastUpdated, enviada: $enviada, tratada: $tratada, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteDireccionImpl &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.direccionId, direccionId) ||
                other.direccionId == direccionId) &&
            (identical(other.direccionImpGuid, direccionImpGuid) ||
                other.direccionImpGuid == direccionImpGuid) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.direccion1, direccion1) ||
                other.direccion1 == direccion1) &&
            (identical(other.direccion2, direccion2) ||
                other.direccion2 == direccion2) &&
            (identical(other.codigoPostal, codigoPostal) ||
                other.codigoPostal == codigoPostal) &&
            (identical(other.poblacion, poblacion) ||
                other.poblacion == poblacion) &&
            (identical(other.provincia, provincia) ||
                other.provincia == provincia) &&
            (identical(other.pais, pais) || other.pais == pais) &&
            (identical(other.latitud, latitud) || other.latitud == latitud) &&
            (identical(other.longitud, longitud) ||
                other.longitud == longitud) &&
            (identical(other.predeterminada, predeterminada) ||
                other.predeterminada == predeterminada) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.enviada, enviada) || other.enviada == enviada) &&
            (identical(other.tratada, tratada) || other.tratada == tratada) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      clienteId,
      direccionId,
      direccionImpGuid,
      nombre,
      direccion1,
      direccion2,
      codigoPostal,
      poblacion,
      provincia,
      pais,
      latitud,
      longitud,
      predeterminada,
      lastUpdated,
      enviada,
      tratada,
      deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteDireccionImplCopyWith<_$ClienteDireccionImpl> get copyWith =>
      __$$ClienteDireccionImplCopyWithImpl<_$ClienteDireccionImpl>(
          this, _$identity);
}

abstract class _ClienteDireccion extends ClienteDireccion {
  const factory _ClienteDireccion(
      {required final String clienteId,
      required final String? direccionId,
      required final String? direccionImpGuid,
      final String? nombre,
      final String? direccion1,
      final String? direccion2,
      final String? codigoPostal,
      final String? poblacion,
      final String? provincia,
      final Pais? pais,
      required final double latitud,
      required final double longitud,
      required final bool predeterminada,
      required final DateTime lastUpdated,
      required final bool enviada,
      required final bool tratada,
      required final bool deleted}) = _$ClienteDireccionImpl;
  const _ClienteDireccion._() : super._();

  @override
  String get clienteId;
  @override
  String? get direccionId;
  @override
  String? get direccionImpGuid;
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
  @override
  bool get predeterminada;
  @override
  DateTime get lastUpdated;
  @override
  bool get enviada;
  @override
  bool get tratada;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$ClienteDireccionImplCopyWith<_$ClienteDireccionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
