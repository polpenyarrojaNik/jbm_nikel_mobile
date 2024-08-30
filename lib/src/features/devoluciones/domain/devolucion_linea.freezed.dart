// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'devolucion_linea.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DevolucionLinea {
  String get empresaId => throw _privateConstructorUsedError;
  String get devolucionId => throw _privateConstructorUsedError;
  String get articuloId => throw _privateConstructorUsedError;
  String get articuloDescription => throw _privateConstructorUsedError;
  double? get cantidadDevolucion => throw _privateConstructorUsedError;
  double? get cantidadRecibida => throw _privateConstructorUsedError;
  DevolucionMotivo? get devolucionMotivo => throw _privateConstructorUsedError;
  DevolucionEstado? get devolucionEstado => throw _privateConstructorUsedError;
  String? get observaciones => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// Create a copy of DevolucionLinea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DevolucionLineaCopyWith<DevolucionLinea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevolucionLineaCopyWith<$Res> {
  factory $DevolucionLineaCopyWith(
          DevolucionLinea value, $Res Function(DevolucionLinea) then) =
      _$DevolucionLineaCopyWithImpl<$Res, DevolucionLinea>;
  @useResult
  $Res call(
      {String empresaId,
      String devolucionId,
      String articuloId,
      String articuloDescription,
      double? cantidadDevolucion,
      double? cantidadRecibida,
      DevolucionMotivo? devolucionMotivo,
      DevolucionEstado? devolucionEstado,
      String? observaciones,
      DateTime lastUpdated,
      bool deleted});

  $DevolucionMotivoCopyWith<$Res>? get devolucionMotivo;
  $DevolucionEstadoCopyWith<$Res>? get devolucionEstado;
}

/// @nodoc
class _$DevolucionLineaCopyWithImpl<$Res, $Val extends DevolucionLinea>
    implements $DevolucionLineaCopyWith<$Res> {
  _$DevolucionLineaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DevolucionLinea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? devolucionId = null,
    Object? articuloId = null,
    Object? articuloDescription = null,
    Object? cantidadDevolucion = freezed,
    Object? cantidadRecibida = freezed,
    Object? devolucionMotivo = freezed,
    Object? devolucionEstado = freezed,
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
      devolucionMotivo: freezed == devolucionMotivo
          ? _value.devolucionMotivo
          : devolucionMotivo // ignore: cast_nullable_to_non_nullable
              as DevolucionMotivo?,
      devolucionEstado: freezed == devolucionEstado
          ? _value.devolucionEstado
          : devolucionEstado // ignore: cast_nullable_to_non_nullable
              as DevolucionEstado?,
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
              as bool,
    ) as $Val);
  }

  /// Create a copy of DevolucionLinea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DevolucionMotivoCopyWith<$Res>? get devolucionMotivo {
    if (_value.devolucionMotivo == null) {
      return null;
    }

    return $DevolucionMotivoCopyWith<$Res>(_value.devolucionMotivo!, (value) {
      return _then(_value.copyWith(devolucionMotivo: value) as $Val);
    });
  }

  /// Create a copy of DevolucionLinea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DevolucionEstadoCopyWith<$Res>? get devolucionEstado {
    if (_value.devolucionEstado == null) {
      return null;
    }

    return $DevolucionEstadoCopyWith<$Res>(_value.devolucionEstado!, (value) {
      return _then(_value.copyWith(devolucionEstado: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DevolucionLineaImplCopyWith<$Res>
    implements $DevolucionLineaCopyWith<$Res> {
  factory _$$DevolucionLineaImplCopyWith(_$DevolucionLineaImpl value,
          $Res Function(_$DevolucionLineaImpl) then) =
      __$$DevolucionLineaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String empresaId,
      String devolucionId,
      String articuloId,
      String articuloDescription,
      double? cantidadDevolucion,
      double? cantidadRecibida,
      DevolucionMotivo? devolucionMotivo,
      DevolucionEstado? devolucionEstado,
      String? observaciones,
      DateTime lastUpdated,
      bool deleted});

  @override
  $DevolucionMotivoCopyWith<$Res>? get devolucionMotivo;
  @override
  $DevolucionEstadoCopyWith<$Res>? get devolucionEstado;
}

/// @nodoc
class __$$DevolucionLineaImplCopyWithImpl<$Res>
    extends _$DevolucionLineaCopyWithImpl<$Res, _$DevolucionLineaImpl>
    implements _$$DevolucionLineaImplCopyWith<$Res> {
  __$$DevolucionLineaImplCopyWithImpl(
      _$DevolucionLineaImpl _value, $Res Function(_$DevolucionLineaImpl) _then)
      : super(_value, _then);

  /// Create a copy of DevolucionLinea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = null,
    Object? devolucionId = null,
    Object? articuloId = null,
    Object? articuloDescription = null,
    Object? cantidadDevolucion = freezed,
    Object? cantidadRecibida = freezed,
    Object? devolucionMotivo = freezed,
    Object? devolucionEstado = freezed,
    Object? observaciones = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$DevolucionLineaImpl(
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
      devolucionMotivo: freezed == devolucionMotivo
          ? _value.devolucionMotivo
          : devolucionMotivo // ignore: cast_nullable_to_non_nullable
              as DevolucionMotivo?,
      devolucionEstado: freezed == devolucionEstado
          ? _value.devolucionEstado
          : devolucionEstado // ignore: cast_nullable_to_non_nullable
              as DevolucionEstado?,
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
              as bool,
    ));
  }
}

/// @nodoc

class _$DevolucionLineaImpl extends _DevolucionLinea {
  const _$DevolucionLineaImpl(
      {required this.empresaId,
      required this.devolucionId,
      required this.articuloId,
      required this.articuloDescription,
      this.cantidadDevolucion,
      this.cantidadRecibida,
      this.devolucionMotivo,
      this.devolucionEstado,
      this.observaciones,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String empresaId;
  @override
  final String devolucionId;
  @override
  final String articuloId;
  @override
  final String articuloDescription;
  @override
  final double? cantidadDevolucion;
  @override
  final double? cantidadRecibida;
  @override
  final DevolucionMotivo? devolucionMotivo;
  @override
  final DevolucionEstado? devolucionEstado;
  @override
  final String? observaciones;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'DevolucionLinea(empresaId: $empresaId, devolucionId: $devolucionId, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidadDevolucion: $cantidadDevolucion, cantidadRecibida: $cantidadRecibida, devolucionMotivo: $devolucionMotivo, devolucionEstado: $devolucionEstado, observaciones: $observaciones, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DevolucionLineaImpl &&
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
            (identical(other.devolucionMotivo, devolucionMotivo) ||
                other.devolucionMotivo == devolucionMotivo) &&
            (identical(other.devolucionEstado, devolucionEstado) ||
                other.devolucionEstado == devolucionEstado) &&
            (identical(other.observaciones, observaciones) ||
                other.observaciones == observaciones) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      empresaId,
      devolucionId,
      articuloId,
      articuloDescription,
      cantidadDevolucion,
      cantidadRecibida,
      devolucionMotivo,
      devolucionEstado,
      observaciones,
      lastUpdated,
      deleted);

  /// Create a copy of DevolucionLinea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DevolucionLineaImplCopyWith<_$DevolucionLineaImpl> get copyWith =>
      __$$DevolucionLineaImplCopyWithImpl<_$DevolucionLineaImpl>(
          this, _$identity);
}

abstract class _DevolucionLinea extends DevolucionLinea {
  const factory _DevolucionLinea(
      {required final String empresaId,
      required final String devolucionId,
      required final String articuloId,
      required final String articuloDescription,
      final double? cantidadDevolucion,
      final double? cantidadRecibida,
      final DevolucionMotivo? devolucionMotivo,
      final DevolucionEstado? devolucionEstado,
      final String? observaciones,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$DevolucionLineaImpl;
  const _DevolucionLinea._() : super._();

  @override
  String get empresaId;
  @override
  String get devolucionId;
  @override
  String get articuloId;
  @override
  String get articuloDescription;
  @override
  double? get cantidadDevolucion;
  @override
  double? get cantidadRecibida;
  @override
  DevolucionMotivo? get devolucionMotivo;
  @override
  DevolucionEstado? get devolucionEstado;
  @override
  String? get observaciones;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;

  /// Create a copy of DevolucionLinea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DevolucionLineaImplCopyWith<_$DevolucionLineaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
