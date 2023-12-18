// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_contacto_imp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClienteContactoImpDTO _$ClienteContactoImpDTOFromJson(
    Map<String, dynamic> json) {
  return _ClienteContactoImpDTO.fromJson(json);
}

/// @nodoc
mixin _$ClienteContactoImpDTO {
  @JsonKey(name: 'GUID')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA')
  DateTime get fecha => throw _privateConstructorUsedError;
  @JsonKey(name: 'USUARIO_ID')
  String get usuarioId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CONTACTO_ID')
  String? get contactoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'OBSERVACIONES')
  String? get observaciones => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE')
  String? get nombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'APELLIDO1')
  String? get apellido1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'APELLIDO2')
  String? get apellido2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'TELEFONO1')
  String? get telefono1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'TELEFONO2')
  String? get telefono2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'EMAIL')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'ENVIADO', defaultValue: 'N')
  String get enviado => throw _privateConstructorUsedError;
  @JsonKey(name: 'BORRAR', defaultValue: 'N')
  String get borrar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClienteContactoImpDTOCopyWith<ClienteContactoImpDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteContactoImpDTOCopyWith<$Res> {
  factory $ClienteContactoImpDTOCopyWith(ClienteContactoImpDTO value,
          $Res Function(ClienteContactoImpDTO) then) =
      _$ClienteContactoImpDTOCopyWithImpl<$Res, ClienteContactoImpDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'GUID') String id,
      @JsonKey(name: 'FECHA') DateTime fecha,
      @JsonKey(name: 'USUARIO_ID') String usuarioId,
      @JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'CONTACTO_ID') String? contactoId,
      @JsonKey(name: 'OBSERVACIONES') String? observaciones,
      @JsonKey(name: 'NOMBRE') String? nombre,
      @JsonKey(name: 'APELLIDO1') String? apellido1,
      @JsonKey(name: 'APELLIDO2') String? apellido2,
      @JsonKey(name: 'TELEFONO1') String? telefono1,
      @JsonKey(name: 'TELEFONO2') String? telefono2,
      @JsonKey(name: 'EMAIL') String? email,
      @JsonKey(name: 'ENVIADO', defaultValue: 'N') String enviado,
      @JsonKey(name: 'BORRAR', defaultValue: 'N') String borrar});
}

/// @nodoc
class _$ClienteContactoImpDTOCopyWithImpl<$Res,
        $Val extends ClienteContactoImpDTO>
    implements $ClienteContactoImpDTOCopyWith<$Res> {
  _$ClienteContactoImpDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fecha = null,
    Object? usuarioId = null,
    Object? clienteId = null,
    Object? contactoId = freezed,
    Object? observaciones = freezed,
    Object? nombre = freezed,
    Object? apellido1 = freezed,
    Object? apellido2 = freezed,
    Object? telefono1 = freezed,
    Object? telefono2 = freezed,
    Object? email = freezed,
    Object? enviado = null,
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
      contactoId: freezed == contactoId
          ? _value.contactoId
          : contactoId // ignore: cast_nullable_to_non_nullable
              as String?,
      observaciones: freezed == observaciones
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as String?,
      nombre: freezed == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      apellido1: freezed == apellido1
          ? _value.apellido1
          : apellido1 // ignore: cast_nullable_to_non_nullable
              as String?,
      apellido2: freezed == apellido2
          ? _value.apellido2
          : apellido2 // ignore: cast_nullable_to_non_nullable
              as String?,
      telefono1: freezed == telefono1
          ? _value.telefono1
          : telefono1 // ignore: cast_nullable_to_non_nullable
              as String?,
      telefono2: freezed == telefono2
          ? _value.telefono2
          : telefono2 // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      enviado: null == enviado
          ? _value.enviado
          : enviado // ignore: cast_nullable_to_non_nullable
              as String,
      borrar: null == borrar
          ? _value.borrar
          : borrar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClienteContactoImpDTOImplCopyWith<$Res>
    implements $ClienteContactoImpDTOCopyWith<$Res> {
  factory _$$ClienteContactoImpDTOImplCopyWith(
          _$ClienteContactoImpDTOImpl value,
          $Res Function(_$ClienteContactoImpDTOImpl) then) =
      __$$ClienteContactoImpDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'GUID') String id,
      @JsonKey(name: 'FECHA') DateTime fecha,
      @JsonKey(name: 'USUARIO_ID') String usuarioId,
      @JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'CONTACTO_ID') String? contactoId,
      @JsonKey(name: 'OBSERVACIONES') String? observaciones,
      @JsonKey(name: 'NOMBRE') String? nombre,
      @JsonKey(name: 'APELLIDO1') String? apellido1,
      @JsonKey(name: 'APELLIDO2') String? apellido2,
      @JsonKey(name: 'TELEFONO1') String? telefono1,
      @JsonKey(name: 'TELEFONO2') String? telefono2,
      @JsonKey(name: 'EMAIL') String? email,
      @JsonKey(name: 'ENVIADO', defaultValue: 'N') String enviado,
      @JsonKey(name: 'BORRAR', defaultValue: 'N') String borrar});
}

/// @nodoc
class __$$ClienteContactoImpDTOImplCopyWithImpl<$Res>
    extends _$ClienteContactoImpDTOCopyWithImpl<$Res,
        _$ClienteContactoImpDTOImpl>
    implements _$$ClienteContactoImpDTOImplCopyWith<$Res> {
  __$$ClienteContactoImpDTOImplCopyWithImpl(_$ClienteContactoImpDTOImpl _value,
      $Res Function(_$ClienteContactoImpDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fecha = null,
    Object? usuarioId = null,
    Object? clienteId = null,
    Object? contactoId = freezed,
    Object? observaciones = freezed,
    Object? nombre = freezed,
    Object? apellido1 = freezed,
    Object? apellido2 = freezed,
    Object? telefono1 = freezed,
    Object? telefono2 = freezed,
    Object? email = freezed,
    Object? enviado = null,
    Object? borrar = null,
  }) {
    return _then(_$ClienteContactoImpDTOImpl(
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
      contactoId: freezed == contactoId
          ? _value.contactoId
          : contactoId // ignore: cast_nullable_to_non_nullable
              as String?,
      observaciones: freezed == observaciones
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as String?,
      nombre: freezed == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      apellido1: freezed == apellido1
          ? _value.apellido1
          : apellido1 // ignore: cast_nullable_to_non_nullable
              as String?,
      apellido2: freezed == apellido2
          ? _value.apellido2
          : apellido2 // ignore: cast_nullable_to_non_nullable
              as String?,
      telefono1: freezed == telefono1
          ? _value.telefono1
          : telefono1 // ignore: cast_nullable_to_non_nullable
              as String?,
      telefono2: freezed == telefono2
          ? _value.telefono2
          : telefono2 // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      enviado: null == enviado
          ? _value.enviado
          : enviado // ignore: cast_nullable_to_non_nullable
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
class _$ClienteContactoImpDTOImpl extends _ClienteContactoImpDTO {
  const _$ClienteContactoImpDTOImpl(
      {@JsonKey(name: 'GUID') required this.id,
      @JsonKey(name: 'FECHA') required this.fecha,
      @JsonKey(name: 'USUARIO_ID') required this.usuarioId,
      @JsonKey(name: 'CLIENTE_ID') required this.clienteId,
      @JsonKey(name: 'CONTACTO_ID') required this.contactoId,
      @JsonKey(name: 'OBSERVACIONES') this.observaciones,
      @JsonKey(name: 'NOMBRE') this.nombre,
      @JsonKey(name: 'APELLIDO1') this.apellido1,
      @JsonKey(name: 'APELLIDO2') this.apellido2,
      @JsonKey(name: 'TELEFONO1') this.telefono1,
      @JsonKey(name: 'TELEFONO2') this.telefono2,
      @JsonKey(name: 'EMAIL') this.email,
      @JsonKey(name: 'ENVIADO', defaultValue: 'N') required this.enviado,
      @JsonKey(name: 'BORRAR', defaultValue: 'N') required this.borrar})
      : super._();

  factory _$ClienteContactoImpDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClienteContactoImpDTOImplFromJson(json);

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
  @JsonKey(name: 'CONTACTO_ID')
  final String? contactoId;
  @override
  @JsonKey(name: 'OBSERVACIONES')
  final String? observaciones;
  @override
  @JsonKey(name: 'NOMBRE')
  final String? nombre;
  @override
  @JsonKey(name: 'APELLIDO1')
  final String? apellido1;
  @override
  @JsonKey(name: 'APELLIDO2')
  final String? apellido2;
  @override
  @JsonKey(name: 'TELEFONO1')
  final String? telefono1;
  @override
  @JsonKey(name: 'TELEFONO2')
  final String? telefono2;
  @override
  @JsonKey(name: 'EMAIL')
  final String? email;
  @override
  @JsonKey(name: 'ENVIADO', defaultValue: 'N')
  final String enviado;
  @override
  @JsonKey(name: 'BORRAR', defaultValue: 'N')
  final String borrar;

  @override
  String toString() {
    return 'ClienteContactoImpDTO(id: $id, fecha: $fecha, usuarioId: $usuarioId, clienteId: $clienteId, contactoId: $contactoId, observaciones: $observaciones, nombre: $nombre, apellido1: $apellido1, apellido2: $apellido2, telefono1: $telefono1, telefono2: $telefono2, email: $email, enviado: $enviado, borrar: $borrar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteContactoImpDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.usuarioId, usuarioId) ||
                other.usuarioId == usuarioId) &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.contactoId, contactoId) ||
                other.contactoId == contactoId) &&
            (identical(other.observaciones, observaciones) ||
                other.observaciones == observaciones) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.apellido1, apellido1) ||
                other.apellido1 == apellido1) &&
            (identical(other.apellido2, apellido2) ||
                other.apellido2 == apellido2) &&
            (identical(other.telefono1, telefono1) ||
                other.telefono1 == telefono1) &&
            (identical(other.telefono2, telefono2) ||
                other.telefono2 == telefono2) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.enviado, enviado) || other.enviado == enviado) &&
            (identical(other.borrar, borrar) || other.borrar == borrar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fecha,
      usuarioId,
      clienteId,
      contactoId,
      observaciones,
      nombre,
      apellido1,
      apellido2,
      telefono1,
      telefono2,
      email,
      enviado,
      borrar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteContactoImpDTOImplCopyWith<_$ClienteContactoImpDTOImpl>
      get copyWith => __$$ClienteContactoImpDTOImplCopyWithImpl<
          _$ClienteContactoImpDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClienteContactoImpDTOImplToJson(
      this,
    );
  }
}

abstract class _ClienteContactoImpDTO extends ClienteContactoImpDTO {
  const factory _ClienteContactoImpDTO(
      {@JsonKey(name: 'GUID') required final String id,
      @JsonKey(name: 'FECHA') required final DateTime fecha,
      @JsonKey(name: 'USUARIO_ID') required final String usuarioId,
      @JsonKey(name: 'CLIENTE_ID') required final String clienteId,
      @JsonKey(name: 'CONTACTO_ID') required final String? contactoId,
      @JsonKey(name: 'OBSERVACIONES') final String? observaciones,
      @JsonKey(name: 'NOMBRE') final String? nombre,
      @JsonKey(name: 'APELLIDO1') final String? apellido1,
      @JsonKey(name: 'APELLIDO2') final String? apellido2,
      @JsonKey(name: 'TELEFONO1') final String? telefono1,
      @JsonKey(name: 'TELEFONO2') final String? telefono2,
      @JsonKey(name: 'EMAIL') final String? email,
      @JsonKey(name: 'ENVIADO', defaultValue: 'N')
      required final String enviado,
      @JsonKey(name: 'BORRAR', defaultValue: 'N')
      required final String borrar}) = _$ClienteContactoImpDTOImpl;
  const _ClienteContactoImpDTO._() : super._();

  factory _ClienteContactoImpDTO.fromJson(Map<String, dynamic> json) =
      _$ClienteContactoImpDTOImpl.fromJson;

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
  @JsonKey(name: 'CONTACTO_ID')
  String? get contactoId;
  @override
  @JsonKey(name: 'OBSERVACIONES')
  String? get observaciones;
  @override
  @JsonKey(name: 'NOMBRE')
  String? get nombre;
  @override
  @JsonKey(name: 'APELLIDO1')
  String? get apellido1;
  @override
  @JsonKey(name: 'APELLIDO2')
  String? get apellido2;
  @override
  @JsonKey(name: 'TELEFONO1')
  String? get telefono1;
  @override
  @JsonKey(name: 'TELEFONO2')
  String? get telefono2;
  @override
  @JsonKey(name: 'EMAIL')
  String? get email;
  @override
  @JsonKey(name: 'ENVIADO', defaultValue: 'N')
  String get enviado;
  @override
  @JsonKey(name: 'BORRAR', defaultValue: 'N')
  String get borrar;
  @override
  @JsonKey(ignore: true)
  _$$ClienteContactoImpDTOImplCopyWith<_$ClienteContactoImpDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
