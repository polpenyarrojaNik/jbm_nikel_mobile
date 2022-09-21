// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cliente_contacto_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClienteContactoDTO _$ClienteContactoDTOFromJson(Map<String, dynamic> json) {
  return _ClienteContactoDTO.fromJson(json);
}

/// @nodoc
mixin _$ClienteContactoDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CONTACTO_ID')
  String get contactoId => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClienteContactoDTOCopyWith<ClienteContactoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteContactoDTOCopyWith<$Res> {
  factory $ClienteContactoDTOCopyWith(
          ClienteContactoDTO value, $Res Function(ClienteContactoDTO) then) =
      _$ClienteContactoDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'CONTACTO_ID') String contactoId,
      @JsonKey(name: 'OBSERVACIONES') String? observaciones,
      @JsonKey(name: 'NOMBRE') String? nombre,
      @JsonKey(name: 'APELLIDO1') String? apellido1,
      @JsonKey(name: 'APELLIDO2') String? apellido2,
      @JsonKey(name: 'TELEFONO1') String? telefono1,
      @JsonKey(name: 'TELEFONO2') String? telefono2,
      @JsonKey(name: 'EMAIL') String? email,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ClienteContactoDTOCopyWithImpl<$Res>
    implements $ClienteContactoDTOCopyWith<$Res> {
  _$ClienteContactoDTOCopyWithImpl(this._value, this._then);

  final ClienteContactoDTO _value;
  // ignore: unused_field
  final $Res Function(ClienteContactoDTO) _then;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? contactoId = freezed,
    Object? observaciones = freezed,
    Object? nombre = freezed,
    Object? apellido1 = freezed,
    Object? apellido2 = freezed,
    Object? telefono1 = freezed,
    Object? telefono2 = freezed,
    Object? email = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      contactoId: contactoId == freezed
          ? _value.contactoId
          : contactoId // ignore: cast_nullable_to_non_nullable
              as String,
      observaciones: observaciones == freezed
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as String?,
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      apellido1: apellido1 == freezed
          ? _value.apellido1
          : apellido1 // ignore: cast_nullable_to_non_nullable
              as String?,
      apellido2: apellido2 == freezed
          ? _value.apellido2
          : apellido2 // ignore: cast_nullable_to_non_nullable
              as String?,
      telefono1: telefono1 == freezed
          ? _value.telefono1
          : telefono1 // ignore: cast_nullable_to_non_nullable
              as String?,
      telefono2: telefono2 == freezed
          ? _value.telefono2
          : telefono2 // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_ClienteContactoDTOCopyWith<$Res>
    implements $ClienteContactoDTOCopyWith<$Res> {
  factory _$$_ClienteContactoDTOCopyWith(_$_ClienteContactoDTO value,
          $Res Function(_$_ClienteContactoDTO) then) =
      __$$_ClienteContactoDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'CONTACTO_ID') String contactoId,
      @JsonKey(name: 'OBSERVACIONES') String? observaciones,
      @JsonKey(name: 'NOMBRE') String? nombre,
      @JsonKey(name: 'APELLIDO1') String? apellido1,
      @JsonKey(name: 'APELLIDO2') String? apellido2,
      @JsonKey(name: 'TELEFONO1') String? telefono1,
      @JsonKey(name: 'TELEFONO2') String? telefono2,
      @JsonKey(name: 'EMAIL') String? email,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ClienteContactoDTOCopyWithImpl<$Res>
    extends _$ClienteContactoDTOCopyWithImpl<$Res>
    implements _$$_ClienteContactoDTOCopyWith<$Res> {
  __$$_ClienteContactoDTOCopyWithImpl(
      _$_ClienteContactoDTO _value, $Res Function(_$_ClienteContactoDTO) _then)
      : super(_value, (v) => _then(v as _$_ClienteContactoDTO));

  @override
  _$_ClienteContactoDTO get _value => super._value as _$_ClienteContactoDTO;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? contactoId = freezed,
    Object? observaciones = freezed,
    Object? nombre = freezed,
    Object? apellido1 = freezed,
    Object? apellido2 = freezed,
    Object? telefono1 = freezed,
    Object? telefono2 = freezed,
    Object? email = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ClienteContactoDTO(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      contactoId: contactoId == freezed
          ? _value.contactoId
          : contactoId // ignore: cast_nullable_to_non_nullable
              as String,
      observaciones: observaciones == freezed
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as String?,
      nombre: nombre == freezed
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      apellido1: apellido1 == freezed
          ? _value.apellido1
          : apellido1 // ignore: cast_nullable_to_non_nullable
              as String?,
      apellido2: apellido2 == freezed
          ? _value.apellido2
          : apellido2 // ignore: cast_nullable_to_non_nullable
              as String?,
      telefono1: telefono1 == freezed
          ? _value.telefono1
          : telefono1 // ignore: cast_nullable_to_non_nullable
              as String?,
      telefono2: telefono2 == freezed
          ? _value.telefono2
          : telefono2 // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_ClienteContactoDTO extends _ClienteContactoDTO {
  const _$_ClienteContactoDTO(
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
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_ClienteContactoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ClienteContactoDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String clienteId;
  @override
  @JsonKey(name: 'CONTACTO_ID')
  final String contactoId;
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
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ClienteContactoDTO(clienteId: $clienteId, contactoId: $contactoId, observaciones: $observaciones, nombre: $nombre, apellido1: $apellido1, apellido2: $apellido2, telefono1: $telefono1, telefono2: $telefono2, email: $email, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteContactoDTO &&
            const DeepCollectionEquality().equals(other.clienteId, clienteId) &&
            const DeepCollectionEquality()
                .equals(other.contactoId, contactoId) &&
            const DeepCollectionEquality()
                .equals(other.observaciones, observaciones) &&
            const DeepCollectionEquality().equals(other.nombre, nombre) &&
            const DeepCollectionEquality().equals(other.apellido1, apellido1) &&
            const DeepCollectionEquality().equals(other.apellido2, apellido2) &&
            const DeepCollectionEquality().equals(other.telefono1, telefono1) &&
            const DeepCollectionEquality().equals(other.telefono2, telefono2) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clienteId),
      const DeepCollectionEquality().hash(contactoId),
      const DeepCollectionEquality().hash(observaciones),
      const DeepCollectionEquality().hash(nombre),
      const DeepCollectionEquality().hash(apellido1),
      const DeepCollectionEquality().hash(apellido2),
      const DeepCollectionEquality().hash(telefono1),
      const DeepCollectionEquality().hash(telefono2),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ClienteContactoDTOCopyWith<_$_ClienteContactoDTO> get copyWith =>
      __$$_ClienteContactoDTOCopyWithImpl<_$_ClienteContactoDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClienteContactoDTOToJson(
      this,
    );
  }
}

abstract class _ClienteContactoDTO extends ClienteContactoDTO {
  const factory _ClienteContactoDTO(
      {@JsonKey(name: 'CLIENTE_ID') required final String clienteId,
      @JsonKey(name: 'CONTACTO_ID') required final String contactoId,
      @JsonKey(name: 'OBSERVACIONES') final String? observaciones,
      @JsonKey(name: 'NOMBRE') final String? nombre,
      @JsonKey(name: 'APELLIDO1') final String? apellido1,
      @JsonKey(name: 'APELLIDO2') final String? apellido2,
      @JsonKey(name: 'TELEFONO1') final String? telefono1,
      @JsonKey(name: 'TELEFONO2') final String? telefono2,
      @JsonKey(name: 'EMAIL') final String? email,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_ClienteContactoDTO;
  const _ClienteContactoDTO._() : super._();

  factory _ClienteContactoDTO.fromJson(Map<String, dynamic> json) =
      _$_ClienteContactoDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId;
  @override
  @JsonKey(name: 'CONTACTO_ID')
  String get contactoId;
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
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteContactoDTOCopyWith<_$_ClienteContactoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
