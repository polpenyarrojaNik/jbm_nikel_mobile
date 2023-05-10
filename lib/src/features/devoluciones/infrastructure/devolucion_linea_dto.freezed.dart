// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'devolucion_linea_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DevolucionLineaDTO _$DevolucionLineaDTOFromJson(Map<String, dynamic> json) {
  return _DevolucionLineaDTO.fromJson(json);
}

/// @nodoc
mixin _$DevolucionLineaDTO {
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DEVOLUCION_ID')
  String get devolucionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_DESCRIPCION')
  String get articuloDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD_DEVOLUCION')
  double? get cantidadDevolucion => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD_RECIBIDA')
  double? get cantidadRecibida => throw _privateConstructorUsedError;
  @JsonKey(name: 'DEVOLUCION_MOTIVO_ID')
  String? get devolucionMotivoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DEVOLUCION_ESTADO_ID')
  String? get devolucionEstadoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'OBSERVACIONES')
  String? get observaciones => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DevolucionLineaDTOCopyWith<DevolucionLineaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevolucionLineaDTOCopyWith<$Res> {
  factory $DevolucionLineaDTOCopyWith(
          DevolucionLineaDTO value, $Res Function(DevolucionLineaDTO) then) =
      _$DevolucionLineaDTOCopyWithImpl<$Res, DevolucionLineaDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'EMPRESA_ID') String empresaId,
      @JsonKey(name: 'DEVOLUCION_ID') String devolucionId,
      @JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'ARTICULO_DESCRIPCION') String articuloDescription,
      @JsonKey(name: 'CANTIDAD_DEVOLUCION') double? cantidadDevolucion,
      @JsonKey(name: 'CANTIDAD_RECIBIDA') double? cantidadRecibida,
      @JsonKey(name: 'DEVOLUCION_MOTIVO_ID') String? devolucionMotivoId,
      @JsonKey(name: 'DEVOLUCION_ESTADO_ID') String? devolucionEstadoId,
      @JsonKey(name: 'OBSERVACIONES') String? observaciones,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$DevolucionLineaDTOCopyWithImpl<$Res, $Val extends DevolucionLineaDTO>
    implements $DevolucionLineaDTOCopyWith<$Res> {
  _$DevolucionLineaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? devolucionId = null,
    Object? articuloId = null,
    Object? articuloDescription = null,
    Object? cantidadDevolucion = freezed,
    Object? cantidadRecibida = freezed,
    Object? devolucionMotivoId = freezed,
    Object? devolucionEstadoId = freezed,
    Object? observaciones = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      devolucionId: null == devolucionId
          ? _value.devolucionId
          : devolucionId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloDescription: null == articuloDescription
          ? _value.articuloDescription
          : articuloDescription // ignore: cast_nullable_to_non_nullable
              as String,
      cantidadDevolucion: freezed == cantidadDevolucion
          ? _value.cantidadDevolucion
          : cantidadDevolucion // ignore: cast_nullable_to_non_nullable
              as double?,
      cantidadRecibida: freezed == cantidadRecibida
          ? _value.cantidadRecibida
          : cantidadRecibida // ignore: cast_nullable_to_non_nullable
              as double?,
      devolucionMotivoId: freezed == devolucionMotivoId
          ? _value.devolucionMotivoId
          : devolucionMotivoId // ignore: cast_nullable_to_non_nullable
              as String?,
      devolucionEstadoId: freezed == devolucionEstadoId
          ? _value.devolucionEstadoId
          : devolucionEstadoId // ignore: cast_nullable_to_non_nullable
              as String?,
      observaciones: freezed == observaciones
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_DevolucionLineaDTOCopyWith<$Res>
    implements $DevolucionLineaDTOCopyWith<$Res> {
  factory _$$_DevolucionLineaDTOCopyWith(_$_DevolucionLineaDTO value,
          $Res Function(_$_DevolucionLineaDTO) then) =
      __$$_DevolucionLineaDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'EMPRESA_ID') String empresaId,
      @JsonKey(name: 'DEVOLUCION_ID') String devolucionId,
      @JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'ARTICULO_DESCRIPCION') String articuloDescription,
      @JsonKey(name: 'CANTIDAD_DEVOLUCION') double? cantidadDevolucion,
      @JsonKey(name: 'CANTIDAD_RECIBIDA') double? cantidadRecibida,
      @JsonKey(name: 'DEVOLUCION_MOTIVO_ID') String? devolucionMotivoId,
      @JsonKey(name: 'DEVOLUCION_ESTADO_ID') String? devolucionEstadoId,
      @JsonKey(name: 'OBSERVACIONES') String? observaciones,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_DevolucionLineaDTOCopyWithImpl<$Res>
    extends _$DevolucionLineaDTOCopyWithImpl<$Res, _$_DevolucionLineaDTO>
    implements _$$_DevolucionLineaDTOCopyWith<$Res> {
  __$$_DevolucionLineaDTOCopyWithImpl(
      _$_DevolucionLineaDTO _value, $Res Function(_$_DevolucionLineaDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? devolucionId = null,
    Object? articuloId = null,
    Object? articuloDescription = null,
    Object? cantidadDevolucion = freezed,
    Object? cantidadRecibida = freezed,
    Object? devolucionMotivoId = freezed,
    Object? devolucionEstadoId = freezed,
    Object? observaciones = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$_DevolucionLineaDTO(
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      devolucionId: null == devolucionId
          ? _value.devolucionId
          : devolucionId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloDescription: null == articuloDescription
          ? _value.articuloDescription
          : articuloDescription // ignore: cast_nullable_to_non_nullable
              as String,
      cantidadDevolucion: freezed == cantidadDevolucion
          ? _value.cantidadDevolucion
          : cantidadDevolucion // ignore: cast_nullable_to_non_nullable
              as double?,
      cantidadRecibida: freezed == cantidadRecibida
          ? _value.cantidadRecibida
          : cantidadRecibida // ignore: cast_nullable_to_non_nullable
              as double?,
      devolucionMotivoId: freezed == devolucionMotivoId
          ? _value.devolucionMotivoId
          : devolucionMotivoId // ignore: cast_nullable_to_non_nullable
              as String?,
      devolucionEstadoId: freezed == devolucionEstadoId
          ? _value.devolucionEstadoId
          : devolucionEstadoId // ignore: cast_nullable_to_non_nullable
              as String?,
      observaciones: freezed == observaciones
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_DevolucionLineaDTO extends _DevolucionLineaDTO {
  const _$_DevolucionLineaDTO(
      {@JsonKey(name: 'EMPRESA_ID') required this.empresaId,
      @JsonKey(name: 'DEVOLUCION_ID') required this.devolucionId,
      @JsonKey(name: 'ARTICULO_ID') required this.articuloId,
      @JsonKey(name: 'ARTICULO_DESCRIPCION') required this.articuloDescription,
      @JsonKey(name: 'CANTIDAD_DEVOLUCION') this.cantidadDevolucion,
      @JsonKey(name: 'CANTIDAD_RECIBIDA') this.cantidadRecibida,
      @JsonKey(name: 'DEVOLUCION_MOTIVO_ID') this.devolucionMotivoId,
      @JsonKey(name: 'DEVOLUCION_ESTADO_ID') this.devolucionEstadoId,
      @JsonKey(name: 'OBSERVACIONES') this.observaciones,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') required this.deleted})
      : super._();

  factory _$_DevolucionLineaDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DevolucionLineaDTOFromJson(json);

  @override
  @JsonKey(name: 'EMPRESA_ID')
  final String empresaId;
  @override
  @JsonKey(name: 'DEVOLUCION_ID')
  final String devolucionId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'ARTICULO_DESCRIPCION')
  final String articuloDescription;
  @override
  @JsonKey(name: 'CANTIDAD_DEVOLUCION')
  final double? cantidadDevolucion;
  @override
  @JsonKey(name: 'CANTIDAD_RECIBIDA')
  final double? cantidadRecibida;
  @override
  @JsonKey(name: 'DEVOLUCION_MOTIVO_ID')
  final String? devolucionMotivoId;
  @override
  @JsonKey(name: 'DEVOLUCION_ESTADO_ID')
  final String? devolucionEstadoId;
  @override
  @JsonKey(name: 'OBSERVACIONES')
  final String? observaciones;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'DevolucionLineaDTO(empresaId: $empresaId, devolucionId: $devolucionId, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidadDevolucion: $cantidadDevolucion, cantidadRecibida: $cantidadRecibida, devolucionMotivoId: $devolucionMotivoId, devolucionEstadoId: $devolucionEstadoId, observaciones: $observaciones, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DevolucionLineaDTO &&
            (identical(other.empresaId, empresaId) ||
                other.empresaId == empresaId) &&
            (identical(other.devolucionId, devolucionId) ||
                other.devolucionId == devolucionId) &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.articuloDescription, articuloDescription) ||
                other.articuloDescription == articuloDescription) &&
            (identical(other.cantidadDevolucion, cantidadDevolucion) ||
                other.cantidadDevolucion == cantidadDevolucion) &&
            (identical(other.cantidadRecibida, cantidadRecibida) ||
                other.cantidadRecibida == cantidadRecibida) &&
            (identical(other.devolucionMotivoId, devolucionMotivoId) ||
                other.devolucionMotivoId == devolucionMotivoId) &&
            (identical(other.devolucionEstadoId, devolucionEstadoId) ||
                other.devolucionEstadoId == devolucionEstadoId) &&
            (identical(other.observaciones, observaciones) ||
                other.observaciones == observaciones) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      empresaId,
      devolucionId,
      articuloId,
      articuloDescription,
      cantidadDevolucion,
      cantidadRecibida,
      devolucionMotivoId,
      devolucionEstadoId,
      observaciones,
      lastUpdated,
      deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DevolucionLineaDTOCopyWith<_$_DevolucionLineaDTO> get copyWith =>
      __$$_DevolucionLineaDTOCopyWithImpl<_$_DevolucionLineaDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DevolucionLineaDTOToJson(
      this,
    );
  }
}

abstract class _DevolucionLineaDTO extends DevolucionLineaDTO {
  const factory _DevolucionLineaDTO(
      {@JsonKey(name: 'EMPRESA_ID')
          required final String empresaId,
      @JsonKey(name: 'DEVOLUCION_ID')
          required final String devolucionId,
      @JsonKey(name: 'ARTICULO_ID')
          required final String articuloId,
      @JsonKey(name: 'ARTICULO_DESCRIPCION')
          required final String articuloDescription,
      @JsonKey(name: 'CANTIDAD_DEVOLUCION')
          final double? cantidadDevolucion,
      @JsonKey(name: 'CANTIDAD_RECIBIDA')
          final double? cantidadRecibida,
      @JsonKey(name: 'DEVOLUCION_MOTIVO_ID')
          final String? devolucionMotivoId,
      @JsonKey(name: 'DEVOLUCION_ESTADO_ID')
          final String? devolucionEstadoId,
      @JsonKey(name: 'OBSERVACIONES')
          final String? observaciones,
      @JsonKey(name: 'LAST_UPDATED')
          required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          required final String deleted}) = _$_DevolucionLineaDTO;
  const _DevolucionLineaDTO._() : super._();

  factory _DevolucionLineaDTO.fromJson(Map<String, dynamic> json) =
      _$_DevolucionLineaDTO.fromJson;

  @override
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId;
  @override
  @JsonKey(name: 'DEVOLUCION_ID')
  String get devolucionId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'ARTICULO_DESCRIPCION')
  String get articuloDescription;
  @override
  @JsonKey(name: 'CANTIDAD_DEVOLUCION')
  double? get cantidadDevolucion;
  @override
  @JsonKey(name: 'CANTIDAD_RECIBIDA')
  double? get cantidadRecibida;
  @override
  @JsonKey(name: 'DEVOLUCION_MOTIVO_ID')
  String? get devolucionMotivoId;
  @override
  @JsonKey(name: 'DEVOLUCION_ESTADO_ID')
  String? get devolucionEstadoId;
  @override
  @JsonKey(name: 'OBSERVACIONES')
  String? get observaciones;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_DevolucionLineaDTOCopyWith<_$_DevolucionLineaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
