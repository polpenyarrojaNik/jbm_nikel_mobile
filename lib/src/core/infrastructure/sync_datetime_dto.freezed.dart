// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_datetime_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SyncDateTimeDTO _$SyncDateTimeDTOFromJson(Map<String, dynamic> json) {
  return _SyncDateTimeDTO.fromJson(json);
}

/// @nodoc
mixin _$SyncDateTimeDTO {
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'DB_SCHEMA_VERSION')
  int get dbSchemaVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_ULTIMA_SYNC')
  DateTime get articuloUltimaSync => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLIENTE_ULTIMA_SYNC')
  DateTime get clienteUltimaSync => throw _privateConstructorUsedError;
  @JsonKey(name: 'PEDIDO_ULTIMA_SYNC')
  DateTime get pedidoUltimaSync => throw _privateConstructorUsedError;
  @JsonKey(name: 'VISITA_ULTIMA_SYNC')
  DateTime get visitaUltimaSync => throw _privateConstructorUsedError;

  /// Serializes this SyncDateTimeDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SyncDateTimeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SyncDateTimeDTOCopyWith<SyncDateTimeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncDateTimeDTOCopyWith<$Res> {
  factory $SyncDateTimeDTOCopyWith(
          SyncDateTimeDTO value, $Res Function(SyncDateTimeDTO) then) =
      _$SyncDateTimeDTOCopyWithImpl<$Res, SyncDateTimeDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int id,
      @JsonKey(name: 'DB_SCHEMA_VERSION') int dbSchemaVersion,
      @JsonKey(name: 'ARTICULO_ULTIMA_SYNC') DateTime articuloUltimaSync,
      @JsonKey(name: 'CLIENTE_ULTIMA_SYNC') DateTime clienteUltimaSync,
      @JsonKey(name: 'PEDIDO_ULTIMA_SYNC') DateTime pedidoUltimaSync,
      @JsonKey(name: 'VISITA_ULTIMA_SYNC') DateTime visitaUltimaSync});
}

/// @nodoc
class _$SyncDateTimeDTOCopyWithImpl<$Res, $Val extends SyncDateTimeDTO>
    implements $SyncDateTimeDTOCopyWith<$Res> {
  _$SyncDateTimeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SyncDateTimeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dbSchemaVersion = null,
    Object? articuloUltimaSync = null,
    Object? clienteUltimaSync = null,
    Object? pedidoUltimaSync = null,
    Object? visitaUltimaSync = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dbSchemaVersion: null == dbSchemaVersion
          ? _value.dbSchemaVersion
          : dbSchemaVersion // ignore: cast_nullable_to_non_nullable
              as int,
      articuloUltimaSync: null == articuloUltimaSync
          ? _value.articuloUltimaSync
          : articuloUltimaSync // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clienteUltimaSync: null == clienteUltimaSync
          ? _value.clienteUltimaSync
          : clienteUltimaSync // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pedidoUltimaSync: null == pedidoUltimaSync
          ? _value.pedidoUltimaSync
          : pedidoUltimaSync // ignore: cast_nullable_to_non_nullable
              as DateTime,
      visitaUltimaSync: null == visitaUltimaSync
          ? _value.visitaUltimaSync
          : visitaUltimaSync // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SyncDateTimeDTOImplCopyWith<$Res>
    implements $SyncDateTimeDTOCopyWith<$Res> {
  factory _$$SyncDateTimeDTOImplCopyWith(_$SyncDateTimeDTOImpl value,
          $Res Function(_$SyncDateTimeDTOImpl) then) =
      __$$SyncDateTimeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int id,
      @JsonKey(name: 'DB_SCHEMA_VERSION') int dbSchemaVersion,
      @JsonKey(name: 'ARTICULO_ULTIMA_SYNC') DateTime articuloUltimaSync,
      @JsonKey(name: 'CLIENTE_ULTIMA_SYNC') DateTime clienteUltimaSync,
      @JsonKey(name: 'PEDIDO_ULTIMA_SYNC') DateTime pedidoUltimaSync,
      @JsonKey(name: 'VISITA_ULTIMA_SYNC') DateTime visitaUltimaSync});
}

/// @nodoc
class __$$SyncDateTimeDTOImplCopyWithImpl<$Res>
    extends _$SyncDateTimeDTOCopyWithImpl<$Res, _$SyncDateTimeDTOImpl>
    implements _$$SyncDateTimeDTOImplCopyWith<$Res> {
  __$$SyncDateTimeDTOImplCopyWithImpl(
      _$SyncDateTimeDTOImpl _value, $Res Function(_$SyncDateTimeDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of SyncDateTimeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dbSchemaVersion = null,
    Object? articuloUltimaSync = null,
    Object? clienteUltimaSync = null,
    Object? pedidoUltimaSync = null,
    Object? visitaUltimaSync = null,
  }) {
    return _then(_$SyncDateTimeDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dbSchemaVersion: null == dbSchemaVersion
          ? _value.dbSchemaVersion
          : dbSchemaVersion // ignore: cast_nullable_to_non_nullable
              as int,
      articuloUltimaSync: null == articuloUltimaSync
          ? _value.articuloUltimaSync
          : articuloUltimaSync // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clienteUltimaSync: null == clienteUltimaSync
          ? _value.clienteUltimaSync
          : clienteUltimaSync // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pedidoUltimaSync: null == pedidoUltimaSync
          ? _value.pedidoUltimaSync
          : pedidoUltimaSync // ignore: cast_nullable_to_non_nullable
              as DateTime,
      visitaUltimaSync: null == visitaUltimaSync
          ? _value.visitaUltimaSync
          : visitaUltimaSync // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SyncDateTimeDTOImpl extends _SyncDateTimeDTO {
  const _$SyncDateTimeDTOImpl(
      {@JsonKey(name: 'ID') required this.id,
      @JsonKey(name: 'DB_SCHEMA_VERSION') required this.dbSchemaVersion,
      @JsonKey(name: 'ARTICULO_ULTIMA_SYNC') required this.articuloUltimaSync,
      @JsonKey(name: 'CLIENTE_ULTIMA_SYNC') required this.clienteUltimaSync,
      @JsonKey(name: 'PEDIDO_ULTIMA_SYNC') required this.pedidoUltimaSync,
      @JsonKey(name: 'VISITA_ULTIMA_SYNC') required this.visitaUltimaSync})
      : super._();

  factory _$SyncDateTimeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SyncDateTimeDTOImplFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int id;
  @override
  @JsonKey(name: 'DB_SCHEMA_VERSION')
  final int dbSchemaVersion;
  @override
  @JsonKey(name: 'ARTICULO_ULTIMA_SYNC')
  final DateTime articuloUltimaSync;
  @override
  @JsonKey(name: 'CLIENTE_ULTIMA_SYNC')
  final DateTime clienteUltimaSync;
  @override
  @JsonKey(name: 'PEDIDO_ULTIMA_SYNC')
  final DateTime pedidoUltimaSync;
  @override
  @JsonKey(name: 'VISITA_ULTIMA_SYNC')
  final DateTime visitaUltimaSync;

  @override
  String toString() {
    return 'SyncDateTimeDTO(id: $id, dbSchemaVersion: $dbSchemaVersion, articuloUltimaSync: $articuloUltimaSync, clienteUltimaSync: $clienteUltimaSync, pedidoUltimaSync: $pedidoUltimaSync, visitaUltimaSync: $visitaUltimaSync)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncDateTimeDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dbSchemaVersion, dbSchemaVersion) ||
                other.dbSchemaVersion == dbSchemaVersion) &&
            (identical(other.articuloUltimaSync, articuloUltimaSync) ||
                other.articuloUltimaSync == articuloUltimaSync) &&
            (identical(other.clienteUltimaSync, clienteUltimaSync) ||
                other.clienteUltimaSync == clienteUltimaSync) &&
            (identical(other.pedidoUltimaSync, pedidoUltimaSync) ||
                other.pedidoUltimaSync == pedidoUltimaSync) &&
            (identical(other.visitaUltimaSync, visitaUltimaSync) ||
                other.visitaUltimaSync == visitaUltimaSync));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      dbSchemaVersion,
      articuloUltimaSync,
      clienteUltimaSync,
      pedidoUltimaSync,
      visitaUltimaSync);

  /// Create a copy of SyncDateTimeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncDateTimeDTOImplCopyWith<_$SyncDateTimeDTOImpl> get copyWith =>
      __$$SyncDateTimeDTOImplCopyWithImpl<_$SyncDateTimeDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SyncDateTimeDTOImplToJson(
      this,
    );
  }
}

abstract class _SyncDateTimeDTO extends SyncDateTimeDTO {
  const factory _SyncDateTimeDTO(
      {@JsonKey(name: 'ID') required final int id,
      @JsonKey(name: 'DB_SCHEMA_VERSION') required final int dbSchemaVersion,
      @JsonKey(name: 'ARTICULO_ULTIMA_SYNC')
      required final DateTime articuloUltimaSync,
      @JsonKey(name: 'CLIENTE_ULTIMA_SYNC')
      required final DateTime clienteUltimaSync,
      @JsonKey(name: 'PEDIDO_ULTIMA_SYNC')
      required final DateTime pedidoUltimaSync,
      @JsonKey(name: 'VISITA_ULTIMA_SYNC')
      required final DateTime visitaUltimaSync}) = _$SyncDateTimeDTOImpl;
  const _SyncDateTimeDTO._() : super._();

  factory _SyncDateTimeDTO.fromJson(Map<String, dynamic> json) =
      _$SyncDateTimeDTOImpl.fromJson;

  @override
  @JsonKey(name: 'ID')
  int get id;
  @override
  @JsonKey(name: 'DB_SCHEMA_VERSION')
  int get dbSchemaVersion;
  @override
  @JsonKey(name: 'ARTICULO_ULTIMA_SYNC')
  DateTime get articuloUltimaSync;
  @override
  @JsonKey(name: 'CLIENTE_ULTIMA_SYNC')
  DateTime get clienteUltimaSync;
  @override
  @JsonKey(name: 'PEDIDO_ULTIMA_SYNC')
  DateTime get pedidoUltimaSync;
  @override
  @JsonKey(name: 'VISITA_ULTIMA_SYNC')
  DateTime get visitaUltimaSync;

  /// Create a copy of SyncDateTimeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SyncDateTimeDTOImplCopyWith<_$SyncDateTimeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
