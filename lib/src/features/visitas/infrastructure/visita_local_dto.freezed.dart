// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'visita_local_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VisitaLocalDTO _$VisitaLocalDTOFromJson(Map<String, dynamic> json) {
  return _VisitaLocalDTO.fromJson(json);
}

/// @nodoc
mixin _$VisitaLocalDTO {
  @JsonKey(name: 'COD_VISITA_APP')
  String? get visitaAppId => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA')
  DateTime get fecha => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLIENTE_ID')
  String? get clienteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLIENTE_POTENCIAL_SN')
  String get isClienteProvisional => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE')
  String? get clienteProvisionalNombre => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL')
  String? get clienteProvisionalEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO')
  String? get clienteProvisionalTelefono => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION')
  String? get clienteProvisionalPoblacion => throw _privateConstructorUsedError;
  @JsonKey(name: 'NUM_EMPL')
  String get numEmpl => throw _privateConstructorUsedError;
  @JsonKey(name: 'CONTACTO')
  String get contacto => throw _privateConstructorUsedError;
  @JsonKey(name: 'ATENDIDO_POR')
  String? get atendidoPor => throw _privateConstructorUsedError;
  @JsonKey(name: 'RESUMEN')
  String? get resumen => throw _privateConstructorUsedError;
  @JsonKey(name: 'MARCAS_COMPETENCIA')
  String? get marcasCompetencia => throw _privateConstructorUsedError;
  @JsonKey(name: 'LATITUD')
  double get latitud => throw _privateConstructorUsedError;
  @JsonKey(name: 'LONGITUD')
  double get longitud => throw _privateConstructorUsedError;
  @JsonKey(name: 'ENVIADA')
  String get enviada => throw _privateConstructorUsedError;
  @JsonKey(name: 'TRATADA')
  String get tratada => throw _privateConstructorUsedError;
  @JsonKey(name: 'ERROR_SYNC')
  String? get errorSyncMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VisitaLocalDTOCopyWith<VisitaLocalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitaLocalDTOCopyWith<$Res> {
  factory $VisitaLocalDTOCopyWith(
          VisitaLocalDTO value, $Res Function(VisitaLocalDTO) then) =
      _$VisitaLocalDTOCopyWithImpl<$Res, VisitaLocalDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'COD_VISITA_APP')
          String? visitaAppId,
      @JsonKey(name: 'FECHA')
          DateTime fecha,
      @JsonKey(name: 'CLIENTE_ID')
          String? clienteId,
      @JsonKey(name: 'CLIENTE_POTENCIAL_SN')
          String isClienteProvisional,
      @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE')
          String? clienteProvisionalNombre,
      @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL')
          String? clienteProvisionalEmail,
      @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO')
          String? clienteProvisionalTelefono,
      @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION')
          String? clienteProvisionalPoblacion,
      @JsonKey(name: 'NUM_EMPL')
          String numEmpl,
      @JsonKey(name: 'CONTACTO')
          String contacto,
      @JsonKey(name: 'ATENDIDO_POR')
          String? atendidoPor,
      @JsonKey(name: 'RESUMEN')
          String? resumen,
      @JsonKey(name: 'MARCAS_COMPETENCIA')
          String? marcasCompetencia,
      @JsonKey(name: 'LATITUD')
          double latitud,
      @JsonKey(name: 'LONGITUD')
          double longitud,
      @JsonKey(name: 'ENVIADA')
          String enviada,
      @JsonKey(name: 'TRATADA')
          String tratada,
      @JsonKey(name: 'ERROR_SYNC')
          String? errorSyncMessage});
}

/// @nodoc
class _$VisitaLocalDTOCopyWithImpl<$Res, $Val extends VisitaLocalDTO>
    implements $VisitaLocalDTOCopyWith<$Res> {
  _$VisitaLocalDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitaAppId = freezed,
    Object? fecha = null,
    Object? clienteId = freezed,
    Object? isClienteProvisional = null,
    Object? clienteProvisionalNombre = freezed,
    Object? clienteProvisionalEmail = freezed,
    Object? clienteProvisionalTelefono = freezed,
    Object? clienteProvisionalPoblacion = freezed,
    Object? numEmpl = null,
    Object? contacto = null,
    Object? atendidoPor = freezed,
    Object? resumen = freezed,
    Object? marcasCompetencia = freezed,
    Object? latitud = null,
    Object? longitud = null,
    Object? enviada = null,
    Object? tratada = null,
    Object? errorSyncMessage = freezed,
  }) {
    return _then(_value.copyWith(
      visitaAppId: freezed == visitaAppId
          ? _value.visitaAppId
          : visitaAppId // ignore: cast_nullable_to_non_nullable
              as String?,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clienteId: freezed == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String?,
      isClienteProvisional: null == isClienteProvisional
          ? _value.isClienteProvisional
          : isClienteProvisional // ignore: cast_nullable_to_non_nullable
              as String,
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
      clienteProvisionalPoblacion: freezed == clienteProvisionalPoblacion
          ? _value.clienteProvisionalPoblacion
          : clienteProvisionalPoblacion // ignore: cast_nullable_to_non_nullable
              as String?,
      numEmpl: null == numEmpl
          ? _value.numEmpl
          : numEmpl // ignore: cast_nullable_to_non_nullable
              as String,
      contacto: null == contacto
          ? _value.contacto
          : contacto // ignore: cast_nullable_to_non_nullable
              as String,
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
      enviada: null == enviada
          ? _value.enviada
          : enviada // ignore: cast_nullable_to_non_nullable
              as String,
      tratada: null == tratada
          ? _value.tratada
          : tratada // ignore: cast_nullable_to_non_nullable
              as String,
      errorSyncMessage: freezed == errorSyncMessage
          ? _value.errorSyncMessage
          : errorSyncMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VisitaLocalDTOCopyWith<$Res>
    implements $VisitaLocalDTOCopyWith<$Res> {
  factory _$$_VisitaLocalDTOCopyWith(
          _$_VisitaLocalDTO value, $Res Function(_$_VisitaLocalDTO) then) =
      __$$_VisitaLocalDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'COD_VISITA_APP')
          String? visitaAppId,
      @JsonKey(name: 'FECHA')
          DateTime fecha,
      @JsonKey(name: 'CLIENTE_ID')
          String? clienteId,
      @JsonKey(name: 'CLIENTE_POTENCIAL_SN')
          String isClienteProvisional,
      @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE')
          String? clienteProvisionalNombre,
      @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL')
          String? clienteProvisionalEmail,
      @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO')
          String? clienteProvisionalTelefono,
      @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION')
          String? clienteProvisionalPoblacion,
      @JsonKey(name: 'NUM_EMPL')
          String numEmpl,
      @JsonKey(name: 'CONTACTO')
          String contacto,
      @JsonKey(name: 'ATENDIDO_POR')
          String? atendidoPor,
      @JsonKey(name: 'RESUMEN')
          String? resumen,
      @JsonKey(name: 'MARCAS_COMPETENCIA')
          String? marcasCompetencia,
      @JsonKey(name: 'LATITUD')
          double latitud,
      @JsonKey(name: 'LONGITUD')
          double longitud,
      @JsonKey(name: 'ENVIADA')
          String enviada,
      @JsonKey(name: 'TRATADA')
          String tratada,
      @JsonKey(name: 'ERROR_SYNC')
          String? errorSyncMessage});
}

/// @nodoc
class __$$_VisitaLocalDTOCopyWithImpl<$Res>
    extends _$VisitaLocalDTOCopyWithImpl<$Res, _$_VisitaLocalDTO>
    implements _$$_VisitaLocalDTOCopyWith<$Res> {
  __$$_VisitaLocalDTOCopyWithImpl(
      _$_VisitaLocalDTO _value, $Res Function(_$_VisitaLocalDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitaAppId = freezed,
    Object? fecha = null,
    Object? clienteId = freezed,
    Object? isClienteProvisional = null,
    Object? clienteProvisionalNombre = freezed,
    Object? clienteProvisionalEmail = freezed,
    Object? clienteProvisionalTelefono = freezed,
    Object? clienteProvisionalPoblacion = freezed,
    Object? numEmpl = null,
    Object? contacto = null,
    Object? atendidoPor = freezed,
    Object? resumen = freezed,
    Object? marcasCompetencia = freezed,
    Object? latitud = null,
    Object? longitud = null,
    Object? enviada = null,
    Object? tratada = null,
    Object? errorSyncMessage = freezed,
  }) {
    return _then(_$_VisitaLocalDTO(
      visitaAppId: freezed == visitaAppId
          ? _value.visitaAppId
          : visitaAppId // ignore: cast_nullable_to_non_nullable
              as String?,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clienteId: freezed == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String?,
      isClienteProvisional: null == isClienteProvisional
          ? _value.isClienteProvisional
          : isClienteProvisional // ignore: cast_nullable_to_non_nullable
              as String,
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
      clienteProvisionalPoblacion: freezed == clienteProvisionalPoblacion
          ? _value.clienteProvisionalPoblacion
          : clienteProvisionalPoblacion // ignore: cast_nullable_to_non_nullable
              as String?,
      numEmpl: null == numEmpl
          ? _value.numEmpl
          : numEmpl // ignore: cast_nullable_to_non_nullable
              as String,
      contacto: null == contacto
          ? _value.contacto
          : contacto // ignore: cast_nullable_to_non_nullable
              as String,
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
      enviada: null == enviada
          ? _value.enviada
          : enviada // ignore: cast_nullable_to_non_nullable
              as String,
      tratada: null == tratada
          ? _value.tratada
          : tratada // ignore: cast_nullable_to_non_nullable
              as String,
      errorSyncMessage: freezed == errorSyncMessage
          ? _value.errorSyncMessage
          : errorSyncMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VisitaLocalDTO extends _VisitaLocalDTO {
  const _$_VisitaLocalDTO(
      {@JsonKey(name: 'COD_VISITA_APP')
          this.visitaAppId,
      @JsonKey(name: 'FECHA')
          required this.fecha,
      @JsonKey(name: 'CLIENTE_ID')
          this.clienteId,
      @JsonKey(name: 'CLIENTE_POTENCIAL_SN')
          required this.isClienteProvisional,
      @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE')
          this.clienteProvisionalNombre,
      @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL')
          this.clienteProvisionalEmail,
      @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO')
          this.clienteProvisionalTelefono,
      @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION')
          this.clienteProvisionalPoblacion,
      @JsonKey(name: 'NUM_EMPL')
          required this.numEmpl,
      @JsonKey(name: 'CONTACTO')
          required this.contacto,
      @JsonKey(name: 'ATENDIDO_POR')
          this.atendidoPor,
      @JsonKey(name: 'RESUMEN')
          this.resumen,
      @JsonKey(name: 'MARCAS_COMPETENCIA')
          this.marcasCompetencia,
      @JsonKey(name: 'LATITUD')
          required this.latitud,
      @JsonKey(name: 'LONGITUD')
          required this.longitud,
      @JsonKey(name: 'ENVIADA')
          this.enviada = 'N',
      @JsonKey(name: 'TRATADA')
          this.tratada = 'N',
      @JsonKey(name: 'ERROR_SYNC')
          this.errorSyncMessage})
      : super._();

  factory _$_VisitaLocalDTO.fromJson(Map<String, dynamic> json) =>
      _$$_VisitaLocalDTOFromJson(json);

  @override
  @JsonKey(name: 'COD_VISITA_APP')
  final String? visitaAppId;
  @override
  @JsonKey(name: 'FECHA')
  final DateTime fecha;
  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String? clienteId;
  @override
  @JsonKey(name: 'CLIENTE_POTENCIAL_SN')
  final String isClienteProvisional;
  @override
  @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE')
  final String? clienteProvisionalNombre;
  @override
  @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL')
  final String? clienteProvisionalEmail;
  @override
  @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO')
  final String? clienteProvisionalTelefono;
  @override
  @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION')
  final String? clienteProvisionalPoblacion;
  @override
  @JsonKey(name: 'NUM_EMPL')
  final String numEmpl;
  @override
  @JsonKey(name: 'CONTACTO')
  final String contacto;
  @override
  @JsonKey(name: 'ATENDIDO_POR')
  final String? atendidoPor;
  @override
  @JsonKey(name: 'RESUMEN')
  final String? resumen;
  @override
  @JsonKey(name: 'MARCAS_COMPETENCIA')
  final String? marcasCompetencia;
  @override
  @JsonKey(name: 'LATITUD')
  final double latitud;
  @override
  @JsonKey(name: 'LONGITUD')
  final double longitud;
  @override
  @JsonKey(name: 'ENVIADA')
  final String enviada;
  @override
  @JsonKey(name: 'TRATADA')
  final String tratada;
  @override
  @JsonKey(name: 'ERROR_SYNC')
  final String? errorSyncMessage;

  @override
  String toString() {
    return 'VisitaLocalDTO(visitaAppId: $visitaAppId, fecha: $fecha, clienteId: $clienteId, isClienteProvisional: $isClienteProvisional, clienteProvisionalNombre: $clienteProvisionalNombre, clienteProvisionalEmail: $clienteProvisionalEmail, clienteProvisionalTelefono: $clienteProvisionalTelefono, clienteProvisionalPoblacion: $clienteProvisionalPoblacion, numEmpl: $numEmpl, contacto: $contacto, atendidoPor: $atendidoPor, resumen: $resumen, marcasCompetencia: $marcasCompetencia, latitud: $latitud, longitud: $longitud, enviada: $enviada, tratada: $tratada, errorSyncMessage: $errorSyncMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VisitaLocalDTO &&
            (identical(other.visitaAppId, visitaAppId) ||
                other.visitaAppId == visitaAppId) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.isClienteProvisional, isClienteProvisional) ||
                other.isClienteProvisional == isClienteProvisional) &&
            (identical(
                    other.clienteProvisionalNombre, clienteProvisionalNombre) ||
                other.clienteProvisionalNombre == clienteProvisionalNombre) &&
            (identical(
                    other.clienteProvisionalEmail, clienteProvisionalEmail) ||
                other.clienteProvisionalEmail == clienteProvisionalEmail) &&
            (identical(other.clienteProvisionalTelefono,
                    clienteProvisionalTelefono) ||
                other.clienteProvisionalTelefono ==
                    clienteProvisionalTelefono) &&
            (identical(other.clienteProvisionalPoblacion,
                    clienteProvisionalPoblacion) ||
                other.clienteProvisionalPoblacion ==
                    clienteProvisionalPoblacion) &&
            (identical(other.numEmpl, numEmpl) || other.numEmpl == numEmpl) &&
            (identical(other.contacto, contacto) ||
                other.contacto == contacto) &&
            (identical(other.atendidoPor, atendidoPor) ||
                other.atendidoPor == atendidoPor) &&
            (identical(other.resumen, resumen) || other.resumen == resumen) &&
            (identical(other.marcasCompetencia, marcasCompetencia) ||
                other.marcasCompetencia == marcasCompetencia) &&
            (identical(other.latitud, latitud) || other.latitud == latitud) &&
            (identical(other.longitud, longitud) ||
                other.longitud == longitud) &&
            (identical(other.enviada, enviada) || other.enviada == enviada) &&
            (identical(other.tratada, tratada) || other.tratada == tratada) &&
            (identical(other.errorSyncMessage, errorSyncMessage) ||
                other.errorSyncMessage == errorSyncMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      visitaAppId,
      fecha,
      clienteId,
      isClienteProvisional,
      clienteProvisionalNombre,
      clienteProvisionalEmail,
      clienteProvisionalTelefono,
      clienteProvisionalPoblacion,
      numEmpl,
      contacto,
      atendidoPor,
      resumen,
      marcasCompetencia,
      latitud,
      longitud,
      enviada,
      tratada,
      errorSyncMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VisitaLocalDTOCopyWith<_$_VisitaLocalDTO> get copyWith =>
      __$$_VisitaLocalDTOCopyWithImpl<_$_VisitaLocalDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VisitaLocalDTOToJson(
      this,
    );
  }
}

abstract class _VisitaLocalDTO extends VisitaLocalDTO {
  const factory _VisitaLocalDTO(
      {@JsonKey(name: 'COD_VISITA_APP')
          final String? visitaAppId,
      @JsonKey(name: 'FECHA')
          required final DateTime fecha,
      @JsonKey(name: 'CLIENTE_ID')
          final String? clienteId,
      @JsonKey(name: 'CLIENTE_POTENCIAL_SN')
          required final String isClienteProvisional,
      @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE')
          final String? clienteProvisionalNombre,
      @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL')
          final String? clienteProvisionalEmail,
      @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO')
          final String? clienteProvisionalTelefono,
      @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION')
          final String? clienteProvisionalPoblacion,
      @JsonKey(name: 'NUM_EMPL')
          required final String numEmpl,
      @JsonKey(name: 'CONTACTO')
          required final String contacto,
      @JsonKey(name: 'ATENDIDO_POR')
          final String? atendidoPor,
      @JsonKey(name: 'RESUMEN')
          final String? resumen,
      @JsonKey(name: 'MARCAS_COMPETENCIA')
          final String? marcasCompetencia,
      @JsonKey(name: 'LATITUD')
          required final double latitud,
      @JsonKey(name: 'LONGITUD')
          required final double longitud,
      @JsonKey(name: 'ENVIADA')
          final String enviada,
      @JsonKey(name: 'TRATADA')
          final String tratada,
      @JsonKey(name: 'ERROR_SYNC')
          final String? errorSyncMessage}) = _$_VisitaLocalDTO;
  const _VisitaLocalDTO._() : super._();

  factory _VisitaLocalDTO.fromJson(Map<String, dynamic> json) =
      _$_VisitaLocalDTO.fromJson;

  @override
  @JsonKey(name: 'COD_VISITA_APP')
  String? get visitaAppId;
  @override
  @JsonKey(name: 'FECHA')
  DateTime get fecha;
  @override
  @JsonKey(name: 'CLIENTE_ID')
  String? get clienteId;
  @override
  @JsonKey(name: 'CLIENTE_POTENCIAL_SN')
  String get isClienteProvisional;
  @override
  @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE')
  String? get clienteProvisionalNombre;
  @override
  @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL')
  String? get clienteProvisionalEmail;
  @override
  @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO')
  String? get clienteProvisionalTelefono;
  @override
  @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION')
  String? get clienteProvisionalPoblacion;
  @override
  @JsonKey(name: 'NUM_EMPL')
  String get numEmpl;
  @override
  @JsonKey(name: 'CONTACTO')
  String get contacto;
  @override
  @JsonKey(name: 'ATENDIDO_POR')
  String? get atendidoPor;
  @override
  @JsonKey(name: 'RESUMEN')
  String? get resumen;
  @override
  @JsonKey(name: 'MARCAS_COMPETENCIA')
  String? get marcasCompetencia;
  @override
  @JsonKey(name: 'LATITUD')
  double get latitud;
  @override
  @JsonKey(name: 'LONGITUD')
  double get longitud;
  @override
  @JsonKey(name: 'ENVIADA')
  String get enviada;
  @override
  @JsonKey(name: 'TRATADA')
  String get tratada;
  @override
  @JsonKey(name: 'ERROR_SYNC')
  String? get errorSyncMessage;
  @override
  @JsonKey(ignore: true)
  _$$_VisitaLocalDTOCopyWith<_$_VisitaLocalDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
