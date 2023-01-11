// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_database.dart';

// ignore_for_file: type=lint
class VisitaLocalTableCompanion extends UpdateCompanion<VisitaLocalDTO> {
  final Value<String> visitaAppId;
  final Value<String?> clienteId;
  final Value<String> isClienteProvisional;
  final Value<String?> clienteProvisionalNombre;
  final Value<String?> clienteProvisionalEmail;
  final Value<String?> clienteProvisionalTelefono;
  final Value<String?> clienteProvisionalPoblacion;
  final Value<DateTime> fecha;
  final Value<String> numEmpl;
  final Value<String> contacto;
  final Value<String?> atendidoPor;
  final Value<String?> resumen;
  final Value<String?> marcasCompetencia;
  final Value<double> latitud;
  final Value<double> longitud;
  final Value<String> enviada;
  final Value<String> tratada;
  final Value<String?> errorSyncMessage;
  const VisitaLocalTableCompanion({
    this.visitaAppId = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.isClienteProvisional = const Value.absent(),
    this.clienteProvisionalNombre = const Value.absent(),
    this.clienteProvisionalEmail = const Value.absent(),
    this.clienteProvisionalTelefono = const Value.absent(),
    this.clienteProvisionalPoblacion = const Value.absent(),
    this.fecha = const Value.absent(),
    this.numEmpl = const Value.absent(),
    this.contacto = const Value.absent(),
    this.atendidoPor = const Value.absent(),
    this.resumen = const Value.absent(),
    this.marcasCompetencia = const Value.absent(),
    this.latitud = const Value.absent(),
    this.longitud = const Value.absent(),
    this.enviada = const Value.absent(),
    this.tratada = const Value.absent(),
    this.errorSyncMessage = const Value.absent(),
  });
  VisitaLocalTableCompanion.insert({
    required String visitaAppId,
    this.clienteId = const Value.absent(),
    required String isClienteProvisional,
    this.clienteProvisionalNombre = const Value.absent(),
    this.clienteProvisionalEmail = const Value.absent(),
    this.clienteProvisionalTelefono = const Value.absent(),
    this.clienteProvisionalPoblacion = const Value.absent(),
    required DateTime fecha,
    required String numEmpl,
    required String contacto,
    this.atendidoPor = const Value.absent(),
    this.resumen = const Value.absent(),
    this.marcasCompetencia = const Value.absent(),
    required double latitud,
    required double longitud,
    this.enviada = const Value.absent(),
    this.tratada = const Value.absent(),
    this.errorSyncMessage = const Value.absent(),
  })  : visitaAppId = Value(visitaAppId),
        isClienteProvisional = Value(isClienteProvisional),
        fecha = Value(fecha),
        numEmpl = Value(numEmpl),
        contacto = Value(contacto),
        latitud = Value(latitud),
        longitud = Value(longitud);
  static Insertable<VisitaLocalDTO> custom({
    Expression<String>? visitaAppId,
    Expression<String>? clienteId,
    Expression<String>? isClienteProvisional,
    Expression<String>? clienteProvisionalNombre,
    Expression<String>? clienteProvisionalEmail,
    Expression<String>? clienteProvisionalTelefono,
    Expression<String>? clienteProvisionalPoblacion,
    Expression<DateTime>? fecha,
    Expression<String>? numEmpl,
    Expression<String>? contacto,
    Expression<String>? atendidoPor,
    Expression<String>? resumen,
    Expression<String>? marcasCompetencia,
    Expression<double>? latitud,
    Expression<double>? longitud,
    Expression<String>? enviada,
    Expression<String>? tratada,
    Expression<String>? errorSyncMessage,
  }) {
    return RawValuesInsertable({
      if (visitaAppId != null) 'COD_VISITA_APP': visitaAppId,
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (isClienteProvisional != null)
        'CLIENTE_POTENCIAL_SN': isClienteProvisional,
      if (clienteProvisionalNombre != null)
        'CLIENTE_POTENCIAL_NOMBRE': clienteProvisionalNombre,
      if (clienteProvisionalEmail != null)
        'CLIENTE_POTENCIAL_EMAIL': clienteProvisionalEmail,
      if (clienteProvisionalTelefono != null)
        'CLIENTE_POTENCIAL_TELEFONO': clienteProvisionalTelefono,
      if (clienteProvisionalPoblacion != null)
        'CLIENTE_POTENCIAL_POBLACION': clienteProvisionalPoblacion,
      if (fecha != null) 'FECHA': fecha,
      if (numEmpl != null) 'NUM_EMPL': numEmpl,
      if (contacto != null) 'CONTACTO': contacto,
      if (atendidoPor != null) 'ATENDIDO_POR': atendidoPor,
      if (resumen != null) 'RESUMEN': resumen,
      if (marcasCompetencia != null) 'MARCAS_COMPETENCIA': marcasCompetencia,
      if (latitud != null) 'LATITUD': latitud,
      if (longitud != null) 'LONGITUD': longitud,
      if (enviada != null) 'ENVIADA': enviada,
      if (tratada != null) 'TRATADA': tratada,
      if (errorSyncMessage != null) 'ERROR_SYNC': errorSyncMessage,
    });
  }

  VisitaLocalTableCompanion copyWith(
      {Value<String>? visitaAppId,
      Value<String?>? clienteId,
      Value<String>? isClienteProvisional,
      Value<String?>? clienteProvisionalNombre,
      Value<String?>? clienteProvisionalEmail,
      Value<String?>? clienteProvisionalTelefono,
      Value<String?>? clienteProvisionalPoblacion,
      Value<DateTime>? fecha,
      Value<String>? numEmpl,
      Value<String>? contacto,
      Value<String?>? atendidoPor,
      Value<String?>? resumen,
      Value<String?>? marcasCompetencia,
      Value<double>? latitud,
      Value<double>? longitud,
      Value<String>? enviada,
      Value<String>? tratada,
      Value<String?>? errorSyncMessage}) {
    return VisitaLocalTableCompanion(
      visitaAppId: visitaAppId ?? this.visitaAppId,
      clienteId: clienteId ?? this.clienteId,
      isClienteProvisional: isClienteProvisional ?? this.isClienteProvisional,
      clienteProvisionalNombre:
          clienteProvisionalNombre ?? this.clienteProvisionalNombre,
      clienteProvisionalEmail:
          clienteProvisionalEmail ?? this.clienteProvisionalEmail,
      clienteProvisionalTelefono:
          clienteProvisionalTelefono ?? this.clienteProvisionalTelefono,
      clienteProvisionalPoblacion:
          clienteProvisionalPoblacion ?? this.clienteProvisionalPoblacion,
      fecha: fecha ?? this.fecha,
      numEmpl: numEmpl ?? this.numEmpl,
      contacto: contacto ?? this.contacto,
      atendidoPor: atendidoPor ?? this.atendidoPor,
      resumen: resumen ?? this.resumen,
      marcasCompetencia: marcasCompetencia ?? this.marcasCompetencia,
      latitud: latitud ?? this.latitud,
      longitud: longitud ?? this.longitud,
      enviada: enviada ?? this.enviada,
      tratada: tratada ?? this.tratada,
      errorSyncMessage: errorSyncMessage ?? this.errorSyncMessage,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (visitaAppId.present) {
      map['COD_VISITA_APP'] = Variable<String>(visitaAppId.value);
    }
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (isClienteProvisional.present) {
      map['CLIENTE_POTENCIAL_SN'] =
          Variable<String>(isClienteProvisional.value);
    }
    if (clienteProvisionalNombre.present) {
      map['CLIENTE_POTENCIAL_NOMBRE'] =
          Variable<String>(clienteProvisionalNombre.value);
    }
    if (clienteProvisionalEmail.present) {
      map['CLIENTE_POTENCIAL_EMAIL'] =
          Variable<String>(clienteProvisionalEmail.value);
    }
    if (clienteProvisionalTelefono.present) {
      map['CLIENTE_POTENCIAL_TELEFONO'] =
          Variable<String>(clienteProvisionalTelefono.value);
    }
    if (clienteProvisionalPoblacion.present) {
      map['CLIENTE_POTENCIAL_POBLACION'] =
          Variable<String>(clienteProvisionalPoblacion.value);
    }
    if (fecha.present) {
      map['FECHA'] = Variable<DateTime>(fecha.value);
    }
    if (numEmpl.present) {
      map['NUM_EMPL'] = Variable<String>(numEmpl.value);
    }
    if (contacto.present) {
      map['CONTACTO'] = Variable<String>(contacto.value);
    }
    if (atendidoPor.present) {
      map['ATENDIDO_POR'] = Variable<String>(atendidoPor.value);
    }
    if (resumen.present) {
      map['RESUMEN'] = Variable<String>(resumen.value);
    }
    if (marcasCompetencia.present) {
      map['MARCAS_COMPETENCIA'] = Variable<String>(marcasCompetencia.value);
    }
    if (latitud.present) {
      map['LATITUD'] = Variable<double>(latitud.value);
    }
    if (longitud.present) {
      map['LONGITUD'] = Variable<double>(longitud.value);
    }
    if (enviada.present) {
      map['ENVIADA'] = Variable<String>(enviada.value);
    }
    if (tratada.present) {
      map['TRATADA'] = Variable<String>(tratada.value);
    }
    if (errorSyncMessage.present) {
      map['ERROR_SYNC'] = Variable<String>(errorSyncMessage.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VisitaLocalTableCompanion(')
          ..write('visitaAppId: $visitaAppId, ')
          ..write('clienteId: $clienteId, ')
          ..write('isClienteProvisional: $isClienteProvisional, ')
          ..write('clienteProvisionalNombre: $clienteProvisionalNombre, ')
          ..write('clienteProvisionalEmail: $clienteProvisionalEmail, ')
          ..write('clienteProvisionalTelefono: $clienteProvisionalTelefono, ')
          ..write('clienteProvisionalPoblacion: $clienteProvisionalPoblacion, ')
          ..write('fecha: $fecha, ')
          ..write('numEmpl: $numEmpl, ')
          ..write('contacto: $contacto, ')
          ..write('atendidoPor: $atendidoPor, ')
          ..write('resumen: $resumen, ')
          ..write('marcasCompetencia: $marcasCompetencia, ')
          ..write('latitud: $latitud, ')
          ..write('longitud: $longitud, ')
          ..write('enviada: $enviada, ')
          ..write('tratada: $tratada, ')
          ..write('errorSyncMessage: $errorSyncMessage')
          ..write(')'))
        .toString();
  }
}

class $VisitaLocalTableTable extends VisitaLocalTable
    with TableInfo<$VisitaLocalTableTable, VisitaLocalDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VisitaLocalTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _visitaAppIdMeta =
      const VerificationMeta('visitaAppId');
  @override
  late final GeneratedColumn<String> visitaAppId = GeneratedColumn<String>(
      'COD_VISITA_APP', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _clienteIdMeta =
      const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isClienteProvisionalMeta =
      const VerificationMeta('isClienteProvisional');
  @override
  late final GeneratedColumn<String> isClienteProvisional =
      GeneratedColumn<String>('CLIENTE_POTENCIAL_SN', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _clienteProvisionalNombreMeta =
      const VerificationMeta('clienteProvisionalNombre');
  @override
  late final GeneratedColumn<String> clienteProvisionalNombre =
      GeneratedColumn<String>('CLIENTE_POTENCIAL_NOMBRE', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _clienteProvisionalEmailMeta =
      const VerificationMeta('clienteProvisionalEmail');
  @override
  late final GeneratedColumn<String> clienteProvisionalEmail =
      GeneratedColumn<String>('CLIENTE_POTENCIAL_EMAIL', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _clienteProvisionalTelefonoMeta =
      const VerificationMeta('clienteProvisionalTelefono');
  @override
  late final GeneratedColumn<String> clienteProvisionalTelefono =
      GeneratedColumn<String>('CLIENTE_POTENCIAL_TELEFONO', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _clienteProvisionalPoblacionMeta =
      const VerificationMeta('clienteProvisionalPoblacion');
  @override
  late final GeneratedColumn<String> clienteProvisionalPoblacion =
      GeneratedColumn<String>('CLIENTE_POTENCIAL_POBLACION', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _fechaMeta = const VerificationMeta('fecha');
  @override
  late final GeneratedColumn<DateTime> fecha = GeneratedColumn<DateTime>(
      'FECHA', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _numEmplMeta =
      const VerificationMeta('numEmpl');
  @override
  late final GeneratedColumn<String> numEmpl = GeneratedColumn<String>(
      'NUM_EMPL', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contactoMeta =
      const VerificationMeta('contacto');
  @override
  late final GeneratedColumn<String> contacto = GeneratedColumn<String>(
      'CONTACTO', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _atendidoPorMeta =
      const VerificationMeta('atendidoPor');
  @override
  late final GeneratedColumn<String> atendidoPor = GeneratedColumn<String>(
      'ATENDIDO_POR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _resumenMeta =
      const VerificationMeta('resumen');
  @override
  late final GeneratedColumn<String> resumen = GeneratedColumn<String>(
      'RESUMEN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _marcasCompetenciaMeta =
      const VerificationMeta('marcasCompetencia');
  @override
  late final GeneratedColumn<String> marcasCompetencia =
      GeneratedColumn<String>('MARCAS_COMPETENCIA', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _latitudMeta =
      const VerificationMeta('latitud');
  @override
  late final GeneratedColumn<double> latitud = GeneratedColumn<double>(
      'LATITUD', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _longitudMeta =
      const VerificationMeta('longitud');
  @override
  late final GeneratedColumn<double> longitud = GeneratedColumn<double>(
      'LONGITUD', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _enviadaMeta =
      const VerificationMeta('enviada');
  @override
  late final GeneratedColumn<String> enviada = GeneratedColumn<String>(
      'ENVIADA', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  static const VerificationMeta _tratadaMeta =
      const VerificationMeta('tratada');
  @override
  late final GeneratedColumn<String> tratada = GeneratedColumn<String>(
      'TRATADA', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  static const VerificationMeta _errorSyncMessageMeta =
      const VerificationMeta('errorSyncMessage');
  @override
  late final GeneratedColumn<String> errorSyncMessage = GeneratedColumn<String>(
      'ERROR_SYNC', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        visitaAppId,
        clienteId,
        isClienteProvisional,
        clienteProvisionalNombre,
        clienteProvisionalEmail,
        clienteProvisionalTelefono,
        clienteProvisionalPoblacion,
        fecha,
        numEmpl,
        contacto,
        atendidoPor,
        resumen,
        marcasCompetencia,
        latitud,
        longitud,
        enviada,
        tratada,
        errorSyncMessage
      ];
  @override
  String get aliasedName => _alias ?? 'VISITAS_LOCAL_IMP';
  @override
  String get actualTableName => 'VISITAS_LOCAL_IMP';
  @override
  VerificationContext validateIntegrity(Insertable<VisitaLocalDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('COD_VISITA_APP')) {
      context.handle(
          _visitaAppIdMeta,
          visitaAppId.isAcceptableOrUnknown(
              data['COD_VISITA_APP']!, _visitaAppIdMeta));
    } else if (isInserting) {
      context.missing(_visitaAppIdMeta);
    }
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    }
    if (data.containsKey('CLIENTE_POTENCIAL_SN')) {
      context.handle(
          _isClienteProvisionalMeta,
          isClienteProvisional.isAcceptableOrUnknown(
              data['CLIENTE_POTENCIAL_SN']!, _isClienteProvisionalMeta));
    } else if (isInserting) {
      context.missing(_isClienteProvisionalMeta);
    }
    if (data.containsKey('CLIENTE_POTENCIAL_NOMBRE')) {
      context.handle(
          _clienteProvisionalNombreMeta,
          clienteProvisionalNombre.isAcceptableOrUnknown(
              data['CLIENTE_POTENCIAL_NOMBRE']!,
              _clienteProvisionalNombreMeta));
    }
    if (data.containsKey('CLIENTE_POTENCIAL_EMAIL')) {
      context.handle(
          _clienteProvisionalEmailMeta,
          clienteProvisionalEmail.isAcceptableOrUnknown(
              data['CLIENTE_POTENCIAL_EMAIL']!, _clienteProvisionalEmailMeta));
    }
    if (data.containsKey('CLIENTE_POTENCIAL_TELEFONO')) {
      context.handle(
          _clienteProvisionalTelefonoMeta,
          clienteProvisionalTelefono.isAcceptableOrUnknown(
              data['CLIENTE_POTENCIAL_TELEFONO']!,
              _clienteProvisionalTelefonoMeta));
    }
    if (data.containsKey('CLIENTE_POTENCIAL_POBLACION')) {
      context.handle(
          _clienteProvisionalPoblacionMeta,
          clienteProvisionalPoblacion.isAcceptableOrUnknown(
              data['CLIENTE_POTENCIAL_POBLACION']!,
              _clienteProvisionalPoblacionMeta));
    }
    if (data.containsKey('FECHA')) {
      context.handle(
          _fechaMeta, fecha.isAcceptableOrUnknown(data['FECHA']!, _fechaMeta));
    } else if (isInserting) {
      context.missing(_fechaMeta);
    }
    if (data.containsKey('NUM_EMPL')) {
      context.handle(_numEmplMeta,
          numEmpl.isAcceptableOrUnknown(data['NUM_EMPL']!, _numEmplMeta));
    } else if (isInserting) {
      context.missing(_numEmplMeta);
    }
    if (data.containsKey('CONTACTO')) {
      context.handle(_contactoMeta,
          contacto.isAcceptableOrUnknown(data['CONTACTO']!, _contactoMeta));
    } else if (isInserting) {
      context.missing(_contactoMeta);
    }
    if (data.containsKey('ATENDIDO_POR')) {
      context.handle(
          _atendidoPorMeta,
          atendidoPor.isAcceptableOrUnknown(
              data['ATENDIDO_POR']!, _atendidoPorMeta));
    }
    if (data.containsKey('RESUMEN')) {
      context.handle(_resumenMeta,
          resumen.isAcceptableOrUnknown(data['RESUMEN']!, _resumenMeta));
    }
    if (data.containsKey('MARCAS_COMPETENCIA')) {
      context.handle(
          _marcasCompetenciaMeta,
          marcasCompetencia.isAcceptableOrUnknown(
              data['MARCAS_COMPETENCIA']!, _marcasCompetenciaMeta));
    }
    if (data.containsKey('LATITUD')) {
      context.handle(_latitudMeta,
          latitud.isAcceptableOrUnknown(data['LATITUD']!, _latitudMeta));
    } else if (isInserting) {
      context.missing(_latitudMeta);
    }
    if (data.containsKey('LONGITUD')) {
      context.handle(_longitudMeta,
          longitud.isAcceptableOrUnknown(data['LONGITUD']!, _longitudMeta));
    } else if (isInserting) {
      context.missing(_longitudMeta);
    }
    if (data.containsKey('ENVIADA')) {
      context.handle(_enviadaMeta,
          enviada.isAcceptableOrUnknown(data['ENVIADA']!, _enviadaMeta));
    }
    if (data.containsKey('TRATADA')) {
      context.handle(_tratadaMeta,
          tratada.isAcceptableOrUnknown(data['TRATADA']!, _tratadaMeta));
    }
    if (data.containsKey('ERROR_SYNC')) {
      context.handle(
          _errorSyncMessageMeta,
          errorSyncMessage.isAcceptableOrUnknown(
              data['ERROR_SYNC']!, _errorSyncMessageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {visitaAppId};
  @override
  VisitaLocalDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VisitaLocalDTO(
      visitaAppId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}COD_VISITA_APP'])!,
      fecha: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA'])!,
      clienteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID']),
      isClienteProvisional: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}CLIENTE_POTENCIAL_SN'])!,
      clienteProvisionalNombre: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}CLIENTE_POTENCIAL_NOMBRE']),
      clienteProvisionalEmail: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}CLIENTE_POTENCIAL_EMAIL']),
      clienteProvisionalTelefono: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}CLIENTE_POTENCIAL_TELEFONO']),
      clienteProvisionalPoblacion: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}CLIENTE_POTENCIAL_POBLACION']),
      numEmpl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}NUM_EMPL'])!,
      contacto: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CONTACTO'])!,
      atendidoPor: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ATENDIDO_POR']),
      resumen: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN']),
      marcasCompetencia: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}MARCAS_COMPETENCIA']),
      latitud: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}LATITUD'])!,
      longitud: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}LONGITUD'])!,
      enviada: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ENVIADA'])!,
      tratada: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}TRATADA'])!,
      errorSyncMessage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ERROR_SYNC']),
    );
  }

  @override
  $VisitaLocalTableTable createAlias(String alias) {
    return $VisitaLocalTableTable(attachedDatabase, alias);
  }
}

class PedidoVentaLineaLocalTableCompanion
    extends UpdateCompanion<PedidoVentaLineaLocalDTO> {
  final Value<String> pedidoVentaAppId;
  final Value<String> pedidoVentaLineaAppId;
  final Value<String> articuloId;
  final Value<String> articuloDescription;
  final Value<int> cantidad;
  final Value<double> precioDivisa;
  final Value<int> tipoPrecio;
  final Value<double> descuento1;
  final Value<double> descuento2;
  final Value<double> descuento3;
  final Value<double> descuentoProntoPago;
  final Value<String> stockDisponibleSN;
  final Value<DateTime?> fechaDisponible;
  final Value<double> iva;
  const PedidoVentaLineaLocalTableCompanion({
    this.pedidoVentaAppId = const Value.absent(),
    this.pedidoVentaLineaAppId = const Value.absent(),
    this.articuloId = const Value.absent(),
    this.articuloDescription = const Value.absent(),
    this.cantidad = const Value.absent(),
    this.precioDivisa = const Value.absent(),
    this.tipoPrecio = const Value.absent(),
    this.descuento1 = const Value.absent(),
    this.descuento2 = const Value.absent(),
    this.descuento3 = const Value.absent(),
    this.descuentoProntoPago = const Value.absent(),
    this.stockDisponibleSN = const Value.absent(),
    this.fechaDisponible = const Value.absent(),
    this.iva = const Value.absent(),
  });
  PedidoVentaLineaLocalTableCompanion.insert({
    required String pedidoVentaAppId,
    required String pedidoVentaLineaAppId,
    required String articuloId,
    required String articuloDescription,
    required int cantidad,
    required double precioDivisa,
    required int tipoPrecio,
    required double descuento1,
    required double descuento2,
    required double descuento3,
    required double descuentoProntoPago,
    required String stockDisponibleSN,
    this.fechaDisponible = const Value.absent(),
    required double iva,
  })  : pedidoVentaAppId = Value(pedidoVentaAppId),
        pedidoVentaLineaAppId = Value(pedidoVentaLineaAppId),
        articuloId = Value(articuloId),
        articuloDescription = Value(articuloDescription),
        cantidad = Value(cantidad),
        precioDivisa = Value(precioDivisa),
        tipoPrecio = Value(tipoPrecio),
        descuento1 = Value(descuento1),
        descuento2 = Value(descuento2),
        descuento3 = Value(descuento3),
        descuentoProntoPago = Value(descuentoProntoPago),
        stockDisponibleSN = Value(stockDisponibleSN),
        iva = Value(iva);
  static Insertable<PedidoVentaLineaLocalDTO> custom({
    Expression<String>? pedidoVentaAppId,
    Expression<String>? pedidoVentaLineaAppId,
    Expression<String>? articuloId,
    Expression<String>? articuloDescription,
    Expression<int>? cantidad,
    Expression<double>? precioDivisa,
    Expression<int>? tipoPrecio,
    Expression<double>? descuento1,
    Expression<double>? descuento2,
    Expression<double>? descuento3,
    Expression<double>? descuentoProntoPago,
    Expression<String>? stockDisponibleSN,
    Expression<DateTime>? fechaDisponible,
    Expression<double>? iva,
  }) {
    return RawValuesInsertable({
      if (pedidoVentaAppId != null) 'PEDIDO_APP_ID': pedidoVentaAppId,
      if (pedidoVentaLineaAppId != null) 'LIN_APP_ID': pedidoVentaLineaAppId,
      if (articuloId != null) 'PRODUCTO_ID': articuloId,
      if (articuloDescription != null) 'DENOMINACION': articuloDescription,
      if (cantidad != null) 'CANTIDAD': cantidad,
      if (precioDivisa != null) 'PRECIO_DIVISA': precioDivisa,
      if (tipoPrecio != null) 'TPRECIO': tipoPrecio,
      if (descuento1 != null) 'DTO1': descuento1,
      if (descuento2 != null) 'DTO2': descuento2,
      if (descuento3 != null) 'DTO3': descuento3,
      if (descuentoProntoPago != null) 'DTO_PP': descuentoProntoPago,
      if (stockDisponibleSN != null) 'STOCK_DISPONIBLE_SN': stockDisponibleSN,
      if (fechaDisponible != null) 'F_DISPONIBLE': fechaDisponible,
      if (iva != null) 'IVA': iva,
    });
  }

  PedidoVentaLineaLocalTableCompanion copyWith(
      {Value<String>? pedidoVentaAppId,
      Value<String>? pedidoVentaLineaAppId,
      Value<String>? articuloId,
      Value<String>? articuloDescription,
      Value<int>? cantidad,
      Value<double>? precioDivisa,
      Value<int>? tipoPrecio,
      Value<double>? descuento1,
      Value<double>? descuento2,
      Value<double>? descuento3,
      Value<double>? descuentoProntoPago,
      Value<String>? stockDisponibleSN,
      Value<DateTime?>? fechaDisponible,
      Value<double>? iva}) {
    return PedidoVentaLineaLocalTableCompanion(
      pedidoVentaAppId: pedidoVentaAppId ?? this.pedidoVentaAppId,
      pedidoVentaLineaAppId:
          pedidoVentaLineaAppId ?? this.pedidoVentaLineaAppId,
      articuloId: articuloId ?? this.articuloId,
      articuloDescription: articuloDescription ?? this.articuloDescription,
      cantidad: cantidad ?? this.cantidad,
      precioDivisa: precioDivisa ?? this.precioDivisa,
      tipoPrecio: tipoPrecio ?? this.tipoPrecio,
      descuento1: descuento1 ?? this.descuento1,
      descuento2: descuento2 ?? this.descuento2,
      descuento3: descuento3 ?? this.descuento3,
      descuentoProntoPago: descuentoProntoPago ?? this.descuentoProntoPago,
      stockDisponibleSN: stockDisponibleSN ?? this.stockDisponibleSN,
      fechaDisponible: fechaDisponible ?? this.fechaDisponible,
      iva: iva ?? this.iva,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pedidoVentaAppId.present) {
      map['PEDIDO_APP_ID'] = Variable<String>(pedidoVentaAppId.value);
    }
    if (pedidoVentaLineaAppId.present) {
      map['LIN_APP_ID'] = Variable<String>(pedidoVentaLineaAppId.value);
    }
    if (articuloId.present) {
      map['PRODUCTO_ID'] = Variable<String>(articuloId.value);
    }
    if (articuloDescription.present) {
      map['DENOMINACION'] = Variable<String>(articuloDescription.value);
    }
    if (cantidad.present) {
      map['CANTIDAD'] = Variable<int>(cantidad.value);
    }
    if (precioDivisa.present) {
      map['PRECIO_DIVISA'] = Variable<double>(precioDivisa.value);
    }
    if (tipoPrecio.present) {
      map['TPRECIO'] = Variable<int>(tipoPrecio.value);
    }
    if (descuento1.present) {
      map['DTO1'] = Variable<double>(descuento1.value);
    }
    if (descuento2.present) {
      map['DTO2'] = Variable<double>(descuento2.value);
    }
    if (descuento3.present) {
      map['DTO3'] = Variable<double>(descuento3.value);
    }
    if (descuentoProntoPago.present) {
      map['DTO_PP'] = Variable<double>(descuentoProntoPago.value);
    }
    if (stockDisponibleSN.present) {
      map['STOCK_DISPONIBLE_SN'] = Variable<String>(stockDisponibleSN.value);
    }
    if (fechaDisponible.present) {
      map['F_DISPONIBLE'] = Variable<DateTime>(fechaDisponible.value);
    }
    if (iva.present) {
      map['IVA'] = Variable<double>(iva.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PedidoVentaLineaLocalTableCompanion(')
          ..write('pedidoVentaAppId: $pedidoVentaAppId, ')
          ..write('pedidoVentaLineaAppId: $pedidoVentaLineaAppId, ')
          ..write('articuloId: $articuloId, ')
          ..write('articuloDescription: $articuloDescription, ')
          ..write('cantidad: $cantidad, ')
          ..write('precioDivisa: $precioDivisa, ')
          ..write('tipoPrecio: $tipoPrecio, ')
          ..write('descuento1: $descuento1, ')
          ..write('descuento2: $descuento2, ')
          ..write('descuento3: $descuento3, ')
          ..write('descuentoProntoPago: $descuentoProntoPago, ')
          ..write('stockDisponibleSN: $stockDisponibleSN, ')
          ..write('fechaDisponible: $fechaDisponible, ')
          ..write('iva: $iva')
          ..write(')'))
        .toString();
  }
}

class $PedidoVentaLineaLocalTableTable extends PedidoVentaLineaLocalTable
    with TableInfo<$PedidoVentaLineaLocalTableTable, PedidoVentaLineaLocalDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PedidoVentaLineaLocalTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _pedidoVentaAppIdMeta =
      const VerificationMeta('pedidoVentaAppId');
  @override
  late final GeneratedColumn<String> pedidoVentaAppId = GeneratedColumn<String>(
      'PEDIDO_APP_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pedidoVentaLineaAppIdMeta =
      const VerificationMeta('pedidoVentaLineaAppId');
  @override
  late final GeneratedColumn<String> pedidoVentaLineaAppId =
      GeneratedColumn<String>('LIN_APP_ID', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _articuloIdMeta =
      const VerificationMeta('articuloId');
  @override
  late final GeneratedColumn<String> articuloId = GeneratedColumn<String>(
      'PRODUCTO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _articuloDescriptionMeta =
      const VerificationMeta('articuloDescription');
  @override
  late final GeneratedColumn<String> articuloDescription =
      GeneratedColumn<String>('DENOMINACION', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cantidadMeta =
      const VerificationMeta('cantidad');
  @override
  late final GeneratedColumn<int> cantidad = GeneratedColumn<int>(
      'CANTIDAD', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _precioDivisaMeta =
      const VerificationMeta('precioDivisa');
  @override
  late final GeneratedColumn<double> precioDivisa = GeneratedColumn<double>(
      'PRECIO_DIVISA', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _tipoPrecioMeta =
      const VerificationMeta('tipoPrecio');
  @override
  late final GeneratedColumn<int> tipoPrecio = GeneratedColumn<int>(
      'TPRECIO', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _descuento1Meta =
      const VerificationMeta('descuento1');
  @override
  late final GeneratedColumn<double> descuento1 = GeneratedColumn<double>(
      'DTO1', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _descuento2Meta =
      const VerificationMeta('descuento2');
  @override
  late final GeneratedColumn<double> descuento2 = GeneratedColumn<double>(
      'DTO2', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _descuento3Meta =
      const VerificationMeta('descuento3');
  @override
  late final GeneratedColumn<double> descuento3 = GeneratedColumn<double>(
      'DTO3', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _descuentoProntoPagoMeta =
      const VerificationMeta('descuentoProntoPago');
  @override
  late final GeneratedColumn<double> descuentoProntoPago =
      GeneratedColumn<double>('DTO_PP', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _stockDisponibleSNMeta =
      const VerificationMeta('stockDisponibleSN');
  @override
  late final GeneratedColumn<String> stockDisponibleSN =
      GeneratedColumn<String>('STOCK_DISPONIBLE_SN', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fechaDisponibleMeta =
      const VerificationMeta('fechaDisponible');
  @override
  late final GeneratedColumn<DateTime> fechaDisponible =
      GeneratedColumn<DateTime>('F_DISPONIBLE', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _ivaMeta = const VerificationMeta('iva');
  @override
  late final GeneratedColumn<double> iva = GeneratedColumn<double>(
      'IVA', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        pedidoVentaAppId,
        pedidoVentaLineaAppId,
        articuloId,
        articuloDescription,
        cantidad,
        precioDivisa,
        tipoPrecio,
        descuento1,
        descuento2,
        descuento3,
        descuentoProntoPago,
        stockDisponibleSN,
        fechaDisponible,
        iva
      ];
  @override
  String get aliasedName => _alias ?? 'PEDIDOS_LINEAS_LOCAL_IMP';
  @override
  String get actualTableName => 'PEDIDOS_LINEAS_LOCAL_IMP';
  @override
  VerificationContext validateIntegrity(
      Insertable<PedidoVentaLineaLocalDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('PEDIDO_APP_ID')) {
      context.handle(
          _pedidoVentaAppIdMeta,
          pedidoVentaAppId.isAcceptableOrUnknown(
              data['PEDIDO_APP_ID']!, _pedidoVentaAppIdMeta));
    } else if (isInserting) {
      context.missing(_pedidoVentaAppIdMeta);
    }
    if (data.containsKey('LIN_APP_ID')) {
      context.handle(
          _pedidoVentaLineaAppIdMeta,
          pedidoVentaLineaAppId.isAcceptableOrUnknown(
              data['LIN_APP_ID']!, _pedidoVentaLineaAppIdMeta));
    } else if (isInserting) {
      context.missing(_pedidoVentaLineaAppIdMeta);
    }
    if (data.containsKey('PRODUCTO_ID')) {
      context.handle(
          _articuloIdMeta,
          articuloId.isAcceptableOrUnknown(
              data['PRODUCTO_ID']!, _articuloIdMeta));
    } else if (isInserting) {
      context.missing(_articuloIdMeta);
    }
    if (data.containsKey('DENOMINACION')) {
      context.handle(
          _articuloDescriptionMeta,
          articuloDescription.isAcceptableOrUnknown(
              data['DENOMINACION']!, _articuloDescriptionMeta));
    } else if (isInserting) {
      context.missing(_articuloDescriptionMeta);
    }
    if (data.containsKey('CANTIDAD')) {
      context.handle(_cantidadMeta,
          cantidad.isAcceptableOrUnknown(data['CANTIDAD']!, _cantidadMeta));
    } else if (isInserting) {
      context.missing(_cantidadMeta);
    }
    if (data.containsKey('PRECIO_DIVISA')) {
      context.handle(
          _precioDivisaMeta,
          precioDivisa.isAcceptableOrUnknown(
              data['PRECIO_DIVISA']!, _precioDivisaMeta));
    } else if (isInserting) {
      context.missing(_precioDivisaMeta);
    }
    if (data.containsKey('TPRECIO')) {
      context.handle(_tipoPrecioMeta,
          tipoPrecio.isAcceptableOrUnknown(data['TPRECIO']!, _tipoPrecioMeta));
    } else if (isInserting) {
      context.missing(_tipoPrecioMeta);
    }
    if (data.containsKey('DTO1')) {
      context.handle(_descuento1Meta,
          descuento1.isAcceptableOrUnknown(data['DTO1']!, _descuento1Meta));
    } else if (isInserting) {
      context.missing(_descuento1Meta);
    }
    if (data.containsKey('DTO2')) {
      context.handle(_descuento2Meta,
          descuento2.isAcceptableOrUnknown(data['DTO2']!, _descuento2Meta));
    } else if (isInserting) {
      context.missing(_descuento2Meta);
    }
    if (data.containsKey('DTO3')) {
      context.handle(_descuento3Meta,
          descuento3.isAcceptableOrUnknown(data['DTO3']!, _descuento3Meta));
    } else if (isInserting) {
      context.missing(_descuento3Meta);
    }
    if (data.containsKey('DTO_PP')) {
      context.handle(
          _descuentoProntoPagoMeta,
          descuentoProntoPago.isAcceptableOrUnknown(
              data['DTO_PP']!, _descuentoProntoPagoMeta));
    } else if (isInserting) {
      context.missing(_descuentoProntoPagoMeta);
    }
    if (data.containsKey('STOCK_DISPONIBLE_SN')) {
      context.handle(
          _stockDisponibleSNMeta,
          stockDisponibleSN.isAcceptableOrUnknown(
              data['STOCK_DISPONIBLE_SN']!, _stockDisponibleSNMeta));
    } else if (isInserting) {
      context.missing(_stockDisponibleSNMeta);
    }
    if (data.containsKey('F_DISPONIBLE')) {
      context.handle(
          _fechaDisponibleMeta,
          fechaDisponible.isAcceptableOrUnknown(
              data['F_DISPONIBLE']!, _fechaDisponibleMeta));
    }
    if (data.containsKey('IVA')) {
      context.handle(
          _ivaMeta, iva.isAcceptableOrUnknown(data['IVA']!, _ivaMeta));
    } else if (isInserting) {
      context.missing(_ivaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {pedidoVentaAppId, pedidoVentaLineaAppId};
  @override
  PedidoVentaLineaLocalDTO map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PedidoVentaLineaLocalDTO(
      pedidoVentaAppId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}PEDIDO_APP_ID'])!,
      pedidoVentaLineaAppId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}LIN_APP_ID'])!,
      articuloId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}PRODUCTO_ID'])!,
      articuloDescription: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DENOMINACION'])!,
      cantidad: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}CANTIDAD'])!,
      precioDivisa: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}PRECIO_DIVISA'])!,
      tipoPrecio: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}TPRECIO'])!,
      descuento1: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}DTO1'])!,
      descuento2: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}DTO2'])!,
      descuento3: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}DTO3'])!,
      descuentoProntoPago: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}DTO_PP'])!,
      stockDisponibleSN: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}STOCK_DISPONIBLE_SN'])!,
      fechaDisponible: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}F_DISPONIBLE']),
      iva: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}IVA'])!,
    );
  }

  @override
  $PedidoVentaLineaLocalTableTable createAlias(String alias) {
    return $PedidoVentaLineaLocalTableTable(attachedDatabase, alias);
  }
}

class PedidoVentaLocalTableCompanion
    extends UpdateCompanion<PedidoVentaLocalDTO> {
  final Value<String?> usuarioId;
  final Value<String> pedidoVentaAppId;
  final Value<String> empresaId;
  final Value<DateTime> fechaAlta;
  final Value<String> clienteId;
  final Value<String> nombreCliente;
  final Value<String?> direccionId;
  final Value<String?> direccion1;
  final Value<String?> direccion2;
  final Value<String?> codigoPostal;
  final Value<String?> poblacion;
  final Value<String?> provincia;
  final Value<String?> paisId;
  final Value<String?> divisaId;
  final Value<String?> pedidoCliente;
  final Value<String?> observaciones;
  final Value<String> oferta;
  final Value<DateTime?> ofertaFechaHasta;
  final Value<double> iva;
  final Value<double> dtoBonificacion;
  final Value<String> enviada;
  final Value<String> tratada;
  final Value<String> borrador;
  final Value<String?> errorSyncMessage;
  const PedidoVentaLocalTableCompanion({
    this.usuarioId = const Value.absent(),
    this.pedidoVentaAppId = const Value.absent(),
    this.empresaId = const Value.absent(),
    this.fechaAlta = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.nombreCliente = const Value.absent(),
    this.direccionId = const Value.absent(),
    this.direccion1 = const Value.absent(),
    this.direccion2 = const Value.absent(),
    this.codigoPostal = const Value.absent(),
    this.poblacion = const Value.absent(),
    this.provincia = const Value.absent(),
    this.paisId = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.pedidoCliente = const Value.absent(),
    this.observaciones = const Value.absent(),
    this.oferta = const Value.absent(),
    this.ofertaFechaHasta = const Value.absent(),
    this.iva = const Value.absent(),
    this.dtoBonificacion = const Value.absent(),
    this.enviada = const Value.absent(),
    this.tratada = const Value.absent(),
    this.borrador = const Value.absent(),
    this.errorSyncMessage = const Value.absent(),
  });
  PedidoVentaLocalTableCompanion.insert({
    this.usuarioId = const Value.absent(),
    required String pedidoVentaAppId,
    required String empresaId,
    required DateTime fechaAlta,
    required String clienteId,
    required String nombreCliente,
    this.direccionId = const Value.absent(),
    this.direccion1 = const Value.absent(),
    this.direccion2 = const Value.absent(),
    this.codigoPostal = const Value.absent(),
    this.poblacion = const Value.absent(),
    this.provincia = const Value.absent(),
    this.paisId = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.pedidoCliente = const Value.absent(),
    this.observaciones = const Value.absent(),
    required String oferta,
    this.ofertaFechaHasta = const Value.absent(),
    required double iva,
    required double dtoBonificacion,
    this.enviada = const Value.absent(),
    this.tratada = const Value.absent(),
    this.borrador = const Value.absent(),
    this.errorSyncMessage = const Value.absent(),
  })  : pedidoVentaAppId = Value(pedidoVentaAppId),
        empresaId = Value(empresaId),
        fechaAlta = Value(fechaAlta),
        clienteId = Value(clienteId),
        nombreCliente = Value(nombreCliente),
        oferta = Value(oferta),
        iva = Value(iva),
        dtoBonificacion = Value(dtoBonificacion);
  static Insertable<PedidoVentaLocalDTO> custom({
    Expression<String>? usuarioId,
    Expression<String>? pedidoVentaAppId,
    Expression<String>? empresaId,
    Expression<DateTime>? fechaAlta,
    Expression<String>? clienteId,
    Expression<String>? nombreCliente,
    Expression<String>? direccionId,
    Expression<String>? direccion1,
    Expression<String>? direccion2,
    Expression<String>? codigoPostal,
    Expression<String>? poblacion,
    Expression<String>? provincia,
    Expression<String>? paisId,
    Expression<String>? divisaId,
    Expression<String>? pedidoCliente,
    Expression<String>? observaciones,
    Expression<String>? oferta,
    Expression<DateTime>? ofertaFechaHasta,
    Expression<double>? iva,
    Expression<double>? dtoBonificacion,
    Expression<String>? enviada,
    Expression<String>? tratada,
    Expression<String>? borrador,
    Expression<String>? errorSyncMessage,
  }) {
    return RawValuesInsertable({
      if (usuarioId != null) 'USUARIO_ID': usuarioId,
      if (pedidoVentaAppId != null) 'PEDIDO_APP_ID': pedidoVentaAppId,
      if (empresaId != null) 'EMPRESA_ID': empresaId,
      if (fechaAlta != null) 'FECHA_ALTA': fechaAlta,
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (nombreCliente != null) 'NOMBRE_CLIENTE': nombreCliente,
      if (direccionId != null) 'DIRECCION_ID': direccionId,
      if (direccion1 != null) 'DIRECCION1': direccion1,
      if (direccion2 != null) 'DIRECCION2': direccion2,
      if (codigoPostal != null) 'CODIGO_POSTAL': codigoPostal,
      if (poblacion != null) 'POBLACION': poblacion,
      if (provincia != null) 'PROVINCIA': provincia,
      if (paisId != null) 'PAIS_ID': paisId,
      if (divisaId != null) 'DIVISA_ID': divisaId,
      if (pedidoCliente != null) 'PEDIDO_CLIENTE': pedidoCliente,
      if (observaciones != null) 'OBSERVACIONES': observaciones,
      if (oferta != null) 'OFERTA_SN': oferta,
      if (ofertaFechaHasta != null) 'OFERTA_FECHA_HASTA': ofertaFechaHasta,
      if (iva != null) 'IVA': iva,
      if (dtoBonificacion != null) 'DTO_BONIFICACION': dtoBonificacion,
      if (enviada != null) 'ENVIADA': enviada,
      if (tratada != null) 'TRATADA': tratada,
      if (borrador != null) 'BORRADOR': borrador,
      if (errorSyncMessage != null) 'ERROR_SYNC': errorSyncMessage,
    });
  }

  PedidoVentaLocalTableCompanion copyWith(
      {Value<String?>? usuarioId,
      Value<String>? pedidoVentaAppId,
      Value<String>? empresaId,
      Value<DateTime>? fechaAlta,
      Value<String>? clienteId,
      Value<String>? nombreCliente,
      Value<String?>? direccionId,
      Value<String?>? direccion1,
      Value<String?>? direccion2,
      Value<String?>? codigoPostal,
      Value<String?>? poblacion,
      Value<String?>? provincia,
      Value<String?>? paisId,
      Value<String?>? divisaId,
      Value<String?>? pedidoCliente,
      Value<String?>? observaciones,
      Value<String>? oferta,
      Value<DateTime?>? ofertaFechaHasta,
      Value<double>? iva,
      Value<double>? dtoBonificacion,
      Value<String>? enviada,
      Value<String>? tratada,
      Value<String>? borrador,
      Value<String?>? errorSyncMessage}) {
    return PedidoVentaLocalTableCompanion(
      usuarioId: usuarioId ?? this.usuarioId,
      pedidoVentaAppId: pedidoVentaAppId ?? this.pedidoVentaAppId,
      empresaId: empresaId ?? this.empresaId,
      fechaAlta: fechaAlta ?? this.fechaAlta,
      clienteId: clienteId ?? this.clienteId,
      nombreCliente: nombreCliente ?? this.nombreCliente,
      direccionId: direccionId ?? this.direccionId,
      direccion1: direccion1 ?? this.direccion1,
      direccion2: direccion2 ?? this.direccion2,
      codigoPostal: codigoPostal ?? this.codigoPostal,
      poblacion: poblacion ?? this.poblacion,
      provincia: provincia ?? this.provincia,
      paisId: paisId ?? this.paisId,
      divisaId: divisaId ?? this.divisaId,
      pedidoCliente: pedidoCliente ?? this.pedidoCliente,
      observaciones: observaciones ?? this.observaciones,
      oferta: oferta ?? this.oferta,
      ofertaFechaHasta: ofertaFechaHasta ?? this.ofertaFechaHasta,
      iva: iva ?? this.iva,
      dtoBonificacion: dtoBonificacion ?? this.dtoBonificacion,
      enviada: enviada ?? this.enviada,
      tratada: tratada ?? this.tratada,
      borrador: borrador ?? this.borrador,
      errorSyncMessage: errorSyncMessage ?? this.errorSyncMessage,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (usuarioId.present) {
      map['USUARIO_ID'] = Variable<String>(usuarioId.value);
    }
    if (pedidoVentaAppId.present) {
      map['PEDIDO_APP_ID'] = Variable<String>(pedidoVentaAppId.value);
    }
    if (empresaId.present) {
      map['EMPRESA_ID'] = Variable<String>(empresaId.value);
    }
    if (fechaAlta.present) {
      map['FECHA_ALTA'] = Variable<DateTime>(fechaAlta.value);
    }
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (nombreCliente.present) {
      map['NOMBRE_CLIENTE'] = Variable<String>(nombreCliente.value);
    }
    if (direccionId.present) {
      map['DIRECCION_ID'] = Variable<String>(direccionId.value);
    }
    if (direccion1.present) {
      map['DIRECCION1'] = Variable<String>(direccion1.value);
    }
    if (direccion2.present) {
      map['DIRECCION2'] = Variable<String>(direccion2.value);
    }
    if (codigoPostal.present) {
      map['CODIGO_POSTAL'] = Variable<String>(codigoPostal.value);
    }
    if (poblacion.present) {
      map['POBLACION'] = Variable<String>(poblacion.value);
    }
    if (provincia.present) {
      map['PROVINCIA'] = Variable<String>(provincia.value);
    }
    if (paisId.present) {
      map['PAIS_ID'] = Variable<String>(paisId.value);
    }
    if (divisaId.present) {
      map['DIVISA_ID'] = Variable<String>(divisaId.value);
    }
    if (pedidoCliente.present) {
      map['PEDIDO_CLIENTE'] = Variable<String>(pedidoCliente.value);
    }
    if (observaciones.present) {
      map['OBSERVACIONES'] = Variable<String>(observaciones.value);
    }
    if (oferta.present) {
      map['OFERTA_SN'] = Variable<String>(oferta.value);
    }
    if (ofertaFechaHasta.present) {
      map['OFERTA_FECHA_HASTA'] = Variable<DateTime>(ofertaFechaHasta.value);
    }
    if (iva.present) {
      map['IVA'] = Variable<double>(iva.value);
    }
    if (dtoBonificacion.present) {
      map['DTO_BONIFICACION'] = Variable<double>(dtoBonificacion.value);
    }
    if (enviada.present) {
      map['ENVIADA'] = Variable<String>(enviada.value);
    }
    if (tratada.present) {
      map['TRATADA'] = Variable<String>(tratada.value);
    }
    if (borrador.present) {
      map['BORRADOR'] = Variable<String>(borrador.value);
    }
    if (errorSyncMessage.present) {
      map['ERROR_SYNC'] = Variable<String>(errorSyncMessage.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PedidoVentaLocalTableCompanion(')
          ..write('usuarioId: $usuarioId, ')
          ..write('pedidoVentaAppId: $pedidoVentaAppId, ')
          ..write('empresaId: $empresaId, ')
          ..write('fechaAlta: $fechaAlta, ')
          ..write('clienteId: $clienteId, ')
          ..write('nombreCliente: $nombreCliente, ')
          ..write('direccionId: $direccionId, ')
          ..write('direccion1: $direccion1, ')
          ..write('direccion2: $direccion2, ')
          ..write('codigoPostal: $codigoPostal, ')
          ..write('poblacion: $poblacion, ')
          ..write('provincia: $provincia, ')
          ..write('paisId: $paisId, ')
          ..write('divisaId: $divisaId, ')
          ..write('pedidoCliente: $pedidoCliente, ')
          ..write('observaciones: $observaciones, ')
          ..write('oferta: $oferta, ')
          ..write('ofertaFechaHasta: $ofertaFechaHasta, ')
          ..write('iva: $iva, ')
          ..write('dtoBonificacion: $dtoBonificacion, ')
          ..write('enviada: $enviada, ')
          ..write('tratada: $tratada, ')
          ..write('borrador: $borrador, ')
          ..write('errorSyncMessage: $errorSyncMessage')
          ..write(')'))
        .toString();
  }
}

class $PedidoVentaLocalTableTable extends PedidoVentaLocalTable
    with TableInfo<$PedidoVentaLocalTableTable, PedidoVentaLocalDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PedidoVentaLocalTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _usuarioIdMeta =
      const VerificationMeta('usuarioId');
  @override
  late final GeneratedColumn<String> usuarioId = GeneratedColumn<String>(
      'USUARIO_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _pedidoVentaAppIdMeta =
      const VerificationMeta('pedidoVentaAppId');
  @override
  late final GeneratedColumn<String> pedidoVentaAppId = GeneratedColumn<String>(
      'PEDIDO_APP_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _empresaIdMeta =
      const VerificationMeta('empresaId');
  @override
  late final GeneratedColumn<String> empresaId = GeneratedColumn<String>(
      'EMPRESA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fechaAltaMeta =
      const VerificationMeta('fechaAlta');
  @override
  late final GeneratedColumn<DateTime> fechaAlta = GeneratedColumn<DateTime>(
      'FECHA_ALTA', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _clienteIdMeta =
      const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nombreClienteMeta =
      const VerificationMeta('nombreCliente');
  @override
  late final GeneratedColumn<String> nombreCliente = GeneratedColumn<String>(
      'NOMBRE_CLIENTE', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _direccionIdMeta =
      const VerificationMeta('direccionId');
  @override
  late final GeneratedColumn<String> direccionId = GeneratedColumn<String>(
      'DIRECCION_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _direccion1Meta =
      const VerificationMeta('direccion1');
  @override
  late final GeneratedColumn<String> direccion1 = GeneratedColumn<String>(
      'DIRECCION1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _direccion2Meta =
      const VerificationMeta('direccion2');
  @override
  late final GeneratedColumn<String> direccion2 = GeneratedColumn<String>(
      'DIRECCION2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _codigoPostalMeta =
      const VerificationMeta('codigoPostal');
  @override
  late final GeneratedColumn<String> codigoPostal = GeneratedColumn<String>(
      'CODIGO_POSTAL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _poblacionMeta =
      const VerificationMeta('poblacion');
  @override
  late final GeneratedColumn<String> poblacion = GeneratedColumn<String>(
      'POBLACION', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _provinciaMeta =
      const VerificationMeta('provincia');
  @override
  late final GeneratedColumn<String> provincia = GeneratedColumn<String>(
      'PROVINCIA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _paisIdMeta = const VerificationMeta('paisId');
  @override
  late final GeneratedColumn<String> paisId = GeneratedColumn<String>(
      'PAIS_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _divisaIdMeta =
      const VerificationMeta('divisaId');
  @override
  late final GeneratedColumn<String> divisaId = GeneratedColumn<String>(
      'DIVISA_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _pedidoClienteMeta =
      const VerificationMeta('pedidoCliente');
  @override
  late final GeneratedColumn<String> pedidoCliente = GeneratedColumn<String>(
      'PEDIDO_CLIENTE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _observacionesMeta =
      const VerificationMeta('observaciones');
  @override
  late final GeneratedColumn<String> observaciones = GeneratedColumn<String>(
      'OBSERVACIONES', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _ofertaMeta = const VerificationMeta('oferta');
  @override
  late final GeneratedColumn<String> oferta = GeneratedColumn<String>(
      'OFERTA_SN', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ofertaFechaHastaMeta =
      const VerificationMeta('ofertaFechaHasta');
  @override
  late final GeneratedColumn<DateTime> ofertaFechaHasta =
      GeneratedColumn<DateTime>('OFERTA_FECHA_HASTA', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _ivaMeta = const VerificationMeta('iva');
  @override
  late final GeneratedColumn<double> iva = GeneratedColumn<double>(
      'IVA', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _dtoBonificacionMeta =
      const VerificationMeta('dtoBonificacion');
  @override
  late final GeneratedColumn<double> dtoBonificacion = GeneratedColumn<double>(
      'DTO_BONIFICACION', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _enviadaMeta =
      const VerificationMeta('enviada');
  @override
  late final GeneratedColumn<String> enviada = GeneratedColumn<String>(
      'ENVIADA', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  static const VerificationMeta _tratadaMeta =
      const VerificationMeta('tratada');
  @override
  late final GeneratedColumn<String> tratada = GeneratedColumn<String>(
      'TRATADA', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  static const VerificationMeta _borradorMeta =
      const VerificationMeta('borrador');
  @override
  late final GeneratedColumn<String> borrador = GeneratedColumn<String>(
      'BORRADOR', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('S'));
  static const VerificationMeta _errorSyncMessageMeta =
      const VerificationMeta('errorSyncMessage');
  @override
  late final GeneratedColumn<String> errorSyncMessage = GeneratedColumn<String>(
      'ERROR_SYNC', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        usuarioId,
        pedidoVentaAppId,
        empresaId,
        fechaAlta,
        clienteId,
        nombreCliente,
        direccionId,
        direccion1,
        direccion2,
        codigoPostal,
        poblacion,
        provincia,
        paisId,
        divisaId,
        pedidoCliente,
        observaciones,
        oferta,
        ofertaFechaHasta,
        iva,
        dtoBonificacion,
        enviada,
        tratada,
        borrador,
        errorSyncMessage
      ];
  @override
  String get aliasedName => _alias ?? 'PEDIDOS_LOCAL_IMP';
  @override
  String get actualTableName => 'PEDIDOS_LOCAL_IMP';
  @override
  VerificationContext validateIntegrity(
      Insertable<PedidoVentaLocalDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('USUARIO_ID')) {
      context.handle(_usuarioIdMeta,
          usuarioId.isAcceptableOrUnknown(data['USUARIO_ID']!, _usuarioIdMeta));
    }
    if (data.containsKey('PEDIDO_APP_ID')) {
      context.handle(
          _pedidoVentaAppIdMeta,
          pedidoVentaAppId.isAcceptableOrUnknown(
              data['PEDIDO_APP_ID']!, _pedidoVentaAppIdMeta));
    } else if (isInserting) {
      context.missing(_pedidoVentaAppIdMeta);
    }
    if (data.containsKey('EMPRESA_ID')) {
      context.handle(_empresaIdMeta,
          empresaId.isAcceptableOrUnknown(data['EMPRESA_ID']!, _empresaIdMeta));
    } else if (isInserting) {
      context.missing(_empresaIdMeta);
    }
    if (data.containsKey('FECHA_ALTA')) {
      context.handle(_fechaAltaMeta,
          fechaAlta.isAcceptableOrUnknown(data['FECHA_ALTA']!, _fechaAltaMeta));
    } else if (isInserting) {
      context.missing(_fechaAltaMeta);
    }
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('NOMBRE_CLIENTE')) {
      context.handle(
          _nombreClienteMeta,
          nombreCliente.isAcceptableOrUnknown(
              data['NOMBRE_CLIENTE']!, _nombreClienteMeta));
    } else if (isInserting) {
      context.missing(_nombreClienteMeta);
    }
    if (data.containsKey('DIRECCION_ID')) {
      context.handle(
          _direccionIdMeta,
          direccionId.isAcceptableOrUnknown(
              data['DIRECCION_ID']!, _direccionIdMeta));
    }
    if (data.containsKey('DIRECCION1')) {
      context.handle(
          _direccion1Meta,
          direccion1.isAcceptableOrUnknown(
              data['DIRECCION1']!, _direccion1Meta));
    }
    if (data.containsKey('DIRECCION2')) {
      context.handle(
          _direccion2Meta,
          direccion2.isAcceptableOrUnknown(
              data['DIRECCION2']!, _direccion2Meta));
    }
    if (data.containsKey('CODIGO_POSTAL')) {
      context.handle(
          _codigoPostalMeta,
          codigoPostal.isAcceptableOrUnknown(
              data['CODIGO_POSTAL']!, _codigoPostalMeta));
    }
    if (data.containsKey('POBLACION')) {
      context.handle(_poblacionMeta,
          poblacion.isAcceptableOrUnknown(data['POBLACION']!, _poblacionMeta));
    }
    if (data.containsKey('PROVINCIA')) {
      context.handle(_provinciaMeta,
          provincia.isAcceptableOrUnknown(data['PROVINCIA']!, _provinciaMeta));
    }
    if (data.containsKey('PAIS_ID')) {
      context.handle(_paisIdMeta,
          paisId.isAcceptableOrUnknown(data['PAIS_ID']!, _paisIdMeta));
    }
    if (data.containsKey('DIVISA_ID')) {
      context.handle(_divisaIdMeta,
          divisaId.isAcceptableOrUnknown(data['DIVISA_ID']!, _divisaIdMeta));
    }
    if (data.containsKey('PEDIDO_CLIENTE')) {
      context.handle(
          _pedidoClienteMeta,
          pedidoCliente.isAcceptableOrUnknown(
              data['PEDIDO_CLIENTE']!, _pedidoClienteMeta));
    }
    if (data.containsKey('OBSERVACIONES')) {
      context.handle(
          _observacionesMeta,
          observaciones.isAcceptableOrUnknown(
              data['OBSERVACIONES']!, _observacionesMeta));
    }
    if (data.containsKey('OFERTA_SN')) {
      context.handle(_ofertaMeta,
          oferta.isAcceptableOrUnknown(data['OFERTA_SN']!, _ofertaMeta));
    } else if (isInserting) {
      context.missing(_ofertaMeta);
    }
    if (data.containsKey('OFERTA_FECHA_HASTA')) {
      context.handle(
          _ofertaFechaHastaMeta,
          ofertaFechaHasta.isAcceptableOrUnknown(
              data['OFERTA_FECHA_HASTA']!, _ofertaFechaHastaMeta));
    }
    if (data.containsKey('IVA')) {
      context.handle(
          _ivaMeta, iva.isAcceptableOrUnknown(data['IVA']!, _ivaMeta));
    } else if (isInserting) {
      context.missing(_ivaMeta);
    }
    if (data.containsKey('DTO_BONIFICACION')) {
      context.handle(
          _dtoBonificacionMeta,
          dtoBonificacion.isAcceptableOrUnknown(
              data['DTO_BONIFICACION']!, _dtoBonificacionMeta));
    } else if (isInserting) {
      context.missing(_dtoBonificacionMeta);
    }
    if (data.containsKey('ENVIADA')) {
      context.handle(_enviadaMeta,
          enviada.isAcceptableOrUnknown(data['ENVIADA']!, _enviadaMeta));
    }
    if (data.containsKey('TRATADA')) {
      context.handle(_tratadaMeta,
          tratada.isAcceptableOrUnknown(data['TRATADA']!, _tratadaMeta));
    }
    if (data.containsKey('BORRADOR')) {
      context.handle(_borradorMeta,
          borrador.isAcceptableOrUnknown(data['BORRADOR']!, _borradorMeta));
    }
    if (data.containsKey('ERROR_SYNC')) {
      context.handle(
          _errorSyncMessageMeta,
          errorSyncMessage.isAcceptableOrUnknown(
              data['ERROR_SYNC']!, _errorSyncMessageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pedidoVentaAppId};
  @override
  PedidoVentaLocalDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PedidoVentaLocalDTO(
      usuarioId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}USUARIO_ID']),
      pedidoVentaAppId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}PEDIDO_APP_ID'])!,
      empresaId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}EMPRESA_ID'])!,
      clienteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      nombreCliente: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}NOMBRE_CLIENTE'])!,
      direccionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DIRECCION_ID']),
      direccion1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DIRECCION1']),
      direccion2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DIRECCION2']),
      codigoPostal: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CODIGO_POSTAL']),
      poblacion: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}POBLACION']),
      provincia: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}PROVINCIA']),
      paisId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}PAIS_ID']),
      divisaId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DIVISA_ID']),
      pedidoCliente: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}PEDIDO_CLIENTE']),
      observaciones: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}OBSERVACIONES']),
      oferta: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}OFERTA_SN'])!,
      ofertaFechaHasta: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}OFERTA_FECHA_HASTA']),
      fechaAlta: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA_ALTA'])!,
      iva: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}IVA'])!,
      dtoBonificacion: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}DTO_BONIFICACION'])!,
      enviada: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ENVIADA'])!,
      tratada: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}TRATADA'])!,
      borrador: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}BORRADOR'])!,
      errorSyncMessage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ERROR_SYNC']),
    );
  }

  @override
  $PedidoVentaLocalTableTable createAlias(String alias) {
    return $PedidoVentaLocalTableTable(attachedDatabase, alias);
  }
}

abstract class _$LocalAppDatabase extends GeneratedDatabase {
  _$LocalAppDatabase(QueryExecutor e) : super(e);
  _$LocalAppDatabase.connect(DatabaseConnection c) : super.connect(c);
  late final $VisitaLocalTableTable visitaLocalTable =
      $VisitaLocalTableTable(this);
  late final $PedidoVentaLineaLocalTableTable pedidoVentaLineaLocalTable =
      $PedidoVentaLineaLocalTableTable(this);
  late final $PedidoVentaLocalTableTable pedidoVentaLocalTable =
      $PedidoVentaLocalTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [visitaLocalTable, pedidoVentaLineaLocalTable, pedidoVentaLocalTable];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}
