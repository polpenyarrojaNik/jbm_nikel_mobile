// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cliente_grupo_neto_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClienteGrupoNetoDTOCopyWith<ClienteGrupoNetoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteGrupoNetoDTOCopyWith<$Res> {
  factory $ClienteGrupoNetoDTOCopyWith(
          ClienteGrupoNetoDTO value, $Res Function(ClienteGrupoNetoDTO) then) =
      _$ClienteGrupoNetoDTOCopyWithImpl<$Res, ClienteGrupoNetoDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'GRUPO_NETO_ID') String grupoNetoId,
      @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String grupoNetoDescripcion,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ClienteGrupoNetoDTOCopyWithImpl<$Res, $Val extends ClienteGrupoNetoDTO>
    implements $ClienteGrupoNetoDTOCopyWith<$Res> {
  _$ClienteGrupoNetoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? grupoNetoId = null,
    Object? grupoNetoDescripcion = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      grupoNetoId: null == grupoNetoId
          ? _value.grupoNetoId
          : grupoNetoId // ignore: cast_nullable_to_non_nullable
              as String,
      grupoNetoDescripcion: null == grupoNetoDescripcion
          ? _value.grupoNetoDescripcion
          : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ClienteGrupoNetoDTOCopyWith<$Res>
    implements $ClienteGrupoNetoDTOCopyWith<$Res> {
  factory _$$_ClienteGrupoNetoDTOCopyWith(_$_ClienteGrupoNetoDTO value,
          $Res Function(_$_ClienteGrupoNetoDTO) then) =
      __$$_ClienteGrupoNetoDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'GRUPO_NETO_ID') String grupoNetoId,
      @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String grupoNetoDescripcion,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ClienteGrupoNetoDTOCopyWithImpl<$Res>
    extends _$ClienteGrupoNetoDTOCopyWithImpl<$Res, _$_ClienteGrupoNetoDTO>
    implements _$$_ClienteGrupoNetoDTOCopyWith<$Res> {
  __$$_ClienteGrupoNetoDTOCopyWithImpl(_$_ClienteGrupoNetoDTO _value,
      $Res Function(_$_ClienteGrupoNetoDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? grupoNetoId = null,
    Object? grupoNetoDescripcion = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$_ClienteGrupoNetoDTO(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      grupoNetoId: null == grupoNetoId
          ? _value.grupoNetoId
          : grupoNetoId // ignore: cast_nullable_to_non_nullable
              as String,
      grupoNetoDescripcion: null == grupoNetoDescripcion
          ? _value.grupoNetoDescripcion
          : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
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
class _$_ClienteGrupoNetoDTO extends _ClienteGrupoNetoDTO {
  const _$_ClienteGrupoNetoDTO(
      {@JsonKey(name: 'CLIENTE_ID')
          required this.clienteId,
      @JsonKey(name: 'GRUPO_NETO_ID')
          required this.grupoNetoId,
      @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')
          required this.grupoNetoDescripcion,
      @JsonKey(name: 'LAST_UPDATED')
          required this.lastUpdated,
      @JsonKey(name: 'DELETED')
          this.deleted = 'N'})
      : super._();

  factory _$_ClienteGrupoNetoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ClienteGrupoNetoDTOFromJson(json);

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
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ClienteGrupoNetoDTO(clienteId: $clienteId, grupoNetoId: $grupoNetoId, grupoNetoDescripcion: $grupoNetoDescripcion, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteGrupoNetoDTO &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.grupoNetoId, grupoNetoId) ||
                other.grupoNetoId == grupoNetoId) &&
            (identical(other.grupoNetoDescripcion, grupoNetoDescripcion) ||
                other.grupoNetoDescripcion == grupoNetoDescripcion) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clienteId, grupoNetoId,
      grupoNetoDescripcion, lastUpdated, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClienteGrupoNetoDTOCopyWith<_$_ClienteGrupoNetoDTO> get copyWith =>
      __$$_ClienteGrupoNetoDTOCopyWithImpl<_$_ClienteGrupoNetoDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClienteGrupoNetoDTOToJson(
      this,
    );
  }
}

abstract class _ClienteGrupoNetoDTO extends ClienteGrupoNetoDTO {
  const factory _ClienteGrupoNetoDTO(
      {@JsonKey(name: 'CLIENTE_ID')
          required final String clienteId,
      @JsonKey(name: 'GRUPO_NETO_ID')
          required final String grupoNetoId,
      @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')
          required final String grupoNetoDescripcion,
      @JsonKey(name: 'LAST_UPDATED')
          required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          final String deleted}) = _$_ClienteGrupoNetoDTO;
  const _ClienteGrupoNetoDTO._() : super._();

  factory _ClienteGrupoNetoDTO.fromJson(Map<String, dynamic> json) =
      _$_ClienteGrupoNetoDTO.fromJson;

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
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteGrupoNetoDTOCopyWith<_$_ClienteGrupoNetoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
