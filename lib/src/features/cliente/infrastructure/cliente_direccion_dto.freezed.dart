// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_direccion_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClienteDireccionDTO _$ClienteDireccionDTOFromJson(Map<String, dynamic> json) {
  return _ClienteDireccionDTO.fromJson(json);
}

/// @nodoc
mixin _$ClienteDireccionDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION_ID')
  String? get direccionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE')
  String? get nombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION1')
  String? get direccion1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION2')
  String? get direccion2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'CODIGO_POSTAL')
  String? get codigoPostal => throw _privateConstructorUsedError;
  @JsonKey(name: 'POBLACION')
  String? get poblacion => throw _privateConstructorUsedError;
  @JsonKey(name: 'PROVINCIA')
  String? get provincia => throw _privateConstructorUsedError;
  @JsonKey(name: 'PAIS_ID')
  String? get paisId => throw _privateConstructorUsedError;
  @JsonKey(name: 'LATITUD')
  double get latitud => throw _privateConstructorUsedError;
  @JsonKey(name: 'LONGITUD')
  double get longitud => throw _privateConstructorUsedError;
  @JsonKey(name: 'PREDETERMINADA_SN')
  String? get predeterminada => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClienteDireccionDTOCopyWith<ClienteDireccionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteDireccionDTOCopyWith<$Res> {
  factory $ClienteDireccionDTOCopyWith(
          ClienteDireccionDTO value, $Res Function(ClienteDireccionDTO) then) =
      _$ClienteDireccionDTOCopyWithImpl<$Res, ClienteDireccionDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'DIRECCION_ID') String? direccionId,
      @JsonKey(name: 'NOMBRE') String? nombre,
      @JsonKey(name: 'DIRECCION1') String? direccion1,
      @JsonKey(name: 'DIRECCION2') String? direccion2,
      @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
      @JsonKey(name: 'POBLACION') String? poblacion,
      @JsonKey(name: 'PROVINCIA') String? provincia,
      @JsonKey(name: 'PAIS_ID') String? paisId,
      @JsonKey(name: 'LATITUD') double latitud,
      @JsonKey(name: 'LONGITUD') double longitud,
      @JsonKey(name: 'PREDETERMINADA_SN') String? predeterminada,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ClienteDireccionDTOCopyWithImpl<$Res, $Val extends ClienteDireccionDTO>
    implements $ClienteDireccionDTOCopyWith<$Res> {
  _$ClienteDireccionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? direccionId = freezed,
    Object? nombre = freezed,
    Object? direccion1 = freezed,
    Object? direccion2 = freezed,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? paisId = freezed,
    Object? latitud = null,
    Object? longitud = null,
    Object? predeterminada = freezed,
    Object? lastUpdated = null,
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
      paisId: freezed == paisId
          ? _value.paisId
          : paisId // ignore: cast_nullable_to_non_nullable
              as String?,
      latitud: null == latitud
          ? _value.latitud
          : latitud // ignore: cast_nullable_to_non_nullable
              as double,
      longitud: null == longitud
          ? _value.longitud
          : longitud // ignore: cast_nullable_to_non_nullable
              as double,
      predeterminada: freezed == predeterminada
          ? _value.predeterminada
          : predeterminada // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$ClienteDireccionDTOImplCopyWith<$Res>
    implements $ClienteDireccionDTOCopyWith<$Res> {
  factory _$$ClienteDireccionDTOImplCopyWith(_$ClienteDireccionDTOImpl value,
          $Res Function(_$ClienteDireccionDTOImpl) then) =
      __$$ClienteDireccionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'DIRECCION_ID') String? direccionId,
      @JsonKey(name: 'NOMBRE') String? nombre,
      @JsonKey(name: 'DIRECCION1') String? direccion1,
      @JsonKey(name: 'DIRECCION2') String? direccion2,
      @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
      @JsonKey(name: 'POBLACION') String? poblacion,
      @JsonKey(name: 'PROVINCIA') String? provincia,
      @JsonKey(name: 'PAIS_ID') String? paisId,
      @JsonKey(name: 'LATITUD') double latitud,
      @JsonKey(name: 'LONGITUD') double longitud,
      @JsonKey(name: 'PREDETERMINADA_SN') String? predeterminada,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$ClienteDireccionDTOImplCopyWithImpl<$Res>
    extends _$ClienteDireccionDTOCopyWithImpl<$Res, _$ClienteDireccionDTOImpl>
    implements _$$ClienteDireccionDTOImplCopyWith<$Res> {
  __$$ClienteDireccionDTOImplCopyWithImpl(_$ClienteDireccionDTOImpl _value,
      $Res Function(_$ClienteDireccionDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? direccionId = freezed,
    Object? nombre = freezed,
    Object? direccion1 = freezed,
    Object? direccion2 = freezed,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? paisId = freezed,
    Object? latitud = null,
    Object? longitud = null,
    Object? predeterminada = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$ClienteDireccionDTOImpl(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      direccionId: freezed == direccionId
          ? _value.direccionId
          : direccionId // ignore: cast_nullable_to_non_nullable
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
      paisId: freezed == paisId
          ? _value.paisId
          : paisId // ignore: cast_nullable_to_non_nullable
              as String?,
      latitud: null == latitud
          ? _value.latitud
          : latitud // ignore: cast_nullable_to_non_nullable
              as double,
      longitud: null == longitud
          ? _value.longitud
          : longitud // ignore: cast_nullable_to_non_nullable
              as double,
      predeterminada: freezed == predeterminada
          ? _value.predeterminada
          : predeterminada // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$ClienteDireccionDTOImpl extends _ClienteDireccionDTO {
  const _$ClienteDireccionDTOImpl(
      {@JsonKey(name: 'CLIENTE_ID') required this.clienteId,
      @JsonKey(name: 'DIRECCION_ID') required this.direccionId,
      @JsonKey(name: 'NOMBRE') this.nombre,
      @JsonKey(name: 'DIRECCION1') this.direccion1,
      @JsonKey(name: 'DIRECCION2') this.direccion2,
      @JsonKey(name: 'CODIGO_POSTAL') this.codigoPostal,
      @JsonKey(name: 'POBLACION') this.poblacion,
      @JsonKey(name: 'PROVINCIA') this.provincia,
      @JsonKey(name: 'PAIS_ID') this.paisId,
      @JsonKey(name: 'LATITUD') required this.latitud,
      @JsonKey(name: 'LONGITUD') required this.longitud,
      @JsonKey(name: 'PREDETERMINADA_SN') this.predeterminada,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$ClienteDireccionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClienteDireccionDTOImplFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String clienteId;
  @override
  @JsonKey(name: 'DIRECCION_ID')
  final String? direccionId;
  @override
  @JsonKey(name: 'NOMBRE')
  final String? nombre;
  @override
  @JsonKey(name: 'DIRECCION1')
  final String? direccion1;
  @override
  @JsonKey(name: 'DIRECCION2')
  final String? direccion2;
  @override
  @JsonKey(name: 'CODIGO_POSTAL')
  final String? codigoPostal;
  @override
  @JsonKey(name: 'POBLACION')
  final String? poblacion;
  @override
  @JsonKey(name: 'PROVINCIA')
  final String? provincia;
  @override
  @JsonKey(name: 'PAIS_ID')
  final String? paisId;
  @override
  @JsonKey(name: 'LATITUD')
  final double latitud;
  @override
  @JsonKey(name: 'LONGITUD')
  final double longitud;
  @override
  @JsonKey(name: 'PREDETERMINADA_SN')
  final String? predeterminada;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ClienteDireccionDTO(clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccion1: $direccion1, direccion2: $direccion2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, paisId: $paisId, latitud: $latitud, longitud: $longitud, predeterminada: $predeterminada, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteDireccionDTOImpl &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.direccionId, direccionId) ||
                other.direccionId == direccionId) &&
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
            (identical(other.paisId, paisId) || other.paisId == paisId) &&
            (identical(other.latitud, latitud) || other.latitud == latitud) &&
            (identical(other.longitud, longitud) ||
                other.longitud == longitud) &&
            (identical(other.predeterminada, predeterminada) ||
                other.predeterminada == predeterminada) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      clienteId,
      direccionId,
      nombre,
      direccion1,
      direccion2,
      codigoPostal,
      poblacion,
      provincia,
      paisId,
      latitud,
      longitud,
      predeterminada,
      lastUpdated,
      deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteDireccionDTOImplCopyWith<_$ClienteDireccionDTOImpl> get copyWith =>
      __$$ClienteDireccionDTOImplCopyWithImpl<_$ClienteDireccionDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClienteDireccionDTOImplToJson(
      this,
    );
  }
}

abstract class _ClienteDireccionDTO extends ClienteDireccionDTO {
  const factory _ClienteDireccionDTO(
          {@JsonKey(name: 'CLIENTE_ID') required final String clienteId,
          @JsonKey(name: 'DIRECCION_ID') required final String? direccionId,
          @JsonKey(name: 'NOMBRE') final String? nombre,
          @JsonKey(name: 'DIRECCION1') final String? direccion1,
          @JsonKey(name: 'DIRECCION2') final String? direccion2,
          @JsonKey(name: 'CODIGO_POSTAL') final String? codigoPostal,
          @JsonKey(name: 'POBLACION') final String? poblacion,
          @JsonKey(name: 'PROVINCIA') final String? provincia,
          @JsonKey(name: 'PAIS_ID') final String? paisId,
          @JsonKey(name: 'LATITUD') required final double latitud,
          @JsonKey(name: 'LONGITUD') required final double longitud,
          @JsonKey(name: 'PREDETERMINADA_SN') final String? predeterminada,
          @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
          @JsonKey(name: 'DELETED') final String deleted}) =
      _$ClienteDireccionDTOImpl;
  const _ClienteDireccionDTO._() : super._();

  factory _ClienteDireccionDTO.fromJson(Map<String, dynamic> json) =
      _$ClienteDireccionDTOImpl.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId;
  @override
  @JsonKey(name: 'DIRECCION_ID')
  String? get direccionId;
  @override
  @JsonKey(name: 'NOMBRE')
  String? get nombre;
  @override
  @JsonKey(name: 'DIRECCION1')
  String? get direccion1;
  @override
  @JsonKey(name: 'DIRECCION2')
  String? get direccion2;
  @override
  @JsonKey(name: 'CODIGO_POSTAL')
  String? get codigoPostal;
  @override
  @JsonKey(name: 'POBLACION')
  String? get poblacion;
  @override
  @JsonKey(name: 'PROVINCIA')
  String? get provincia;
  @override
  @JsonKey(name: 'PAIS_ID')
  String? get paisId;
  @override
  @JsonKey(name: 'LATITUD')
  double get latitud;
  @override
  @JsonKey(name: 'LONGITUD')
  double get longitud;
  @override
  @JsonKey(name: 'PREDETERMINADA_SN')
  String? get predeterminada;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$ClienteDireccionDTOImplCopyWith<_$ClienteDireccionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
