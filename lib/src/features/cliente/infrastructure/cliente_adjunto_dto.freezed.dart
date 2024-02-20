// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_adjunto_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$ClienteAdjuntoDTOImplCopyWith<$Res>
    implements $ClienteAdjuntoDTOCopyWith<$Res> {
  factory _$$ClienteAdjuntoDTOImplCopyWith(_$ClienteAdjuntoDTOImpl value,
          $Res Function(_$ClienteAdjuntoDTOImpl) then) =
      __$$ClienteAdjuntoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') String nombreAdjunto});
}

/// @nodoc
class __$$ClienteAdjuntoDTOImplCopyWithImpl<$Res>
    extends _$ClienteAdjuntoDTOCopyWithImpl<$Res, _$ClienteAdjuntoDTOImpl>
    implements _$$ClienteAdjuntoDTOImplCopyWith<$Res> {
  __$$ClienteAdjuntoDTOImplCopyWithImpl(_$ClienteAdjuntoDTOImpl _value,
      $Res Function(_$ClienteAdjuntoDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? nombreAdjunto = null,
  }) {
    return _then(_$ClienteAdjuntoDTOImpl(
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
class _$ClienteAdjuntoDTOImpl extends _ClienteAdjuntoDTO {
  const _$ClienteAdjuntoDTOImpl(
      {@JsonKey(name: 'CLIENTE_ID') required this.clienteId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') required this.nombreAdjunto})
      : super._();

  factory _$ClienteAdjuntoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClienteAdjuntoDTOImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteAdjuntoDTOImpl &&
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
  _$$ClienteAdjuntoDTOImplCopyWith<_$ClienteAdjuntoDTOImpl> get copyWith =>
      __$$ClienteAdjuntoDTOImplCopyWithImpl<_$ClienteAdjuntoDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClienteAdjuntoDTOImplToJson(
      this,
    );
  }
}

abstract class _ClienteAdjuntoDTO extends ClienteAdjuntoDTO {
  const factory _ClienteAdjuntoDTO(
      {@JsonKey(name: 'CLIENTE_ID') required final String clienteId,
      @JsonKey(name: 'NOMBRE_ARCHIVO')
      required final String nombreAdjunto}) = _$ClienteAdjuntoDTOImpl;
  const _ClienteAdjuntoDTO._() : super._();

  factory _ClienteAdjuntoDTO.fromJson(Map<String, dynamic> json) =
      _$ClienteAdjuntoDTOImpl.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String get nombreAdjunto;
  @override
  @JsonKey(ignore: true)
  _$$ClienteAdjuntoDTOImplCopyWith<_$ClienteAdjuntoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
