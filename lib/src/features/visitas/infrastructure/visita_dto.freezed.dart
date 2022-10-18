// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'visita_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VisitaDTO _$VisitaDTOFromJson(Map<String, dynamic> json) {
  return _VisitaDTO.fromJson(json);
}

/// @nodoc
mixin _$VisitaDTO {
  @JsonKey(name: 'VISITA_ID')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA')
  DateTime get fecha => throw _privateConstructorUsedError;
  @JsonKey(name: 'NUM_EMPL')
  String get numEmpl => throw _privateConstructorUsedError;
  @JsonKey(name: 'CONTACTO')
  String? get contacto => throw _privateConstructorUsedError;
  @JsonKey(name: 'RESUMEN')
  String? get resumen => throw _privateConstructorUsedError;
  @JsonKey(name: 'LATITUD')
  double get latitud => throw _privateConstructorUsedError;
  @JsonKey(name: 'LONGITUD')
  double get longitud => throw _privateConstructorUsedError;
  @JsonKey(name: 'COD_VISITA_APP')
  String? get visitaAppId => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VisitaDTOCopyWith<VisitaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitaDTOCopyWith<$Res> {
  factory $VisitaDTOCopyWith(VisitaDTO value, $Res Function(VisitaDTO) then) =
      _$VisitaDTOCopyWithImpl<$Res, VisitaDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'VISITA_ID') String id,
      @JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'FECHA') DateTime fecha,
      @JsonKey(name: 'NUM_EMPL') String numEmpl,
      @JsonKey(name: 'CONTACTO') String? contacto,
      @JsonKey(name: 'RESUMEN') String? resumen,
      @JsonKey(name: 'LATITUD') double latitud,
      @JsonKey(name: 'LONGITUD') double longitud,
      @JsonKey(name: 'COD_VISITA_APP') String? visitaAppId,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$VisitaDTOCopyWithImpl<$Res, $Val extends VisitaDTO>
    implements $VisitaDTOCopyWith<$Res> {
  _$VisitaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clienteId = null,
    Object? fecha = null,
    Object? numEmpl = null,
    Object? contacto = freezed,
    Object? resumen = freezed,
    Object? latitud = null,
    Object? longitud = null,
    Object? visitaAppId = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      numEmpl: null == numEmpl
          ? _value.numEmpl
          : numEmpl // ignore: cast_nullable_to_non_nullable
              as String,
      contacto: freezed == contacto
          ? _value.contacto
          : contacto // ignore: cast_nullable_to_non_nullable
              as String?,
      resumen: freezed == resumen
          ? _value.resumen
          : resumen // ignore: cast_nullable_to_non_nullable
              as String?,
      latitud: null == latitud
          ? _value.latitud
          : latitud // ignore: cast_nullable_to_non_nullable
              as double,
      longitud: null == longitud
          ? _value.longitud
          : longitud // ignore: cast_nullable_to_non_nullable
              as double,
      visitaAppId: freezed == visitaAppId
          ? _value.visitaAppId
          : visitaAppId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_VisitaDTOCopyWith<$Res> implements $VisitaDTOCopyWith<$Res> {
  factory _$$_VisitaDTOCopyWith(
          _$_VisitaDTO value, $Res Function(_$_VisitaDTO) then) =
      __$$_VisitaDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'VISITA_ID') String id,
      @JsonKey(name: 'CLIENTE_ID') String clienteId,
      @JsonKey(name: 'FECHA') DateTime fecha,
      @JsonKey(name: 'NUM_EMPL') String numEmpl,
      @JsonKey(name: 'CONTACTO') String? contacto,
      @JsonKey(name: 'RESUMEN') String? resumen,
      @JsonKey(name: 'LATITUD') double latitud,
      @JsonKey(name: 'LONGITUD') double longitud,
      @JsonKey(name: 'COD_VISITA_APP') String? visitaAppId,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_VisitaDTOCopyWithImpl<$Res>
    extends _$VisitaDTOCopyWithImpl<$Res, _$_VisitaDTO>
    implements _$$_VisitaDTOCopyWith<$Res> {
  __$$_VisitaDTOCopyWithImpl(
      _$_VisitaDTO _value, $Res Function(_$_VisitaDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clienteId = null,
    Object? fecha = null,
    Object? numEmpl = null,
    Object? contacto = freezed,
    Object? resumen = freezed,
    Object? latitud = null,
    Object? longitud = null,
    Object? visitaAppId = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$_VisitaDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      numEmpl: null == numEmpl
          ? _value.numEmpl
          : numEmpl // ignore: cast_nullable_to_non_nullable
              as String,
      contacto: freezed == contacto
          ? _value.contacto
          : contacto // ignore: cast_nullable_to_non_nullable
              as String?,
      resumen: freezed == resumen
          ? _value.resumen
          : resumen // ignore: cast_nullable_to_non_nullable
              as String?,
      latitud: null == latitud
          ? _value.latitud
          : latitud // ignore: cast_nullable_to_non_nullable
              as double,
      longitud: null == longitud
          ? _value.longitud
          : longitud // ignore: cast_nullable_to_non_nullable
              as double,
      visitaAppId: freezed == visitaAppId
          ? _value.visitaAppId
          : visitaAppId // ignore: cast_nullable_to_non_nullable
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
class _$_VisitaDTO extends _VisitaDTO {
  const _$_VisitaDTO(
      {@JsonKey(name: 'VISITA_ID') required this.id,
      @JsonKey(name: 'CLIENTE_ID') required this.clienteId,
      @JsonKey(name: 'FECHA') required this.fecha,
      @JsonKey(name: 'NUM_EMPL') required this.numEmpl,
      @JsonKey(name: 'CONTACTO') this.contacto,
      @JsonKey(name: 'RESUMEN') this.resumen,
      @JsonKey(name: 'LATITUD') required this.latitud,
      @JsonKey(name: 'LONGITUD') required this.longitud,
      @JsonKey(name: 'COD_VISITA_APP') this.visitaAppId,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_VisitaDTO.fromJson(Map<String, dynamic> json) =>
      _$$_VisitaDTOFromJson(json);

  @override
  @JsonKey(name: 'VISITA_ID')
  final String id;
  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String clienteId;
  @override
  @JsonKey(name: 'FECHA')
  final DateTime fecha;
  @override
  @JsonKey(name: 'NUM_EMPL')
  final String numEmpl;
  @override
  @JsonKey(name: 'CONTACTO')
  final String? contacto;
  @override
  @JsonKey(name: 'RESUMEN')
  final String? resumen;
  @override
  @JsonKey(name: 'LATITUD')
  final double latitud;
  @override
  @JsonKey(name: 'LONGITUD')
  final double longitud;
  @override
  @JsonKey(name: 'COD_VISITA_APP')
  final String? visitaAppId;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'VisitaDTO(id: $id, clienteId: $clienteId, fecha: $fecha, numEmpl: $numEmpl, contacto: $contacto, resumen: $resumen, latitud: $latitud, longitud: $longitud, visitaAppId: $visitaAppId, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VisitaDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.numEmpl, numEmpl) || other.numEmpl == numEmpl) &&
            (identical(other.contacto, contacto) ||
                other.contacto == contacto) &&
            (identical(other.resumen, resumen) || other.resumen == resumen) &&
            (identical(other.latitud, latitud) || other.latitud == latitud) &&
            (identical(other.longitud, longitud) ||
                other.longitud == longitud) &&
            (identical(other.visitaAppId, visitaAppId) ||
                other.visitaAppId == visitaAppId) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, clienteId, fecha, numEmpl,
      contacto, resumen, latitud, longitud, visitaAppId, lastUpdated, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VisitaDTOCopyWith<_$_VisitaDTO> get copyWith =>
      __$$_VisitaDTOCopyWithImpl<_$_VisitaDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VisitaDTOToJson(
      this,
    );
  }
}

abstract class _VisitaDTO extends VisitaDTO {
  const factory _VisitaDTO(
      {@JsonKey(name: 'VISITA_ID') required final String id,
      @JsonKey(name: 'CLIENTE_ID') required final String clienteId,
      @JsonKey(name: 'FECHA') required final DateTime fecha,
      @JsonKey(name: 'NUM_EMPL') required final String numEmpl,
      @JsonKey(name: 'CONTACTO') final String? contacto,
      @JsonKey(name: 'RESUMEN') final String? resumen,
      @JsonKey(name: 'LATITUD') required final double latitud,
      @JsonKey(name: 'LONGITUD') required final double longitud,
      @JsonKey(name: 'COD_VISITA_APP') final String? visitaAppId,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_VisitaDTO;
  const _VisitaDTO._() : super._();

  factory _VisitaDTO.fromJson(Map<String, dynamic> json) =
      _$_VisitaDTO.fromJson;

  @override
  @JsonKey(name: 'VISITA_ID')
  String get id;
  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId;
  @override
  @JsonKey(name: 'FECHA')
  DateTime get fecha;
  @override
  @JsonKey(name: 'NUM_EMPL')
  String get numEmpl;
  @override
  @JsonKey(name: 'CONTACTO')
  String? get contacto;
  @override
  @JsonKey(name: 'RESUMEN')
  String? get resumen;
  @override
  @JsonKey(name: 'LATITUD')
  double get latitud;
  @override
  @JsonKey(name: 'LONGITUD')
  double get longitud;
  @override
  @JsonKey(name: 'COD_VISITA_APP')
  String? get visitaAppId;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_VisitaDTOCopyWith<_$_VisitaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
