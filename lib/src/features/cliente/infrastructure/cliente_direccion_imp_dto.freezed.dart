// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_direccion_imp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClienteDireccionImpDTO _$ClienteDireccionImpDTOFromJson(
    Map<String, dynamic> json) {
  return _ClienteDireccionImpDTO.fromJson(json);
}

/// @nodoc
mixin _$ClienteDireccionImpDTO {
  @JsonKey(name: 'GUID')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA')
  DateTime get fecha => throw _privateConstructorUsedError;
  @JsonKey(name: 'USUARIO_ID')
  String get usuarioId => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'TELEFONO')
  String? get telefono => throw _privateConstructorUsedError;
  @JsonKey(name: 'ENVIADA', defaultValue: 'N')
  String get enviada => throw _privateConstructorUsedError;
  @JsonKey(name: 'BORRAR', defaultValue: 'N')
  String get borrar => throw _privateConstructorUsedError;

  /// Serializes this ClienteDireccionImpDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClienteDireccionImpDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClienteDireccionImpDTOCopyWith<ClienteDireccionImpDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteDireccionImpDTOCopyWith<$Res> {
  factory $ClienteDireccionImpDTOCopyWith(ClienteDireccionImpDTO value,
          $Res Function(ClienteDireccionImpDTO) then) =
      _$ClienteDireccionImpDTOCopyWithImpl<$Res, ClienteDireccionImpDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'GUID') String id,
      @JsonKey(name: 'FECHA') DateTime fecha,
      @JsonKey(name: 'USUARIO_ID') String usuarioId,
      @JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'DIRECCION_ID') String? direccionId,
      @JsonKey(name: 'NOMBRE') String? nombre,
      @JsonKey(name: 'DIRECCION1') String? direccion1,
      @JsonKey(name: 'DIRECCION2') String? direccion2,
      @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
      @JsonKey(name: 'POBLACION') String? poblacion,
      @JsonKey(name: 'PROVINCIA') String? provincia,
      @JsonKey(name: 'PAIS_ID') String? paisId,
      @JsonKey(name: 'TELEFONO') String? telefono,
      @JsonKey(name: 'ENVIADA', defaultValue: 'N') String enviada,
      @JsonKey(name: 'BORRAR', defaultValue: 'N') String borrar});
}

/// @nodoc
class _$ClienteDireccionImpDTOCopyWithImpl<$Res,
        $Val extends ClienteDireccionImpDTO>
    implements $ClienteDireccionImpDTOCopyWith<$Res> {
  _$ClienteDireccionImpDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClienteDireccionImpDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fecha = null,
    Object? usuarioId = null,
    Object? clienteId = null,
    Object? direccionId = freezed,
    Object? nombre = freezed,
    Object? direccion1 = freezed,
    Object? direccion2 = freezed,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? paisId = freezed,
    Object? telefono = freezed,
    Object? enviada = null,
    Object? borrar = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usuarioId: null == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as String,
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
      telefono: freezed == telefono
          ? _value.telefono
          : telefono // ignore: cast_nullable_to_non_nullable
              as String?,
      enviada: null == enviada
          ? _value.enviada
          : enviada // ignore: cast_nullable_to_non_nullable
              as String,
      borrar: null == borrar
          ? _value.borrar
          : borrar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClienteDireccionImpDTOImplCopyWith<$Res>
    implements $ClienteDireccionImpDTOCopyWith<$Res> {
  factory _$$ClienteDireccionImpDTOImplCopyWith(
          _$ClienteDireccionImpDTOImpl value,
          $Res Function(_$ClienteDireccionImpDTOImpl) then) =
      __$$ClienteDireccionImpDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'GUID') String id,
      @JsonKey(name: 'FECHA') DateTime fecha,
      @JsonKey(name: 'USUARIO_ID') String usuarioId,
      @JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'DIRECCION_ID') String? direccionId,
      @JsonKey(name: 'NOMBRE') String? nombre,
      @JsonKey(name: 'DIRECCION1') String? direccion1,
      @JsonKey(name: 'DIRECCION2') String? direccion2,
      @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
      @JsonKey(name: 'POBLACION') String? poblacion,
      @JsonKey(name: 'PROVINCIA') String? provincia,
      @JsonKey(name: 'PAIS_ID') String? paisId,
      @JsonKey(name: 'TELEFONO') String? telefono,
      @JsonKey(name: 'ENVIADA', defaultValue: 'N') String enviada,
      @JsonKey(name: 'BORRAR', defaultValue: 'N') String borrar});
}

/// @nodoc
class __$$ClienteDireccionImpDTOImplCopyWithImpl<$Res>
    extends _$ClienteDireccionImpDTOCopyWithImpl<$Res,
        _$ClienteDireccionImpDTOImpl>
    implements _$$ClienteDireccionImpDTOImplCopyWith<$Res> {
  __$$ClienteDireccionImpDTOImplCopyWithImpl(
      _$ClienteDireccionImpDTOImpl _value,
      $Res Function(_$ClienteDireccionImpDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClienteDireccionImpDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fecha = null,
    Object? usuarioId = null,
    Object? clienteId = null,
    Object? direccionId = freezed,
    Object? nombre = freezed,
    Object? direccion1 = freezed,
    Object? direccion2 = freezed,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? paisId = freezed,
    Object? telefono = freezed,
    Object? enviada = null,
    Object? borrar = null,
  }) {
    return _then(_$ClienteDireccionImpDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usuarioId: null == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as String,
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
      telefono: freezed == telefono
          ? _value.telefono
          : telefono // ignore: cast_nullable_to_non_nullable
              as String?,
      enviada: null == enviada
          ? _value.enviada
          : enviada // ignore: cast_nullable_to_non_nullable
              as String,
      borrar: null == borrar
          ? _value.borrar
          : borrar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClienteDireccionImpDTOImpl extends _ClienteDireccionImpDTO {
  const _$ClienteDireccionImpDTOImpl(
      {@JsonKey(name: 'GUID') required this.id,
      @JsonKey(name: 'FECHA') required this.fecha,
      @JsonKey(name: 'USUARIO_ID') required this.usuarioId,
      @JsonKey(name: 'CLIENTE_ID') required this.clienteId,
      @JsonKey(name: 'DIRECCION_ID') required this.direccionId,
      @JsonKey(name: 'NOMBRE') this.nombre,
      @JsonKey(name: 'DIRECCION1') this.direccion1,
      @JsonKey(name: 'DIRECCION2') this.direccion2,
      @JsonKey(name: 'CODIGO_POSTAL') this.codigoPostal,
      @JsonKey(name: 'POBLACION') this.poblacion,
      @JsonKey(name: 'PROVINCIA') this.provincia,
      @JsonKey(name: 'PAIS_ID') this.paisId,
      @JsonKey(name: 'TELEFONO') this.telefono,
      @JsonKey(name: 'ENVIADA', defaultValue: 'N') required this.enviada,
      @JsonKey(name: 'BORRAR', defaultValue: 'N') required this.borrar})
      : super._();

  factory _$ClienteDireccionImpDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClienteDireccionImpDTOImplFromJson(json);

  @override
  @JsonKey(name: 'GUID')
  final String id;
  @override
  @JsonKey(name: 'FECHA')
  final DateTime fecha;
  @override
  @JsonKey(name: 'USUARIO_ID')
  final String usuarioId;
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
  @JsonKey(name: 'TELEFONO')
  final String? telefono;
  @override
  @JsonKey(name: 'ENVIADA', defaultValue: 'N')
  final String enviada;
  @override
  @JsonKey(name: 'BORRAR', defaultValue: 'N')
  final String borrar;

  @override
  String toString() {
    return 'ClienteDireccionImpDTO(id: $id, fecha: $fecha, usuarioId: $usuarioId, clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccion1: $direccion1, direccion2: $direccion2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, paisId: $paisId, telefono: $telefono, enviada: $enviada, borrar: $borrar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteDireccionImpDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.usuarioId, usuarioId) ||
                other.usuarioId == usuarioId) &&
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
            (identical(other.telefono, telefono) ||
                other.telefono == telefono) &&
            (identical(other.enviada, enviada) || other.enviada == enviada) &&
            (identical(other.borrar, borrar) || other.borrar == borrar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fecha,
      usuarioId,
      clienteId,
      direccionId,
      nombre,
      direccion1,
      direccion2,
      codigoPostal,
      poblacion,
      provincia,
      paisId,
      telefono,
      enviada,
      borrar);

  /// Create a copy of ClienteDireccionImpDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteDireccionImpDTOImplCopyWith<_$ClienteDireccionImpDTOImpl>
      get copyWith => __$$ClienteDireccionImpDTOImplCopyWithImpl<
          _$ClienteDireccionImpDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClienteDireccionImpDTOImplToJson(
      this,
    );
  }
}

abstract class _ClienteDireccionImpDTO extends ClienteDireccionImpDTO {
  const factory _ClienteDireccionImpDTO(
      {@JsonKey(name: 'GUID') required final String id,
      @JsonKey(name: 'FECHA') required final DateTime fecha,
      @JsonKey(name: 'USUARIO_ID') required final String usuarioId,
      @JsonKey(name: 'CLIENTE_ID') required final String clienteId,
      @JsonKey(name: 'DIRECCION_ID') required final String? direccionId,
      @JsonKey(name: 'NOMBRE') final String? nombre,
      @JsonKey(name: 'DIRECCION1') final String? direccion1,
      @JsonKey(name: 'DIRECCION2') final String? direccion2,
      @JsonKey(name: 'CODIGO_POSTAL') final String? codigoPostal,
      @JsonKey(name: 'POBLACION') final String? poblacion,
      @JsonKey(name: 'PROVINCIA') final String? provincia,
      @JsonKey(name: 'PAIS_ID') final String? paisId,
      @JsonKey(name: 'TELEFONO') final String? telefono,
      @JsonKey(name: 'ENVIADA', defaultValue: 'N')
      required final String enviada,
      @JsonKey(name: 'BORRAR', defaultValue: 'N')
      required final String borrar}) = _$ClienteDireccionImpDTOImpl;
  const _ClienteDireccionImpDTO._() : super._();

  factory _ClienteDireccionImpDTO.fromJson(Map<String, dynamic> json) =
      _$ClienteDireccionImpDTOImpl.fromJson;

  @override
  @JsonKey(name: 'GUID')
  String get id;
  @override
  @JsonKey(name: 'FECHA')
  DateTime get fecha;
  @override
  @JsonKey(name: 'USUARIO_ID')
  String get usuarioId;
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
  @JsonKey(name: 'TELEFONO')
  String? get telefono;
  @override
  @JsonKey(name: 'ENVIADA', defaultValue: 'N')
  String get enviada;
  @override
  @JsonKey(name: 'BORRAR', defaultValue: 'N')
  String get borrar;

  /// Create a copy of ClienteDireccionImpDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClienteDireccionImpDTOImplCopyWith<_$ClienteDireccionImpDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
