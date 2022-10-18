// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cliente_adjunto_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClienteAdjuntoDTO _$ClienteAdjuntoDTOFromJson(Map<String, dynamic> json) {
  return _ClienteAdjuntoDTO.fromJson(json);
}

/// @nodoc
mixin _$ClienteAdjuntoDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String get nombreAdjunto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClienteAdjuntoDTOCopyWith<ClienteAdjuntoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteAdjuntoDTOCopyWith<$Res> {
  factory $ClienteAdjuntoDTOCopyWith(
          ClienteAdjuntoDTO value, $Res Function(ClienteAdjuntoDTO) then) =
      _$ClienteAdjuntoDTOCopyWithImpl<$Res, ClienteAdjuntoDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') String nombreAdjunto});
}

/// @nodoc
class _$ClienteAdjuntoDTOCopyWithImpl<$Res, $Val extends ClienteAdjuntoDTO>
    implements $ClienteAdjuntoDTOCopyWith<$Res> {
  _$ClienteAdjuntoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? nombreAdjunto = null,
  }) {
    return _then(_value.copyWith(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreAdjunto: null == nombreAdjunto
          ? _value.nombreAdjunto
          : nombreAdjunto // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClienteAdjuntoDTOCopyWith<$Res>
    implements $ClienteAdjuntoDTOCopyWith<$Res> {
  factory _$$_ClienteAdjuntoDTOCopyWith(_$_ClienteAdjuntoDTO value,
          $Res Function(_$_ClienteAdjuntoDTO) then) =
      __$$_ClienteAdjuntoDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') String nombreAdjunto});
}

/// @nodoc
class __$$_ClienteAdjuntoDTOCopyWithImpl<$Res>
    extends _$ClienteAdjuntoDTOCopyWithImpl<$Res, _$_ClienteAdjuntoDTO>
    implements _$$_ClienteAdjuntoDTOCopyWith<$Res> {
  __$$_ClienteAdjuntoDTOCopyWithImpl(
      _$_ClienteAdjuntoDTO _value, $Res Function(_$_ClienteAdjuntoDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? nombreAdjunto = null,
  }) {
    return _then(_$_ClienteAdjuntoDTO(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreAdjunto: null == nombreAdjunto
          ? _value.nombreAdjunto
          : nombreAdjunto // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClienteAdjuntoDTO extends _ClienteAdjuntoDTO {
  const _$_ClienteAdjuntoDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.clienteId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') required this.nombreAdjunto})
      : super._();

  factory _$_ClienteAdjuntoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ClienteAdjuntoDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String clienteId;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  final String nombreAdjunto;

  @override
  String toString() {
    return 'ClienteAdjuntoDTO(clienteId: $clienteId, nombreAdjunto: $nombreAdjunto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteAdjuntoDTO &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.nombreAdjunto, nombreAdjunto) ||
                other.nombreAdjunto == nombreAdjunto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clienteId, nombreAdjunto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClienteAdjuntoDTOCopyWith<_$_ClienteAdjuntoDTO> get copyWith =>
      __$$_ClienteAdjuntoDTOCopyWithImpl<_$_ClienteAdjuntoDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClienteAdjuntoDTOToJson(
      this,
    );
  }
}

abstract class _ClienteAdjuntoDTO extends ClienteAdjuntoDTO {
  const factory _ClienteAdjuntoDTO(
      {@JsonKey(name: 'CLIENTE_ID')
          required final String clienteId,
      @JsonKey(name: 'NOMBRE_ARCHIVO')
          required final String nombreAdjunto}) = _$_ClienteAdjuntoDTO;
  const _ClienteAdjuntoDTO._() : super._();

  factory _ClienteAdjuntoDTO.fromJson(Map<String, dynamic> json) =
      _$_ClienteAdjuntoDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String get nombreAdjunto;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteAdjuntoDTOCopyWith<_$_ClienteAdjuntoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
