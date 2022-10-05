// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  String get direccionId => throw _privateConstructorUsedError;
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
  double get longitud =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'PREDETERMINADA') required String predeterminada,
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
      _$ClienteDireccionDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'DIRECCION_ID') String direccionId,
      @JsonKey(name: 'NOMBRE') String? nombre,
      @JsonKey(name: 'DIRECCION1') String? direccion1,
      @JsonKey(name: 'DIRECCION2') String? direccion2,
      @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
      @JsonKey(name: 'POBLACION') String? poblacion,
      @JsonKey(name: 'PROVINCIA') String? provincia,
      @JsonKey(name: 'PAIS_ID') String? paisId,
      @JsonKey(name: 'LATITUD') double latitud,
      @JsonKey(name: 'LONGITUD') double longitud,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ClienteDireccionDTOCopyWithImpl<$Res>
    implements $ClienteDireccionDTOCopyWith<$Res> {
  _$ClienteDireccionDTOCopyWithImpl(this._value, this._then);

  final ClienteDireccionDTO _value;
  // ignore: unused_field
  final $Res Function(ClienteDireccionDTO) _then;

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
    Object? paisId = freezed,
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
      paisId: paisId == freezed
          ? _value.paisId
          : paisId // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ClienteDireccionDTOCopyWith<$Res>
    implements $ClienteDireccionDTOCopyWith<$Res> {
  factory _$$_ClienteDireccionDTOCopyWith(_$_ClienteDireccionDTO value,
          $Res Function(_$_ClienteDireccionDTO) then) =
      __$$_ClienteDireccionDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'DIRECCION_ID') String direccionId,
      @JsonKey(name: 'NOMBRE') String? nombre,
      @JsonKey(name: 'DIRECCION1') String? direccion1,
      @JsonKey(name: 'DIRECCION2') String? direccion2,
      @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
      @JsonKey(name: 'POBLACION') String? poblacion,
      @JsonKey(name: 'PROVINCIA') String? provincia,
      @JsonKey(name: 'PAIS_ID') String? paisId,
      @JsonKey(name: 'LATITUD') double latitud,
      @JsonKey(name: 'LONGITUD') double longitud,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ClienteDireccionDTOCopyWithImpl<$Res>
    extends _$ClienteDireccionDTOCopyWithImpl<$Res>
    implements _$$_ClienteDireccionDTOCopyWith<$Res> {
  __$$_ClienteDireccionDTOCopyWithImpl(_$_ClienteDireccionDTO _value,
      $Res Function(_$_ClienteDireccionDTO) _then)
      : super(_value, (v) => _then(v as _$_ClienteDireccionDTO));

  @override
  _$_ClienteDireccionDTO get _value => super._value as _$_ClienteDireccionDTO;

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
    Object? paisId = freezed,
    Object? latitud = freezed,
    Object? longitud = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ClienteDireccionDTO(
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
      paisId: paisId == freezed
          ? _value.paisId
          : paisId // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClienteDireccionDTO extends _ClienteDireccionDTO {
  const _$_ClienteDireccionDTO(
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
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_ClienteDireccionDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ClienteDireccionDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String clienteId;
  @override
  @JsonKey(name: 'DIRECCION_ID')
  final String direccionId;
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
// @JsonKey(name: 'PREDETERMINADA') required String predeterminada,
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ClienteDireccionDTO(clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccion1: $direccion1, direccion2: $direccion2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, paisId: $paisId, latitud: $latitud, longitud: $longitud, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteDireccionDTO &&
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
            const DeepCollectionEquality().equals(other.paisId, paisId) &&
            const DeepCollectionEquality().equals(other.latitud, latitud) &&
            const DeepCollectionEquality().equals(other.longitud, longitud) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
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
      const DeepCollectionEquality().hash(paisId),
      const DeepCollectionEquality().hash(latitud),
      const DeepCollectionEquality().hash(longitud),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ClienteDireccionDTOCopyWith<_$_ClienteDireccionDTO> get copyWith =>
      __$$_ClienteDireccionDTOCopyWithImpl<_$_ClienteDireccionDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClienteDireccionDTOToJson(
      this,
    );
  }
}

abstract class _ClienteDireccionDTO extends ClienteDireccionDTO {
  const factory _ClienteDireccionDTO(
      {@JsonKey(name: 'CLIENTE_ID') required final String clienteId,
      @JsonKey(name: 'DIRECCION_ID') required final String direccionId,
      @JsonKey(name: 'NOMBRE') final String? nombre,
      @JsonKey(name: 'DIRECCION1') final String? direccion1,
      @JsonKey(name: 'DIRECCION2') final String? direccion2,
      @JsonKey(name: 'CODIGO_POSTAL') final String? codigoPostal,
      @JsonKey(name: 'POBLACION') final String? poblacion,
      @JsonKey(name: 'PROVINCIA') final String? provincia,
      @JsonKey(name: 'PAIS_ID') final String? paisId,
      @JsonKey(name: 'LATITUD') required final double latitud,
      @JsonKey(name: 'LONGITUD') required final double longitud,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_ClienteDireccionDTO;
  const _ClienteDireccionDTO._() : super._();

  factory _ClienteDireccionDTO.fromJson(Map<String, dynamic> json) =
      _$_ClienteDireccionDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId;
  @override
  @JsonKey(name: 'DIRECCION_ID')
  String get direccionId;
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
  @override // @JsonKey(name: 'PREDETERMINADA') required String predeterminada,
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteDireccionDTOCopyWith<_$_ClienteDireccionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
