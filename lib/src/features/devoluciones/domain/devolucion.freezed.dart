// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'devolucion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Devolucion {
  String get empresaId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  DateTime get fechaDevolucion => throw _privateConstructorUsedError;
  String? get clienteId => throw _privateConstructorUsedError;
  String? get direccionId => throw _privateConstructorUsedError;
  String? get nombre => throw _privateConstructorUsedError;
  String? get direccionRecogida1 => throw _privateConstructorUsedError;
  String? get direccionRecogida2 => throw _privateConstructorUsedError;
  String? get codigoPostal => throw _privateConstructorUsedError;
  String? get poblacion => throw _privateConstructorUsedError;
  Pais? get pais => throw _privateConstructorUsedError;
  String? get almacenDestino => throw _privateConstructorUsedError;
  String? get agenciaTransporte => throw _privateConstructorUsedError;
  DevolucionEstado get devolucionEstado => throw _privateConstructorUsedError;
  double get kilosDevolucion => throw _privateConstructorUsedError;
  double get bultos => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// Create a copy of Devolucion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DevolucionCopyWith<Devolucion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevolucionCopyWith<$Res> {
  factory $DevolucionCopyWith(
          Devolucion value, $Res Function(Devolucion) then) =
      _$DevolucionCopyWithImpl<$Res, Devolucion>;
  @useResult
  $Res call(
      {String empresaId,
      String id,
      DateTime fechaDevolucion,
      String? clienteId,
      String? direccionId,
      String? nombre,
      String? direccionRecogida1,
      String? direccionRecogida2,
      String? codigoPostal,
      String? poblacion,
      Pais? pais,
      String? almacenDestino,
      String? agenciaTransporte,
      DevolucionEstado devolucionEstado,
      double kilosDevolucion,
      double bultos,
      DateTime lastUpdated,
      bool deleted});

  $PaisCopyWith<$Res>? get pais;
  $DevolucionEstadoCopyWith<$Res> get devolucionEstado;
}

/// @nodoc
class _$DevolucionCopyWithImpl<$Res, $Val extends Devolucion>
    implements $DevolucionCopyWith<$Res> {
  _$DevolucionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Devolucion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? id = null,
    Object? fechaDevolucion = null,
    Object? clienteId = freezed,
    Object? direccionId = freezed,
    Object? nombre = freezed,
    Object? direccionRecogida1 = freezed,
    Object? direccionRecogida2 = freezed,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? pais = freezed,
    Object? almacenDestino = freezed,
    Object? agenciaTransporte = freezed,
    Object? devolucionEstado = null,
    Object? kilosDevolucion = null,
    Object? bultos = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fechaDevolucion: null == fechaDevolucion
          ? _value.fechaDevolucion
          : fechaDevolucion // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clienteId: freezed == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionId: freezed == direccionId
          ? _value.direccionId
          : direccionId // ignore: cast_nullable_to_non_nullable
              as String?,
      nombre: freezed == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionRecogida1: freezed == direccionRecogida1
          ? _value.direccionRecogida1
          : direccionRecogida1 // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionRecogida2: freezed == direccionRecogida2
          ? _value.direccionRecogida2
          : direccionRecogida2 // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPostal: freezed == codigoPostal
          ? _value.codigoPostal
          : codigoPostal // ignore: cast_nullable_to_non_nullable
              as String?,
      poblacion: freezed == poblacion
          ? _value.poblacion
          : poblacion // ignore: cast_nullable_to_non_nullable
              as String?,
      pais: freezed == pais
          ? _value.pais
          : pais // ignore: cast_nullable_to_non_nullable
              as Pais?,
      almacenDestino: freezed == almacenDestino
          ? _value.almacenDestino
          : almacenDestino // ignore: cast_nullable_to_non_nullable
              as String?,
      agenciaTransporte: freezed == agenciaTransporte
          ? _value.agenciaTransporte
          : agenciaTransporte // ignore: cast_nullable_to_non_nullable
              as String?,
      devolucionEstado: null == devolucionEstado
          ? _value.devolucionEstado
          : devolucionEstado // ignore: cast_nullable_to_non_nullable
              as DevolucionEstado,
      kilosDevolucion: null == kilosDevolucion
          ? _value.kilosDevolucion
          : kilosDevolucion // ignore: cast_nullable_to_non_nullable
              as double,
      bultos: null == bultos
          ? _value.bultos
          : bultos // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of Devolucion
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of Devolucion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DevolucionEstadoCopyWith<$Res> get devolucionEstado {
    return $DevolucionEstadoCopyWith<$Res>(_value.devolucionEstado, (value) {
      return _then(_value.copyWith(devolucionEstado: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DevolucionImplCopyWith<$Res>
    implements $DevolucionCopyWith<$Res> {
  factory _$$DevolucionImplCopyWith(
          _$DevolucionImpl value, $Res Function(_$DevolucionImpl) then) =
      __$$DevolucionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String empresaId,
      String id,
      DateTime fechaDevolucion,
      String? clienteId,
      String? direccionId,
      String? nombre,
      String? direccionRecogida1,
      String? direccionRecogida2,
      String? codigoPostal,
      String? poblacion,
      Pais? pais,
      String? almacenDestino,
      String? agenciaTransporte,
      DevolucionEstado devolucionEstado,
      double kilosDevolucion,
      double bultos,
      DateTime lastUpdated,
      bool deleted});

  @override
  $PaisCopyWith<$Res>? get pais;
  @override
  $DevolucionEstadoCopyWith<$Res> get devolucionEstado;
}

/// @nodoc
class __$$DevolucionImplCopyWithImpl<$Res>
    extends _$DevolucionCopyWithImpl<$Res, _$DevolucionImpl>
    implements _$$DevolucionImplCopyWith<$Res> {
  __$$DevolucionImplCopyWithImpl(
      _$DevolucionImpl _value, $Res Function(_$DevolucionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Devolucion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? id = null,
    Object? fechaDevolucion = null,
    Object? clienteId = freezed,
    Object? direccionId = freezed,
    Object? nombre = freezed,
    Object? direccionRecogida1 = freezed,
    Object? direccionRecogida2 = freezed,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? pais = freezed,
    Object? almacenDestino = freezed,
    Object? agenciaTransporte = freezed,
    Object? devolucionEstado = null,
    Object? kilosDevolucion = null,
    Object? bultos = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$DevolucionImpl(
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fechaDevolucion: null == fechaDevolucion
          ? _value.fechaDevolucion
          : fechaDevolucion // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clienteId: freezed == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionId: freezed == direccionId
          ? _value.direccionId
          : direccionId // ignore: cast_nullable_to_non_nullable
              as String?,
      nombre: freezed == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionRecogida1: freezed == direccionRecogida1
          ? _value.direccionRecogida1
          : direccionRecogida1 // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionRecogida2: freezed == direccionRecogida2
          ? _value.direccionRecogida2
          : direccionRecogida2 // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPostal: freezed == codigoPostal
          ? _value.codigoPostal
          : codigoPostal // ignore: cast_nullable_to_non_nullable
              as String?,
      poblacion: freezed == poblacion
          ? _value.poblacion
          : poblacion // ignore: cast_nullable_to_non_nullable
              as String?,
      pais: freezed == pais
          ? _value.pais
          : pais // ignore: cast_nullable_to_non_nullable
              as Pais?,
      almacenDestino: freezed == almacenDestino
          ? _value.almacenDestino
          : almacenDestino // ignore: cast_nullable_to_non_nullable
              as String?,
      agenciaTransporte: freezed == agenciaTransporte
          ? _value.agenciaTransporte
          : agenciaTransporte // ignore: cast_nullable_to_non_nullable
              as String?,
      devolucionEstado: null == devolucionEstado
          ? _value.devolucionEstado
          : devolucionEstado // ignore: cast_nullable_to_non_nullable
              as DevolucionEstado,
      kilosDevolucion: null == kilosDevolucion
          ? _value.kilosDevolucion
          : kilosDevolucion // ignore: cast_nullable_to_non_nullable
              as double,
      bultos: null == bultos
          ? _value.bultos
          : bultos // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DevolucionImpl extends _Devolucion {
  const _$DevolucionImpl(
      {required this.empresaId,
      required this.id,
      required this.fechaDevolucion,
      this.clienteId,
      this.direccionId,
      this.nombre,
      this.direccionRecogida1,
      this.direccionRecogida2,
      this.codigoPostal,
      this.poblacion,
      this.pais,
      this.almacenDestino,
      this.agenciaTransporte,
      required this.devolucionEstado,
      required this.kilosDevolucion,
      required this.bultos,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String empresaId;
  @override
  final String id;
  @override
  final DateTime fechaDevolucion;
  @override
  final String? clienteId;
  @override
  final String? direccionId;
  @override
  final String? nombre;
  @override
  final String? direccionRecogida1;
  @override
  final String? direccionRecogida2;
  @override
  final String? codigoPostal;
  @override
  final String? poblacion;
  @override
  final Pais? pais;
  @override
  final String? almacenDestino;
  @override
  final String? agenciaTransporte;
  @override
  final DevolucionEstado devolucionEstado;
  @override
  final double kilosDevolucion;
  @override
  final double bultos;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'Devolucion(empresaId: $empresaId, id: $id, fechaDevolucion: $fechaDevolucion, clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccionRecogida1: $direccionRecogida1, direccionRecogida2: $direccionRecogida2, codigoPostal: $codigoPostal, poblacion: $poblacion, pais: $pais, almacenDestino: $almacenDestino, agenciaTransporte: $agenciaTransporte, devolucionEstado: $devolucionEstado, kilosDevolucion: $kilosDevolucion, bultos: $bultos, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DevolucionImpl &&
            (identical(other.empresaId, empresaId) ||
                other.empresaId == empresaId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fechaDevolucion, fechaDevolucion) ||
                other.fechaDevolucion == fechaDevolucion) &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.direccionId, direccionId) ||
                other.direccionId == direccionId) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.direccionRecogida1, direccionRecogida1) ||
                other.direccionRecogida1 == direccionRecogida1) &&
            (identical(other.direccionRecogida2, direccionRecogida2) ||
                other.direccionRecogida2 == direccionRecogida2) &&
            (identical(other.codigoPostal, codigoPostal) ||
                other.codigoPostal == codigoPostal) &&
            (identical(other.poblacion, poblacion) ||
                other.poblacion == poblacion) &&
            (identical(other.pais, pais) || other.pais == pais) &&
            (identical(other.almacenDestino, almacenDestino) ||
                other.almacenDestino == almacenDestino) &&
            (identical(other.agenciaTransporte, agenciaTransporte) ||
                other.agenciaTransporte == agenciaTransporte) &&
            (identical(other.devolucionEstado, devolucionEstado) ||
                other.devolucionEstado == devolucionEstado) &&
            (identical(other.kilosDevolucion, kilosDevolucion) ||
                other.kilosDevolucion == kilosDevolucion) &&
            (identical(other.bultos, bultos) || other.bultos == bultos) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      empresaId,
      id,
      fechaDevolucion,
      clienteId,
      direccionId,
      nombre,
      direccionRecogida1,
      direccionRecogida2,
      codigoPostal,
      poblacion,
      pais,
      almacenDestino,
      agenciaTransporte,
      devolucionEstado,
      kilosDevolucion,
      bultos,
      lastUpdated,
      deleted);

  /// Create a copy of Devolucion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DevolucionImplCopyWith<_$DevolucionImpl> get copyWith =>
      __$$DevolucionImplCopyWithImpl<_$DevolucionImpl>(this, _$identity);
}

abstract class _Devolucion extends Devolucion {
  const factory _Devolucion(
      {required final String empresaId,
      required final String id,
      required final DateTime fechaDevolucion,
      final String? clienteId,
      final String? direccionId,
      final String? nombre,
      final String? direccionRecogida1,
      final String? direccionRecogida2,
      final String? codigoPostal,
      final String? poblacion,
      final Pais? pais,
      final String? almacenDestino,
      final String? agenciaTransporte,
      required final DevolucionEstado devolucionEstado,
      required final double kilosDevolucion,
      required final double bultos,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$DevolucionImpl;
  const _Devolucion._() : super._();

  @override
  String get empresaId;
  @override
  String get id;
  @override
  DateTime get fechaDevolucion;
  @override
  String? get clienteId;
  @override
  String? get direccionId;
  @override
  String? get nombre;
  @override
  String? get direccionRecogida1;
  @override
  String? get direccionRecogida2;
  @override
  String? get codigoPostal;
  @override
  String? get poblacion;
  @override
  Pais? get pais;
  @override
  String? get almacenDestino;
  @override
  String? get agenciaTransporte;
  @override
  DevolucionEstado get devolucionEstado;
  @override
  double get kilosDevolucion;
  @override
  double get bultos;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;

  /// Create a copy of Devolucion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DevolucionImplCopyWith<_$DevolucionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
