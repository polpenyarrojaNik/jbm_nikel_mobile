// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cliente_usuario_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClienteUsuarioDTO _$ClienteUsuarioDTOFromJson(Map<String, dynamic> json) {
  return _ClienteUsuarioDTO.fromJson(json);
}

/// @nodoc
mixin _$ClienteUsuarioDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'USUARIO_ID')
  String get usuarioId => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClienteUsuarioDTOCopyWith<ClienteUsuarioDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteUsuarioDTOCopyWith<$Res> {
  factory $ClienteUsuarioDTOCopyWith(
          ClienteUsuarioDTO value, $Res Function(ClienteUsuarioDTO) then) =
      _$ClienteUsuarioDTOCopyWithImpl<$Res, ClienteUsuarioDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'USUARIO_ID') String usuarioId,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ClienteUsuarioDTOCopyWithImpl<$Res, $Val extends ClienteUsuarioDTO>
    implements $ClienteUsuarioDTOCopyWith<$Res> {
  _$ClienteUsuarioDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? usuarioId = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      usuarioId: null == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_ClienteUsuarioDTOCopyWith<$Res>
    implements $ClienteUsuarioDTOCopyWith<$Res> {
  factory _$$_ClienteUsuarioDTOCopyWith(_$_ClienteUsuarioDTO value,
          $Res Function(_$_ClienteUsuarioDTO) then) =
      __$$_ClienteUsuarioDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'USUARIO_ID') String usuarioId,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ClienteUsuarioDTOCopyWithImpl<$Res>
    extends _$ClienteUsuarioDTOCopyWithImpl<$Res, _$_ClienteUsuarioDTO>
    implements _$$_ClienteUsuarioDTOCopyWith<$Res> {
  __$$_ClienteUsuarioDTOCopyWithImpl(
      _$_ClienteUsuarioDTO _value, $Res Function(_$_ClienteUsuarioDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? usuarioId = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$_ClienteUsuarioDTO(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      usuarioId: null == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_ClienteUsuarioDTO extends _ClienteUsuarioDTO {
  const _$_ClienteUsuarioDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.clienteId,
      @JsonKey(name: 'USUARIO_ID') required this.usuarioId,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_ClienteUsuarioDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ClienteUsuarioDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String clienteId;
  @override
  @JsonKey(name: 'USUARIO_ID')
  final String usuarioId;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ClienteUsuarioDTO(clienteId: $clienteId, usuarioId: $usuarioId, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteUsuarioDTO &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.usuarioId, usuarioId) ||
                other.usuarioId == usuarioId) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, clienteId, usuarioId, lastUpdated, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClienteUsuarioDTOCopyWith<_$_ClienteUsuarioDTO> get copyWith =>
      __$$_ClienteUsuarioDTOCopyWithImpl<_$_ClienteUsuarioDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClienteUsuarioDTOToJson(
      this,
    );
  }
}

abstract class _ClienteUsuarioDTO extends ClienteUsuarioDTO {
  const factory _ClienteUsuarioDTO(
      {@JsonKey(name: 'CLIENTE_ID') required final String clienteId,
      @JsonKey(name: 'USUARIO_ID') required final String usuarioId,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_ClienteUsuarioDTO;
  const _ClienteUsuarioDTO._() : super._();

  factory _ClienteUsuarioDTO.fromJson(Map<String, dynamic> json) =
      _$_ClienteUsuarioDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId;
  @override
  @JsonKey(name: 'USUARIO_ID')
  String get usuarioId;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteUsuarioDTOCopyWith<_$_ClienteUsuarioDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
