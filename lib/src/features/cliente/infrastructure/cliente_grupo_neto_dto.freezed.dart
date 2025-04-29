// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_grupo_neto_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ClienteGrupoNetoDTO _$ClienteGrupoNetoDTOFromJson(Map<String, dynamic> json) {
  return _ClienteGrupoNetoDTO.fromJson(json);
}

/// @nodoc
mixin _$ClienteGrupoNetoDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'GRUPO_NETO_ID')
  String get grupoNetoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')
  String get grupoNetoDescripcion => throw _privateConstructorUsedError;
  @JsonKey(name: 'DTO_ADICIONAL')
  double get dtoAdicional => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  /// Serializes this ClienteGrupoNetoDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClienteGrupoNetoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClienteGrupoNetoDTOCopyWith<ClienteGrupoNetoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteGrupoNetoDTOCopyWith<$Res> {
  factory $ClienteGrupoNetoDTOCopyWith(
    ClienteGrupoNetoDTO value,
    $Res Function(ClienteGrupoNetoDTO) then,
  ) = _$ClienteGrupoNetoDTOCopyWithImpl<$Res, ClienteGrupoNetoDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'CLIENTE_ID') String clienteId,
    @JsonKey(name: 'GRUPO_NETO_ID') String grupoNetoId,
    @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String grupoNetoDescripcion,
    @JsonKey(name: 'DTO_ADICIONAL') double dtoAdicional,
    @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
    @JsonKey(name: 'DELETED') String deleted,
  });
}

/// @nodoc
class _$ClienteGrupoNetoDTOCopyWithImpl<$Res, $Val extends ClienteGrupoNetoDTO>
    implements $ClienteGrupoNetoDTOCopyWith<$Res> {
  _$ClienteGrupoNetoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClienteGrupoNetoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? grupoNetoId = null,
    Object? grupoNetoDescripcion = null,
    Object? dtoAdicional = null,
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
            grupoNetoId:
                null == grupoNetoId
                    ? _value.grupoNetoId
                    : grupoNetoId // ignore: cast_nullable_to_non_nullable
                        as String,
            grupoNetoDescripcion:
                null == grupoNetoDescripcion
                    ? _value.grupoNetoDescripcion
                    : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
                        as String,
            dtoAdicional:
                null == dtoAdicional
                    ? _value.dtoAdicional
                    : dtoAdicional // ignore: cast_nullable_to_non_nullable
                        as double,
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
abstract class _$$ClienteGrupoNetoDTOImplCopyWith<$Res>
    implements $ClienteGrupoNetoDTOCopyWith<$Res> {
  factory _$$ClienteGrupoNetoDTOImplCopyWith(
    _$ClienteGrupoNetoDTOImpl value,
    $Res Function(_$ClienteGrupoNetoDTOImpl) then,
  ) = __$$ClienteGrupoNetoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'CLIENTE_ID') String clienteId,
    @JsonKey(name: 'GRUPO_NETO_ID') String grupoNetoId,
    @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String grupoNetoDescripcion,
    @JsonKey(name: 'DTO_ADICIONAL') double dtoAdicional,
    @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
    @JsonKey(name: 'DELETED') String deleted,
  });
}

/// @nodoc
class __$$ClienteGrupoNetoDTOImplCopyWithImpl<$Res>
    extends _$ClienteGrupoNetoDTOCopyWithImpl<$Res, _$ClienteGrupoNetoDTOImpl>
    implements _$$ClienteGrupoNetoDTOImplCopyWith<$Res> {
  __$$ClienteGrupoNetoDTOImplCopyWithImpl(
    _$ClienteGrupoNetoDTOImpl _value,
    $Res Function(_$ClienteGrupoNetoDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClienteGrupoNetoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? grupoNetoId = null,
    Object? grupoNetoDescripcion = null,
    Object? dtoAdicional = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(
      _$ClienteGrupoNetoDTOImpl(
        clienteId:
            null == clienteId
                ? _value.clienteId
                : clienteId // ignore: cast_nullable_to_non_nullable
                    as String,
        grupoNetoId:
            null == grupoNetoId
                ? _value.grupoNetoId
                : grupoNetoId // ignore: cast_nullable_to_non_nullable
                    as String,
        grupoNetoDescripcion:
            null == grupoNetoDescripcion
                ? _value.grupoNetoDescripcion
                : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
                    as String,
        dtoAdicional:
            null == dtoAdicional
                ? _value.dtoAdicional
                : dtoAdicional // ignore: cast_nullable_to_non_nullable
                    as double,
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
class _$ClienteGrupoNetoDTOImpl extends _ClienteGrupoNetoDTO {
  const _$ClienteGrupoNetoDTOImpl({
    @JsonKey(name: 'CLIENTE_ID') required this.clienteId,
    @JsonKey(name: 'GRUPO_NETO_ID') required this.grupoNetoId,
    @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') required this.grupoNetoDescripcion,
    @JsonKey(name: 'DTO_ADICIONAL') required this.dtoAdicional,
    @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
    @JsonKey(name: 'DELETED') this.deleted = 'N',
  }) : super._();

  factory _$ClienteGrupoNetoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClienteGrupoNetoDTOImplFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String clienteId;
  @override
  @JsonKey(name: 'GRUPO_NETO_ID')
  final String grupoNetoId;
  @override
  @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')
  final String grupoNetoDescripcion;
  @override
  @JsonKey(name: 'DTO_ADICIONAL')
  final double dtoAdicional;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ClienteGrupoNetoDTO(clienteId: $clienteId, grupoNetoId: $grupoNetoId, grupoNetoDescripcion: $grupoNetoDescripcion, dtoAdicional: $dtoAdicional, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteGrupoNetoDTOImpl &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.grupoNetoId, grupoNetoId) ||
                other.grupoNetoId == grupoNetoId) &&
            (identical(other.grupoNetoDescripcion, grupoNetoDescripcion) ||
                other.grupoNetoDescripcion == grupoNetoDescripcion) &&
            (identical(other.dtoAdicional, dtoAdicional) ||
                other.dtoAdicional == dtoAdicional) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    clienteId,
    grupoNetoId,
    grupoNetoDescripcion,
    dtoAdicional,
    lastUpdated,
    deleted,
  );

  /// Create a copy of ClienteGrupoNetoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteGrupoNetoDTOImplCopyWith<_$ClienteGrupoNetoDTOImpl> get copyWith =>
      __$$ClienteGrupoNetoDTOImplCopyWithImpl<_$ClienteGrupoNetoDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ClienteGrupoNetoDTOImplToJson(this);
  }
}

abstract class _ClienteGrupoNetoDTO extends ClienteGrupoNetoDTO {
  const factory _ClienteGrupoNetoDTO({
    @JsonKey(name: 'CLIENTE_ID') required final String clienteId,
    @JsonKey(name: 'GRUPO_NETO_ID') required final String grupoNetoId,
    @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')
    required final String grupoNetoDescripcion,
    @JsonKey(name: 'DTO_ADICIONAL') required final double dtoAdicional,
    @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
    @JsonKey(name: 'DELETED') final String deleted,
  }) = _$ClienteGrupoNetoDTOImpl;
  const _ClienteGrupoNetoDTO._() : super._();

  factory _ClienteGrupoNetoDTO.fromJson(Map<String, dynamic> json) =
      _$ClienteGrupoNetoDTOImpl.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId;
  @override
  @JsonKey(name: 'GRUPO_NETO_ID')
  String get grupoNetoId;
  @override
  @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')
  String get grupoNetoDescripcion;
  @override
  @JsonKey(name: 'DTO_ADICIONAL')
  double get dtoAdicional;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;

  /// Create a copy of ClienteGrupoNetoDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClienteGrupoNetoDTOImplCopyWith<_$ClienteGrupoNetoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
