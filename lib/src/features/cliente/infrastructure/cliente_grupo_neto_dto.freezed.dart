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
  String? get grupoNetoDescripcion => throw _privateConstructorUsedError;
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
      _$ClienteGrupoNetoDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'GRUPO_NETO_ID') String grupoNetoId,
      @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String? grupoNetoDescripcion,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ClienteGrupoNetoDTOCopyWithImpl<$Res>
    implements $ClienteGrupoNetoDTOCopyWith<$Res> {
  _$ClienteGrupoNetoDTOCopyWithImpl(this._value, this._then);

  final ClienteGrupoNetoDTO _value;
  // ignore: unused_field
  final $Res Function(ClienteGrupoNetoDTO) _then;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? grupoNetoId = freezed,
    Object? grupoNetoDescripcion = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      grupoNetoId: grupoNetoId == freezed
          ? _value.grupoNetoId
          : grupoNetoId // ignore: cast_nullable_to_non_nullable
              as String,
      grupoNetoDescripcion: grupoNetoDescripcion == freezed
          ? _value.grupoNetoDescripcion
          : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ClienteGrupoNetoDTOCopyWith<$Res>
    implements $ClienteGrupoNetoDTOCopyWith<$Res> {
  factory _$$_ClienteGrupoNetoDTOCopyWith(_$_ClienteGrupoNetoDTO value,
          $Res Function(_$_ClienteGrupoNetoDTO) then) =
      __$$_ClienteGrupoNetoDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'GRUPO_NETO_ID') String grupoNetoId,
      @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String? grupoNetoDescripcion,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ClienteGrupoNetoDTOCopyWithImpl<$Res>
    extends _$ClienteGrupoNetoDTOCopyWithImpl<$Res>
    implements _$$_ClienteGrupoNetoDTOCopyWith<$Res> {
  __$$_ClienteGrupoNetoDTOCopyWithImpl(_$_ClienteGrupoNetoDTO _value,
      $Res Function(_$_ClienteGrupoNetoDTO) _then)
      : super(_value, (v) => _then(v as _$_ClienteGrupoNetoDTO));

  @override
  _$_ClienteGrupoNetoDTO get _value => super._value as _$_ClienteGrupoNetoDTO;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? grupoNetoId = freezed,
    Object? grupoNetoDescripcion = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ClienteGrupoNetoDTO(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      grupoNetoId: grupoNetoId == freezed
          ? _value.grupoNetoId
          : grupoNetoId // ignore: cast_nullable_to_non_nullable
              as String,
      grupoNetoDescripcion: grupoNetoDescripcion == freezed
          ? _value.grupoNetoDescripcion
          : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
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
class _$_ClienteGrupoNetoDTO extends _ClienteGrupoNetoDTO {
  const _$_ClienteGrupoNetoDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.clienteId,
      @JsonKey(name: 'GRUPO_NETO_ID') required this.grupoNetoId,
      @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') this.grupoNetoDescripcion,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
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
  final String? grupoNetoDescripcion;
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
            const DeepCollectionEquality().equals(other.clienteId, clienteId) &&
            const DeepCollectionEquality()
                .equals(other.grupoNetoId, grupoNetoId) &&
            const DeepCollectionEquality()
                .equals(other.grupoNetoDescripcion, grupoNetoDescripcion) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clienteId),
      const DeepCollectionEquality().hash(grupoNetoId),
      const DeepCollectionEquality().hash(grupoNetoDescripcion),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
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
          final String? grupoNetoDescripcion,
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
  String? get grupoNetoDescripcion;
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
