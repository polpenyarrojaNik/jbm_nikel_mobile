// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'devolucion_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DevolucionDTO _$DevolucionDTOFromJson(Map<String, dynamic> json) {
  return _DevolucionDTO.fromJson(json);
}

/// @nodoc
mixin _$DevolucionDTO {
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DEVOLUCION_ID')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_DEVOLUCION')
  DateTime get fechaDevolucion => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLIENTE_ID')
  String? get clienteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION_ID')
  String? get direccionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE')
  String? get nombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION_RECOGIDA1')
  String? get direccionRecogida1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION_RECOGIDA2')
  String? get direccionRecogida2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'CODIGO_POSTAL')
  String? get codigoPostal => throw _privateConstructorUsedError;
  @JsonKey(name: 'POBLACION')
  String? get poblacion => throw _privateConstructorUsedError;
  @JsonKey(name: 'PAIS_ID')
  String? get paisId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ALMACEN_DESTINO')
  String? get almacenDestino => throw _privateConstructorUsedError;
  @JsonKey(name: 'AGENCIA_TRANSPORTE')
  String? get agenciaTransporte => throw _privateConstructorUsedError;
  @JsonKey(name: 'DEVOLUCION_ESTADO_ID')
  String get devolucionEstadoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'KILOS_DEVOLUCION')
  double get kilosDevolucion => throw _privateConstructorUsedError;
  @JsonKey(name: 'BULTOS')
  double get bultos => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  /// Serializes this DevolucionDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DevolucionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DevolucionDTOCopyWith<DevolucionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevolucionDTOCopyWith<$Res> {
  factory $DevolucionDTOCopyWith(
          DevolucionDTO value, $Res Function(DevolucionDTO) then) =
      _$DevolucionDTOCopyWithImpl<$Res, DevolucionDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'EMPRESA_ID') String empresaId,
      @JsonKey(name: 'DEVOLUCION_ID') String id,
      @JsonKey(name: 'FECHA_DEVOLUCION') DateTime fechaDevolucion,
      @JsonKey(name: 'CLIENTE_ID') String? clienteId,
      @JsonKey(name: 'DIRECCION_ID') String? direccionId,
      @JsonKey(name: 'NOMBRE') String? nombre,
      @JsonKey(name: 'DIRECCION_RECOGIDA1') String? direccionRecogida1,
      @JsonKey(name: 'DIRECCION_RECOGIDA2') String? direccionRecogida2,
      @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
      @JsonKey(name: 'POBLACION') String? poblacion,
      @JsonKey(name: 'PAIS_ID') String? paisId,
      @JsonKey(name: 'ALMACEN_DESTINO') String? almacenDestino,
      @JsonKey(name: 'AGENCIA_TRANSPORTE') String? agenciaTransporte,
      @JsonKey(name: 'DEVOLUCION_ESTADO_ID') String devolucionEstadoId,
      @JsonKey(name: 'KILOS_DEVOLUCION') double kilosDevolucion,
      @JsonKey(name: 'BULTOS') double bultos,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$DevolucionDTOCopyWithImpl<$Res, $Val extends DevolucionDTO>
    implements $DevolucionDTOCopyWith<$Res> {
  _$DevolucionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DevolucionDTO
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
    Object? paisId = freezed,
    Object? almacenDestino = freezed,
    Object? agenciaTransporte = freezed,
    Object? devolucionEstadoId = null,
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
      paisId: freezed == paisId
          ? _value.paisId
          : paisId // ignore: cast_nullable_to_non_nullable
              as String?,
      almacenDestino: freezed == almacenDestino
          ? _value.almacenDestino
          : almacenDestino // ignore: cast_nullable_to_non_nullable
              as String?,
      agenciaTransporte: freezed == agenciaTransporte
          ? _value.agenciaTransporte
          : agenciaTransporte // ignore: cast_nullable_to_non_nullable
              as String?,
      devolucionEstadoId: null == devolucionEstadoId
          ? _value.devolucionEstadoId
          : devolucionEstadoId // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DevolucionDTOImplCopyWith<$Res>
    implements $DevolucionDTOCopyWith<$Res> {
  factory _$$DevolucionDTOImplCopyWith(
          _$DevolucionDTOImpl value, $Res Function(_$DevolucionDTOImpl) then) =
      __$$DevolucionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'EMPRESA_ID') String empresaId,
      @JsonKey(name: 'DEVOLUCION_ID') String id,
      @JsonKey(name: 'FECHA_DEVOLUCION') DateTime fechaDevolucion,
      @JsonKey(name: 'CLIENTE_ID') String? clienteId,
      @JsonKey(name: 'DIRECCION_ID') String? direccionId,
      @JsonKey(name: 'NOMBRE') String? nombre,
      @JsonKey(name: 'DIRECCION_RECOGIDA1') String? direccionRecogida1,
      @JsonKey(name: 'DIRECCION_RECOGIDA2') String? direccionRecogida2,
      @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
      @JsonKey(name: 'POBLACION') String? poblacion,
      @JsonKey(name: 'PAIS_ID') String? paisId,
      @JsonKey(name: 'ALMACEN_DESTINO') String? almacenDestino,
      @JsonKey(name: 'AGENCIA_TRANSPORTE') String? agenciaTransporte,
      @JsonKey(name: 'DEVOLUCION_ESTADO_ID') String devolucionEstadoId,
      @JsonKey(name: 'KILOS_DEVOLUCION') double kilosDevolucion,
      @JsonKey(name: 'BULTOS') double bultos,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$DevolucionDTOImplCopyWithImpl<$Res>
    extends _$DevolucionDTOCopyWithImpl<$Res, _$DevolucionDTOImpl>
    implements _$$DevolucionDTOImplCopyWith<$Res> {
  __$$DevolucionDTOImplCopyWithImpl(
      _$DevolucionDTOImpl _value, $Res Function(_$DevolucionDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of DevolucionDTO
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
    Object? paisId = freezed,
    Object? almacenDestino = freezed,
    Object? agenciaTransporte = freezed,
    Object? devolucionEstadoId = null,
    Object? kilosDevolucion = null,
    Object? bultos = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$DevolucionDTOImpl(
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
      paisId: freezed == paisId
          ? _value.paisId
          : paisId // ignore: cast_nullable_to_non_nullable
              as String?,
      almacenDestino: freezed == almacenDestino
          ? _value.almacenDestino
          : almacenDestino // ignore: cast_nullable_to_non_nullable
              as String?,
      agenciaTransporte: freezed == agenciaTransporte
          ? _value.agenciaTransporte
          : agenciaTransporte // ignore: cast_nullable_to_non_nullable
              as String?,
      devolucionEstadoId: null == devolucionEstadoId
          ? _value.devolucionEstadoId
          : devolucionEstadoId // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DevolucionDTOImpl extends _DevolucionDTO {
  const _$DevolucionDTOImpl(
      {@JsonKey(name: 'EMPRESA_ID') required this.empresaId,
      @JsonKey(name: 'DEVOLUCION_ID') required this.id,
      @JsonKey(name: 'FECHA_DEVOLUCION') required this.fechaDevolucion,
      @JsonKey(name: 'CLIENTE_ID') this.clienteId,
      @JsonKey(name: 'DIRECCION_ID') this.direccionId,
      @JsonKey(name: 'NOMBRE') this.nombre,
      @JsonKey(name: 'DIRECCION_RECOGIDA1') this.direccionRecogida1,
      @JsonKey(name: 'DIRECCION_RECOGIDA2') this.direccionRecogida2,
      @JsonKey(name: 'CODIGO_POSTAL') this.codigoPostal,
      @JsonKey(name: 'POBLACION') this.poblacion,
      @JsonKey(name: 'PAIS_ID') this.paisId,
      @JsonKey(name: 'ALMACEN_DESTINO') this.almacenDestino,
      @JsonKey(name: 'AGENCIA_TRANSPORTE') this.agenciaTransporte,
      @JsonKey(name: 'DEVOLUCION_ESTADO_ID') required this.devolucionEstadoId,
      @JsonKey(name: 'KILOS_DEVOLUCION') required this.kilosDevolucion,
      @JsonKey(name: 'BULTOS') required this.bultos,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') required this.deleted})
      : super._();

  factory _$DevolucionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DevolucionDTOImplFromJson(json);

  @override
  @JsonKey(name: 'EMPRESA_ID')
  final String empresaId;
  @override
  @JsonKey(name: 'DEVOLUCION_ID')
  final String id;
  @override
  @JsonKey(name: 'FECHA_DEVOLUCION')
  final DateTime fechaDevolucion;
  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String? clienteId;
  @override
  @JsonKey(name: 'DIRECCION_ID')
  final String? direccionId;
  @override
  @JsonKey(name: 'NOMBRE')
  final String? nombre;
  @override
  @JsonKey(name: 'DIRECCION_RECOGIDA1')
  final String? direccionRecogida1;
  @override
  @JsonKey(name: 'DIRECCION_RECOGIDA2')
  final String? direccionRecogida2;
  @override
  @JsonKey(name: 'CODIGO_POSTAL')
  final String? codigoPostal;
  @override
  @JsonKey(name: 'POBLACION')
  final String? poblacion;
  @override
  @JsonKey(name: 'PAIS_ID')
  final String? paisId;
  @override
  @JsonKey(name: 'ALMACEN_DESTINO')
  final String? almacenDestino;
  @override
  @JsonKey(name: 'AGENCIA_TRANSPORTE')
  final String? agenciaTransporte;
  @override
  @JsonKey(name: 'DEVOLUCION_ESTADO_ID')
  final String devolucionEstadoId;
  @override
  @JsonKey(name: 'KILOS_DEVOLUCION')
  final double kilosDevolucion;
  @override
  @JsonKey(name: 'BULTOS')
  final double bultos;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'DevolucionDTO(empresaId: $empresaId, id: $id, fechaDevolucion: $fechaDevolucion, clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccionRecogida1: $direccionRecogida1, direccionRecogida2: $direccionRecogida2, codigoPostal: $codigoPostal, poblacion: $poblacion, paisId: $paisId, almacenDestino: $almacenDestino, agenciaTransporte: $agenciaTransporte, devolucionEstadoId: $devolucionEstadoId, kilosDevolucion: $kilosDevolucion, bultos: $bultos, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DevolucionDTOImpl &&
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
            (identical(other.paisId, paisId) || other.paisId == paisId) &&
            (identical(other.almacenDestino, almacenDestino) ||
                other.almacenDestino == almacenDestino) &&
            (identical(other.agenciaTransporte, agenciaTransporte) ||
                other.agenciaTransporte == agenciaTransporte) &&
            (identical(other.devolucionEstadoId, devolucionEstadoId) ||
                other.devolucionEstadoId == devolucionEstadoId) &&
            (identical(other.kilosDevolucion, kilosDevolucion) ||
                other.kilosDevolucion == kilosDevolucion) &&
            (identical(other.bultos, bultos) || other.bultos == bultos) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      paisId,
      almacenDestino,
      agenciaTransporte,
      devolucionEstadoId,
      kilosDevolucion,
      bultos,
      lastUpdated,
      deleted);

  /// Create a copy of DevolucionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DevolucionDTOImplCopyWith<_$DevolucionDTOImpl> get copyWith =>
      __$$DevolucionDTOImplCopyWithImpl<_$DevolucionDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DevolucionDTOImplToJson(
      this,
    );
  }
}

abstract class _DevolucionDTO extends DevolucionDTO {
  const factory _DevolucionDTO(
      {@JsonKey(name: 'EMPRESA_ID') required final String empresaId,
      @JsonKey(name: 'DEVOLUCION_ID') required final String id,
      @JsonKey(name: 'FECHA_DEVOLUCION')
      required final DateTime fechaDevolucion,
      @JsonKey(name: 'CLIENTE_ID') final String? clienteId,
      @JsonKey(name: 'DIRECCION_ID') final String? direccionId,
      @JsonKey(name: 'NOMBRE') final String? nombre,
      @JsonKey(name: 'DIRECCION_RECOGIDA1') final String? direccionRecogida1,
      @JsonKey(name: 'DIRECCION_RECOGIDA2') final String? direccionRecogida2,
      @JsonKey(name: 'CODIGO_POSTAL') final String? codigoPostal,
      @JsonKey(name: 'POBLACION') final String? poblacion,
      @JsonKey(name: 'PAIS_ID') final String? paisId,
      @JsonKey(name: 'ALMACEN_DESTINO') final String? almacenDestino,
      @JsonKey(name: 'AGENCIA_TRANSPORTE') final String? agenciaTransporte,
      @JsonKey(name: 'DEVOLUCION_ESTADO_ID')
      required final String devolucionEstadoId,
      @JsonKey(name: 'KILOS_DEVOLUCION') required final double kilosDevolucion,
      @JsonKey(name: 'BULTOS') required final double bultos,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
      required final String deleted}) = _$DevolucionDTOImpl;
  const _DevolucionDTO._() : super._();

  factory _DevolucionDTO.fromJson(Map<String, dynamic> json) =
      _$DevolucionDTOImpl.fromJson;

  @override
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId;
  @override
  @JsonKey(name: 'DEVOLUCION_ID')
  String get id;
  @override
  @JsonKey(name: 'FECHA_DEVOLUCION')
  DateTime get fechaDevolucion;
  @override
  @JsonKey(name: 'CLIENTE_ID')
  String? get clienteId;
  @override
  @JsonKey(name: 'DIRECCION_ID')
  String? get direccionId;
  @override
  @JsonKey(name: 'NOMBRE')
  String? get nombre;
  @override
  @JsonKey(name: 'DIRECCION_RECOGIDA1')
  String? get direccionRecogida1;
  @override
  @JsonKey(name: 'DIRECCION_RECOGIDA2')
  String? get direccionRecogida2;
  @override
  @JsonKey(name: 'CODIGO_POSTAL')
  String? get codigoPostal;
  @override
  @JsonKey(name: 'POBLACION')
  String? get poblacion;
  @override
  @JsonKey(name: 'PAIS_ID')
  String? get paisId;
  @override
  @JsonKey(name: 'ALMACEN_DESTINO')
  String? get almacenDestino;
  @override
  @JsonKey(name: 'AGENCIA_TRANSPORTE')
  String? get agenciaTransporte;
  @override
  @JsonKey(name: 'DEVOLUCION_ESTADO_ID')
  String get devolucionEstadoId;
  @override
  @JsonKey(name: 'KILOS_DEVOLUCION')
  double get kilosDevolucion;
  @override
  @JsonKey(name: 'BULTOS')
  double get bultos;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;

  /// Create a copy of DevolucionDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DevolucionDTOImplCopyWith<_$DevolucionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
