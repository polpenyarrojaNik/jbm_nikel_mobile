// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_usuario_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

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

  /// Serializes this ClienteUsuarioDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClienteUsuarioDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClienteUsuarioDTOCopyWith<ClienteUsuarioDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteUsuarioDTOCopyWith<$Res> {
  factory $ClienteUsuarioDTOCopyWith(
    ClienteUsuarioDTO value,
    $Res Function(ClienteUsuarioDTO) then,
  ) = _$ClienteUsuarioDTOCopyWithImpl<$Res, ClienteUsuarioDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'CLIENTE_ID') String clienteId,
    @JsonKey(name: 'USUARIO_ID') String usuarioId,
    @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
    @JsonKey(name: 'DELETED') String deleted,
  });
}

/// @nodoc
class _$ClienteUsuarioDTOCopyWithImpl<$Res, $Val extends ClienteUsuarioDTO>
    implements $ClienteUsuarioDTOCopyWith<$Res> {
  _$ClienteUsuarioDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClienteUsuarioDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? usuarioId = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(
      _value.copyWith(
            clienteId:
                null == clienteId
                    ? _value.clienteId
                    : clienteId // ignore: cast_nullable_to_non_nullable
                        as String,
            usuarioId:
                null == usuarioId
                    ? _value.usuarioId
                    : usuarioId // ignore: cast_nullable_to_non_nullable
                        as String,
            lastUpdated:
                null == lastUpdated
                    ? _value.lastUpdated
                    : lastUpdated // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            deleted:
                null == deleted
                    ? _value.deleted
                    : deleted // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ClienteUsuarioDTOImplCopyWith<$Res>
    implements $ClienteUsuarioDTOCopyWith<$Res> {
  factory _$$ClienteUsuarioDTOImplCopyWith(
    _$ClienteUsuarioDTOImpl value,
    $Res Function(_$ClienteUsuarioDTOImpl) then,
  ) = __$$ClienteUsuarioDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'CLIENTE_ID') String clienteId,
    @JsonKey(name: 'USUARIO_ID') String usuarioId,
    @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
    @JsonKey(name: 'DELETED') String deleted,
  });
}

/// @nodoc
class __$$ClienteUsuarioDTOImplCopyWithImpl<$Res>
    extends _$ClienteUsuarioDTOCopyWithImpl<$Res, _$ClienteUsuarioDTOImpl>
    implements _$$ClienteUsuarioDTOImplCopyWith<$Res> {
  __$$ClienteUsuarioDTOImplCopyWithImpl(
    _$ClienteUsuarioDTOImpl _value,
    $Res Function(_$ClienteUsuarioDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClienteUsuarioDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? usuarioId = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(
      _$ClienteUsuarioDTOImpl(
        clienteId:
            null == clienteId
                ? _value.clienteId
                : clienteId // ignore: cast_nullable_to_non_nullable
                    as String,
        usuarioId:
            null == usuarioId
                ? _value.usuarioId
                : usuarioId // ignore: cast_nullable_to_non_nullable
                    as String,
        lastUpdated:
            null == lastUpdated
                ? _value.lastUpdated
                : lastUpdated // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        deleted:
            null == deleted
                ? _value.deleted
                : deleted // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ClienteUsuarioDTOImpl extends _ClienteUsuarioDTO {
  const _$ClienteUsuarioDTOImpl({
    @JsonKey(name: 'CLIENTE_ID') required this.clienteId,
    @JsonKey(name: 'USUARIO_ID') required this.usuarioId,
    @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
    @JsonKey(name: 'DELETED') this.deleted = 'N',
  }) : super._();

  factory _$ClienteUsuarioDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClienteUsuarioDTOImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteUsuarioDTOImpl &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.usuarioId, usuarioId) ||
                other.usuarioId == usuarioId) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, clienteId, usuarioId, lastUpdated, deleted);

  /// Create a copy of ClienteUsuarioDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteUsuarioDTOImplCopyWith<_$ClienteUsuarioDTOImpl> get copyWith =>
      __$$ClienteUsuarioDTOImplCopyWithImpl<_$ClienteUsuarioDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ClienteUsuarioDTOImplToJson(this);
  }
}

abstract class _ClienteUsuarioDTO extends ClienteUsuarioDTO {
  const factory _ClienteUsuarioDTO({
    @JsonKey(name: 'CLIENTE_ID') required final String clienteId,
    @JsonKey(name: 'USUARIO_ID') required final String usuarioId,
    @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
    @JsonKey(name: 'DELETED') final String deleted,
  }) = _$ClienteUsuarioDTOImpl;
  const _ClienteUsuarioDTO._() : super._();

  factory _ClienteUsuarioDTO.fromJson(Map<String, dynamic> json) =
      _$ClienteUsuarioDTOImpl.fromJson;

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

  /// Create a copy of ClienteUsuarioDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClienteUsuarioDTOImplCopyWith<_$ClienteUsuarioDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
