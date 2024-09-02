// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expedicion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Expedicion {
  String? get empresaId => throw _privateConstructorUsedError;
  String? get pedidoVentaId => throw _privateConstructorUsedError;
  String? get usuarioId => throw _privateConstructorUsedError;
  DateTime get pedidoVentaDate => throw _privateConstructorUsedError;
  String? get clienteId => throw _privateConstructorUsedError;
  String? get direccionId => throw _privateConstructorUsedError;
  String get nombreCliente => throw _privateConstructorUsedError;
  String? get codigoPostal => throw _privateConstructorUsedError;
  String? get poblacion => throw _privateConstructorUsedError;
  String? get provincia => throw _privateConstructorUsedError;
  Pais? get pais => throw _privateConstructorUsedError;
  Divisa get divisa => throw _privateConstructorUsedError;
  Money? get baseImponible => throw _privateConstructorUsedError;
  PedidoVentaEstado? get pedidoVentaEstado =>
      throw _privateConstructorUsedError;
  bool? get oferta => throw _privateConstructorUsedError;
  String? get pedidoAppId => throw _privateConstructorUsedError;
  TrackingEstado get trackingEstado => throw _privateConstructorUsedError;
  String? get trackId => throw _privateConstructorUsedError;
  bool get enviada => throw _privateConstructorUsedError;
  bool get tratada => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  /// Create a copy of Expedicion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpedicionCopyWith<Expedicion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpedicionCopyWith<$Res> {
  factory $ExpedicionCopyWith(
          Expedicion value, $Res Function(Expedicion) then) =
      _$ExpedicionCopyWithImpl<$Res, Expedicion>;
  @useResult
  $Res call(
      {String? empresaId,
      String? pedidoVentaId,
      String? usuarioId,
      DateTime pedidoVentaDate,
      String? clienteId,
      String? direccionId,
      String nombreCliente,
      String? codigoPostal,
      String? poblacion,
      String? provincia,
      Pais? pais,
      Divisa divisa,
      Money? baseImponible,
      PedidoVentaEstado? pedidoVentaEstado,
      bool? oferta,
      String? pedidoAppId,
      TrackingEstado trackingEstado,
      String? trackId,
      bool enviada,
      bool tratada,
      DateTime lastUpdated,
      bool deleted});

  $PaisCopyWith<$Res>? get pais;
  $DivisaCopyWith<$Res> get divisa;
  $PedidoVentaEstadoCopyWith<$Res>? get pedidoVentaEstado;
  $TrackingEstadoCopyWith<$Res> get trackingEstado;
}

/// @nodoc
class _$ExpedicionCopyWithImpl<$Res, $Val extends Expedicion>
    implements $ExpedicionCopyWith<$Res> {
  _$ExpedicionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Expedicion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = freezed,
    Object? pedidoVentaId = freezed,
    Object? usuarioId = freezed,
    Object? pedidoVentaDate = null,
    Object? clienteId = freezed,
    Object? direccionId = freezed,
    Object? nombreCliente = null,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? pais = freezed,
    Object? divisa = null,
    Object? baseImponible = freezed,
    Object? pedidoVentaEstado = freezed,
    Object? oferta = freezed,
    Object? pedidoAppId = freezed,
    Object? trackingEstado = null,
    Object? trackId = freezed,
    Object? enviada = null,
    Object? tratada = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      empresaId: freezed == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoVentaId: freezed == pedidoVentaId
          ? _value.pedidoVentaId
          : pedidoVentaId // ignore: cast_nullable_to_non_nullable
              as String?,
      usuarioId: freezed == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoVentaDate: null == pedidoVentaDate
          ? _value.pedidoVentaDate
          : pedidoVentaDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clienteId: freezed == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionId: freezed == direccionId
          ? _value.direccionId
          : direccionId // ignore: cast_nullable_to_non_nullable
              as String?,
      nombreCliente: null == nombreCliente
          ? _value.nombreCliente
          : nombreCliente // ignore: cast_nullable_to_non_nullable
              as String,
      codigoPostal: freezed == codigoPostal
          ? _value.codigoPostal
          : codigoPostal // ignore: cast_nullable_to_non_nullable
              as String?,
      poblacion: freezed == poblacion
          ? _value.poblacion
          : poblacion // ignore: cast_nullable_to_non_nullable
              as String?,
      provincia: freezed == provincia
          ? _value.provincia
          : provincia // ignore: cast_nullable_to_non_nullable
              as String?,
      pais: freezed == pais
          ? _value.pais
          : pais // ignore: cast_nullable_to_non_nullable
              as Pais?,
      divisa: null == divisa
          ? _value.divisa
          : divisa // ignore: cast_nullable_to_non_nullable
              as Divisa,
      baseImponible: freezed == baseImponible
          ? _value.baseImponible
          : baseImponible // ignore: cast_nullable_to_non_nullable
              as Money?,
      pedidoVentaEstado: freezed == pedidoVentaEstado
          ? _value.pedidoVentaEstado
          : pedidoVentaEstado // ignore: cast_nullable_to_non_nullable
              as PedidoVentaEstado?,
      oferta: freezed == oferta
          ? _value.oferta
          : oferta // ignore: cast_nullable_to_non_nullable
              as bool?,
      pedidoAppId: freezed == pedidoAppId
          ? _value.pedidoAppId
          : pedidoAppId // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingEstado: null == trackingEstado
          ? _value.trackingEstado
          : trackingEstado // ignore: cast_nullable_to_non_nullable
              as TrackingEstado,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String?,
      enviada: null == enviada
          ? _value.enviada
          : enviada // ignore: cast_nullable_to_non_nullable
              as bool,
      tratada: null == tratada
          ? _value.tratada
          : tratada // ignore: cast_nullable_to_non_nullable
              as bool,
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

  /// Create a copy of Expedicion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaisCopyWith<$Res>? get pais {
    if (_value.pais == null) {
      return null;
    }

    return $PaisCopyWith<$Res>(_value.pais!, (value) {
      return _then(_value.copyWith(pais: value) as $Val);
    });
  }

  /// Create a copy of Expedicion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DivisaCopyWith<$Res> get divisa {
    return $DivisaCopyWith<$Res>(_value.divisa, (value) {
      return _then(_value.copyWith(divisa: value) as $Val);
    });
  }

  /// Create a copy of Expedicion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PedidoVentaEstadoCopyWith<$Res>? get pedidoVentaEstado {
    if (_value.pedidoVentaEstado == null) {
      return null;
    }

    return $PedidoVentaEstadoCopyWith<$Res>(_value.pedidoVentaEstado!, (value) {
      return _then(_value.copyWith(pedidoVentaEstado: value) as $Val);
    });
  }

  /// Create a copy of Expedicion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackingEstadoCopyWith<$Res> get trackingEstado {
    return $TrackingEstadoCopyWith<$Res>(_value.trackingEstado, (value) {
      return _then(_value.copyWith(trackingEstado: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExpedicionImplCopyWith<$Res>
    implements $ExpedicionCopyWith<$Res> {
  factory _$$ExpedicionImplCopyWith(
          _$ExpedicionImpl value, $Res Function(_$ExpedicionImpl) then) =
      __$$ExpedicionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? empresaId,
      String? pedidoVentaId,
      String? usuarioId,
      DateTime pedidoVentaDate,
      String? clienteId,
      String? direccionId,
      String nombreCliente,
      String? codigoPostal,
      String? poblacion,
      String? provincia,
      Pais? pais,
      Divisa divisa,
      Money? baseImponible,
      PedidoVentaEstado? pedidoVentaEstado,
      bool? oferta,
      String? pedidoAppId,
      TrackingEstado trackingEstado,
      String? trackId,
      bool enviada,
      bool tratada,
      DateTime lastUpdated,
      bool deleted});

  @override
  $PaisCopyWith<$Res>? get pais;
  @override
  $DivisaCopyWith<$Res> get divisa;
  @override
  $PedidoVentaEstadoCopyWith<$Res>? get pedidoVentaEstado;
  @override
  $TrackingEstadoCopyWith<$Res> get trackingEstado;
}

/// @nodoc
class __$$ExpedicionImplCopyWithImpl<$Res>
    extends _$ExpedicionCopyWithImpl<$Res, _$ExpedicionImpl>
    implements _$$ExpedicionImplCopyWith<$Res> {
  __$$ExpedicionImplCopyWithImpl(
      _$ExpedicionImpl _value, $Res Function(_$ExpedicionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Expedicion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empresaId = freezed,
    Object? pedidoVentaId = freezed,
    Object? usuarioId = freezed,
    Object? pedidoVentaDate = null,
    Object? clienteId = freezed,
    Object? direccionId = freezed,
    Object? nombreCliente = null,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? pais = freezed,
    Object? divisa = null,
    Object? baseImponible = freezed,
    Object? pedidoVentaEstado = freezed,
    Object? oferta = freezed,
    Object? pedidoAppId = freezed,
    Object? trackingEstado = null,
    Object? trackId = freezed,
    Object? enviada = null,
    Object? tratada = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$ExpedicionImpl(
      empresaId: freezed == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoVentaId: freezed == pedidoVentaId
          ? _value.pedidoVentaId
          : pedidoVentaId // ignore: cast_nullable_to_non_nullable
              as String?,
      usuarioId: freezed == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as String?,
      pedidoVentaDate: null == pedidoVentaDate
          ? _value.pedidoVentaDate
          : pedidoVentaDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clienteId: freezed == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String?,
      direccionId: freezed == direccionId
          ? _value.direccionId
          : direccionId // ignore: cast_nullable_to_non_nullable
              as String?,
      nombreCliente: null == nombreCliente
          ? _value.nombreCliente
          : nombreCliente // ignore: cast_nullable_to_non_nullable
              as String,
      codigoPostal: freezed == codigoPostal
          ? _value.codigoPostal
          : codigoPostal // ignore: cast_nullable_to_non_nullable
              as String?,
      poblacion: freezed == poblacion
          ? _value.poblacion
          : poblacion // ignore: cast_nullable_to_non_nullable
              as String?,
      provincia: freezed == provincia
          ? _value.provincia
          : provincia // ignore: cast_nullable_to_non_nullable
              as String?,
      pais: freezed == pais
          ? _value.pais
          : pais // ignore: cast_nullable_to_non_nullable
              as Pais?,
      divisa: null == divisa
          ? _value.divisa
          : divisa // ignore: cast_nullable_to_non_nullable
              as Divisa,
      baseImponible: freezed == baseImponible
          ? _value.baseImponible
          : baseImponible // ignore: cast_nullable_to_non_nullable
              as Money?,
      pedidoVentaEstado: freezed == pedidoVentaEstado
          ? _value.pedidoVentaEstado
          : pedidoVentaEstado // ignore: cast_nullable_to_non_nullable
              as PedidoVentaEstado?,
      oferta: freezed == oferta
          ? _value.oferta
          : oferta // ignore: cast_nullable_to_non_nullable
              as bool?,
      pedidoAppId: freezed == pedidoAppId
          ? _value.pedidoAppId
          : pedidoAppId // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingEstado: null == trackingEstado
          ? _value.trackingEstado
          : trackingEstado // ignore: cast_nullable_to_non_nullable
              as TrackingEstado,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String?,
      enviada: null == enviada
          ? _value.enviada
          : enviada // ignore: cast_nullable_to_non_nullable
              as bool,
      tratada: null == tratada
          ? _value.tratada
          : tratada // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$ExpedicionImpl extends _Expedicion {
  const _$ExpedicionImpl(
      {this.empresaId,
      this.pedidoVentaId,
      this.usuarioId,
      required this.pedidoVentaDate,
      this.clienteId,
      this.direccionId,
      required this.nombreCliente,
      this.codigoPostal,
      this.poblacion,
      this.provincia,
      this.pais,
      required this.divisa,
      this.baseImponible,
      this.pedidoVentaEstado,
      this.oferta,
      this.pedidoAppId,
      required this.trackingEstado,
      required this.trackId,
      required this.enviada,
      required this.tratada,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String? empresaId;
  @override
  final String? pedidoVentaId;
  @override
  final String? usuarioId;
  @override
  final DateTime pedidoVentaDate;
  @override
  final String? clienteId;
  @override
  final String? direccionId;
  @override
  final String nombreCliente;
  @override
  final String? codigoPostal;
  @override
  final String? poblacion;
  @override
  final String? provincia;
  @override
  final Pais? pais;
  @override
  final Divisa divisa;
  @override
  final Money? baseImponible;
  @override
  final PedidoVentaEstado? pedidoVentaEstado;
  @override
  final bool? oferta;
  @override
  final String? pedidoAppId;
  @override
  final TrackingEstado trackingEstado;
  @override
  final String? trackId;
  @override
  final bool enviada;
  @override
  final bool tratada;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'Expedicion(empresaId: $empresaId, pedidoVentaId: $pedidoVentaId, usuarioId: $usuarioId, pedidoVentaDate: $pedidoVentaDate, clienteId: $clienteId, direccionId: $direccionId, nombreCliente: $nombreCliente, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, pais: $pais, divisa: $divisa, baseImponible: $baseImponible, pedidoVentaEstado: $pedidoVentaEstado, oferta: $oferta, pedidoAppId: $pedidoAppId, trackingEstado: $trackingEstado, trackId: $trackId, enviada: $enviada, tratada: $tratada, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpedicionImpl &&
            (identical(other.empresaId, empresaId) ||
                other.empresaId == empresaId) &&
            (identical(other.pedidoVentaId, pedidoVentaId) ||
                other.pedidoVentaId == pedidoVentaId) &&
            (identical(other.usuarioId, usuarioId) ||
                other.usuarioId == usuarioId) &&
            (identical(other.pedidoVentaDate, pedidoVentaDate) ||
                other.pedidoVentaDate == pedidoVentaDate) &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.direccionId, direccionId) ||
                other.direccionId == direccionId) &&
            (identical(other.nombreCliente, nombreCliente) ||
                other.nombreCliente == nombreCliente) &&
            (identical(other.codigoPostal, codigoPostal) ||
                other.codigoPostal == codigoPostal) &&
            (identical(other.poblacion, poblacion) ||
                other.poblacion == poblacion) &&
            (identical(other.provincia, provincia) ||
                other.provincia == provincia) &&
            (identical(other.pais, pais) || other.pais == pais) &&
            (identical(other.divisa, divisa) || other.divisa == divisa) &&
            (identical(other.baseImponible, baseImponible) ||
                other.baseImponible == baseImponible) &&
            (identical(other.pedidoVentaEstado, pedidoVentaEstado) ||
                other.pedidoVentaEstado == pedidoVentaEstado) &&
            (identical(other.oferta, oferta) || other.oferta == oferta) &&
            (identical(other.pedidoAppId, pedidoAppId) ||
                other.pedidoAppId == pedidoAppId) &&
            (identical(other.trackingEstado, trackingEstado) ||
                other.trackingEstado == trackingEstado) &&
            (identical(other.trackId, trackId) || other.trackId == trackId) &&
            (identical(other.enviada, enviada) || other.enviada == enviada) &&
            (identical(other.tratada, tratada) || other.tratada == tratada) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        empresaId,
        pedidoVentaId,
        usuarioId,
        pedidoVentaDate,
        clienteId,
        direccionId,
        nombreCliente,
        codigoPostal,
        poblacion,
        provincia,
        pais,
        divisa,
        baseImponible,
        pedidoVentaEstado,
        oferta,
        pedidoAppId,
        trackingEstado,
        trackId,
        enviada,
        tratada,
        lastUpdated,
        deleted
      ]);

  /// Create a copy of Expedicion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpedicionImplCopyWith<_$ExpedicionImpl> get copyWith =>
      __$$ExpedicionImplCopyWithImpl<_$ExpedicionImpl>(this, _$identity);
}

abstract class _Expedicion extends Expedicion {
  const factory _Expedicion(
      {final String? empresaId,
      final String? pedidoVentaId,
      final String? usuarioId,
      required final DateTime pedidoVentaDate,
      final String? clienteId,
      final String? direccionId,
      required final String nombreCliente,
      final String? codigoPostal,
      final String? poblacion,
      final String? provincia,
      final Pais? pais,
      required final Divisa divisa,
      final Money? baseImponible,
      final PedidoVentaEstado? pedidoVentaEstado,
      final bool? oferta,
      final String? pedidoAppId,
      required final TrackingEstado trackingEstado,
      required final String? trackId,
      required final bool enviada,
      required final bool tratada,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$ExpedicionImpl;
  const _Expedicion._() : super._();

  @override
  String? get empresaId;
  @override
  String? get pedidoVentaId;
  @override
  String? get usuarioId;
  @override
  DateTime get pedidoVentaDate;
  @override
  String? get clienteId;
  @override
  String? get direccionId;
  @override
  String get nombreCliente;
  @override
  String? get codigoPostal;
  @override
  String? get poblacion;
  @override
  String? get provincia;
  @override
  Pais? get pais;
  @override
  Divisa get divisa;
  @override
  Money? get baseImponible;
  @override
  PedidoVentaEstado? get pedidoVentaEstado;
  @override
  bool? get oferta;
  @override
  String? get pedidoAppId;
  @override
  TrackingEstado get trackingEstado;
  @override
  String? get trackId;
  @override
  bool get enviada;
  @override
  bool get tratada;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;

  /// Create a copy of Expedicion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpedicionImplCopyWith<_$ExpedicionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
