// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visita.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Visita {
  String? get id => throw _privateConstructorUsedError;
  String? get clienteId => throw _privateConstructorUsedError;
  String? get nombreCliente => throw _privateConstructorUsedError;
  String? get clienteEmail => throw _privateConstructorUsedError;
  String? get clienteTelefono => throw _privateConstructorUsedError;
  bool get isClienteProvisional => throw _privateConstructorUsedError;
  String? get clienteProvisionalNombre => throw _privateConstructorUsedError;
  String? get clienteProvisionalEmail => throw _privateConstructorUsedError;
  String? get clienteProvisionalTelefono => throw _privateConstructorUsedError;
  String? get clienteProvisionalDireccion1 =>
      throw _privateConstructorUsedError;
  String? get clienteProvisionalDireccion2 =>
      throw _privateConstructorUsedError;
  String? get clienteProvisionalCodigoPostal =>
      throw _privateConstructorUsedError;
  String? get clienteProvisionalPoblacion => throw _privateConstructorUsedError;
  Provincia? get clienteProvisionalProvincia =>
      throw _privateConstructorUsedError;
  String? get clienteProvisionalRegionId => throw _privateConstructorUsedError;
  Pais? get clienteProvisionalPais => throw _privateConstructorUsedError;
  DateTime get fecha => throw _privateConstructorUsedError;
  String get numEmpl => throw _privateConstructorUsedError;
  String? get contacto => throw _privateConstructorUsedError;
  String? get atendidoPor => throw _privateConstructorUsedError;
  String? get resumen => throw _privateConstructorUsedError;
  String? get marcasCompetencia => throw _privateConstructorUsedError;
  double get latitud => throw _privateConstructorUsedError;
  double get longitud => throw _privateConstructorUsedError;
  String? get visitaAppId => throw _privateConstructorUsedError;
  bool get ofertaRealizada => throw _privateConstructorUsedError;
  InteresCliente get interesCliente => throw _privateConstructorUsedError;
  bool get pedidoRealizado => throw _privateConstructorUsedError;
  VisitaMotivoNoVenta? get motivoNoInteres =>
      throw _privateConstructorUsedError;
  VisitaMotivoNoVenta? get motivoNoPedido => throw _privateConstructorUsedError;
  VisitaSector? get sector => throw _privateConstructorUsedError;
  VisitaCompetidor? get competencia => throw _privateConstructorUsedError;
  bool get almacenPropio => throw _privateConstructorUsedError;
  Capacidad get capacidad => throw _privateConstructorUsedError;
  FrecuenciaPedido get frecuenciaPedido => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  bool get enviada => throw _privateConstructorUsedError;
  bool get tratada => throw _privateConstructorUsedError;
  String? get errorSyncMessage => throw _privateConstructorUsedError;

  /// Create a copy of Visita
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisitaCopyWith<Visita> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitaCopyWith<$Res> {
  factory $VisitaCopyWith(Visita value, $Res Function(Visita) then) =
      _$VisitaCopyWithImpl<$Res, Visita>;
  @useResult
  $Res call(
      {String? id,
      String? clienteId,
      String? nombreCliente,
      String? clienteEmail,
      String? clienteTelefono,
      bool isClienteProvisional,
      String? clienteProvisionalNombre,
      String? clienteProvisionalEmail,
      String? clienteProvisionalTelefono,
      String? clienteProvisionalDireccion1,
      String? clienteProvisionalDireccion2,
      String? clienteProvisionalCodigoPostal,
      String? clienteProvisionalPoblacion,
      Provincia? clienteProvisionalProvincia,
      String? clienteProvisionalRegionId,
      Pais? clienteProvisionalPais,
      DateTime fecha,
      String numEmpl,
      String? contacto,
      String? atendidoPor,
      String? resumen,
      String? marcasCompetencia,
      double latitud,
      double longitud,
      String? visitaAppId,
      bool ofertaRealizada,
      InteresCliente interesCliente,
      bool pedidoRealizado,
      VisitaMotivoNoVenta? motivoNoInteres,
      VisitaMotivoNoVenta? motivoNoPedido,
      VisitaSector? sector,
      VisitaCompetidor? competencia,
      bool almacenPropio,
      Capacidad capacidad,
      FrecuenciaPedido frecuenciaPedido,
      DateTime lastUpdated,
      bool deleted,
      bool enviada,
      bool tratada,
      String? errorSyncMessage});

  $ProvinciaCopyWith<$Res>? get clienteProvisionalProvincia;
  $PaisCopyWith<$Res>? get clienteProvisionalPais;
  $VisitaMotivoNoVentaCopyWith<$Res>? get motivoNoInteres;
  $VisitaMotivoNoVentaCopyWith<$Res>? get motivoNoPedido;
  $VisitaSectorCopyWith<$Res>? get sector;
  $VisitaCompetidorCopyWith<$Res>? get competencia;
}

/// @nodoc
class _$VisitaCopyWithImpl<$Res, $Val extends Visita>
    implements $VisitaCopyWith<$Res> {
  _$VisitaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Visita
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clienteId = freezed,
    Object? nombreCliente = freezed,
    Object? clienteEmail = freezed,
    Object? clienteTelefono = freezed,
    Object? isClienteProvisional = null,
    Object? clienteProvisionalNombre = freezed,
    Object? clienteProvisionalEmail = freezed,
    Object? clienteProvisionalTelefono = freezed,
    Object? clienteProvisionalDireccion1 = freezed,
    Object? clienteProvisionalDireccion2 = freezed,
    Object? clienteProvisionalCodigoPostal = freezed,
    Object? clienteProvisionalPoblacion = freezed,
    Object? clienteProvisionalProvincia = freezed,
    Object? clienteProvisionalRegionId = freezed,
    Object? clienteProvisionalPais = freezed,
    Object? fecha = null,
    Object? numEmpl = null,
    Object? contacto = freezed,
    Object? atendidoPor = freezed,
    Object? resumen = freezed,
    Object? marcasCompetencia = freezed,
    Object? latitud = null,
    Object? longitud = null,
    Object? visitaAppId = freezed,
    Object? ofertaRealizada = null,
    Object? interesCliente = null,
    Object? pedidoRealizado = null,
    Object? motivoNoInteres = freezed,
    Object? motivoNoPedido = freezed,
    Object? sector = freezed,
    Object? competencia = freezed,
    Object? almacenPropio = null,
    Object? capacidad = null,
    Object? frecuenciaPedido = null,
    Object? lastUpdated = null,
    Object? deleted = null,
    Object? enviada = null,
    Object? tratada = null,
    Object? errorSyncMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteId: freezed == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String?,
      nombreCliente: freezed == nombreCliente
          ? _value.nombreCliente
          : nombreCliente // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteEmail: freezed == clienteEmail
          ? _value.clienteEmail
          : clienteEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteTelefono: freezed == clienteTelefono
          ? _value.clienteTelefono
          : clienteTelefono // ignore: cast_nullable_to_non_nullable
              as String?,
      isClienteProvisional: null == isClienteProvisional
          ? _value.isClienteProvisional
          : isClienteProvisional // ignore: cast_nullable_to_non_nullable
              as bool,
      clienteProvisionalNombre: freezed == clienteProvisionalNombre
          ? _value.clienteProvisionalNombre
          : clienteProvisionalNombre // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteProvisionalEmail: freezed == clienteProvisionalEmail
          ? _value.clienteProvisionalEmail
          : clienteProvisionalEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteProvisionalTelefono: freezed == clienteProvisionalTelefono
          ? _value.clienteProvisionalTelefono
          : clienteProvisionalTelefono // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteProvisionalDireccion1: freezed == clienteProvisionalDireccion1
          ? _value.clienteProvisionalDireccion1
          : clienteProvisionalDireccion1 // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteProvisionalDireccion2: freezed == clienteProvisionalDireccion2
          ? _value.clienteProvisionalDireccion2
          : clienteProvisionalDireccion2 // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteProvisionalCodigoPostal: freezed == clienteProvisionalCodigoPostal
          ? _value.clienteProvisionalCodigoPostal
          : clienteProvisionalCodigoPostal // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteProvisionalPoblacion: freezed == clienteProvisionalPoblacion
          ? _value.clienteProvisionalPoblacion
          : clienteProvisionalPoblacion // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteProvisionalProvincia: freezed == clienteProvisionalProvincia
          ? _value.clienteProvisionalProvincia
          : clienteProvisionalProvincia // ignore: cast_nullable_to_non_nullable
              as Provincia?,
      clienteProvisionalRegionId: freezed == clienteProvisionalRegionId
          ? _value.clienteProvisionalRegionId
          : clienteProvisionalRegionId // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteProvisionalPais: freezed == clienteProvisionalPais
          ? _value.clienteProvisionalPais
          : clienteProvisionalPais // ignore: cast_nullable_to_non_nullable
              as Pais?,
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
      atendidoPor: freezed == atendidoPor
          ? _value.atendidoPor
          : atendidoPor // ignore: cast_nullable_to_non_nullable
              as String?,
      resumen: freezed == resumen
          ? _value.resumen
          : resumen // ignore: cast_nullable_to_non_nullable
              as String?,
      marcasCompetencia: freezed == marcasCompetencia
          ? _value.marcasCompetencia
          : marcasCompetencia // ignore: cast_nullable_to_non_nullable
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
      ofertaRealizada: null == ofertaRealizada
          ? _value.ofertaRealizada
          : ofertaRealizada // ignore: cast_nullable_to_non_nullable
              as bool,
      interesCliente: null == interesCliente
          ? _value.interesCliente
          : interesCliente // ignore: cast_nullable_to_non_nullable
              as InteresCliente,
      pedidoRealizado: null == pedidoRealizado
          ? _value.pedidoRealizado
          : pedidoRealizado // ignore: cast_nullable_to_non_nullable
              as bool,
      motivoNoInteres: freezed == motivoNoInteres
          ? _value.motivoNoInteres
          : motivoNoInteres // ignore: cast_nullable_to_non_nullable
              as VisitaMotivoNoVenta?,
      motivoNoPedido: freezed == motivoNoPedido
          ? _value.motivoNoPedido
          : motivoNoPedido // ignore: cast_nullable_to_non_nullable
              as VisitaMotivoNoVenta?,
      sector: freezed == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as VisitaSector?,
      competencia: freezed == competencia
          ? _value.competencia
          : competencia // ignore: cast_nullable_to_non_nullable
              as VisitaCompetidor?,
      almacenPropio: null == almacenPropio
          ? _value.almacenPropio
          : almacenPropio // ignore: cast_nullable_to_non_nullable
              as bool,
      capacidad: null == capacidad
          ? _value.capacidad
          : capacidad // ignore: cast_nullable_to_non_nullable
              as Capacidad,
      frecuenciaPedido: null == frecuenciaPedido
          ? _value.frecuenciaPedido
          : frecuenciaPedido // ignore: cast_nullable_to_non_nullable
              as FrecuenciaPedido,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      enviada: null == enviada
          ? _value.enviada
          : enviada // ignore: cast_nullable_to_non_nullable
              as bool,
      tratada: null == tratada
          ? _value.tratada
          : tratada // ignore: cast_nullable_to_non_nullable
              as bool,
      errorSyncMessage: freezed == errorSyncMessage
          ? _value.errorSyncMessage
          : errorSyncMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Visita
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProvinciaCopyWith<$Res>? get clienteProvisionalProvincia {
    if (_value.clienteProvisionalProvincia == null) {
      return null;
    }

    return $ProvinciaCopyWith<$Res>(_value.clienteProvisionalProvincia!,
        (value) {
      return _then(_value.copyWith(clienteProvisionalProvincia: value) as $Val);
    });
  }

  /// Create a copy of Visita
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaisCopyWith<$Res>? get clienteProvisionalPais {
    if (_value.clienteProvisionalPais == null) {
      return null;
    }

    return $PaisCopyWith<$Res>(_value.clienteProvisionalPais!, (value) {
      return _then(_value.copyWith(clienteProvisionalPais: value) as $Val);
    });
  }

  /// Create a copy of Visita
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VisitaMotivoNoVentaCopyWith<$Res>? get motivoNoInteres {
    if (_value.motivoNoInteres == null) {
      return null;
    }

    return $VisitaMotivoNoVentaCopyWith<$Res>(_value.motivoNoInteres!, (value) {
      return _then(_value.copyWith(motivoNoInteres: value) as $Val);
    });
  }

  /// Create a copy of Visita
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VisitaMotivoNoVentaCopyWith<$Res>? get motivoNoPedido {
    if (_value.motivoNoPedido == null) {
      return null;
    }

    return $VisitaMotivoNoVentaCopyWith<$Res>(_value.motivoNoPedido!, (value) {
      return _then(_value.copyWith(motivoNoPedido: value) as $Val);
    });
  }

  /// Create a copy of Visita
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VisitaSectorCopyWith<$Res>? get sector {
    if (_value.sector == null) {
      return null;
    }

    return $VisitaSectorCopyWith<$Res>(_value.sector!, (value) {
      return _then(_value.copyWith(sector: value) as $Val);
    });
  }

  /// Create a copy of Visita
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VisitaCompetidorCopyWith<$Res>? get competencia {
    if (_value.competencia == null) {
      return null;
    }

    return $VisitaCompetidorCopyWith<$Res>(_value.competencia!, (value) {
      return _then(_value.copyWith(competencia: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VisitaImplCopyWith<$Res> implements $VisitaCopyWith<$Res> {
  factory _$$VisitaImplCopyWith(
          _$VisitaImpl value, $Res Function(_$VisitaImpl) then) =
      __$$VisitaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? clienteId,
      String? nombreCliente,
      String? clienteEmail,
      String? clienteTelefono,
      bool isClienteProvisional,
      String? clienteProvisionalNombre,
      String? clienteProvisionalEmail,
      String? clienteProvisionalTelefono,
      String? clienteProvisionalDireccion1,
      String? clienteProvisionalDireccion2,
      String? clienteProvisionalCodigoPostal,
      String? clienteProvisionalPoblacion,
      Provincia? clienteProvisionalProvincia,
      String? clienteProvisionalRegionId,
      Pais? clienteProvisionalPais,
      DateTime fecha,
      String numEmpl,
      String? contacto,
      String? atendidoPor,
      String? resumen,
      String? marcasCompetencia,
      double latitud,
      double longitud,
      String? visitaAppId,
      bool ofertaRealizada,
      InteresCliente interesCliente,
      bool pedidoRealizado,
      VisitaMotivoNoVenta? motivoNoInteres,
      VisitaMotivoNoVenta? motivoNoPedido,
      VisitaSector? sector,
      VisitaCompetidor? competencia,
      bool almacenPropio,
      Capacidad capacidad,
      FrecuenciaPedido frecuenciaPedido,
      DateTime lastUpdated,
      bool deleted,
      bool enviada,
      bool tratada,
      String? errorSyncMessage});

  @override
  $ProvinciaCopyWith<$Res>? get clienteProvisionalProvincia;
  @override
  $PaisCopyWith<$Res>? get clienteProvisionalPais;
  @override
  $VisitaMotivoNoVentaCopyWith<$Res>? get motivoNoInteres;
  @override
  $VisitaMotivoNoVentaCopyWith<$Res>? get motivoNoPedido;
  @override
  $VisitaSectorCopyWith<$Res>? get sector;
  @override
  $VisitaCompetidorCopyWith<$Res>? get competencia;
}

/// @nodoc
class __$$VisitaImplCopyWithImpl<$Res>
    extends _$VisitaCopyWithImpl<$Res, _$VisitaImpl>
    implements _$$VisitaImplCopyWith<$Res> {
  __$$VisitaImplCopyWithImpl(
      _$VisitaImpl _value, $Res Function(_$VisitaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Visita
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clienteId = freezed,
    Object? nombreCliente = freezed,
    Object? clienteEmail = freezed,
    Object? clienteTelefono = freezed,
    Object? isClienteProvisional = null,
    Object? clienteProvisionalNombre = freezed,
    Object? clienteProvisionalEmail = freezed,
    Object? clienteProvisionalTelefono = freezed,
    Object? clienteProvisionalDireccion1 = freezed,
    Object? clienteProvisionalDireccion2 = freezed,
    Object? clienteProvisionalCodigoPostal = freezed,
    Object? clienteProvisionalPoblacion = freezed,
    Object? clienteProvisionalProvincia = freezed,
    Object? clienteProvisionalRegionId = freezed,
    Object? clienteProvisionalPais = freezed,
    Object? fecha = null,
    Object? numEmpl = null,
    Object? contacto = freezed,
    Object? atendidoPor = freezed,
    Object? resumen = freezed,
    Object? marcasCompetencia = freezed,
    Object? latitud = null,
    Object? longitud = null,
    Object? visitaAppId = freezed,
    Object? ofertaRealizada = null,
    Object? interesCliente = null,
    Object? pedidoRealizado = null,
    Object? motivoNoInteres = freezed,
    Object? motivoNoPedido = freezed,
    Object? sector = freezed,
    Object? competencia = freezed,
    Object? almacenPropio = null,
    Object? capacidad = null,
    Object? frecuenciaPedido = null,
    Object? lastUpdated = null,
    Object? deleted = null,
    Object? enviada = null,
    Object? tratada = null,
    Object? errorSyncMessage = freezed,
  }) {
    return _then(_$VisitaImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteId: freezed == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String?,
      nombreCliente: freezed == nombreCliente
          ? _value.nombreCliente
          : nombreCliente // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteEmail: freezed == clienteEmail
          ? _value.clienteEmail
          : clienteEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteTelefono: freezed == clienteTelefono
          ? _value.clienteTelefono
          : clienteTelefono // ignore: cast_nullable_to_non_nullable
              as String?,
      isClienteProvisional: null == isClienteProvisional
          ? _value.isClienteProvisional
          : isClienteProvisional // ignore: cast_nullable_to_non_nullable
              as bool,
      clienteProvisionalNombre: freezed == clienteProvisionalNombre
          ? _value.clienteProvisionalNombre
          : clienteProvisionalNombre // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteProvisionalEmail: freezed == clienteProvisionalEmail
          ? _value.clienteProvisionalEmail
          : clienteProvisionalEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteProvisionalTelefono: freezed == clienteProvisionalTelefono
          ? _value.clienteProvisionalTelefono
          : clienteProvisionalTelefono // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteProvisionalDireccion1: freezed == clienteProvisionalDireccion1
          ? _value.clienteProvisionalDireccion1
          : clienteProvisionalDireccion1 // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteProvisionalDireccion2: freezed == clienteProvisionalDireccion2
          ? _value.clienteProvisionalDireccion2
          : clienteProvisionalDireccion2 // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteProvisionalCodigoPostal: freezed == clienteProvisionalCodigoPostal
          ? _value.clienteProvisionalCodigoPostal
          : clienteProvisionalCodigoPostal // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteProvisionalPoblacion: freezed == clienteProvisionalPoblacion
          ? _value.clienteProvisionalPoblacion
          : clienteProvisionalPoblacion // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteProvisionalProvincia: freezed == clienteProvisionalProvincia
          ? _value.clienteProvisionalProvincia
          : clienteProvisionalProvincia // ignore: cast_nullable_to_non_nullable
              as Provincia?,
      clienteProvisionalRegionId: freezed == clienteProvisionalRegionId
          ? _value.clienteProvisionalRegionId
          : clienteProvisionalRegionId // ignore: cast_nullable_to_non_nullable
              as String?,
      clienteProvisionalPais: freezed == clienteProvisionalPais
          ? _value.clienteProvisionalPais
          : clienteProvisionalPais // ignore: cast_nullable_to_non_nullable
              as Pais?,
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
      atendidoPor: freezed == atendidoPor
          ? _value.atendidoPor
          : atendidoPor // ignore: cast_nullable_to_non_nullable
              as String?,
      resumen: freezed == resumen
          ? _value.resumen
          : resumen // ignore: cast_nullable_to_non_nullable
              as String?,
      marcasCompetencia: freezed == marcasCompetencia
          ? _value.marcasCompetencia
          : marcasCompetencia // ignore: cast_nullable_to_non_nullable
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
      ofertaRealizada: null == ofertaRealizada
          ? _value.ofertaRealizada
          : ofertaRealizada // ignore: cast_nullable_to_non_nullable
              as bool,
      interesCliente: null == interesCliente
          ? _value.interesCliente
          : interesCliente // ignore: cast_nullable_to_non_nullable
              as InteresCliente,
      pedidoRealizado: null == pedidoRealizado
          ? _value.pedidoRealizado
          : pedidoRealizado // ignore: cast_nullable_to_non_nullable
              as bool,
      motivoNoInteres: freezed == motivoNoInteres
          ? _value.motivoNoInteres
          : motivoNoInteres // ignore: cast_nullable_to_non_nullable
              as VisitaMotivoNoVenta?,
      motivoNoPedido: freezed == motivoNoPedido
          ? _value.motivoNoPedido
          : motivoNoPedido // ignore: cast_nullable_to_non_nullable
              as VisitaMotivoNoVenta?,
      sector: freezed == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as VisitaSector?,
      competencia: freezed == competencia
          ? _value.competencia
          : competencia // ignore: cast_nullable_to_non_nullable
              as VisitaCompetidor?,
      almacenPropio: null == almacenPropio
          ? _value.almacenPropio
          : almacenPropio // ignore: cast_nullable_to_non_nullable
              as bool,
      capacidad: null == capacidad
          ? _value.capacidad
          : capacidad // ignore: cast_nullable_to_non_nullable
              as Capacidad,
      frecuenciaPedido: null == frecuenciaPedido
          ? _value.frecuenciaPedido
          : frecuenciaPedido // ignore: cast_nullable_to_non_nullable
              as FrecuenciaPedido,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      enviada: null == enviada
          ? _value.enviada
          : enviada // ignore: cast_nullable_to_non_nullable
              as bool,
      tratada: null == tratada
          ? _value.tratada
          : tratada // ignore: cast_nullable_to_non_nullable
              as bool,
      errorSyncMessage: freezed == errorSyncMessage
          ? _value.errorSyncMessage
          : errorSyncMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VisitaImpl extends _Visita {
  const _$VisitaImpl(
      {this.id,
      this.clienteId,
      this.nombreCliente,
      this.clienteEmail,
      this.clienteTelefono,
      required this.isClienteProvisional,
      this.clienteProvisionalNombre,
      this.clienteProvisionalEmail,
      this.clienteProvisionalTelefono,
      this.clienteProvisionalDireccion1,
      this.clienteProvisionalDireccion2,
      this.clienteProvisionalCodigoPostal,
      this.clienteProvisionalPoblacion,
      this.clienteProvisionalProvincia,
      this.clienteProvisionalRegionId,
      this.clienteProvisionalPais,
      required this.fecha,
      required this.numEmpl,
      this.contacto,
      this.atendidoPor,
      this.resumen,
      this.marcasCompetencia,
      required this.latitud,
      required this.longitud,
      this.visitaAppId,
      required this.ofertaRealizada,
      required this.interesCliente,
      required this.pedidoRealizado,
      this.motivoNoInteres,
      this.motivoNoPedido,
      this.sector,
      this.competencia,
      required this.almacenPropio,
      required this.capacidad,
      required this.frecuenciaPedido,
      required this.lastUpdated,
      required this.deleted,
      required this.enviada,
      required this.tratada,
      this.errorSyncMessage})
      : super._();

  @override
  final String? id;
  @override
  final String? clienteId;
  @override
  final String? nombreCliente;
  @override
  final String? clienteEmail;
  @override
  final String? clienteTelefono;
  @override
  final bool isClienteProvisional;
  @override
  final String? clienteProvisionalNombre;
  @override
  final String? clienteProvisionalEmail;
  @override
  final String? clienteProvisionalTelefono;
  @override
  final String? clienteProvisionalDireccion1;
  @override
  final String? clienteProvisionalDireccion2;
  @override
  final String? clienteProvisionalCodigoPostal;
  @override
  final String? clienteProvisionalPoblacion;
  @override
  final Provincia? clienteProvisionalProvincia;
  @override
  final String? clienteProvisionalRegionId;
  @override
  final Pais? clienteProvisionalPais;
  @override
  final DateTime fecha;
  @override
  final String numEmpl;
  @override
  final String? contacto;
  @override
  final String? atendidoPor;
  @override
  final String? resumen;
  @override
  final String? marcasCompetencia;
  @override
  final double latitud;
  @override
  final double longitud;
  @override
  final String? visitaAppId;
  @override
  final bool ofertaRealizada;
  @override
  final InteresCliente interesCliente;
  @override
  final bool pedidoRealizado;
  @override
  final VisitaMotivoNoVenta? motivoNoInteres;
  @override
  final VisitaMotivoNoVenta? motivoNoPedido;
  @override
  final VisitaSector? sector;
  @override
  final VisitaCompetidor? competencia;
  @override
  final bool almacenPropio;
  @override
  final Capacidad capacidad;
  @override
  final FrecuenciaPedido frecuenciaPedido;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;
  @override
  final bool enviada;
  @override
  final bool tratada;
  @override
  final String? errorSyncMessage;

  @override
  String toString() {
    return 'Visita(id: $id, clienteId: $clienteId, nombreCliente: $nombreCliente, clienteEmail: $clienteEmail, clienteTelefono: $clienteTelefono, isClienteProvisional: $isClienteProvisional, clienteProvisionalNombre: $clienteProvisionalNombre, clienteProvisionalEmail: $clienteProvisionalEmail, clienteProvisionalTelefono: $clienteProvisionalTelefono, clienteProvisionalDireccion1: $clienteProvisionalDireccion1, clienteProvisionalDireccion2: $clienteProvisionalDireccion2, clienteProvisionalCodigoPostal: $clienteProvisionalCodigoPostal, clienteProvisionalPoblacion: $clienteProvisionalPoblacion, clienteProvisionalProvincia: $clienteProvisionalProvincia, clienteProvisionalRegionId: $clienteProvisionalRegionId, clienteProvisionalPais: $clienteProvisionalPais, fecha: $fecha, numEmpl: $numEmpl, contacto: $contacto, atendidoPor: $atendidoPor, resumen: $resumen, marcasCompetencia: $marcasCompetencia, latitud: $latitud, longitud: $longitud, visitaAppId: $visitaAppId, ofertaRealizada: $ofertaRealizada, interesCliente: $interesCliente, pedidoRealizado: $pedidoRealizado, motivoNoInteres: $motivoNoInteres, motivoNoPedido: $motivoNoPedido, sector: $sector, competencia: $competencia, almacenPropio: $almacenPropio, capacidad: $capacidad, frecuenciaPedido: $frecuenciaPedido, lastUpdated: $lastUpdated, deleted: $deleted, enviada: $enviada, tratada: $tratada, errorSyncMessage: $errorSyncMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.nombreCliente, nombreCliente) ||
                other.nombreCliente == nombreCliente) &&
            (identical(other.clienteEmail, clienteEmail) ||
                other.clienteEmail == clienteEmail) &&
            (identical(other.clienteTelefono, clienteTelefono) ||
                other.clienteTelefono == clienteTelefono) &&
            (identical(other.isClienteProvisional, isClienteProvisional) ||
                other.isClienteProvisional == isClienteProvisional) &&
            (identical(other.clienteProvisionalNombre, clienteProvisionalNombre) ||
                other.clienteProvisionalNombre == clienteProvisionalNombre) &&
            (identical(other.clienteProvisionalEmail, clienteProvisionalEmail) ||
                other.clienteProvisionalEmail == clienteProvisionalEmail) &&
            (identical(other.clienteProvisionalTelefono, clienteProvisionalTelefono) ||
                other.clienteProvisionalTelefono ==
                    clienteProvisionalTelefono) &&
            (identical(other.clienteProvisionalDireccion1, clienteProvisionalDireccion1) ||
                other.clienteProvisionalDireccion1 ==
                    clienteProvisionalDireccion1) &&
            (identical(other.clienteProvisionalDireccion2, clienteProvisionalDireccion2) ||
                other.clienteProvisionalDireccion2 ==
                    clienteProvisionalDireccion2) &&
            (identical(other.clienteProvisionalCodigoPostal, clienteProvisionalCodigoPostal) ||
                other.clienteProvisionalCodigoPostal ==
                    clienteProvisionalCodigoPostal) &&
            (identical(other.clienteProvisionalPoblacion, clienteProvisionalPoblacion) ||
                other.clienteProvisionalPoblacion ==
                    clienteProvisionalPoblacion) &&
            (identical(other.clienteProvisionalProvincia, clienteProvisionalProvincia) ||
                other.clienteProvisionalProvincia ==
                    clienteProvisionalProvincia) &&
            (identical(other.clienteProvisionalRegionId, clienteProvisionalRegionId) ||
                other.clienteProvisionalRegionId ==
                    clienteProvisionalRegionId) &&
            (identical(other.clienteProvisionalPais, clienteProvisionalPais) ||
                other.clienteProvisionalPais == clienteProvisionalPais) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.numEmpl, numEmpl) || other.numEmpl == numEmpl) &&
            (identical(other.contacto, contacto) ||
                other.contacto == contacto) &&
            (identical(other.atendidoPor, atendidoPor) ||
                other.atendidoPor == atendidoPor) &&
            (identical(other.resumen, resumen) || other.resumen == resumen) &&
            (identical(other.marcasCompetencia, marcasCompetencia) || other.marcasCompetencia == marcasCompetencia) &&
            (identical(other.latitud, latitud) || other.latitud == latitud) &&
            (identical(other.longitud, longitud) || other.longitud == longitud) &&
            (identical(other.visitaAppId, visitaAppId) || other.visitaAppId == visitaAppId) &&
            (identical(other.ofertaRealizada, ofertaRealizada) || other.ofertaRealizada == ofertaRealizada) &&
            (identical(other.interesCliente, interesCliente) || other.interesCliente == interesCliente) &&
            (identical(other.pedidoRealizado, pedidoRealizado) || other.pedidoRealizado == pedidoRealizado) &&
            (identical(other.motivoNoInteres, motivoNoInteres) || other.motivoNoInteres == motivoNoInteres) &&
            (identical(other.motivoNoPedido, motivoNoPedido) || other.motivoNoPedido == motivoNoPedido) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            (identical(other.competencia, competencia) || other.competencia == competencia) &&
            (identical(other.almacenPropio, almacenPropio) || other.almacenPropio == almacenPropio) &&
            (identical(other.capacidad, capacidad) || other.capacidad == capacidad) &&
            (identical(other.frecuenciaPedido, frecuenciaPedido) || other.frecuenciaPedido == frecuenciaPedido) &&
            (identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.enviada, enviada) || other.enviada == enviada) &&
            (identical(other.tratada, tratada) || other.tratada == tratada) &&
            (identical(other.errorSyncMessage, errorSyncMessage) || other.errorSyncMessage == errorSyncMessage));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        clienteId,
        nombreCliente,
        clienteEmail,
        clienteTelefono,
        isClienteProvisional,
        clienteProvisionalNombre,
        clienteProvisionalEmail,
        clienteProvisionalTelefono,
        clienteProvisionalDireccion1,
        clienteProvisionalDireccion2,
        clienteProvisionalCodigoPostal,
        clienteProvisionalPoblacion,
        clienteProvisionalProvincia,
        clienteProvisionalRegionId,
        clienteProvisionalPais,
        fecha,
        numEmpl,
        contacto,
        atendidoPor,
        resumen,
        marcasCompetencia,
        latitud,
        longitud,
        visitaAppId,
        ofertaRealizada,
        interesCliente,
        pedidoRealizado,
        motivoNoInteres,
        motivoNoPedido,
        sector,
        competencia,
        almacenPropio,
        capacidad,
        frecuenciaPedido,
        lastUpdated,
        deleted,
        enviada,
        tratada,
        errorSyncMessage
      ]);

  /// Create a copy of Visita
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitaImplCopyWith<_$VisitaImpl> get copyWith =>
      __$$VisitaImplCopyWithImpl<_$VisitaImpl>(this, _$identity);
}

abstract class _Visita extends Visita {
  const factory _Visita(
      {final String? id,
      final String? clienteId,
      final String? nombreCliente,
      final String? clienteEmail,
      final String? clienteTelefono,
      required final bool isClienteProvisional,
      final String? clienteProvisionalNombre,
      final String? clienteProvisionalEmail,
      final String? clienteProvisionalTelefono,
      final String? clienteProvisionalDireccion1,
      final String? clienteProvisionalDireccion2,
      final String? clienteProvisionalCodigoPostal,
      final String? clienteProvisionalPoblacion,
      final Provincia? clienteProvisionalProvincia,
      final String? clienteProvisionalRegionId,
      final Pais? clienteProvisionalPais,
      required final DateTime fecha,
      required final String numEmpl,
      final String? contacto,
      final String? atendidoPor,
      final String? resumen,
      final String? marcasCompetencia,
      required final double latitud,
      required final double longitud,
      final String? visitaAppId,
      required final bool ofertaRealizada,
      required final InteresCliente interesCliente,
      required final bool pedidoRealizado,
      final VisitaMotivoNoVenta? motivoNoInteres,
      final VisitaMotivoNoVenta? motivoNoPedido,
      final VisitaSector? sector,
      final VisitaCompetidor? competencia,
      required final bool almacenPropio,
      required final Capacidad capacidad,
      required final FrecuenciaPedido frecuenciaPedido,
      required final DateTime lastUpdated,
      required final bool deleted,
      required final bool enviada,
      required final bool tratada,
      final String? errorSyncMessage}) = _$VisitaImpl;
  const _Visita._() : super._();

  @override
  String? get id;
  @override
  String? get clienteId;
  @override
  String? get nombreCliente;
  @override
  String? get clienteEmail;
  @override
  String? get clienteTelefono;
  @override
  bool get isClienteProvisional;
  @override
  String? get clienteProvisionalNombre;
  @override
  String? get clienteProvisionalEmail;
  @override
  String? get clienteProvisionalTelefono;
  @override
  String? get clienteProvisionalDireccion1;
  @override
  String? get clienteProvisionalDireccion2;
  @override
  String? get clienteProvisionalCodigoPostal;
  @override
  String? get clienteProvisionalPoblacion;
  @override
  Provincia? get clienteProvisionalProvincia;
  @override
  String? get clienteProvisionalRegionId;
  @override
  Pais? get clienteProvisionalPais;
  @override
  DateTime get fecha;
  @override
  String get numEmpl;
  @override
  String? get contacto;
  @override
  String? get atendidoPor;
  @override
  String? get resumen;
  @override
  String? get marcasCompetencia;
  @override
  double get latitud;
  @override
  double get longitud;
  @override
  String? get visitaAppId;
  @override
  bool get ofertaRealizada;
  @override
  InteresCliente get interesCliente;
  @override
  bool get pedidoRealizado;
  @override
  VisitaMotivoNoVenta? get motivoNoInteres;
  @override
  VisitaMotivoNoVenta? get motivoNoPedido;
  @override
  VisitaSector? get sector;
  @override
  VisitaCompetidor? get competencia;
  @override
  bool get almacenPropio;
  @override
  Capacidad get capacidad;
  @override
  FrecuenciaPedido get frecuenciaPedido;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  bool get enviada;
  @override
  bool get tratada;
  @override
  String? get errorSyncMessage;

  /// Create a copy of Visita
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisitaImplCopyWith<_$VisitaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
