// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_contacto_modificacion_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClienteContactoLocalDTO _$ClienteContactoLocalDTOFromJson(
    Map<String, dynamic> json) {
  return _ClienteContactoLocalDTO.fromJson(json);
}

/// @nodoc
mixin _$ClienteContactoLocalDTO {
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
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'ENVIADO')
  String get enviado => throw _privateConstructorUsedError;
  @JsonKey(name: 'TRATADO')
  String get tratado => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClienteContactoLocalDTOCopyWith<ClienteContactoLocalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteContactoLocalDTOCopyWith<$Res> {
  factory $ClienteContactoLocalDTOCopyWith(ClienteContactoLocalDTO value,
          $Res Function(ClienteContactoLocalDTO) then) =
      _$ClienteContactoLocalDTOCopyWithImpl<$Res, ClienteContactoLocalDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'CONTACTO_ID') String? contactoId,
      @JsonKey(name: 'OBSERVACIONES') String? observaciones,
      @JsonKey(name: 'NOMBRE') String? nombre,
      @JsonKey(name: 'APELLIDO1') String? apellido1,
      @JsonKey(name: 'APELLIDO2') String? apellido2,
      @JsonKey(name: 'TELEFONO1') String? telefono1,
      @JsonKey(name: 'TELEFONO2') String? telefono2,
      @JsonKey(name: 'EMAIL') String? email,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'ENVIADO') String enviado,
      @JsonKey(name: 'TRATADO') String tratado,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ClienteContactoLocalDTOCopyWithImpl<$Res,
        $Val extends ClienteContactoLocalDTO>
    implements $ClienteContactoLocalDTOCopyWith<$Res> {
  _$ClienteContactoLocalDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? contactoId = freezed,
    Object? observaciones = freezed,
    Object? nombre = freezed,
    Object? apellido1 = freezed,
    Object? apellido2 = freezed,
    Object? telefono1 = freezed,
    Object? telefono2 = freezed,
    Object? email = freezed,
    Object? lastUpdated = null,
    Object? enviado = null,
    Object? tratado = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
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
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      enviado: null == enviado
          ? _value.enviado
          : enviado // ignore: cast_nullable_to_non_nullable
              as String,
      tratado: null == tratado
          ? _value.tratado
          : tratado // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClienteContactoLocalDTOCopyWith<$Res>
    implements $ClienteContactoLocalDTOCopyWith<$Res> {
  factory _$$_ClienteContactoLocalDTOCopyWith(_$_ClienteContactoLocalDTO value,
          $Res Function(_$_ClienteContactoLocalDTO) then) =
      __$$_ClienteContactoLocalDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'CONTACTO_ID') String? contactoId,
      @JsonKey(name: 'OBSERVACIONES') String? observaciones,
      @JsonKey(name: 'NOMBRE') String? nombre,
      @JsonKey(name: 'APELLIDO1') String? apellido1,
      @JsonKey(name: 'APELLIDO2') String? apellido2,
      @JsonKey(name: 'TELEFONO1') String? telefono1,
      @JsonKey(name: 'TELEFONO2') String? telefono2,
      @JsonKey(name: 'EMAIL') String? email,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'ENVIADO') String enviado,
      @JsonKey(name: 'TRATADO') String tratado,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ClienteContactoLocalDTOCopyWithImpl<$Res>
    extends _$ClienteContactoLocalDTOCopyWithImpl<$Res,
        _$_ClienteContactoLocalDTO>
    implements _$$_ClienteContactoLocalDTOCopyWith<$Res> {
  __$$_ClienteContactoLocalDTOCopyWithImpl(_$_ClienteContactoLocalDTO _value,
      $Res Function(_$_ClienteContactoLocalDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? contactoId = freezed,
    Object? observaciones = freezed,
    Object? nombre = freezed,
    Object? apellido1 = freezed,
    Object? apellido2 = freezed,
    Object? telefono1 = freezed,
    Object? telefono2 = freezed,
    Object? email = freezed,
    Object? lastUpdated = null,
    Object? enviado = null,
    Object? tratado = null,
    Object? deleted = null,
  }) {
    return _then(_$_ClienteContactoLocalDTO(
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
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      enviado: null == enviado
          ? _value.enviado
          : enviado // ignore: cast_nullable_to_non_nullable
              as String,
      tratado: null == tratado
          ? _value.tratado
          : tratado // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClienteContactoLocalDTO extends _ClienteContactoLocalDTO {
  const _$_ClienteContactoLocalDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.clienteId,
      @JsonKey(name: 'CONTACTO_ID') required this.contactoId,
      @JsonKey(name: 'OBSERVACIONES') this.observaciones,
      @JsonKey(name: 'NOMBRE') this.nombre,
      @JsonKey(name: 'APELLIDO1') this.apellido1,
      @JsonKey(name: 'APELLIDO2') this.apellido2,
      @JsonKey(name: 'TELEFONO1') this.telefono1,
      @JsonKey(name: 'TELEFONO2') this.telefono2,
      @JsonKey(name: 'EMAIL') this.email,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'ENVIADO') this.enviado = 'N',
      @JsonKey(name: 'TRATADO') this.tratado = 'N',
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_ClienteContactoLocalDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ClienteContactoLocalDTOFromJson(json);

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
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'ENVIADO')
  final String enviado;
  @override
  @JsonKey(name: 'TRATADO')
  final String tratado;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ClienteContactoLocalDTO(clienteId: $clienteId, contactoId: $contactoId, observaciones: $observaciones, nombre: $nombre, apellido1: $apellido1, apellido2: $apellido2, telefono1: $telefono1, telefono2: $telefono2, email: $email, lastUpdated: $lastUpdated, enviado: $enviado, tratado: $tratado, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteContactoLocalDTO &&
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
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.enviado, enviado) || other.enviado == enviado) &&
            (identical(other.tratado, tratado) || other.tratado == tratado) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      clienteId,
      contactoId,
      observaciones,
      nombre,
      apellido1,
      apellido2,
      telefono1,
      telefono2,
      email,
      lastUpdated,
      enviado,
      tratado,
      deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClienteContactoLocalDTOCopyWith<_$_ClienteContactoLocalDTO>
      get copyWith =>
          __$$_ClienteContactoLocalDTOCopyWithImpl<_$_ClienteContactoLocalDTO>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClienteContactoLocalDTOToJson(
      this,
    );
  }
}

abstract class _ClienteContactoLocalDTO extends ClienteContactoLocalDTO {
  const factory _ClienteContactoLocalDTO(
          {@JsonKey(name: 'CLIENTE_ID') required final String clienteId,
          @JsonKey(name: 'CONTACTO_ID') required final String? contactoId,
          @JsonKey(name: 'OBSERVACIONES') final String? observaciones,
          @JsonKey(name: 'NOMBRE') final String? nombre,
          @JsonKey(name: 'APELLIDO1') final String? apellido1,
          @JsonKey(name: 'APELLIDO2') final String? apellido2,
          @JsonKey(name: 'TELEFONO1') final String? telefono1,
          @JsonKey(name: 'TELEFONO2') final String? telefono2,
          @JsonKey(name: 'EMAIL') final String? email,
          @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
          @JsonKey(name: 'ENVIADO') final String enviado,
          @JsonKey(name: 'TRATADO') final String tratado,
          @JsonKey(name: 'DELETED') final String deleted}) =
      _$_ClienteContactoLocalDTO;
  const _ClienteContactoLocalDTO._() : super._();

  factory _ClienteContactoLocalDTO.fromJson(Map<String, dynamic> json) =
      _$_ClienteContactoLocalDTO.fromJson;

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
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'ENVIADO')
  String get enviado;
  @override
  @JsonKey(name: 'TRATADO')
  String get tratado;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteContactoLocalDTOCopyWith<_$_ClienteContactoLocalDTO>
      get copyWith => throw _privateConstructorUsedError;
}
