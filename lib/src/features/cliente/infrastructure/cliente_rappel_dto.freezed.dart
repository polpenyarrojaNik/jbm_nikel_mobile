// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_rappel_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ClienteRappelDTO _$ClienteRappelDTOFromJson(Map<String, dynamic> json) {
  return _ClienteRappelDTO.fromJson(json);
}

/// @nodoc
mixin _$ClienteRappelDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'RAPPEL_ID')
  String get rappelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCRIPCION')
  String get descripcion => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_DESDE')
  DateTime get fechaDesDe => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_HASTA')
  DateTime? get fechaHasta => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String? get nombreArchivo => throw _privateConstructorUsedError;
  @JsonKey(name: 'FIRMADO')
  String? get firmado => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  /// Serializes this ClienteRappelDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClienteRappelDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClienteRappelDTOCopyWith<ClienteRappelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteRappelDTOCopyWith<$Res> {
  factory $ClienteRappelDTOCopyWith(
    ClienteRappelDTO value,
    $Res Function(ClienteRappelDTO) then,
  ) = _$ClienteRappelDTOCopyWithImpl<$Res, ClienteRappelDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'CLIENTE_ID') String clienteId,
    @JsonKey(name: 'RAPPEL_ID') String rappelId,
    @JsonKey(name: 'DESCRIPCION') String descripcion,
    @JsonKey(name: 'FECHA_DESDE') DateTime fechaDesDe,
    @JsonKey(name: 'FECHA_HASTA') DateTime? fechaHasta,
    @JsonKey(name: 'NOMBRE_ARCHIVO') String? nombreArchivo,
    @JsonKey(name: 'FIRMADO') String? firmado,
    @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
    @JsonKey(name: 'DELETED') String deleted,
  });
}

/// @nodoc
class _$ClienteRappelDTOCopyWithImpl<$Res, $Val extends ClienteRappelDTO>
    implements $ClienteRappelDTOCopyWith<$Res> {
  _$ClienteRappelDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClienteRappelDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? rappelId = null,
    Object? descripcion = null,
    Object? fechaDesDe = null,
    Object? fechaHasta = freezed,
    Object? nombreArchivo = freezed,
    Object? firmado = freezed,
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
            rappelId:
                null == rappelId
                    ? _value.rappelId
                    : rappelId // ignore: cast_nullable_to_non_nullable
                        as String,
            descripcion:
                null == descripcion
                    ? _value.descripcion
                    : descripcion // ignore: cast_nullable_to_non_nullable
                        as String,
            fechaDesDe:
                null == fechaDesDe
                    ? _value.fechaDesDe
                    : fechaDesDe // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            fechaHasta:
                freezed == fechaHasta
                    ? _value.fechaHasta
                    : fechaHasta // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            nombreArchivo:
                freezed == nombreArchivo
                    ? _value.nombreArchivo
                    : nombreArchivo // ignore: cast_nullable_to_non_nullable
                        as String?,
            firmado:
                freezed == firmado
                    ? _value.firmado
                    : firmado // ignore: cast_nullable_to_non_nullable
                        as String?,
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
abstract class _$$ClienteRappelDTOImplCopyWith<$Res>
    implements $ClienteRappelDTOCopyWith<$Res> {
  factory _$$ClienteRappelDTOImplCopyWith(
    _$ClienteRappelDTOImpl value,
    $Res Function(_$ClienteRappelDTOImpl) then,
  ) = __$$ClienteRappelDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'CLIENTE_ID') String clienteId,
    @JsonKey(name: 'RAPPEL_ID') String rappelId,
    @JsonKey(name: 'DESCRIPCION') String descripcion,
    @JsonKey(name: 'FECHA_DESDE') DateTime fechaDesDe,
    @JsonKey(name: 'FECHA_HASTA') DateTime? fechaHasta,
    @JsonKey(name: 'NOMBRE_ARCHIVO') String? nombreArchivo,
    @JsonKey(name: 'FIRMADO') String? firmado,
    @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
    @JsonKey(name: 'DELETED') String deleted,
  });
}

/// @nodoc
class __$$ClienteRappelDTOImplCopyWithImpl<$Res>
    extends _$ClienteRappelDTOCopyWithImpl<$Res, _$ClienteRappelDTOImpl>
    implements _$$ClienteRappelDTOImplCopyWith<$Res> {
  __$$ClienteRappelDTOImplCopyWithImpl(
    _$ClienteRappelDTOImpl _value,
    $Res Function(_$ClienteRappelDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClienteRappelDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? rappelId = null,
    Object? descripcion = null,
    Object? fechaDesDe = null,
    Object? fechaHasta = freezed,
    Object? nombreArchivo = freezed,
    Object? firmado = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(
      _$ClienteRappelDTOImpl(
        clienteId:
            null == clienteId
                ? _value.clienteId
                : clienteId // ignore: cast_nullable_to_non_nullable
                    as String,
        rappelId:
            null == rappelId
                ? _value.rappelId
                : rappelId // ignore: cast_nullable_to_non_nullable
                    as String,
        descripcion:
            null == descripcion
                ? _value.descripcion
                : descripcion // ignore: cast_nullable_to_non_nullable
                    as String,
        fechaDesDe:
            null == fechaDesDe
                ? _value.fechaDesDe
                : fechaDesDe // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        fechaHasta:
            freezed == fechaHasta
                ? _value.fechaHasta
                : fechaHasta // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        nombreArchivo:
            freezed == nombreArchivo
                ? _value.nombreArchivo
                : nombreArchivo // ignore: cast_nullable_to_non_nullable
                    as String?,
        firmado:
            freezed == firmado
                ? _value.firmado
                : firmado // ignore: cast_nullable_to_non_nullable
                    as String?,
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
class _$ClienteRappelDTOImpl extends _ClienteRappelDTO {
  const _$ClienteRappelDTOImpl({
    @JsonKey(name: 'CLIENTE_ID') required this.clienteId,
    @JsonKey(name: 'RAPPEL_ID') required this.rappelId,
    @JsonKey(name: 'DESCRIPCION') required this.descripcion,
    @JsonKey(name: 'FECHA_DESDE') required this.fechaDesDe,
    @JsonKey(name: 'FECHA_HASTA') required this.fechaHasta,
    @JsonKey(name: 'NOMBRE_ARCHIVO') this.nombreArchivo,
    @JsonKey(name: 'FIRMADO') this.firmado,
    @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
    @JsonKey(name: 'DELETED') this.deleted = 'N',
  }) : super._();

  factory _$ClienteRappelDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClienteRappelDTOImplFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String clienteId;
  @override
  @JsonKey(name: 'RAPPEL_ID')
  final String rappelId;
  @override
  @JsonKey(name: 'DESCRIPCION')
  final String descripcion;
  @override
  @JsonKey(name: 'FECHA_DESDE')
  final DateTime fechaDesDe;
  @override
  @JsonKey(name: 'FECHA_HASTA')
  final DateTime? fechaHasta;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  final String? nombreArchivo;
  @override
  @JsonKey(name: 'FIRMADO')
  final String? firmado;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ClienteRappelDTO(clienteId: $clienteId, rappelId: $rappelId, descripcion: $descripcion, fechaDesDe: $fechaDesDe, fechaHasta: $fechaHasta, nombreArchivo: $nombreArchivo, firmado: $firmado, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteRappelDTOImpl &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.rappelId, rappelId) ||
                other.rappelId == rappelId) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.fechaDesDe, fechaDesDe) ||
                other.fechaDesDe == fechaDesDe) &&
            (identical(other.fechaHasta, fechaHasta) ||
                other.fechaHasta == fechaHasta) &&
            (identical(other.nombreArchivo, nombreArchivo) ||
                other.nombreArchivo == nombreArchivo) &&
            (identical(other.firmado, firmado) || other.firmado == firmado) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    clienteId,
    rappelId,
    descripcion,
    fechaDesDe,
    fechaHasta,
    nombreArchivo,
    firmado,
    lastUpdated,
    deleted,
  );

  /// Create a copy of ClienteRappelDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteRappelDTOImplCopyWith<_$ClienteRappelDTOImpl> get copyWith =>
      __$$ClienteRappelDTOImplCopyWithImpl<_$ClienteRappelDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ClienteRappelDTOImplToJson(this);
  }
}

abstract class _ClienteRappelDTO extends ClienteRappelDTO {
  const factory _ClienteRappelDTO({
    @JsonKey(name: 'CLIENTE_ID') required final String clienteId,
    @JsonKey(name: 'RAPPEL_ID') required final String rappelId,
    @JsonKey(name: 'DESCRIPCION') required final String descripcion,
    @JsonKey(name: 'FECHA_DESDE') required final DateTime fechaDesDe,
    @JsonKey(name: 'FECHA_HASTA') required final DateTime? fechaHasta,
    @JsonKey(name: 'NOMBRE_ARCHIVO') final String? nombreArchivo,
    @JsonKey(name: 'FIRMADO') final String? firmado,
    @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
    @JsonKey(name: 'DELETED') final String deleted,
  }) = _$ClienteRappelDTOImpl;
  const _ClienteRappelDTO._() : super._();

  factory _ClienteRappelDTO.fromJson(Map<String, dynamic> json) =
      _$ClienteRappelDTOImpl.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId;
  @override
  @JsonKey(name: 'RAPPEL_ID')
  String get rappelId;
  @override
  @JsonKey(name: 'DESCRIPCION')
  String get descripcion;
  @override
  @JsonKey(name: 'FECHA_DESDE')
  DateTime get fechaDesDe;
  @override
  @JsonKey(name: 'FECHA_HASTA')
  DateTime? get fechaHasta;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String? get nombreArchivo;
  @override
  @JsonKey(name: 'FIRMADO')
  String? get firmado;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;

  /// Create a copy of ClienteRappelDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClienteRappelDTOImplCopyWith<_$ClienteRappelDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
