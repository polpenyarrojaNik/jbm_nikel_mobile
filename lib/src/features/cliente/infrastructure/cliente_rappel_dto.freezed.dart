// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cliente_rappel_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClienteRappelDTOCopyWith<ClienteRappelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteRappelDTOCopyWith<$Res> {
  factory $ClienteRappelDTOCopyWith(
          ClienteRappelDTO value, $Res Function(ClienteRappelDTO) then) =
      _$ClienteRappelDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'RAPPEL_ID') String rappelId,
      @JsonKey(name: 'DESCRIPCION') String descripcion,
      @JsonKey(name: 'FECHA_DESDE') DateTime fechaDesDe,
      @JsonKey(name: 'FECHA_HASTA') DateTime? fechaHasta,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ClienteRappelDTOCopyWithImpl<$Res>
    implements $ClienteRappelDTOCopyWith<$Res> {
  _$ClienteRappelDTOCopyWithImpl(this._value, this._then);

  final ClienteRappelDTO _value;
  // ignore: unused_field
  final $Res Function(ClienteRappelDTO) _then;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? rappelId = freezed,
    Object? descripcion = freezed,
    Object? fechaDesDe = freezed,
    Object? fechaHasta = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      rappelId: rappelId == freezed
          ? _value.rappelId
          : rappelId // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: descripcion == freezed
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      fechaDesDe: fechaDesDe == freezed
          ? _value.fechaDesDe
          : fechaDesDe // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fechaHasta: fechaHasta == freezed
          ? _value.fechaHasta
          : fechaHasta // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$_ClienteRappelDTOCopyWith<$Res>
    implements $ClienteRappelDTOCopyWith<$Res> {
  factory _$$_ClienteRappelDTOCopyWith(
          _$_ClienteRappelDTO value, $Res Function(_$_ClienteRappelDTO) then) =
      __$$_ClienteRappelDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'RAPPEL_ID') String rappelId,
      @JsonKey(name: 'DESCRIPCION') String descripcion,
      @JsonKey(name: 'FECHA_DESDE') DateTime fechaDesDe,
      @JsonKey(name: 'FECHA_HASTA') DateTime? fechaHasta,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ClienteRappelDTOCopyWithImpl<$Res>
    extends _$ClienteRappelDTOCopyWithImpl<$Res>
    implements _$$_ClienteRappelDTOCopyWith<$Res> {
  __$$_ClienteRappelDTOCopyWithImpl(
      _$_ClienteRappelDTO _value, $Res Function(_$_ClienteRappelDTO) _then)
      : super(_value, (v) => _then(v as _$_ClienteRappelDTO));

  @override
  _$_ClienteRappelDTO get _value => super._value as _$_ClienteRappelDTO;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? rappelId = freezed,
    Object? descripcion = freezed,
    Object? fechaDesDe = freezed,
    Object? fechaHasta = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ClienteRappelDTO(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      rappelId: rappelId == freezed
          ? _value.rappelId
          : rappelId // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: descripcion == freezed
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      fechaDesDe: fechaDesDe == freezed
          ? _value.fechaDesDe
          : fechaDesDe // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fechaHasta: fechaHasta == freezed
          ? _value.fechaHasta
          : fechaHasta // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$_ClienteRappelDTO extends _ClienteRappelDTO {
  const _$_ClienteRappelDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.clienteId,
      @JsonKey(name: 'RAPPEL_ID') required this.rappelId,
      @JsonKey(name: 'DESCRIPCION') required this.descripcion,
      @JsonKey(name: 'FECHA_DESDE') required this.fechaDesDe,
      @JsonKey(name: 'FECHA_HASTA') required this.fechaHasta,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_ClienteRappelDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ClienteRappelDTOFromJson(json);

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
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ClienteRappelDTO(clienteId: $clienteId, rappelId: $rappelId, descripcion: $descripcion, fechaDesDe: $fechaDesDe, fechaHasta: $fechaHasta, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteRappelDTO &&
            const DeepCollectionEquality().equals(other.clienteId, clienteId) &&
            const DeepCollectionEquality().equals(other.rappelId, rappelId) &&
            const DeepCollectionEquality()
                .equals(other.descripcion, descripcion) &&
            const DeepCollectionEquality()
                .equals(other.fechaDesDe, fechaDesDe) &&
            const DeepCollectionEquality()
                .equals(other.fechaHasta, fechaHasta) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clienteId),
      const DeepCollectionEquality().hash(rappelId),
      const DeepCollectionEquality().hash(descripcion),
      const DeepCollectionEquality().hash(fechaDesDe),
      const DeepCollectionEquality().hash(fechaHasta),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ClienteRappelDTOCopyWith<_$_ClienteRappelDTO> get copyWith =>
      __$$_ClienteRappelDTOCopyWithImpl<_$_ClienteRappelDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClienteRappelDTOToJson(
      this,
    );
  }
}

abstract class _ClienteRappelDTO extends ClienteRappelDTO {
  const factory _ClienteRappelDTO(
      {@JsonKey(name: 'CLIENTE_ID') required final String clienteId,
      @JsonKey(name: 'RAPPEL_ID') required final String rappelId,
      @JsonKey(name: 'DESCRIPCION') required final String descripcion,
      @JsonKey(name: 'FECHA_DESDE') required final DateTime fechaDesDe,
      @JsonKey(name: 'FECHA_HASTA') required final DateTime? fechaHasta,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_ClienteRappelDTO;
  const _ClienteRappelDTO._() : super._();

  factory _ClienteRappelDTO.fromJson(Map<String, dynamic> json) =
      _$_ClienteRappelDTO.fromJson;

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
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteRappelDTOCopyWith<_$_ClienteRappelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
