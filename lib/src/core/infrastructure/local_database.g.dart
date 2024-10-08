// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_database.dart';

// ignore_for_file: type=lint
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
  static const VerificationMeta _clienteProvisionalDireccion1Meta =
      const VerificationMeta('clienteProvisionalDireccion1');
  @override
  late final GeneratedColumn<String> clienteProvisionalDireccion1 =
      GeneratedColumn<String>('CLIENTE_POTENCIAL_DIRECCION1', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _clienteProvisionalDireccion2Meta =
      const VerificationMeta('clienteProvisionalDireccion2');
  @override
  late final GeneratedColumn<String> clienteProvisionalDireccion2 =
      GeneratedColumn<String>('CLIENTE_POTENCIAL_DIRECCION2', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _clienteProvisionalCodigoPostalMeta =
      const VerificationMeta('clienteProvisionalCodigoPostal');
  @override
  late final GeneratedColumn<String> clienteProvisionalCodigoPostal =
      GeneratedColumn<String>('CLIENTE_POTENCIAL_COD_POS', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _clienteProvisionalPoblacionMeta =
      const VerificationMeta('clienteProvisionalPoblacion');
  @override
  late final GeneratedColumn<String> clienteProvisionalPoblacion =
      GeneratedColumn<String>('CLIENTE_POTENCIAL_POBLACION', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _clienteProvisionalProvinciaIdMeta =
      const VerificationMeta('clienteProvisionalProvinciaId');
  @override
  late final GeneratedColumn<String> clienteProvisionalProvinciaId =
      GeneratedColumn<String>(
          'CLIENTE_POTENCIAL_PROVINCIA_ID', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _clienteProvisionalRegionIdMeta =
      const VerificationMeta('clienteProvisionalRegionId');
  @override
  late final GeneratedColumn<String> clienteProvisionalRegionId =
      GeneratedColumn<String>('CLIENTE_POTENCIAL_REGION_ID', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _clienteProvisionalPaisIdMeta =
      const VerificationMeta('clienteProvisionalPaisId');
  @override
  late final GeneratedColumn<String> clienteProvisionalPaisId =
      GeneratedColumn<String>('CLIENTE_POTENCIAL_PAIS_ID', aliasedName, true,
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
  static const VerificationMeta _ofertaRealizadaMeta =
      const VerificationMeta('ofertaRealizada');
  @override
  late final GeneratedColumn<String> ofertaRealizada = GeneratedColumn<String>(
      'OFERTA_REALIZADA', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  static const VerificationMeta _interesClienteMeta =
      const VerificationMeta('interesCliente');
  @override
  late final GeneratedColumn<String> interesCliente = GeneratedColumn<String>(
      'INTERES_CLIENTE', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  static const VerificationMeta _pedidoRealizadoMeta =
      const VerificationMeta('pedidoRealizado');
  @override
  late final GeneratedColumn<String> pedidoRealizado = GeneratedColumn<String>(
      'PEDIDO_REALIZADO', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  static const VerificationMeta _codigoMotivoNoInteresMeta =
      const VerificationMeta('codigoMotivoNoInteres');
  @override
  late final GeneratedColumn<int> codigoMotivoNoInteres = GeneratedColumn<int>(
      'CODIGO_MOTIVO_NO_INTERES', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _codigoMotivoNoPedidoMeta =
      const VerificationMeta('codigoMotivoNoPedido');
  @override
  late final GeneratedColumn<int> codigoMotivoNoPedido = GeneratedColumn<int>(
      'CODIGO_MOTIVO_NO_PEDIDO', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _codigoSectorMeta =
      const VerificationMeta('codigoSector');
  @override
  late final GeneratedColumn<int> codigoSector = GeneratedColumn<int>(
      'CODIGO_SECTOR', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _codigoCompetenciaMeta =
      const VerificationMeta('codigoCompetencia');
  @override
  late final GeneratedColumn<int> codigoCompetencia = GeneratedColumn<int>(
      'CODIGO_COMPETENCIA', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _almacenPropioMeta =
      const VerificationMeta('almacenPropio');
  @override
  late final GeneratedColumn<String> almacenPropio = GeneratedColumn<String>(
      'ALMACEN_PROPIO', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  static const VerificationMeta _capacidadMeta =
      const VerificationMeta('capacidad');
  @override
  late final GeneratedColumn<String> capacidad = GeneratedColumn<String>(
      'CAPACIDAD', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('M'));
  static const VerificationMeta _frecuenciaPedidoMeta =
      const VerificationMeta('frecuenciaPedido');
  @override
  late final GeneratedColumn<String> frecuenciaPedido = GeneratedColumn<String>(
      'FRECUENCIA_PEDIDO', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('M'));
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
        clienteProvisionalDireccion1,
        clienteProvisionalDireccion2,
        clienteProvisionalCodigoPostal,
        clienteProvisionalPoblacion,
        clienteProvisionalProvinciaId,
        clienteProvisionalRegionId,
        clienteProvisionalPaisId,
        fecha,
        numEmpl,
        contacto,
        atendidoPor,
        resumen,
        marcasCompetencia,
        ofertaRealizada,
        interesCliente,
        pedidoRealizado,
        codigoMotivoNoInteres,
        codigoMotivoNoPedido,
        codigoSector,
        codigoCompetencia,
        almacenPropio,
        capacidad,
        frecuenciaPedido,
        latitud,
        longitud,
        enviada,
        tratada,
        errorSyncMessage
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'VISITAS_LOCAL_IMP';
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
    if (data.containsKey('CLIENTE_POTENCIAL_DIRECCION1')) {
      context.handle(
          _clienteProvisionalDireccion1Meta,
          clienteProvisionalDireccion1.isAcceptableOrUnknown(
              data['CLIENTE_POTENCIAL_DIRECCION1']!,
              _clienteProvisionalDireccion1Meta));
    }
    if (data.containsKey('CLIENTE_POTENCIAL_DIRECCION2')) {
      context.handle(
          _clienteProvisionalDireccion2Meta,
          clienteProvisionalDireccion2.isAcceptableOrUnknown(
              data['CLIENTE_POTENCIAL_DIRECCION2']!,
              _clienteProvisionalDireccion2Meta));
    }
    if (data.containsKey('CLIENTE_POTENCIAL_COD_POS')) {
      context.handle(
          _clienteProvisionalCodigoPostalMeta,
          clienteProvisionalCodigoPostal.isAcceptableOrUnknown(
              data['CLIENTE_POTENCIAL_COD_POS']!,
              _clienteProvisionalCodigoPostalMeta));
    }
    if (data.containsKey('CLIENTE_POTENCIAL_POBLACION')) {
      context.handle(
          _clienteProvisionalPoblacionMeta,
          clienteProvisionalPoblacion.isAcceptableOrUnknown(
              data['CLIENTE_POTENCIAL_POBLACION']!,
              _clienteProvisionalPoblacionMeta));
    }
    if (data.containsKey('CLIENTE_POTENCIAL_PROVINCIA_ID')) {
      context.handle(
          _clienteProvisionalProvinciaIdMeta,
          clienteProvisionalProvinciaId.isAcceptableOrUnknown(
              data['CLIENTE_POTENCIAL_PROVINCIA_ID']!,
              _clienteProvisionalProvinciaIdMeta));
    }
    if (data.containsKey('CLIENTE_POTENCIAL_REGION_ID')) {
      context.handle(
          _clienteProvisionalRegionIdMeta,
          clienteProvisionalRegionId.isAcceptableOrUnknown(
              data['CLIENTE_POTENCIAL_REGION_ID']!,
              _clienteProvisionalRegionIdMeta));
    }
    if (data.containsKey('CLIENTE_POTENCIAL_PAIS_ID')) {
      context.handle(
          _clienteProvisionalPaisIdMeta,
          clienteProvisionalPaisId.isAcceptableOrUnknown(
              data['CLIENTE_POTENCIAL_PAIS_ID']!,
              _clienteProvisionalPaisIdMeta));
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
    if (data.containsKey('OFERTA_REALIZADA')) {
      context.handle(
          _ofertaRealizadaMeta,
          ofertaRealizada.isAcceptableOrUnknown(
              data['OFERTA_REALIZADA']!, _ofertaRealizadaMeta));
    }
    if (data.containsKey('INTERES_CLIENTE')) {
      context.handle(
          _interesClienteMeta,
          interesCliente.isAcceptableOrUnknown(
              data['INTERES_CLIENTE']!, _interesClienteMeta));
    }
    if (data.containsKey('PEDIDO_REALIZADO')) {
      context.handle(
          _pedidoRealizadoMeta,
          pedidoRealizado.isAcceptableOrUnknown(
              data['PEDIDO_REALIZADO']!, _pedidoRealizadoMeta));
    }
    if (data.containsKey('CODIGO_MOTIVO_NO_INTERES')) {
      context.handle(
          _codigoMotivoNoInteresMeta,
          codigoMotivoNoInteres.isAcceptableOrUnknown(
              data['CODIGO_MOTIVO_NO_INTERES']!, _codigoMotivoNoInteresMeta));
    }
    if (data.containsKey('CODIGO_MOTIVO_NO_PEDIDO')) {
      context.handle(
          _codigoMotivoNoPedidoMeta,
          codigoMotivoNoPedido.isAcceptableOrUnknown(
              data['CODIGO_MOTIVO_NO_PEDIDO']!, _codigoMotivoNoPedidoMeta));
    }
    if (data.containsKey('CODIGO_SECTOR')) {
      context.handle(
          _codigoSectorMeta,
          codigoSector.isAcceptableOrUnknown(
              data['CODIGO_SECTOR']!, _codigoSectorMeta));
    }
    if (data.containsKey('CODIGO_COMPETENCIA')) {
      context.handle(
          _codigoCompetenciaMeta,
          codigoCompetencia.isAcceptableOrUnknown(
              data['CODIGO_COMPETENCIA']!, _codigoCompetenciaMeta));
    }
    if (data.containsKey('ALMACEN_PROPIO')) {
      context.handle(
          _almacenPropioMeta,
          almacenPropio.isAcceptableOrUnknown(
              data['ALMACEN_PROPIO']!, _almacenPropioMeta));
    }
    if (data.containsKey('CAPACIDAD')) {
      context.handle(_capacidadMeta,
          capacidad.isAcceptableOrUnknown(data['CAPACIDAD']!, _capacidadMeta));
    }
    if (data.containsKey('FRECUENCIA_PEDIDO')) {
      context.handle(
          _frecuenciaPedidoMeta,
          frecuenciaPedido.isAcceptableOrUnknown(
              data['FRECUENCIA_PEDIDO']!, _frecuenciaPedidoMeta));
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
      clienteProvisionalDireccion1: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}CLIENTE_POTENCIAL_DIRECCION1']),
      clienteProvisionalDireccion2: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}CLIENTE_POTENCIAL_DIRECCION2']),
      clienteProvisionalCodigoPostal: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}CLIENTE_POTENCIAL_COD_POS']),
      clienteProvisionalPoblacion: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}CLIENTE_POTENCIAL_POBLACION']),
      clienteProvisionalProvinciaId: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}CLIENTE_POTENCIAL_PROVINCIA_ID']),
      clienteProvisionalRegionId: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}CLIENTE_POTENCIAL_REGION_ID']),
      clienteProvisionalPaisId: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}CLIENTE_POTENCIAL_PAIS_ID']),
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
      ofertaRealizada: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}OFERTA_REALIZADA'])!,
      interesCliente: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}INTERES_CLIENTE'])!,
      pedidoRealizado: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}PEDIDO_REALIZADO'])!,
      codigoMotivoNoInteres: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}CODIGO_MOTIVO_NO_INTERES']),
      codigoMotivoNoPedido: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}CODIGO_MOTIVO_NO_PEDIDO']),
      codigoSector: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}CODIGO_SECTOR']),
      codigoCompetencia: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}CODIGO_COMPETENCIA']),
      almacenPropio: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ALMACEN_PROPIO'])!,
      capacidad: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CAPACIDAD'])!,
      frecuenciaPedido: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}FRECUENCIA_PEDIDO'])!,
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

class VisitaLocalTableCompanion extends UpdateCompanion<VisitaLocalDTO> {
  final Value<String> visitaAppId;
  final Value<String?> clienteId;
  final Value<String> isClienteProvisional;
  final Value<String?> clienteProvisionalNombre;
  final Value<String?> clienteProvisionalEmail;
  final Value<String?> clienteProvisionalTelefono;
  final Value<String?> clienteProvisionalDireccion1;
  final Value<String?> clienteProvisionalDireccion2;
  final Value<String?> clienteProvisionalCodigoPostal;
  final Value<String?> clienteProvisionalPoblacion;
  final Value<String?> clienteProvisionalProvinciaId;
  final Value<String?> clienteProvisionalRegionId;
  final Value<String?> clienteProvisionalPaisId;
  final Value<DateTime> fecha;
  final Value<String> numEmpl;
  final Value<String> contacto;
  final Value<String?> atendidoPor;
  final Value<String?> resumen;
  final Value<String?> marcasCompetencia;
  final Value<String> ofertaRealizada;
  final Value<String> interesCliente;
  final Value<String> pedidoRealizado;
  final Value<int?> codigoMotivoNoInteres;
  final Value<int?> codigoMotivoNoPedido;
  final Value<int?> codigoSector;
  final Value<int?> codigoCompetencia;
  final Value<String> almacenPropio;
  final Value<String> capacidad;
  final Value<String> frecuenciaPedido;
  final Value<double> latitud;
  final Value<double> longitud;
  final Value<String> enviada;
  final Value<String> tratada;
  final Value<String?> errorSyncMessage;
  final Value<int> rowid;
  const VisitaLocalTableCompanion({
    this.visitaAppId = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.isClienteProvisional = const Value.absent(),
    this.clienteProvisionalNombre = const Value.absent(),
    this.clienteProvisionalEmail = const Value.absent(),
    this.clienteProvisionalTelefono = const Value.absent(),
    this.clienteProvisionalDireccion1 = const Value.absent(),
    this.clienteProvisionalDireccion2 = const Value.absent(),
    this.clienteProvisionalCodigoPostal = const Value.absent(),
    this.clienteProvisionalPoblacion = const Value.absent(),
    this.clienteProvisionalProvinciaId = const Value.absent(),
    this.clienteProvisionalRegionId = const Value.absent(),
    this.clienteProvisionalPaisId = const Value.absent(),
    this.fecha = const Value.absent(),
    this.numEmpl = const Value.absent(),
    this.contacto = const Value.absent(),
    this.atendidoPor = const Value.absent(),
    this.resumen = const Value.absent(),
    this.marcasCompetencia = const Value.absent(),
    this.ofertaRealizada = const Value.absent(),
    this.interesCliente = const Value.absent(),
    this.pedidoRealizado = const Value.absent(),
    this.codigoMotivoNoInteres = const Value.absent(),
    this.codigoMotivoNoPedido = const Value.absent(),
    this.codigoSector = const Value.absent(),
    this.codigoCompetencia = const Value.absent(),
    this.almacenPropio = const Value.absent(),
    this.capacidad = const Value.absent(),
    this.frecuenciaPedido = const Value.absent(),
    this.latitud = const Value.absent(),
    this.longitud = const Value.absent(),
    this.enviada = const Value.absent(),
    this.tratada = const Value.absent(),
    this.errorSyncMessage = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  VisitaLocalTableCompanion.insert({
    required String visitaAppId,
    this.clienteId = const Value.absent(),
    required String isClienteProvisional,
    this.clienteProvisionalNombre = const Value.absent(),
    this.clienteProvisionalEmail = const Value.absent(),
    this.clienteProvisionalTelefono = const Value.absent(),
    this.clienteProvisionalDireccion1 = const Value.absent(),
    this.clienteProvisionalDireccion2 = const Value.absent(),
    this.clienteProvisionalCodigoPostal = const Value.absent(),
    this.clienteProvisionalPoblacion = const Value.absent(),
    this.clienteProvisionalProvinciaId = const Value.absent(),
    this.clienteProvisionalRegionId = const Value.absent(),
    this.clienteProvisionalPaisId = const Value.absent(),
    required DateTime fecha,
    required String numEmpl,
    required String contacto,
    this.atendidoPor = const Value.absent(),
    this.resumen = const Value.absent(),
    this.marcasCompetencia = const Value.absent(),
    this.ofertaRealizada = const Value.absent(),
    this.interesCliente = const Value.absent(),
    this.pedidoRealizado = const Value.absent(),
    this.codigoMotivoNoInteres = const Value.absent(),
    this.codigoMotivoNoPedido = const Value.absent(),
    this.codigoSector = const Value.absent(),
    this.codigoCompetencia = const Value.absent(),
    this.almacenPropio = const Value.absent(),
    this.capacidad = const Value.absent(),
    this.frecuenciaPedido = const Value.absent(),
    required double latitud,
    required double longitud,
    this.enviada = const Value.absent(),
    this.tratada = const Value.absent(),
    this.errorSyncMessage = const Value.absent(),
    this.rowid = const Value.absent(),
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
    Expression<String>? clienteProvisionalDireccion1,
    Expression<String>? clienteProvisionalDireccion2,
    Expression<String>? clienteProvisionalCodigoPostal,
    Expression<String>? clienteProvisionalPoblacion,
    Expression<String>? clienteProvisionalProvinciaId,
    Expression<String>? clienteProvisionalRegionId,
    Expression<String>? clienteProvisionalPaisId,
    Expression<DateTime>? fecha,
    Expression<String>? numEmpl,
    Expression<String>? contacto,
    Expression<String>? atendidoPor,
    Expression<String>? resumen,
    Expression<String>? marcasCompetencia,
    Expression<String>? ofertaRealizada,
    Expression<String>? interesCliente,
    Expression<String>? pedidoRealizado,
    Expression<int>? codigoMotivoNoInteres,
    Expression<int>? codigoMotivoNoPedido,
    Expression<int>? codigoSector,
    Expression<int>? codigoCompetencia,
    Expression<String>? almacenPropio,
    Expression<String>? capacidad,
    Expression<String>? frecuenciaPedido,
    Expression<double>? latitud,
    Expression<double>? longitud,
    Expression<String>? enviada,
    Expression<String>? tratada,
    Expression<String>? errorSyncMessage,
    Expression<int>? rowid,
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
      if (clienteProvisionalDireccion1 != null)
        'CLIENTE_POTENCIAL_DIRECCION1': clienteProvisionalDireccion1,
      if (clienteProvisionalDireccion2 != null)
        'CLIENTE_POTENCIAL_DIRECCION2': clienteProvisionalDireccion2,
      if (clienteProvisionalCodigoPostal != null)
        'CLIENTE_POTENCIAL_COD_POS': clienteProvisionalCodigoPostal,
      if (clienteProvisionalPoblacion != null)
        'CLIENTE_POTENCIAL_POBLACION': clienteProvisionalPoblacion,
      if (clienteProvisionalProvinciaId != null)
        'CLIENTE_POTENCIAL_PROVINCIA_ID': clienteProvisionalProvinciaId,
      if (clienteProvisionalRegionId != null)
        'CLIENTE_POTENCIAL_REGION_ID': clienteProvisionalRegionId,
      if (clienteProvisionalPaisId != null)
        'CLIENTE_POTENCIAL_PAIS_ID': clienteProvisionalPaisId,
      if (fecha != null) 'FECHA': fecha,
      if (numEmpl != null) 'NUM_EMPL': numEmpl,
      if (contacto != null) 'CONTACTO': contacto,
      if (atendidoPor != null) 'ATENDIDO_POR': atendidoPor,
      if (resumen != null) 'RESUMEN': resumen,
      if (marcasCompetencia != null) 'MARCAS_COMPETENCIA': marcasCompetencia,
      if (ofertaRealizada != null) 'OFERTA_REALIZADA': ofertaRealizada,
      if (interesCliente != null) 'INTERES_CLIENTE': interesCliente,
      if (pedidoRealizado != null) 'PEDIDO_REALIZADO': pedidoRealizado,
      if (codigoMotivoNoInteres != null)
        'CODIGO_MOTIVO_NO_INTERES': codigoMotivoNoInteres,
      if (codigoMotivoNoPedido != null)
        'CODIGO_MOTIVO_NO_PEDIDO': codigoMotivoNoPedido,
      if (codigoSector != null) 'CODIGO_SECTOR': codigoSector,
      if (codigoCompetencia != null) 'CODIGO_COMPETENCIA': codigoCompetencia,
      if (almacenPropio != null) 'ALMACEN_PROPIO': almacenPropio,
      if (capacidad != null) 'CAPACIDAD': capacidad,
      if (frecuenciaPedido != null) 'FRECUENCIA_PEDIDO': frecuenciaPedido,
      if (latitud != null) 'LATITUD': latitud,
      if (longitud != null) 'LONGITUD': longitud,
      if (enviada != null) 'ENVIADA': enviada,
      if (tratada != null) 'TRATADA': tratada,
      if (errorSyncMessage != null) 'ERROR_SYNC': errorSyncMessage,
      if (rowid != null) 'rowid': rowid,
    });
  }

  VisitaLocalTableCompanion copyWith(
      {Value<String>? visitaAppId,
      Value<String?>? clienteId,
      Value<String>? isClienteProvisional,
      Value<String?>? clienteProvisionalNombre,
      Value<String?>? clienteProvisionalEmail,
      Value<String?>? clienteProvisionalTelefono,
      Value<String?>? clienteProvisionalDireccion1,
      Value<String?>? clienteProvisionalDireccion2,
      Value<String?>? clienteProvisionalCodigoPostal,
      Value<String?>? clienteProvisionalPoblacion,
      Value<String?>? clienteProvisionalProvinciaId,
      Value<String?>? clienteProvisionalRegionId,
      Value<String?>? clienteProvisionalPaisId,
      Value<DateTime>? fecha,
      Value<String>? numEmpl,
      Value<String>? contacto,
      Value<String?>? atendidoPor,
      Value<String?>? resumen,
      Value<String?>? marcasCompetencia,
      Value<String>? ofertaRealizada,
      Value<String>? interesCliente,
      Value<String>? pedidoRealizado,
      Value<int?>? codigoMotivoNoInteres,
      Value<int?>? codigoMotivoNoPedido,
      Value<int?>? codigoSector,
      Value<int?>? codigoCompetencia,
      Value<String>? almacenPropio,
      Value<String>? capacidad,
      Value<String>? frecuenciaPedido,
      Value<double>? latitud,
      Value<double>? longitud,
      Value<String>? enviada,
      Value<String>? tratada,
      Value<String?>? errorSyncMessage,
      Value<int>? rowid}) {
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
      clienteProvisionalDireccion1:
          clienteProvisionalDireccion1 ?? this.clienteProvisionalDireccion1,
      clienteProvisionalDireccion2:
          clienteProvisionalDireccion2 ?? this.clienteProvisionalDireccion2,
      clienteProvisionalCodigoPostal:
          clienteProvisionalCodigoPostal ?? this.clienteProvisionalCodigoPostal,
      clienteProvisionalPoblacion:
          clienteProvisionalPoblacion ?? this.clienteProvisionalPoblacion,
      clienteProvisionalProvinciaId:
          clienteProvisionalProvinciaId ?? this.clienteProvisionalProvinciaId,
      clienteProvisionalRegionId:
          clienteProvisionalRegionId ?? this.clienteProvisionalRegionId,
      clienteProvisionalPaisId:
          clienteProvisionalPaisId ?? this.clienteProvisionalPaisId,
      fecha: fecha ?? this.fecha,
      numEmpl: numEmpl ?? this.numEmpl,
      contacto: contacto ?? this.contacto,
      atendidoPor: atendidoPor ?? this.atendidoPor,
      resumen: resumen ?? this.resumen,
      marcasCompetencia: marcasCompetencia ?? this.marcasCompetencia,
      ofertaRealizada: ofertaRealizada ?? this.ofertaRealizada,
      interesCliente: interesCliente ?? this.interesCliente,
      pedidoRealizado: pedidoRealizado ?? this.pedidoRealizado,
      codigoMotivoNoInteres:
          codigoMotivoNoInteres ?? this.codigoMotivoNoInteres,
      codigoMotivoNoPedido: codigoMotivoNoPedido ?? this.codigoMotivoNoPedido,
      codigoSector: codigoSector ?? this.codigoSector,
      codigoCompetencia: codigoCompetencia ?? this.codigoCompetencia,
      almacenPropio: almacenPropio ?? this.almacenPropio,
      capacidad: capacidad ?? this.capacidad,
      frecuenciaPedido: frecuenciaPedido ?? this.frecuenciaPedido,
      latitud: latitud ?? this.latitud,
      longitud: longitud ?? this.longitud,
      enviada: enviada ?? this.enviada,
      tratada: tratada ?? this.tratada,
      errorSyncMessage: errorSyncMessage ?? this.errorSyncMessage,
      rowid: rowid ?? this.rowid,
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
    if (clienteProvisionalDireccion1.present) {
      map['CLIENTE_POTENCIAL_DIRECCION1'] =
          Variable<String>(clienteProvisionalDireccion1.value);
    }
    if (clienteProvisionalDireccion2.present) {
      map['CLIENTE_POTENCIAL_DIRECCION2'] =
          Variable<String>(clienteProvisionalDireccion2.value);
    }
    if (clienteProvisionalCodigoPostal.present) {
      map['CLIENTE_POTENCIAL_COD_POS'] =
          Variable<String>(clienteProvisionalCodigoPostal.value);
    }
    if (clienteProvisionalPoblacion.present) {
      map['CLIENTE_POTENCIAL_POBLACION'] =
          Variable<String>(clienteProvisionalPoblacion.value);
    }
    if (clienteProvisionalProvinciaId.present) {
      map['CLIENTE_POTENCIAL_PROVINCIA_ID'] =
          Variable<String>(clienteProvisionalProvinciaId.value);
    }
    if (clienteProvisionalRegionId.present) {
      map['CLIENTE_POTENCIAL_REGION_ID'] =
          Variable<String>(clienteProvisionalRegionId.value);
    }
    if (clienteProvisionalPaisId.present) {
      map['CLIENTE_POTENCIAL_PAIS_ID'] =
          Variable<String>(clienteProvisionalPaisId.value);
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
    if (ofertaRealizada.present) {
      map['OFERTA_REALIZADA'] = Variable<String>(ofertaRealizada.value);
    }
    if (interesCliente.present) {
      map['INTERES_CLIENTE'] = Variable<String>(interesCliente.value);
    }
    if (pedidoRealizado.present) {
      map['PEDIDO_REALIZADO'] = Variable<String>(pedidoRealizado.value);
    }
    if (codigoMotivoNoInteres.present) {
      map['CODIGO_MOTIVO_NO_INTERES'] =
          Variable<int>(codigoMotivoNoInteres.value);
    }
    if (codigoMotivoNoPedido.present) {
      map['CODIGO_MOTIVO_NO_PEDIDO'] =
          Variable<int>(codigoMotivoNoPedido.value);
    }
    if (codigoSector.present) {
      map['CODIGO_SECTOR'] = Variable<int>(codigoSector.value);
    }
    if (codigoCompetencia.present) {
      map['CODIGO_COMPETENCIA'] = Variable<int>(codigoCompetencia.value);
    }
    if (almacenPropio.present) {
      map['ALMACEN_PROPIO'] = Variable<String>(almacenPropio.value);
    }
    if (capacidad.present) {
      map['CAPACIDAD'] = Variable<String>(capacidad.value);
    }
    if (frecuenciaPedido.present) {
      map['FRECUENCIA_PEDIDO'] = Variable<String>(frecuenciaPedido.value);
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
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
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
          ..write(
              'clienteProvisionalDireccion1: $clienteProvisionalDireccion1, ')
          ..write(
              'clienteProvisionalDireccion2: $clienteProvisionalDireccion2, ')
          ..write(
              'clienteProvisionalCodigoPostal: $clienteProvisionalCodigoPostal, ')
          ..write('clienteProvisionalPoblacion: $clienteProvisionalPoblacion, ')
          ..write(
              'clienteProvisionalProvinciaId: $clienteProvisionalProvinciaId, ')
          ..write('clienteProvisionalRegionId: $clienteProvisionalRegionId, ')
          ..write('clienteProvisionalPaisId: $clienteProvisionalPaisId, ')
          ..write('fecha: $fecha, ')
          ..write('numEmpl: $numEmpl, ')
          ..write('contacto: $contacto, ')
          ..write('atendidoPor: $atendidoPor, ')
          ..write('resumen: $resumen, ')
          ..write('marcasCompetencia: $marcasCompetencia, ')
          ..write('ofertaRealizada: $ofertaRealizada, ')
          ..write('interesCliente: $interesCliente, ')
          ..write('pedidoRealizado: $pedidoRealizado, ')
          ..write('codigoMotivoNoInteres: $codigoMotivoNoInteres, ')
          ..write('codigoMotivoNoPedido: $codigoMotivoNoPedido, ')
          ..write('codigoSector: $codigoSector, ')
          ..write('codigoCompetencia: $codigoCompetencia, ')
          ..write('almacenPropio: $almacenPropio, ')
          ..write('capacidad: $capacidad, ')
          ..write('frecuenciaPedido: $frecuenciaPedido, ')
          ..write('latitud: $latitud, ')
          ..write('longitud: $longitud, ')
          ..write('enviada: $enviada, ')
          ..write('tratada: $tratada, ')
          ..write('errorSyncMessage: $errorSyncMessage, ')
          ..write('rowid: $rowid')
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
  static const VerificationMeta _pedidoIdMeta =
      const VerificationMeta('pedidoId');
  @override
  late final GeneratedColumn<String> pedidoId = GeneratedColumn<String>(
      'PEDIDO_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _empresaIdMeta =
      const VerificationMeta('empresaId');
  @override
  late final GeneratedColumn<String> empresaId = GeneratedColumn<String>(
      'EMPRESA_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
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
  static const VerificationMeta _pedidoLineaIdComponenteMeta =
      const VerificationMeta('pedidoLineaIdComponente');
  @override
  late final GeneratedColumn<String> pedidoLineaIdComponente =
      GeneratedColumn<String>('PEDIDO_LINEA_ID_COMPONENTE', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        pedidoVentaAppId,
        pedidoId,
        empresaId,
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
        iva,
        pedidoLineaIdComponente
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'PEDIDOS_LINEAS_LOCAL_IMP';
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
    if (data.containsKey('PEDIDO_ID')) {
      context.handle(_pedidoIdMeta,
          pedidoId.isAcceptableOrUnknown(data['PEDIDO_ID']!, _pedidoIdMeta));
    }
    if (data.containsKey('EMPRESA_ID')) {
      context.handle(_empresaIdMeta,
          empresaId.isAcceptableOrUnknown(data['EMPRESA_ID']!, _empresaIdMeta));
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
    if (data.containsKey('PEDIDO_LINEA_ID_COMPONENTE')) {
      context.handle(
          _pedidoLineaIdComponenteMeta,
          pedidoLineaIdComponente.isAcceptableOrUnknown(
              data['PEDIDO_LINEA_ID_COMPONENTE']!,
              _pedidoLineaIdComponenteMeta));
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
      empresaId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}EMPRESA_ID']),
      pedidoId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}PEDIDO_ID']),
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

class PedidoVentaLineaLocalTableCompanion
    extends UpdateCompanion<PedidoVentaLineaLocalDTO> {
  final Value<String> pedidoVentaAppId;
  final Value<String?> pedidoId;
  final Value<String?> empresaId;
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
  final Value<String?> pedidoLineaIdComponente;
  final Value<int> rowid;
  const PedidoVentaLineaLocalTableCompanion({
    this.pedidoVentaAppId = const Value.absent(),
    this.pedidoId = const Value.absent(),
    this.empresaId = const Value.absent(),
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
    this.pedidoLineaIdComponente = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PedidoVentaLineaLocalTableCompanion.insert({
    required String pedidoVentaAppId,
    this.pedidoId = const Value.absent(),
    this.empresaId = const Value.absent(),
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
    this.pedidoLineaIdComponente = const Value.absent(),
    this.rowid = const Value.absent(),
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
    Expression<String>? pedidoId,
    Expression<String>? empresaId,
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
    Expression<String>? pedidoLineaIdComponente,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (pedidoVentaAppId != null) 'PEDIDO_APP_ID': pedidoVentaAppId,
      if (pedidoId != null) 'PEDIDO_ID': pedidoId,
      if (empresaId != null) 'EMPRESA_ID': empresaId,
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
      if (pedidoLineaIdComponente != null)
        'PEDIDO_LINEA_ID_COMPONENTE': pedidoLineaIdComponente,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PedidoVentaLineaLocalTableCompanion copyWith(
      {Value<String>? pedidoVentaAppId,
      Value<String?>? pedidoId,
      Value<String?>? empresaId,
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
      Value<double>? iva,
      Value<String?>? pedidoLineaIdComponente,
      Value<int>? rowid}) {
    return PedidoVentaLineaLocalTableCompanion(
      pedidoVentaAppId: pedidoVentaAppId ?? this.pedidoVentaAppId,
      pedidoId: pedidoId ?? this.pedidoId,
      empresaId: empresaId ?? this.empresaId,
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
      pedidoLineaIdComponente:
          pedidoLineaIdComponente ?? this.pedidoLineaIdComponente,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pedidoVentaAppId.present) {
      map['PEDIDO_APP_ID'] = Variable<String>(pedidoVentaAppId.value);
    }
    if (pedidoId.present) {
      map['PEDIDO_ID'] = Variable<String>(pedidoId.value);
    }
    if (empresaId.present) {
      map['EMPRESA_ID'] = Variable<String>(empresaId.value);
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
    if (pedidoLineaIdComponente.present) {
      map['PEDIDO_LINEA_ID_COMPONENTE'] =
          Variable<String>(pedidoLineaIdComponente.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PedidoVentaLineaLocalTableCompanion(')
          ..write('pedidoVentaAppId: $pedidoVentaAppId, ')
          ..write('pedidoId: $pedidoId, ')
          ..write('empresaId: $empresaId, ')
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
          ..write('iva: $iva, ')
          ..write('pedidoLineaIdComponente: $pedidoLineaIdComponente, ')
          ..write('rowid: $rowid')
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
      'EMPRESA_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _pedidoIdMeta =
      const VerificationMeta('pedidoId');
  @override
  late final GeneratedColumn<String> pedidoId = GeneratedColumn<String>(
      'PEDIDO_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
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
        pedidoId,
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
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'PEDIDOS_LOCAL_IMP';
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
    }
    if (data.containsKey('PEDIDO_ID')) {
      context.handle(_pedidoIdMeta,
          pedidoId.isAcceptableOrUnknown(data['PEDIDO_ID']!, _pedidoIdMeta));
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
      pedidoId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}PEDIDO_ID']),
      empresaId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}EMPRESA_ID']),
      pedidoVentaAppId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}PEDIDO_APP_ID'])!,
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

class PedidoVentaLocalTableCompanion
    extends UpdateCompanion<PedidoVentaLocalDTO> {
  final Value<String?> usuarioId;
  final Value<String> pedidoVentaAppId;
  final Value<String?> empresaId;
  final Value<String?> pedidoId;
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
  final Value<int> rowid;
  const PedidoVentaLocalTableCompanion({
    this.usuarioId = const Value.absent(),
    this.pedidoVentaAppId = const Value.absent(),
    this.empresaId = const Value.absent(),
    this.pedidoId = const Value.absent(),
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
    this.rowid = const Value.absent(),
  });
  PedidoVentaLocalTableCompanion.insert({
    this.usuarioId = const Value.absent(),
    required String pedidoVentaAppId,
    this.empresaId = const Value.absent(),
    this.pedidoId = const Value.absent(),
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
    this.rowid = const Value.absent(),
  })  : pedidoVentaAppId = Value(pedidoVentaAppId),
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
    Expression<String>? pedidoId,
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
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (usuarioId != null) 'USUARIO_ID': usuarioId,
      if (pedidoVentaAppId != null) 'PEDIDO_APP_ID': pedidoVentaAppId,
      if (empresaId != null) 'EMPRESA_ID': empresaId,
      if (pedidoId != null) 'PEDIDO_ID': pedidoId,
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
      if (rowid != null) 'rowid': rowid,
    });
  }

  PedidoVentaLocalTableCompanion copyWith(
      {Value<String?>? usuarioId,
      Value<String>? pedidoVentaAppId,
      Value<String?>? empresaId,
      Value<String?>? pedidoId,
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
      Value<String?>? errorSyncMessage,
      Value<int>? rowid}) {
    return PedidoVentaLocalTableCompanion(
      usuarioId: usuarioId ?? this.usuarioId,
      pedidoVentaAppId: pedidoVentaAppId ?? this.pedidoVentaAppId,
      empresaId: empresaId ?? this.empresaId,
      pedidoId: pedidoId ?? this.pedidoId,
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
      rowid: rowid ?? this.rowid,
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
    if (pedidoId.present) {
      map['PEDIDO_ID'] = Variable<String>(pedidoId.value);
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
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PedidoVentaLocalTableCompanion(')
          ..write('usuarioId: $usuarioId, ')
          ..write('pedidoVentaAppId: $pedidoVentaAppId, ')
          ..write('empresaId: $empresaId, ')
          ..write('pedidoId: $pedidoId, ')
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
          ..write('errorSyncMessage: $errorSyncMessage, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SyncDateTimeTableTable extends SyncDateTimeTable
    with TableInfo<$SyncDateTimeTableTable, SyncDateTimeDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncDateTimeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'ID', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  static const VerificationMeta _dbSchemaVersionMeta =
      const VerificationMeta('dbSchemaVersion');
  @override
  late final GeneratedColumn<int> dbSchemaVersion = GeneratedColumn<int>(
      'DB_SCHEMA_VERSION', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _articuloUltimaSyncMeta =
      const VerificationMeta('articuloUltimaSync');
  @override
  late final GeneratedColumn<DateTime> articuloUltimaSync =
      GeneratedColumn<DateTime>('ARTICULO_ULTIMA_SYNC', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _clienteUltimaSyncMeta =
      const VerificationMeta('clienteUltimaSync');
  @override
  late final GeneratedColumn<DateTime> clienteUltimaSync =
      GeneratedColumn<DateTime>('CLIENTE_ULTIMA_SYNC', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _pedidoUltimaSyncMeta =
      const VerificationMeta('pedidoUltimaSync');
  @override
  late final GeneratedColumn<DateTime> pedidoUltimaSync =
      GeneratedColumn<DateTime>('PEDIDO_ULTIMA_SYNC', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _visitaUltimaSyncMeta =
      const VerificationMeta('visitaUltimaSync');
  @override
  late final GeneratedColumn<DateTime> visitaUltimaSync =
      GeneratedColumn<DateTime>('VISITA_ULTIMA_SYNC', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        dbSchemaVersion,
        articuloUltimaSync,
        clienteUltimaSync,
        pedidoUltimaSync,
        visitaUltimaSync
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'SYNC_DATETIME';
  @override
  VerificationContext validateIntegrity(Insertable<SyncDateTimeDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ID')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['ID']!, _idMeta));
    }
    if (data.containsKey('DB_SCHEMA_VERSION')) {
      context.handle(
          _dbSchemaVersionMeta,
          dbSchemaVersion.isAcceptableOrUnknown(
              data['DB_SCHEMA_VERSION']!, _dbSchemaVersionMeta));
    } else if (isInserting) {
      context.missing(_dbSchemaVersionMeta);
    }
    if (data.containsKey('ARTICULO_ULTIMA_SYNC')) {
      context.handle(
          _articuloUltimaSyncMeta,
          articuloUltimaSync.isAcceptableOrUnknown(
              data['ARTICULO_ULTIMA_SYNC']!, _articuloUltimaSyncMeta));
    } else if (isInserting) {
      context.missing(_articuloUltimaSyncMeta);
    }
    if (data.containsKey('CLIENTE_ULTIMA_SYNC')) {
      context.handle(
          _clienteUltimaSyncMeta,
          clienteUltimaSync.isAcceptableOrUnknown(
              data['CLIENTE_ULTIMA_SYNC']!, _clienteUltimaSyncMeta));
    } else if (isInserting) {
      context.missing(_clienteUltimaSyncMeta);
    }
    if (data.containsKey('PEDIDO_ULTIMA_SYNC')) {
      context.handle(
          _pedidoUltimaSyncMeta,
          pedidoUltimaSync.isAcceptableOrUnknown(
              data['PEDIDO_ULTIMA_SYNC']!, _pedidoUltimaSyncMeta));
    } else if (isInserting) {
      context.missing(_pedidoUltimaSyncMeta);
    }
    if (data.containsKey('VISITA_ULTIMA_SYNC')) {
      context.handle(
          _visitaUltimaSyncMeta,
          visitaUltimaSync.isAcceptableOrUnknown(
              data['VISITA_ULTIMA_SYNC']!, _visitaUltimaSyncMeta));
    } else if (isInserting) {
      context.missing(_visitaUltimaSyncMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SyncDateTimeDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncDateTimeDTO(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ID'])!,
      dbSchemaVersion: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}DB_SCHEMA_VERSION'])!,
      articuloUltimaSync: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}ARTICULO_ULTIMA_SYNC'])!,
      clienteUltimaSync: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}CLIENTE_ULTIMA_SYNC'])!,
      pedidoUltimaSync: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}PEDIDO_ULTIMA_SYNC'])!,
      visitaUltimaSync: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}VISITA_ULTIMA_SYNC'])!,
    );
  }

  @override
  $SyncDateTimeTableTable createAlias(String alias) {
    return $SyncDateTimeTableTable(attachedDatabase, alias);
  }
}

class SyncDateTimeTableCompanion extends UpdateCompanion<SyncDateTimeDTO> {
  final Value<int> id;
  final Value<int> dbSchemaVersion;
  final Value<DateTime> articuloUltimaSync;
  final Value<DateTime> clienteUltimaSync;
  final Value<DateTime> pedidoUltimaSync;
  final Value<DateTime> visitaUltimaSync;
  const SyncDateTimeTableCompanion({
    this.id = const Value.absent(),
    this.dbSchemaVersion = const Value.absent(),
    this.articuloUltimaSync = const Value.absent(),
    this.clienteUltimaSync = const Value.absent(),
    this.pedidoUltimaSync = const Value.absent(),
    this.visitaUltimaSync = const Value.absent(),
  });
  SyncDateTimeTableCompanion.insert({
    this.id = const Value.absent(),
    required int dbSchemaVersion,
    required DateTime articuloUltimaSync,
    required DateTime clienteUltimaSync,
    required DateTime pedidoUltimaSync,
    required DateTime visitaUltimaSync,
  })  : dbSchemaVersion = Value(dbSchemaVersion),
        articuloUltimaSync = Value(articuloUltimaSync),
        clienteUltimaSync = Value(clienteUltimaSync),
        pedidoUltimaSync = Value(pedidoUltimaSync),
        visitaUltimaSync = Value(visitaUltimaSync);
  static Insertable<SyncDateTimeDTO> custom({
    Expression<int>? id,
    Expression<int>? dbSchemaVersion,
    Expression<DateTime>? articuloUltimaSync,
    Expression<DateTime>? clienteUltimaSync,
    Expression<DateTime>? pedidoUltimaSync,
    Expression<DateTime>? visitaUltimaSync,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ID': id,
      if (dbSchemaVersion != null) 'DB_SCHEMA_VERSION': dbSchemaVersion,
      if (articuloUltimaSync != null)
        'ARTICULO_ULTIMA_SYNC': articuloUltimaSync,
      if (clienteUltimaSync != null) 'CLIENTE_ULTIMA_SYNC': clienteUltimaSync,
      if (pedidoUltimaSync != null) 'PEDIDO_ULTIMA_SYNC': pedidoUltimaSync,
      if (visitaUltimaSync != null) 'VISITA_ULTIMA_SYNC': visitaUltimaSync,
    });
  }

  SyncDateTimeTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? dbSchemaVersion,
      Value<DateTime>? articuloUltimaSync,
      Value<DateTime>? clienteUltimaSync,
      Value<DateTime>? pedidoUltimaSync,
      Value<DateTime>? visitaUltimaSync}) {
    return SyncDateTimeTableCompanion(
      id: id ?? this.id,
      dbSchemaVersion: dbSchemaVersion ?? this.dbSchemaVersion,
      articuloUltimaSync: articuloUltimaSync ?? this.articuloUltimaSync,
      clienteUltimaSync: clienteUltimaSync ?? this.clienteUltimaSync,
      pedidoUltimaSync: pedidoUltimaSync ?? this.pedidoUltimaSync,
      visitaUltimaSync: visitaUltimaSync ?? this.visitaUltimaSync,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ID'] = Variable<int>(id.value);
    }
    if (dbSchemaVersion.present) {
      map['DB_SCHEMA_VERSION'] = Variable<int>(dbSchemaVersion.value);
    }
    if (articuloUltimaSync.present) {
      map['ARTICULO_ULTIMA_SYNC'] =
          Variable<DateTime>(articuloUltimaSync.value);
    }
    if (clienteUltimaSync.present) {
      map['CLIENTE_ULTIMA_SYNC'] = Variable<DateTime>(clienteUltimaSync.value);
    }
    if (pedidoUltimaSync.present) {
      map['PEDIDO_ULTIMA_SYNC'] = Variable<DateTime>(pedidoUltimaSync.value);
    }
    if (visitaUltimaSync.present) {
      map['VISITA_ULTIMA_SYNC'] = Variable<DateTime>(visitaUltimaSync.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncDateTimeTableCompanion(')
          ..write('id: $id, ')
          ..write('dbSchemaVersion: $dbSchemaVersion, ')
          ..write('articuloUltimaSync: $articuloUltimaSync, ')
          ..write('clienteUltimaSync: $clienteUltimaSync, ')
          ..write('pedidoUltimaSync: $pedidoUltimaSync, ')
          ..write('visitaUltimaSync: $visitaUltimaSync')
          ..write(')'))
        .toString();
  }
}

class $LogTableTable extends LogTable with TableInfo<$LogTableTable, LogDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LogTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'ID', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<String> level = GeneratedColumn<String>(
      'LOG_LEVEL', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _messageMeta =
      const VerificationMeta('message');
  @override
  late final GeneratedColumn<String> message = GeneratedColumn<String>(
      'LOG_MESSAGE', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _errorMeta = const VerificationMeta('error');
  @override
  late final GeneratedColumn<String> error = GeneratedColumn<String>(
      'LOG_ERROR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _stackTraceMeta =
      const VerificationMeta('stackTrace');
  @override
  late final GeneratedColumn<String> stackTrace = GeneratedColumn<String>(
      'LOG_STACK_TRACE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _appIdMeta = const VerificationMeta('appId');
  @override
  late final GeneratedColumn<String> appId = GeneratedColumn<String>(
      'APP_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _appBuildMeta =
      const VerificationMeta('appBuild');
  @override
  late final GeneratedColumn<String> appBuild = GeneratedColumn<String>(
      'APP_BUILD', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _appBuildNameMeta =
      const VerificationMeta('appBuildName');
  @override
  late final GeneratedColumn<String> appBuildName = GeneratedColumn<String>(
      'APP_BUILD_NAME', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _deviceMeta = const VerificationMeta('device');
  @override
  late final GeneratedColumn<String> device = GeneratedColumn<String>(
      'DEVICE', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'USER_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userEmailMeta =
      const VerificationMeta('userEmail');
  @override
  late final GeneratedColumn<String> userEmail = GeneratedColumn<String>(
      'USER_EMAIL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userNameMeta =
      const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String> userName = GeneratedColumn<String>(
      'USER_NAME', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
      'TIMESTAMP', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        level,
        message,
        error,
        stackTrace,
        appId,
        appBuild,
        appBuildName,
        device,
        userId,
        userEmail,
        userName,
        timestamp
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'LOG';
  @override
  VerificationContext validateIntegrity(Insertable<LogDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ID')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['ID']!, _idMeta));
    }
    if (data.containsKey('LOG_LEVEL')) {
      context.handle(_levelMeta,
          level.isAcceptableOrUnknown(data['LOG_LEVEL']!, _levelMeta));
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('LOG_MESSAGE')) {
      context.handle(_messageMeta,
          message.isAcceptableOrUnknown(data['LOG_MESSAGE']!, _messageMeta));
    } else if (isInserting) {
      context.missing(_messageMeta);
    }
    if (data.containsKey('LOG_ERROR')) {
      context.handle(_errorMeta,
          error.isAcceptableOrUnknown(data['LOG_ERROR']!, _errorMeta));
    }
    if (data.containsKey('LOG_STACK_TRACE')) {
      context.handle(
          _stackTraceMeta,
          stackTrace.isAcceptableOrUnknown(
              data['LOG_STACK_TRACE']!, _stackTraceMeta));
    }
    if (data.containsKey('APP_ID')) {
      context.handle(
          _appIdMeta, appId.isAcceptableOrUnknown(data['APP_ID']!, _appIdMeta));
    } else if (isInserting) {
      context.missing(_appIdMeta);
    }
    if (data.containsKey('APP_BUILD')) {
      context.handle(_appBuildMeta,
          appBuild.isAcceptableOrUnknown(data['APP_BUILD']!, _appBuildMeta));
    } else if (isInserting) {
      context.missing(_appBuildMeta);
    }
    if (data.containsKey('APP_BUILD_NAME')) {
      context.handle(
          _appBuildNameMeta,
          appBuildName.isAcceptableOrUnknown(
              data['APP_BUILD_NAME']!, _appBuildNameMeta));
    } else if (isInserting) {
      context.missing(_appBuildNameMeta);
    }
    if (data.containsKey('DEVICE')) {
      context.handle(_deviceMeta,
          device.isAcceptableOrUnknown(data['DEVICE']!, _deviceMeta));
    } else if (isInserting) {
      context.missing(_deviceMeta);
    }
    if (data.containsKey('USER_ID')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['USER_ID']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('USER_EMAIL')) {
      context.handle(_userEmailMeta,
          userEmail.isAcceptableOrUnknown(data['USER_EMAIL']!, _userEmailMeta));
    }
    if (data.containsKey('USER_NAME')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['USER_NAME']!, _userNameMeta));
    }
    if (data.containsKey('TIMESTAMP')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['TIMESTAMP']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LogDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LogDTO(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ID'])!,
      level: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}LOG_LEVEL'])!,
      message: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}LOG_MESSAGE'])!,
      error: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}LOG_ERROR']),
      appId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}APP_ID'])!,
      appBuild: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}APP_BUILD'])!,
      appBuildName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}APP_BUILD_NAME'])!,
      device: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DEVICE'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}USER_ID'])!,
      userEmail: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}USER_EMAIL']),
      userName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}USER_NAME']),
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}TIMESTAMP'])!,
    );
  }

  @override
  $LogTableTable createAlias(String alias) {
    return $LogTableTable(attachedDatabase, alias);
  }
}

class LogTableCompanion extends UpdateCompanion<LogDTO> {
  final Value<int> id;
  final Value<String> level;
  final Value<String> message;
  final Value<String?> error;
  final Value<String?> stackTrace;
  final Value<String> appId;
  final Value<String> appBuild;
  final Value<String> appBuildName;
  final Value<String> device;
  final Value<String> userId;
  final Value<String?> userEmail;
  final Value<String?> userName;
  final Value<DateTime> timestamp;
  const LogTableCompanion({
    this.id = const Value.absent(),
    this.level = const Value.absent(),
    this.message = const Value.absent(),
    this.error = const Value.absent(),
    this.stackTrace = const Value.absent(),
    this.appId = const Value.absent(),
    this.appBuild = const Value.absent(),
    this.appBuildName = const Value.absent(),
    this.device = const Value.absent(),
    this.userId = const Value.absent(),
    this.userEmail = const Value.absent(),
    this.userName = const Value.absent(),
    this.timestamp = const Value.absent(),
  });
  LogTableCompanion.insert({
    this.id = const Value.absent(),
    required String level,
    required String message,
    this.error = const Value.absent(),
    this.stackTrace = const Value.absent(),
    required String appId,
    required String appBuild,
    required String appBuildName,
    required String device,
    required String userId,
    this.userEmail = const Value.absent(),
    this.userName = const Value.absent(),
    required DateTime timestamp,
  })  : level = Value(level),
        message = Value(message),
        appId = Value(appId),
        appBuild = Value(appBuild),
        appBuildName = Value(appBuildName),
        device = Value(device),
        userId = Value(userId),
        timestamp = Value(timestamp);
  static Insertable<LogDTO> custom({
    Expression<int>? id,
    Expression<String>? level,
    Expression<String>? message,
    Expression<String>? error,
    Expression<String>? stackTrace,
    Expression<String>? appId,
    Expression<String>? appBuild,
    Expression<String>? appBuildName,
    Expression<String>? device,
    Expression<String>? userId,
    Expression<String>? userEmail,
    Expression<String>? userName,
    Expression<DateTime>? timestamp,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ID': id,
      if (level != null) 'LOG_LEVEL': level,
      if (message != null) 'LOG_MESSAGE': message,
      if (error != null) 'LOG_ERROR': error,
      if (stackTrace != null) 'LOG_STACK_TRACE': stackTrace,
      if (appId != null) 'APP_ID': appId,
      if (appBuild != null) 'APP_BUILD': appBuild,
      if (appBuildName != null) 'APP_BUILD_NAME': appBuildName,
      if (device != null) 'DEVICE': device,
      if (userId != null) 'USER_ID': userId,
      if (userEmail != null) 'USER_EMAIL': userEmail,
      if (userName != null) 'USER_NAME': userName,
      if (timestamp != null) 'TIMESTAMP': timestamp,
    });
  }

  LogTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? level,
      Value<String>? message,
      Value<String?>? error,
      Value<String?>? stackTrace,
      Value<String>? appId,
      Value<String>? appBuild,
      Value<String>? appBuildName,
      Value<String>? device,
      Value<String>? userId,
      Value<String?>? userEmail,
      Value<String?>? userName,
      Value<DateTime>? timestamp}) {
    return LogTableCompanion(
      id: id ?? this.id,
      level: level ?? this.level,
      message: message ?? this.message,
      error: error ?? this.error,
      stackTrace: stackTrace ?? this.stackTrace,
      appId: appId ?? this.appId,
      appBuild: appBuild ?? this.appBuild,
      appBuildName: appBuildName ?? this.appBuildName,
      device: device ?? this.device,
      userId: userId ?? this.userId,
      userEmail: userEmail ?? this.userEmail,
      userName: userName ?? this.userName,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ID'] = Variable<int>(id.value);
    }
    if (level.present) {
      map['LOG_LEVEL'] = Variable<String>(level.value);
    }
    if (message.present) {
      map['LOG_MESSAGE'] = Variable<String>(message.value);
    }
    if (error.present) {
      map['LOG_ERROR'] = Variable<String>(error.value);
    }
    if (stackTrace.present) {
      map['LOG_STACK_TRACE'] = Variable<String>(stackTrace.value);
    }
    if (appId.present) {
      map['APP_ID'] = Variable<String>(appId.value);
    }
    if (appBuild.present) {
      map['APP_BUILD'] = Variable<String>(appBuild.value);
    }
    if (appBuildName.present) {
      map['APP_BUILD_NAME'] = Variable<String>(appBuildName.value);
    }
    if (device.present) {
      map['DEVICE'] = Variable<String>(device.value);
    }
    if (userId.present) {
      map['USER_ID'] = Variable<String>(userId.value);
    }
    if (userEmail.present) {
      map['USER_EMAIL'] = Variable<String>(userEmail.value);
    }
    if (userName.present) {
      map['USER_NAME'] = Variable<String>(userName.value);
    }
    if (timestamp.present) {
      map['TIMESTAMP'] = Variable<DateTime>(timestamp.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LogTableCompanion(')
          ..write('id: $id, ')
          ..write('level: $level, ')
          ..write('message: $message, ')
          ..write('error: $error, ')
          ..write('stackTrace: $stackTrace, ')
          ..write('appId: $appId, ')
          ..write('appBuild: $appBuild, ')
          ..write('appBuildName: $appBuildName, ')
          ..write('device: $device, ')
          ..write('userId: $userId, ')
          ..write('userEmail: $userEmail, ')
          ..write('userName: $userName, ')
          ..write('timestamp: $timestamp')
          ..write(')'))
        .toString();
  }
}

class $CatalogoFavoritoTableTable extends CatalogoFavoritoTable
    with TableInfo<$CatalogoFavoritoTableTable, CatalogoDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CatalogoFavoritoTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _catalogoIdMeta =
      const VerificationMeta('catalogoId');
  @override
  late final GeneratedColumn<int> catalogoId = GeneratedColumn<int>(
      'CATALOGO_ID', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  @override
  late final GeneratedColumn<String> nombre = GeneratedColumn<String>(
      'NOMBRE', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idiomaIdMeta =
      const VerificationMeta('idiomaId');
  @override
  late final GeneratedColumn<String> idiomaId = GeneratedColumn<String>(
      'IDIOMA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tipoPrecioCatalogoIdMeta =
      const VerificationMeta('tipoPrecioCatalogoId');
  @override
  late final GeneratedColumn<String> tipoPrecioCatalogoId =
      GeneratedColumn<String>('TIPO_PRECIO_CATALOGO_ID', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tipoPrecioCatalogoNombreMeta =
      const VerificationMeta('tipoPrecioCatalogoNombre');
  @override
  late final GeneratedColumn<String> tipoPrecioCatalogoNombre =
      GeneratedColumn<String>('TIPO_PRECIO_CATALOGO_NOMBRE', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tipoCatalogoIdMeta =
      const VerificationMeta('tipoCatalogoId');
  @override
  late final GeneratedColumn<String> tipoCatalogoId = GeneratedColumn<String>(
      'TIPO_CATALOGO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tagBusquedaMeta =
      const VerificationMeta('tagBusqueda');
  @override
  late final GeneratedColumn<String> tagBusqueda = GeneratedColumn<String>(
      'TAG_BUSQUEDA', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ordenMeta = const VerificationMeta('orden');
  @override
  late final GeneratedColumn<int> orden = GeneratedColumn<int>(
      'ORDEN', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nombreFicheroPortadaMeta =
      const VerificationMeta('nombreFicheroPortada');
  @override
  late final GeneratedColumn<String> nombreFicheroPortada =
      GeneratedColumn<String>('NOMBRE_FICHERO_PORTADA', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nombreFicheroCatalogoMeta =
      const VerificationMeta('nombreFicheroCatalogo');
  @override
  late final GeneratedColumn<String> nombreFicheroCatalogo =
      GeneratedColumn<String>('NOMBRE_FICHERO_CATALOGO', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descargaMeta =
      const VerificationMeta('descarga');
  @override
  late final GeneratedColumn<String> descarga = GeneratedColumn<String>(
      'DESCARGA_SN', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        catalogoId,
        nombre,
        idiomaId,
        tipoPrecioCatalogoId,
        tipoPrecioCatalogoNombre,
        tipoCatalogoId,
        tagBusqueda,
        orden,
        nombreFicheroPortada,
        nombreFicheroCatalogo,
        descarga
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'CATALOGO_FAVORITO';
  @override
  VerificationContext validateIntegrity(Insertable<CatalogoDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CATALOGO_ID')) {
      context.handle(
          _catalogoIdMeta,
          catalogoId.isAcceptableOrUnknown(
              data['CATALOGO_ID']!, _catalogoIdMeta));
    }
    if (data.containsKey('NOMBRE')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['NOMBRE']!, _nombreMeta));
    } else if (isInserting) {
      context.missing(_nombreMeta);
    }
    if (data.containsKey('IDIOMA_ID')) {
      context.handle(_idiomaIdMeta,
          idiomaId.isAcceptableOrUnknown(data['IDIOMA_ID']!, _idiomaIdMeta));
    } else if (isInserting) {
      context.missing(_idiomaIdMeta);
    }
    if (data.containsKey('TIPO_PRECIO_CATALOGO_ID')) {
      context.handle(
          _tipoPrecioCatalogoIdMeta,
          tipoPrecioCatalogoId.isAcceptableOrUnknown(
              data['TIPO_PRECIO_CATALOGO_ID']!, _tipoPrecioCatalogoIdMeta));
    } else if (isInserting) {
      context.missing(_tipoPrecioCatalogoIdMeta);
    }
    if (data.containsKey('TIPO_PRECIO_CATALOGO_NOMBRE')) {
      context.handle(
          _tipoPrecioCatalogoNombreMeta,
          tipoPrecioCatalogoNombre.isAcceptableOrUnknown(
              data['TIPO_PRECIO_CATALOGO_NOMBRE']!,
              _tipoPrecioCatalogoNombreMeta));
    } else if (isInserting) {
      context.missing(_tipoPrecioCatalogoNombreMeta);
    }
    if (data.containsKey('TIPO_CATALOGO_ID')) {
      context.handle(
          _tipoCatalogoIdMeta,
          tipoCatalogoId.isAcceptableOrUnknown(
              data['TIPO_CATALOGO_ID']!, _tipoCatalogoIdMeta));
    } else if (isInserting) {
      context.missing(_tipoCatalogoIdMeta);
    }
    if (data.containsKey('TAG_BUSQUEDA')) {
      context.handle(
          _tagBusquedaMeta,
          tagBusqueda.isAcceptableOrUnknown(
              data['TAG_BUSQUEDA']!, _tagBusquedaMeta));
    } else if (isInserting) {
      context.missing(_tagBusquedaMeta);
    }
    if (data.containsKey('ORDEN')) {
      context.handle(
          _ordenMeta, orden.isAcceptableOrUnknown(data['ORDEN']!, _ordenMeta));
    } else if (isInserting) {
      context.missing(_ordenMeta);
    }
    if (data.containsKey('NOMBRE_FICHERO_PORTADA')) {
      context.handle(
          _nombreFicheroPortadaMeta,
          nombreFicheroPortada.isAcceptableOrUnknown(
              data['NOMBRE_FICHERO_PORTADA']!, _nombreFicheroPortadaMeta));
    } else if (isInserting) {
      context.missing(_nombreFicheroPortadaMeta);
    }
    if (data.containsKey('NOMBRE_FICHERO_CATALOGO')) {
      context.handle(
          _nombreFicheroCatalogoMeta,
          nombreFicheroCatalogo.isAcceptableOrUnknown(
              data['NOMBRE_FICHERO_CATALOGO']!, _nombreFicheroCatalogoMeta));
    } else if (isInserting) {
      context.missing(_nombreFicheroCatalogoMeta);
    }
    if (data.containsKey('DESCARGA_SN')) {
      context.handle(_descargaMeta,
          descarga.isAcceptableOrUnknown(data['DESCARGA_SN']!, _descargaMeta));
    } else if (isInserting) {
      context.missing(_descargaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {catalogoId};
  @override
  CatalogoDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CatalogoDTO(
      catalogoId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}CATALOGO_ID'])!,
      nombre: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}NOMBRE'])!,
      idiomaId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}IDIOMA_ID'])!,
      tipoPrecioCatalogoId: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}TIPO_PRECIO_CATALOGO_ID'])!,
      tipoPrecioCatalogoNombre: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}TIPO_PRECIO_CATALOGO_NOMBRE'])!,
      tipoCatalogoId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}TIPO_CATALOGO_ID'])!,
      tagBusqueda: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}TAG_BUSQUEDA'])!,
      orden: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ORDEN'])!,
      nombreFicheroPortada: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}NOMBRE_FICHERO_PORTADA'])!,
      nombreFicheroCatalogo: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}NOMBRE_FICHERO_CATALOGO'])!,
      descarga: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DESCARGA_SN'])!,
    );
  }

  @override
  $CatalogoFavoritoTableTable createAlias(String alias) {
    return $CatalogoFavoritoTableTable(attachedDatabase, alias);
  }
}

class CatalogoFavoritoTableCompanion extends UpdateCompanion<CatalogoDTO> {
  final Value<int> catalogoId;
  final Value<String> nombre;
  final Value<String> idiomaId;
  final Value<String> tipoPrecioCatalogoId;
  final Value<String> tipoPrecioCatalogoNombre;
  final Value<String> tipoCatalogoId;
  final Value<String> tagBusqueda;
  final Value<int> orden;
  final Value<String> nombreFicheroPortada;
  final Value<String> nombreFicheroCatalogo;
  final Value<String> descarga;
  const CatalogoFavoritoTableCompanion({
    this.catalogoId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.idiomaId = const Value.absent(),
    this.tipoPrecioCatalogoId = const Value.absent(),
    this.tipoPrecioCatalogoNombre = const Value.absent(),
    this.tipoCatalogoId = const Value.absent(),
    this.tagBusqueda = const Value.absent(),
    this.orden = const Value.absent(),
    this.nombreFicheroPortada = const Value.absent(),
    this.nombreFicheroCatalogo = const Value.absent(),
    this.descarga = const Value.absent(),
  });
  CatalogoFavoritoTableCompanion.insert({
    this.catalogoId = const Value.absent(),
    required String nombre,
    required String idiomaId,
    required String tipoPrecioCatalogoId,
    required String tipoPrecioCatalogoNombre,
    required String tipoCatalogoId,
    required String tagBusqueda,
    required int orden,
    required String nombreFicheroPortada,
    required String nombreFicheroCatalogo,
    required String descarga,
  })  : nombre = Value(nombre),
        idiomaId = Value(idiomaId),
        tipoPrecioCatalogoId = Value(tipoPrecioCatalogoId),
        tipoPrecioCatalogoNombre = Value(tipoPrecioCatalogoNombre),
        tipoCatalogoId = Value(tipoCatalogoId),
        tagBusqueda = Value(tagBusqueda),
        orden = Value(orden),
        nombreFicheroPortada = Value(nombreFicheroPortada),
        nombreFicheroCatalogo = Value(nombreFicheroCatalogo),
        descarga = Value(descarga);
  static Insertable<CatalogoDTO> custom({
    Expression<int>? catalogoId,
    Expression<String>? nombre,
    Expression<String>? idiomaId,
    Expression<String>? tipoPrecioCatalogoId,
    Expression<String>? tipoPrecioCatalogoNombre,
    Expression<String>? tipoCatalogoId,
    Expression<String>? tagBusqueda,
    Expression<int>? orden,
    Expression<String>? nombreFicheroPortada,
    Expression<String>? nombreFicheroCatalogo,
    Expression<String>? descarga,
  }) {
    return RawValuesInsertable({
      if (catalogoId != null) 'CATALOGO_ID': catalogoId,
      if (nombre != null) 'NOMBRE': nombre,
      if (idiomaId != null) 'IDIOMA_ID': idiomaId,
      if (tipoPrecioCatalogoId != null)
        'TIPO_PRECIO_CATALOGO_ID': tipoPrecioCatalogoId,
      if (tipoPrecioCatalogoNombre != null)
        'TIPO_PRECIO_CATALOGO_NOMBRE': tipoPrecioCatalogoNombre,
      if (tipoCatalogoId != null) 'TIPO_CATALOGO_ID': tipoCatalogoId,
      if (tagBusqueda != null) 'TAG_BUSQUEDA': tagBusqueda,
      if (orden != null) 'ORDEN': orden,
      if (nombreFicheroPortada != null)
        'NOMBRE_FICHERO_PORTADA': nombreFicheroPortada,
      if (nombreFicheroCatalogo != null)
        'NOMBRE_FICHERO_CATALOGO': nombreFicheroCatalogo,
      if (descarga != null) 'DESCARGA_SN': descarga,
    });
  }

  CatalogoFavoritoTableCompanion copyWith(
      {Value<int>? catalogoId,
      Value<String>? nombre,
      Value<String>? idiomaId,
      Value<String>? tipoPrecioCatalogoId,
      Value<String>? tipoPrecioCatalogoNombre,
      Value<String>? tipoCatalogoId,
      Value<String>? tagBusqueda,
      Value<int>? orden,
      Value<String>? nombreFicheroPortada,
      Value<String>? nombreFicheroCatalogo,
      Value<String>? descarga}) {
    return CatalogoFavoritoTableCompanion(
      catalogoId: catalogoId ?? this.catalogoId,
      nombre: nombre ?? this.nombre,
      idiomaId: idiomaId ?? this.idiomaId,
      tipoPrecioCatalogoId: tipoPrecioCatalogoId ?? this.tipoPrecioCatalogoId,
      tipoPrecioCatalogoNombre:
          tipoPrecioCatalogoNombre ?? this.tipoPrecioCatalogoNombre,
      tipoCatalogoId: tipoCatalogoId ?? this.tipoCatalogoId,
      tagBusqueda: tagBusqueda ?? this.tagBusqueda,
      orden: orden ?? this.orden,
      nombreFicheroPortada: nombreFicheroPortada ?? this.nombreFicheroPortada,
      nombreFicheroCatalogo:
          nombreFicheroCatalogo ?? this.nombreFicheroCatalogo,
      descarga: descarga ?? this.descarga,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (catalogoId.present) {
      map['CATALOGO_ID'] = Variable<int>(catalogoId.value);
    }
    if (nombre.present) {
      map['NOMBRE'] = Variable<String>(nombre.value);
    }
    if (idiomaId.present) {
      map['IDIOMA_ID'] = Variable<String>(idiomaId.value);
    }
    if (tipoPrecioCatalogoId.present) {
      map['TIPO_PRECIO_CATALOGO_ID'] =
          Variable<String>(tipoPrecioCatalogoId.value);
    }
    if (tipoPrecioCatalogoNombre.present) {
      map['TIPO_PRECIO_CATALOGO_NOMBRE'] =
          Variable<String>(tipoPrecioCatalogoNombre.value);
    }
    if (tipoCatalogoId.present) {
      map['TIPO_CATALOGO_ID'] = Variable<String>(tipoCatalogoId.value);
    }
    if (tagBusqueda.present) {
      map['TAG_BUSQUEDA'] = Variable<String>(tagBusqueda.value);
    }
    if (orden.present) {
      map['ORDEN'] = Variable<int>(orden.value);
    }
    if (nombreFicheroPortada.present) {
      map['NOMBRE_FICHERO_PORTADA'] =
          Variable<String>(nombreFicheroPortada.value);
    }
    if (nombreFicheroCatalogo.present) {
      map['NOMBRE_FICHERO_CATALOGO'] =
          Variable<String>(nombreFicheroCatalogo.value);
    }
    if (descarga.present) {
      map['DESCARGA_SN'] = Variable<String>(descarga.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CatalogoFavoritoTableCompanion(')
          ..write('catalogoId: $catalogoId, ')
          ..write('nombre: $nombre, ')
          ..write('idiomaId: $idiomaId, ')
          ..write('tipoPrecioCatalogoId: $tipoPrecioCatalogoId, ')
          ..write('tipoPrecioCatalogoNombre: $tipoPrecioCatalogoNombre, ')
          ..write('tipoCatalogoId: $tipoCatalogoId, ')
          ..write('tagBusqueda: $tagBusqueda, ')
          ..write('orden: $orden, ')
          ..write('nombreFicheroPortada: $nombreFicheroPortada, ')
          ..write('nombreFicheroCatalogo: $nombreFicheroCatalogo, ')
          ..write('descarga: $descarga')
          ..write(')'))
        .toString();
  }
}

class $ClienteContactoImpTableTable extends ClienteContactoImpTable
    with TableInfo<$ClienteContactoImpTableTable, ClienteContactoImpDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClienteContactoImpTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'GUID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fechaMeta = const VerificationMeta('fecha');
  @override
  late final GeneratedColumn<DateTime> fecha = GeneratedColumn<DateTime>(
      'FECHA', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _usuarioIdMeta =
      const VerificationMeta('usuarioId');
  @override
  late final GeneratedColumn<String> usuarioId = GeneratedColumn<String>(
      'USUARIO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _clienteIdMeta =
      const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contactoIdMeta =
      const VerificationMeta('contactoId');
  @override
  late final GeneratedColumn<String> contactoId = GeneratedColumn<String>(
      'CONTACTO_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _observacionesMeta =
      const VerificationMeta('observaciones');
  @override
  late final GeneratedColumn<String> observaciones = GeneratedColumn<String>(
      'OBSERVACIONES', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  @override
  late final GeneratedColumn<String> nombre = GeneratedColumn<String>(
      'NOMBRE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _apellido1Meta =
      const VerificationMeta('apellido1');
  @override
  late final GeneratedColumn<String> apellido1 = GeneratedColumn<String>(
      'APELLIDO1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _apellido2Meta =
      const VerificationMeta('apellido2');
  @override
  late final GeneratedColumn<String> apellido2 = GeneratedColumn<String>(
      'APELLIDO2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _telefono1Meta =
      const VerificationMeta('telefono1');
  @override
  late final GeneratedColumn<String> telefono1 = GeneratedColumn<String>(
      'TELEFONO1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _telefono2Meta =
      const VerificationMeta('telefono2');
  @override
  late final GeneratedColumn<String> telefono2 = GeneratedColumn<String>(
      'TELEFONO2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'EMAIL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _enviadoMeta =
      const VerificationMeta('enviado');
  @override
  late final GeneratedColumn<String> enviado = GeneratedColumn<String>(
      'ENVIADO', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  static const VerificationMeta _borrarMeta = const VerificationMeta('borrar');
  @override
  late final GeneratedColumn<String> borrar = GeneratedColumn<String>(
      'BORRAR', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        fecha,
        usuarioId,
        clienteId,
        contactoId,
        observaciones,
        nombre,
        apellido1,
        apellido2,
        telefono1,
        telefono2,
        email,
        enviado,
        borrar
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'CLIENTES_CONTACTOS_IMP';
  @override
  VerificationContext validateIntegrity(
      Insertable<ClienteContactoImpDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('GUID')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['GUID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('FECHA')) {
      context.handle(
          _fechaMeta, fecha.isAcceptableOrUnknown(data['FECHA']!, _fechaMeta));
    } else if (isInserting) {
      context.missing(_fechaMeta);
    }
    if (data.containsKey('USUARIO_ID')) {
      context.handle(_usuarioIdMeta,
          usuarioId.isAcceptableOrUnknown(data['USUARIO_ID']!, _usuarioIdMeta));
    } else if (isInserting) {
      context.missing(_usuarioIdMeta);
    }
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('CONTACTO_ID')) {
      context.handle(
          _contactoIdMeta,
          contactoId.isAcceptableOrUnknown(
              data['CONTACTO_ID']!, _contactoIdMeta));
    }
    if (data.containsKey('OBSERVACIONES')) {
      context.handle(
          _observacionesMeta,
          observaciones.isAcceptableOrUnknown(
              data['OBSERVACIONES']!, _observacionesMeta));
    }
    if (data.containsKey('NOMBRE')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['NOMBRE']!, _nombreMeta));
    }
    if (data.containsKey('APELLIDO1')) {
      context.handle(_apellido1Meta,
          apellido1.isAcceptableOrUnknown(data['APELLIDO1']!, _apellido1Meta));
    }
    if (data.containsKey('APELLIDO2')) {
      context.handle(_apellido2Meta,
          apellido2.isAcceptableOrUnknown(data['APELLIDO2']!, _apellido2Meta));
    }
    if (data.containsKey('TELEFONO1')) {
      context.handle(_telefono1Meta,
          telefono1.isAcceptableOrUnknown(data['TELEFONO1']!, _telefono1Meta));
    }
    if (data.containsKey('TELEFONO2')) {
      context.handle(_telefono2Meta,
          telefono2.isAcceptableOrUnknown(data['TELEFONO2']!, _telefono2Meta));
    }
    if (data.containsKey('EMAIL')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['EMAIL']!, _emailMeta));
    }
    if (data.containsKey('ENVIADO')) {
      context.handle(_enviadoMeta,
          enviado.isAcceptableOrUnknown(data['ENVIADO']!, _enviadoMeta));
    }
    if (data.containsKey('BORRAR')) {
      context.handle(_borrarMeta,
          borrar.isAcceptableOrUnknown(data['BORRAR']!, _borrarMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ClienteContactoImpDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteContactoImpDTO(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}GUID'])!,
      fecha: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA'])!,
      usuarioId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}USUARIO_ID'])!,
      clienteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      contactoId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CONTACTO_ID']),
      observaciones: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}OBSERVACIONES']),
      nombre: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}NOMBRE']),
      apellido1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}APELLIDO1']),
      apellido2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}APELLIDO2']),
      telefono1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}TELEFONO1']),
      telefono2: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}TELEFONO2']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}EMAIL']),
      enviado: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ENVIADO'])!,
      borrar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}BORRAR'])!,
    );
  }

  @override
  $ClienteContactoImpTableTable createAlias(String alias) {
    return $ClienteContactoImpTableTable(attachedDatabase, alias);
  }
}

class ClienteContactoImpTableCompanion
    extends UpdateCompanion<ClienteContactoImpDTO> {
  final Value<String> id;
  final Value<DateTime> fecha;
  final Value<String> usuarioId;
  final Value<String> clienteId;
  final Value<String?> contactoId;
  final Value<String?> observaciones;
  final Value<String?> nombre;
  final Value<String?> apellido1;
  final Value<String?> apellido2;
  final Value<String?> telefono1;
  final Value<String?> telefono2;
  final Value<String?> email;
  final Value<String> enviado;
  final Value<String> borrar;
  final Value<int> rowid;
  const ClienteContactoImpTableCompanion({
    this.id = const Value.absent(),
    this.fecha = const Value.absent(),
    this.usuarioId = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.contactoId = const Value.absent(),
    this.observaciones = const Value.absent(),
    this.nombre = const Value.absent(),
    this.apellido1 = const Value.absent(),
    this.apellido2 = const Value.absent(),
    this.telefono1 = const Value.absent(),
    this.telefono2 = const Value.absent(),
    this.email = const Value.absent(),
    this.enviado = const Value.absent(),
    this.borrar = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClienteContactoImpTableCompanion.insert({
    required String id,
    required DateTime fecha,
    required String usuarioId,
    required String clienteId,
    this.contactoId = const Value.absent(),
    this.observaciones = const Value.absent(),
    this.nombre = const Value.absent(),
    this.apellido1 = const Value.absent(),
    this.apellido2 = const Value.absent(),
    this.telefono1 = const Value.absent(),
    this.telefono2 = const Value.absent(),
    this.email = const Value.absent(),
    this.enviado = const Value.absent(),
    this.borrar = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        fecha = Value(fecha),
        usuarioId = Value(usuarioId),
        clienteId = Value(clienteId);
  static Insertable<ClienteContactoImpDTO> custom({
    Expression<String>? id,
    Expression<DateTime>? fecha,
    Expression<String>? usuarioId,
    Expression<String>? clienteId,
    Expression<String>? contactoId,
    Expression<String>? observaciones,
    Expression<String>? nombre,
    Expression<String>? apellido1,
    Expression<String>? apellido2,
    Expression<String>? telefono1,
    Expression<String>? telefono2,
    Expression<String>? email,
    Expression<String>? enviado,
    Expression<String>? borrar,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'GUID': id,
      if (fecha != null) 'FECHA': fecha,
      if (usuarioId != null) 'USUARIO_ID': usuarioId,
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (contactoId != null) 'CONTACTO_ID': contactoId,
      if (observaciones != null) 'OBSERVACIONES': observaciones,
      if (nombre != null) 'NOMBRE': nombre,
      if (apellido1 != null) 'APELLIDO1': apellido1,
      if (apellido2 != null) 'APELLIDO2': apellido2,
      if (telefono1 != null) 'TELEFONO1': telefono1,
      if (telefono2 != null) 'TELEFONO2': telefono2,
      if (email != null) 'EMAIL': email,
      if (enviado != null) 'ENVIADO': enviado,
      if (borrar != null) 'BORRAR': borrar,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClienteContactoImpTableCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? fecha,
      Value<String>? usuarioId,
      Value<String>? clienteId,
      Value<String?>? contactoId,
      Value<String?>? observaciones,
      Value<String?>? nombre,
      Value<String?>? apellido1,
      Value<String?>? apellido2,
      Value<String?>? telefono1,
      Value<String?>? telefono2,
      Value<String?>? email,
      Value<String>? enviado,
      Value<String>? borrar,
      Value<int>? rowid}) {
    return ClienteContactoImpTableCompanion(
      id: id ?? this.id,
      fecha: fecha ?? this.fecha,
      usuarioId: usuarioId ?? this.usuarioId,
      clienteId: clienteId ?? this.clienteId,
      contactoId: contactoId ?? this.contactoId,
      observaciones: observaciones ?? this.observaciones,
      nombre: nombre ?? this.nombre,
      apellido1: apellido1 ?? this.apellido1,
      apellido2: apellido2 ?? this.apellido2,
      telefono1: telefono1 ?? this.telefono1,
      telefono2: telefono2 ?? this.telefono2,
      email: email ?? this.email,
      enviado: enviado ?? this.enviado,
      borrar: borrar ?? this.borrar,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['GUID'] = Variable<String>(id.value);
    }
    if (fecha.present) {
      map['FECHA'] = Variable<DateTime>(fecha.value);
    }
    if (usuarioId.present) {
      map['USUARIO_ID'] = Variable<String>(usuarioId.value);
    }
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (contactoId.present) {
      map['CONTACTO_ID'] = Variable<String>(contactoId.value);
    }
    if (observaciones.present) {
      map['OBSERVACIONES'] = Variable<String>(observaciones.value);
    }
    if (nombre.present) {
      map['NOMBRE'] = Variable<String>(nombre.value);
    }
    if (apellido1.present) {
      map['APELLIDO1'] = Variable<String>(apellido1.value);
    }
    if (apellido2.present) {
      map['APELLIDO2'] = Variable<String>(apellido2.value);
    }
    if (telefono1.present) {
      map['TELEFONO1'] = Variable<String>(telefono1.value);
    }
    if (telefono2.present) {
      map['TELEFONO2'] = Variable<String>(telefono2.value);
    }
    if (email.present) {
      map['EMAIL'] = Variable<String>(email.value);
    }
    if (enviado.present) {
      map['ENVIADO'] = Variable<String>(enviado.value);
    }
    if (borrar.present) {
      map['BORRAR'] = Variable<String>(borrar.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClienteContactoImpTableCompanion(')
          ..write('id: $id, ')
          ..write('fecha: $fecha, ')
          ..write('usuarioId: $usuarioId, ')
          ..write('clienteId: $clienteId, ')
          ..write('contactoId: $contactoId, ')
          ..write('observaciones: $observaciones, ')
          ..write('nombre: $nombre, ')
          ..write('apellido1: $apellido1, ')
          ..write('apellido2: $apellido2, ')
          ..write('telefono1: $telefono1, ')
          ..write('telefono2: $telefono2, ')
          ..write('email: $email, ')
          ..write('enviado: $enviado, ')
          ..write('borrar: $borrar, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ClienteDireccionImpTableTable extends ClienteDireccionImpTable
    with TableInfo<$ClienteDireccionImpTableTable, ClienteDireccionImpDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClienteDireccionImpTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'GUID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fechaMeta = const VerificationMeta('fecha');
  @override
  late final GeneratedColumn<DateTime> fecha = GeneratedColumn<DateTime>(
      'FECHA', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _usuarioIdMeta =
      const VerificationMeta('usuarioId');
  @override
  late final GeneratedColumn<String> usuarioId = GeneratedColumn<String>(
      'USUARIO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _clienteIdMeta =
      const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _direccionIdMeta =
      const VerificationMeta('direccionId');
  @override
  late final GeneratedColumn<String> direccionId = GeneratedColumn<String>(
      'DIRECCION_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  @override
  late final GeneratedColumn<String> nombre = GeneratedColumn<String>(
      'NOMBRE', aliasedName, true,
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
  static const VerificationMeta _telefonoMeta =
      const VerificationMeta('telefono');
  @override
  late final GeneratedColumn<String> telefono = GeneratedColumn<String>(
      'TELEFONO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _enviadaMeta =
      const VerificationMeta('enviada');
  @override
  late final GeneratedColumn<String> enviada = GeneratedColumn<String>(
      'ENVIADA', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  static const VerificationMeta _borrarMeta = const VerificationMeta('borrar');
  @override
  late final GeneratedColumn<String> borrar = GeneratedColumn<String>(
      'BORRAR', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        fecha,
        usuarioId,
        clienteId,
        direccionId,
        nombre,
        direccion1,
        direccion2,
        codigoPostal,
        poblacion,
        provincia,
        paisId,
        telefono,
        enviada,
        borrar
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'CLIENTES_DIRECCIONES_ENVIO_IMP';
  @override
  VerificationContext validateIntegrity(
      Insertable<ClienteDireccionImpDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('GUID')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['GUID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('FECHA')) {
      context.handle(
          _fechaMeta, fecha.isAcceptableOrUnknown(data['FECHA']!, _fechaMeta));
    } else if (isInserting) {
      context.missing(_fechaMeta);
    }
    if (data.containsKey('USUARIO_ID')) {
      context.handle(_usuarioIdMeta,
          usuarioId.isAcceptableOrUnknown(data['USUARIO_ID']!, _usuarioIdMeta));
    } else if (isInserting) {
      context.missing(_usuarioIdMeta);
    }
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('DIRECCION_ID')) {
      context.handle(
          _direccionIdMeta,
          direccionId.isAcceptableOrUnknown(
              data['DIRECCION_ID']!, _direccionIdMeta));
    }
    if (data.containsKey('NOMBRE')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['NOMBRE']!, _nombreMeta));
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
    if (data.containsKey('TELEFONO')) {
      context.handle(_telefonoMeta,
          telefono.isAcceptableOrUnknown(data['TELEFONO']!, _telefonoMeta));
    }
    if (data.containsKey('ENVIADA')) {
      context.handle(_enviadaMeta,
          enviada.isAcceptableOrUnknown(data['ENVIADA']!, _enviadaMeta));
    }
    if (data.containsKey('BORRAR')) {
      context.handle(_borrarMeta,
          borrar.isAcceptableOrUnknown(data['BORRAR']!, _borrarMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ClienteDireccionImpDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteDireccionImpDTO(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}GUID'])!,
      fecha: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA'])!,
      usuarioId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}USUARIO_ID'])!,
      clienteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      direccionId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DIRECCION_ID']),
      nombre: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}NOMBRE']),
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
      telefono: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}TELEFONO']),
      enviada: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ENVIADA'])!,
      borrar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}BORRAR'])!,
    );
  }

  @override
  $ClienteDireccionImpTableTable createAlias(String alias) {
    return $ClienteDireccionImpTableTable(attachedDatabase, alias);
  }
}

class ClienteDireccionImpTableCompanion
    extends UpdateCompanion<ClienteDireccionImpDTO> {
  final Value<String> id;
  final Value<DateTime> fecha;
  final Value<String> usuarioId;
  final Value<String> clienteId;
  final Value<String?> direccionId;
  final Value<String?> nombre;
  final Value<String?> direccion1;
  final Value<String?> direccion2;
  final Value<String?> codigoPostal;
  final Value<String?> poblacion;
  final Value<String?> provincia;
  final Value<String?> paisId;
  final Value<String?> telefono;
  final Value<String> enviada;
  final Value<String> borrar;
  final Value<int> rowid;
  const ClienteDireccionImpTableCompanion({
    this.id = const Value.absent(),
    this.fecha = const Value.absent(),
    this.usuarioId = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.direccionId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.direccion1 = const Value.absent(),
    this.direccion2 = const Value.absent(),
    this.codigoPostal = const Value.absent(),
    this.poblacion = const Value.absent(),
    this.provincia = const Value.absent(),
    this.paisId = const Value.absent(),
    this.telefono = const Value.absent(),
    this.enviada = const Value.absent(),
    this.borrar = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClienteDireccionImpTableCompanion.insert({
    required String id,
    required DateTime fecha,
    required String usuarioId,
    required String clienteId,
    this.direccionId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.direccion1 = const Value.absent(),
    this.direccion2 = const Value.absent(),
    this.codigoPostal = const Value.absent(),
    this.poblacion = const Value.absent(),
    this.provincia = const Value.absent(),
    this.paisId = const Value.absent(),
    this.telefono = const Value.absent(),
    this.enviada = const Value.absent(),
    this.borrar = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        fecha = Value(fecha),
        usuarioId = Value(usuarioId),
        clienteId = Value(clienteId);
  static Insertable<ClienteDireccionImpDTO> custom({
    Expression<String>? id,
    Expression<DateTime>? fecha,
    Expression<String>? usuarioId,
    Expression<String>? clienteId,
    Expression<String>? direccionId,
    Expression<String>? nombre,
    Expression<String>? direccion1,
    Expression<String>? direccion2,
    Expression<String>? codigoPostal,
    Expression<String>? poblacion,
    Expression<String>? provincia,
    Expression<String>? paisId,
    Expression<String>? telefono,
    Expression<String>? enviada,
    Expression<String>? borrar,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'GUID': id,
      if (fecha != null) 'FECHA': fecha,
      if (usuarioId != null) 'USUARIO_ID': usuarioId,
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (direccionId != null) 'DIRECCION_ID': direccionId,
      if (nombre != null) 'NOMBRE': nombre,
      if (direccion1 != null) 'DIRECCION1': direccion1,
      if (direccion2 != null) 'DIRECCION2': direccion2,
      if (codigoPostal != null) 'CODIGO_POSTAL': codigoPostal,
      if (poblacion != null) 'POBLACION': poblacion,
      if (provincia != null) 'PROVINCIA': provincia,
      if (paisId != null) 'PAIS_ID': paisId,
      if (telefono != null) 'TELEFONO': telefono,
      if (enviada != null) 'ENVIADA': enviada,
      if (borrar != null) 'BORRAR': borrar,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClienteDireccionImpTableCompanion copyWith(
      {Value<String>? id,
      Value<DateTime>? fecha,
      Value<String>? usuarioId,
      Value<String>? clienteId,
      Value<String?>? direccionId,
      Value<String?>? nombre,
      Value<String?>? direccion1,
      Value<String?>? direccion2,
      Value<String?>? codigoPostal,
      Value<String?>? poblacion,
      Value<String?>? provincia,
      Value<String?>? paisId,
      Value<String?>? telefono,
      Value<String>? enviada,
      Value<String>? borrar,
      Value<int>? rowid}) {
    return ClienteDireccionImpTableCompanion(
      id: id ?? this.id,
      fecha: fecha ?? this.fecha,
      usuarioId: usuarioId ?? this.usuarioId,
      clienteId: clienteId ?? this.clienteId,
      direccionId: direccionId ?? this.direccionId,
      nombre: nombre ?? this.nombre,
      direccion1: direccion1 ?? this.direccion1,
      direccion2: direccion2 ?? this.direccion2,
      codigoPostal: codigoPostal ?? this.codigoPostal,
      poblacion: poblacion ?? this.poblacion,
      provincia: provincia ?? this.provincia,
      paisId: paisId ?? this.paisId,
      telefono: telefono ?? this.telefono,
      enviada: enviada ?? this.enviada,
      borrar: borrar ?? this.borrar,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['GUID'] = Variable<String>(id.value);
    }
    if (fecha.present) {
      map['FECHA'] = Variable<DateTime>(fecha.value);
    }
    if (usuarioId.present) {
      map['USUARIO_ID'] = Variable<String>(usuarioId.value);
    }
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (direccionId.present) {
      map['DIRECCION_ID'] = Variable<String>(direccionId.value);
    }
    if (nombre.present) {
      map['NOMBRE'] = Variable<String>(nombre.value);
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
    if (telefono.present) {
      map['TELEFONO'] = Variable<String>(telefono.value);
    }
    if (enviada.present) {
      map['ENVIADA'] = Variable<String>(enviada.value);
    }
    if (borrar.present) {
      map['BORRAR'] = Variable<String>(borrar.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClienteDireccionImpTableCompanion(')
          ..write('id: $id, ')
          ..write('fecha: $fecha, ')
          ..write('usuarioId: $usuarioId, ')
          ..write('clienteId: $clienteId, ')
          ..write('direccionId: $direccionId, ')
          ..write('nombre: $nombre, ')
          ..write('direccion1: $direccion1, ')
          ..write('direccion2: $direccion2, ')
          ..write('codigoPostal: $codigoPostal, ')
          ..write('poblacion: $poblacion, ')
          ..write('provincia: $provincia, ')
          ..write('paisId: $paisId, ')
          ..write('telefono: $telefono, ')
          ..write('enviada: $enviada, ')
          ..write('borrar: $borrar, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CatalogoOrdenTableTable extends CatalogoOrdenTable
    with TableInfo<$CatalogoOrdenTableTable, CatalogoOrdenDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CatalogoOrdenTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _catalogoIdMeta =
      const VerificationMeta('catalogoId');
  @override
  late final GeneratedColumn<int> catalogoId = GeneratedColumn<int>(
      'CATALOGO_ID', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _fechaAbiertoMeta =
      const VerificationMeta('fechaAbierto');
  @override
  late final GeneratedColumn<DateTime> fechaAbierto = GeneratedColumn<DateTime>(
      'FECHA_ABIERTO', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [catalogoId, fechaAbierto];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'CATALOGO_ORDEN';
  @override
  VerificationContext validateIntegrity(Insertable<CatalogoOrdenDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CATALOGO_ID')) {
      context.handle(
          _catalogoIdMeta,
          catalogoId.isAcceptableOrUnknown(
              data['CATALOGO_ID']!, _catalogoIdMeta));
    }
    if (data.containsKey('FECHA_ABIERTO')) {
      context.handle(
          _fechaAbiertoMeta,
          fechaAbierto.isAcceptableOrUnknown(
              data['FECHA_ABIERTO']!, _fechaAbiertoMeta));
    } else if (isInserting) {
      context.missing(_fechaAbiertoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {catalogoId};
  @override
  CatalogoOrdenDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CatalogoOrdenDTO(
      catalogoId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}CATALOGO_ID'])!,
      fechaAbierto: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}FECHA_ABIERTO'])!,
    );
  }

  @override
  $CatalogoOrdenTableTable createAlias(String alias) {
    return $CatalogoOrdenTableTable(attachedDatabase, alias);
  }
}

class CatalogoOrdenTableCompanion extends UpdateCompanion<CatalogoOrdenDTO> {
  final Value<int> catalogoId;
  final Value<DateTime> fechaAbierto;
  const CatalogoOrdenTableCompanion({
    this.catalogoId = const Value.absent(),
    this.fechaAbierto = const Value.absent(),
  });
  CatalogoOrdenTableCompanion.insert({
    this.catalogoId = const Value.absent(),
    required DateTime fechaAbierto,
  }) : fechaAbierto = Value(fechaAbierto);
  static Insertable<CatalogoOrdenDTO> custom({
    Expression<int>? catalogoId,
    Expression<DateTime>? fechaAbierto,
  }) {
    return RawValuesInsertable({
      if (catalogoId != null) 'CATALOGO_ID': catalogoId,
      if (fechaAbierto != null) 'FECHA_ABIERTO': fechaAbierto,
    });
  }

  CatalogoOrdenTableCompanion copyWith(
      {Value<int>? catalogoId, Value<DateTime>? fechaAbierto}) {
    return CatalogoOrdenTableCompanion(
      catalogoId: catalogoId ?? this.catalogoId,
      fechaAbierto: fechaAbierto ?? this.fechaAbierto,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (catalogoId.present) {
      map['CATALOGO_ID'] = Variable<int>(catalogoId.value);
    }
    if (fechaAbierto.present) {
      map['FECHA_ABIERTO'] = Variable<DateTime>(fechaAbierto.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CatalogoOrdenTableCompanion(')
          ..write('catalogoId: $catalogoId, ')
          ..write('fechaAbierto: $fechaAbierto')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalAppDatabase extends GeneratedDatabase {
  _$LocalAppDatabase(QueryExecutor e) : super(e);
  _$LocalAppDatabase.connect(DatabaseConnection c) : super.connect(c);
  $LocalAppDatabaseManager get managers => $LocalAppDatabaseManager(this);
  late final $VisitaLocalTableTable visitaLocalTable =
      $VisitaLocalTableTable(this);
  late final $PedidoVentaLineaLocalTableTable pedidoVentaLineaLocalTable =
      $PedidoVentaLineaLocalTableTable(this);
  late final $PedidoVentaLocalTableTable pedidoVentaLocalTable =
      $PedidoVentaLocalTableTable(this);
  late final $SyncDateTimeTableTable syncDateTimeTable =
      $SyncDateTimeTableTable(this);
  late final $LogTableTable logTable = $LogTableTable(this);
  late final $CatalogoFavoritoTableTable catalogoFavoritoTable =
      $CatalogoFavoritoTableTable(this);
  late final $ClienteContactoImpTableTable clienteContactoImpTable =
      $ClienteContactoImpTableTable(this);
  late final $ClienteDireccionImpTableTable clienteDireccionImpTable =
      $ClienteDireccionImpTableTable(this);
  late final $CatalogoOrdenTableTable catalogoOrdenTable =
      $CatalogoOrdenTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        visitaLocalTable,
        pedidoVentaLineaLocalTable,
        pedidoVentaLocalTable,
        syncDateTimeTable,
        logTable,
        catalogoFavoritoTable,
        clienteContactoImpTable,
        clienteDireccionImpTable,
        catalogoOrdenTable
      ];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$VisitaLocalTableTableCreateCompanionBuilder
    = VisitaLocalTableCompanion Function({
  required String visitaAppId,
  Value<String?> clienteId,
  required String isClienteProvisional,
  Value<String?> clienteProvisionalNombre,
  Value<String?> clienteProvisionalEmail,
  Value<String?> clienteProvisionalTelefono,
  Value<String?> clienteProvisionalDireccion1,
  Value<String?> clienteProvisionalDireccion2,
  Value<String?> clienteProvisionalCodigoPostal,
  Value<String?> clienteProvisionalPoblacion,
  Value<String?> clienteProvisionalProvinciaId,
  Value<String?> clienteProvisionalRegionId,
  Value<String?> clienteProvisionalPaisId,
  required DateTime fecha,
  required String numEmpl,
  required String contacto,
  Value<String?> atendidoPor,
  Value<String?> resumen,
  Value<String?> marcasCompetencia,
  Value<String> ofertaRealizada,
  Value<String> interesCliente,
  Value<String> pedidoRealizado,
  Value<int?> codigoMotivoNoInteres,
  Value<int?> codigoMotivoNoPedido,
  Value<int?> codigoSector,
  Value<int?> codigoCompetencia,
  Value<String> almacenPropio,
  Value<String> capacidad,
  Value<String> frecuenciaPedido,
  required double latitud,
  required double longitud,
  Value<String> enviada,
  Value<String> tratada,
  Value<String?> errorSyncMessage,
  Value<int> rowid,
});
typedef $$VisitaLocalTableTableUpdateCompanionBuilder
    = VisitaLocalTableCompanion Function({
  Value<String> visitaAppId,
  Value<String?> clienteId,
  Value<String> isClienteProvisional,
  Value<String?> clienteProvisionalNombre,
  Value<String?> clienteProvisionalEmail,
  Value<String?> clienteProvisionalTelefono,
  Value<String?> clienteProvisionalDireccion1,
  Value<String?> clienteProvisionalDireccion2,
  Value<String?> clienteProvisionalCodigoPostal,
  Value<String?> clienteProvisionalPoblacion,
  Value<String?> clienteProvisionalProvinciaId,
  Value<String?> clienteProvisionalRegionId,
  Value<String?> clienteProvisionalPaisId,
  Value<DateTime> fecha,
  Value<String> numEmpl,
  Value<String> contacto,
  Value<String?> atendidoPor,
  Value<String?> resumen,
  Value<String?> marcasCompetencia,
  Value<String> ofertaRealizada,
  Value<String> interesCliente,
  Value<String> pedidoRealizado,
  Value<int?> codigoMotivoNoInteres,
  Value<int?> codigoMotivoNoPedido,
  Value<int?> codigoSector,
  Value<int?> codigoCompetencia,
  Value<String> almacenPropio,
  Value<String> capacidad,
  Value<String> frecuenciaPedido,
  Value<double> latitud,
  Value<double> longitud,
  Value<String> enviada,
  Value<String> tratada,
  Value<String?> errorSyncMessage,
  Value<int> rowid,
});

class $$VisitaLocalTableTableFilterComposer
    extends FilterComposer<_$LocalAppDatabase, $VisitaLocalTableTable> {
  $$VisitaLocalTableTableFilterComposer(super.$state);
  ColumnFilters<String> get visitaAppId => $state.composableBuilder(
      column: $state.table.visitaAppId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clienteId => $state.composableBuilder(
      column: $state.table.clienteId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get isClienteProvisional => $state.composableBuilder(
      column: $state.table.isClienteProvisional,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clienteProvisionalNombre =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalNombre,
          builder: (column, joinBuilders) =>
              ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clienteProvisionalEmail => $state.composableBuilder(
      column: $state.table.clienteProvisionalEmail,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clienteProvisionalTelefono =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalTelefono,
          builder: (column, joinBuilders) =>
              ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clienteProvisionalDireccion1 =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalDireccion1,
          builder: (column, joinBuilders) =>
              ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clienteProvisionalDireccion2 =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalDireccion2,
          builder: (column, joinBuilders) =>
              ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clienteProvisionalCodigoPostal =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalCodigoPostal,
          builder: (column, joinBuilders) =>
              ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clienteProvisionalPoblacion => $state
      .composableBuilder(
          column: $state.table.clienteProvisionalPoblacion,
          builder: (column, joinBuilders) =>
              ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clienteProvisionalProvinciaId =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalProvinciaId,
          builder: (column, joinBuilders) =>
              ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clienteProvisionalRegionId =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalRegionId,
          builder: (column, joinBuilders) =>
              ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clienteProvisionalPaisId =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalPaisId,
          builder: (column, joinBuilders) =>
              ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get fecha => $state.composableBuilder(
      column: $state.table.fecha,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get numEmpl => $state.composableBuilder(
      column: $state.table.numEmpl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get contacto => $state.composableBuilder(
      column: $state.table.contacto,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get atendidoPor => $state.composableBuilder(
      column: $state.table.atendidoPor,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get resumen => $state.composableBuilder(
      column: $state.table.resumen,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get marcasCompetencia => $state.composableBuilder(
      column: $state.table.marcasCompetencia,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get ofertaRealizada => $state.composableBuilder(
      column: $state.table.ofertaRealizada,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get interesCliente => $state.composableBuilder(
      column: $state.table.interesCliente,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get pedidoRealizado => $state.composableBuilder(
      column: $state.table.pedidoRealizado,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get codigoMotivoNoInteres => $state.composableBuilder(
      column: $state.table.codigoMotivoNoInteres,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get codigoMotivoNoPedido => $state.composableBuilder(
      column: $state.table.codigoMotivoNoPedido,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get codigoSector => $state.composableBuilder(
      column: $state.table.codigoSector,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get codigoCompetencia => $state.composableBuilder(
      column: $state.table.codigoCompetencia,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get almacenPropio => $state.composableBuilder(
      column: $state.table.almacenPropio,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get capacidad => $state.composableBuilder(
      column: $state.table.capacidad,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get frecuenciaPedido => $state.composableBuilder(
      column: $state.table.frecuenciaPedido,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get latitud => $state.composableBuilder(
      column: $state.table.latitud,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get longitud => $state.composableBuilder(
      column: $state.table.longitud,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get enviada => $state.composableBuilder(
      column: $state.table.enviada,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get tratada => $state.composableBuilder(
      column: $state.table.tratada,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get errorSyncMessage => $state.composableBuilder(
      column: $state.table.errorSyncMessage,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$VisitaLocalTableTableOrderingComposer
    extends OrderingComposer<_$LocalAppDatabase, $VisitaLocalTableTable> {
  $$VisitaLocalTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get visitaAppId => $state.composableBuilder(
      column: $state.table.visitaAppId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clienteId => $state.composableBuilder(
      column: $state.table.clienteId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get isClienteProvisional => $state.composableBuilder(
      column: $state.table.isClienteProvisional,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clienteProvisionalNombre =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalNombre,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clienteProvisionalEmail =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalEmail,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clienteProvisionalTelefono =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalTelefono,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clienteProvisionalDireccion1 =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalDireccion1,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clienteProvisionalDireccion2 =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalDireccion2,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clienteProvisionalCodigoPostal =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalCodigoPostal,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clienteProvisionalPoblacion =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalPoblacion,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clienteProvisionalProvinciaId =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalProvinciaId,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clienteProvisionalRegionId =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalRegionId,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clienteProvisionalPaisId =>
      $state.composableBuilder(
          column: $state.table.clienteProvisionalPaisId,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get fecha => $state.composableBuilder(
      column: $state.table.fecha,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get numEmpl => $state.composableBuilder(
      column: $state.table.numEmpl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get contacto => $state.composableBuilder(
      column: $state.table.contacto,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get atendidoPor => $state.composableBuilder(
      column: $state.table.atendidoPor,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get resumen => $state.composableBuilder(
      column: $state.table.resumen,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get marcasCompetencia => $state.composableBuilder(
      column: $state.table.marcasCompetencia,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ofertaRealizada => $state.composableBuilder(
      column: $state.table.ofertaRealizada,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get interesCliente => $state.composableBuilder(
      column: $state.table.interesCliente,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get pedidoRealizado => $state.composableBuilder(
      column: $state.table.pedidoRealizado,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get codigoMotivoNoInteres => $state.composableBuilder(
      column: $state.table.codigoMotivoNoInteres,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get codigoMotivoNoPedido => $state.composableBuilder(
      column: $state.table.codigoMotivoNoPedido,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get codigoSector => $state.composableBuilder(
      column: $state.table.codigoSector,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get codigoCompetencia => $state.composableBuilder(
      column: $state.table.codigoCompetencia,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get almacenPropio => $state.composableBuilder(
      column: $state.table.almacenPropio,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get capacidad => $state.composableBuilder(
      column: $state.table.capacidad,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get frecuenciaPedido => $state.composableBuilder(
      column: $state.table.frecuenciaPedido,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get latitud => $state.composableBuilder(
      column: $state.table.latitud,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get longitud => $state.composableBuilder(
      column: $state.table.longitud,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get enviada => $state.composableBuilder(
      column: $state.table.enviada,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get tratada => $state.composableBuilder(
      column: $state.table.tratada,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get errorSyncMessage => $state.composableBuilder(
      column: $state.table.errorSyncMessage,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$VisitaLocalTableTableTableManager extends RootTableManager<
    _$LocalAppDatabase,
    $VisitaLocalTableTable,
    VisitaLocalDTO,
    $$VisitaLocalTableTableFilterComposer,
    $$VisitaLocalTableTableOrderingComposer,
    $$VisitaLocalTableTableCreateCompanionBuilder,
    $$VisitaLocalTableTableUpdateCompanionBuilder,
    (
      VisitaLocalDTO,
      BaseReferences<_$LocalAppDatabase, $VisitaLocalTableTable, VisitaLocalDTO>
    ),
    VisitaLocalDTO,
    PrefetchHooks Function()> {
  $$VisitaLocalTableTableTableManager(
      _$LocalAppDatabase db, $VisitaLocalTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$VisitaLocalTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$VisitaLocalTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> visitaAppId = const Value.absent(),
            Value<String?> clienteId = const Value.absent(),
            Value<String> isClienteProvisional = const Value.absent(),
            Value<String?> clienteProvisionalNombre = const Value.absent(),
            Value<String?> clienteProvisionalEmail = const Value.absent(),
            Value<String?> clienteProvisionalTelefono = const Value.absent(),
            Value<String?> clienteProvisionalDireccion1 = const Value.absent(),
            Value<String?> clienteProvisionalDireccion2 = const Value.absent(),
            Value<String?> clienteProvisionalCodigoPostal =
                const Value.absent(),
            Value<String?> clienteProvisionalPoblacion = const Value.absent(),
            Value<String?> clienteProvisionalProvinciaId = const Value.absent(),
            Value<String?> clienteProvisionalRegionId = const Value.absent(),
            Value<String?> clienteProvisionalPaisId = const Value.absent(),
            Value<DateTime> fecha = const Value.absent(),
            Value<String> numEmpl = const Value.absent(),
            Value<String> contacto = const Value.absent(),
            Value<String?> atendidoPor = const Value.absent(),
            Value<String?> resumen = const Value.absent(),
            Value<String?> marcasCompetencia = const Value.absent(),
            Value<String> ofertaRealizada = const Value.absent(),
            Value<String> interesCliente = const Value.absent(),
            Value<String> pedidoRealizado = const Value.absent(),
            Value<int?> codigoMotivoNoInteres = const Value.absent(),
            Value<int?> codigoMotivoNoPedido = const Value.absent(),
            Value<int?> codigoSector = const Value.absent(),
            Value<int?> codigoCompetencia = const Value.absent(),
            Value<String> almacenPropio = const Value.absent(),
            Value<String> capacidad = const Value.absent(),
            Value<String> frecuenciaPedido = const Value.absent(),
            Value<double> latitud = const Value.absent(),
            Value<double> longitud = const Value.absent(),
            Value<String> enviada = const Value.absent(),
            Value<String> tratada = const Value.absent(),
            Value<String?> errorSyncMessage = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              VisitaLocalTableCompanion(
            visitaAppId: visitaAppId,
            clienteId: clienteId,
            isClienteProvisional: isClienteProvisional,
            clienteProvisionalNombre: clienteProvisionalNombre,
            clienteProvisionalEmail: clienteProvisionalEmail,
            clienteProvisionalTelefono: clienteProvisionalTelefono,
            clienteProvisionalDireccion1: clienteProvisionalDireccion1,
            clienteProvisionalDireccion2: clienteProvisionalDireccion2,
            clienteProvisionalCodigoPostal: clienteProvisionalCodigoPostal,
            clienteProvisionalPoblacion: clienteProvisionalPoblacion,
            clienteProvisionalProvinciaId: clienteProvisionalProvinciaId,
            clienteProvisionalRegionId: clienteProvisionalRegionId,
            clienteProvisionalPaisId: clienteProvisionalPaisId,
            fecha: fecha,
            numEmpl: numEmpl,
            contacto: contacto,
            atendidoPor: atendidoPor,
            resumen: resumen,
            marcasCompetencia: marcasCompetencia,
            ofertaRealizada: ofertaRealizada,
            interesCliente: interesCliente,
            pedidoRealizado: pedidoRealizado,
            codigoMotivoNoInteres: codigoMotivoNoInteres,
            codigoMotivoNoPedido: codigoMotivoNoPedido,
            codigoSector: codigoSector,
            codigoCompetencia: codigoCompetencia,
            almacenPropio: almacenPropio,
            capacidad: capacidad,
            frecuenciaPedido: frecuenciaPedido,
            latitud: latitud,
            longitud: longitud,
            enviada: enviada,
            tratada: tratada,
            errorSyncMessage: errorSyncMessage,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String visitaAppId,
            Value<String?> clienteId = const Value.absent(),
            required String isClienteProvisional,
            Value<String?> clienteProvisionalNombre = const Value.absent(),
            Value<String?> clienteProvisionalEmail = const Value.absent(),
            Value<String?> clienteProvisionalTelefono = const Value.absent(),
            Value<String?> clienteProvisionalDireccion1 = const Value.absent(),
            Value<String?> clienteProvisionalDireccion2 = const Value.absent(),
            Value<String?> clienteProvisionalCodigoPostal =
                const Value.absent(),
            Value<String?> clienteProvisionalPoblacion = const Value.absent(),
            Value<String?> clienteProvisionalProvinciaId = const Value.absent(),
            Value<String?> clienteProvisionalRegionId = const Value.absent(),
            Value<String?> clienteProvisionalPaisId = const Value.absent(),
            required DateTime fecha,
            required String numEmpl,
            required String contacto,
            Value<String?> atendidoPor = const Value.absent(),
            Value<String?> resumen = const Value.absent(),
            Value<String?> marcasCompetencia = const Value.absent(),
            Value<String> ofertaRealizada = const Value.absent(),
            Value<String> interesCliente = const Value.absent(),
            Value<String> pedidoRealizado = const Value.absent(),
            Value<int?> codigoMotivoNoInteres = const Value.absent(),
            Value<int?> codigoMotivoNoPedido = const Value.absent(),
            Value<int?> codigoSector = const Value.absent(),
            Value<int?> codigoCompetencia = const Value.absent(),
            Value<String> almacenPropio = const Value.absent(),
            Value<String> capacidad = const Value.absent(),
            Value<String> frecuenciaPedido = const Value.absent(),
            required double latitud,
            required double longitud,
            Value<String> enviada = const Value.absent(),
            Value<String> tratada = const Value.absent(),
            Value<String?> errorSyncMessage = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              VisitaLocalTableCompanion.insert(
            visitaAppId: visitaAppId,
            clienteId: clienteId,
            isClienteProvisional: isClienteProvisional,
            clienteProvisionalNombre: clienteProvisionalNombre,
            clienteProvisionalEmail: clienteProvisionalEmail,
            clienteProvisionalTelefono: clienteProvisionalTelefono,
            clienteProvisionalDireccion1: clienteProvisionalDireccion1,
            clienteProvisionalDireccion2: clienteProvisionalDireccion2,
            clienteProvisionalCodigoPostal: clienteProvisionalCodigoPostal,
            clienteProvisionalPoblacion: clienteProvisionalPoblacion,
            clienteProvisionalProvinciaId: clienteProvisionalProvinciaId,
            clienteProvisionalRegionId: clienteProvisionalRegionId,
            clienteProvisionalPaisId: clienteProvisionalPaisId,
            fecha: fecha,
            numEmpl: numEmpl,
            contacto: contacto,
            atendidoPor: atendidoPor,
            resumen: resumen,
            marcasCompetencia: marcasCompetencia,
            ofertaRealizada: ofertaRealizada,
            interesCliente: interesCliente,
            pedidoRealizado: pedidoRealizado,
            codigoMotivoNoInteres: codigoMotivoNoInteres,
            codigoMotivoNoPedido: codigoMotivoNoPedido,
            codigoSector: codigoSector,
            codigoCompetencia: codigoCompetencia,
            almacenPropio: almacenPropio,
            capacidad: capacidad,
            frecuenciaPedido: frecuenciaPedido,
            latitud: latitud,
            longitud: longitud,
            enviada: enviada,
            tratada: tratada,
            errorSyncMessage: errorSyncMessage,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$VisitaLocalTableTableProcessedTableManager = ProcessedTableManager<
    _$LocalAppDatabase,
    $VisitaLocalTableTable,
    VisitaLocalDTO,
    $$VisitaLocalTableTableFilterComposer,
    $$VisitaLocalTableTableOrderingComposer,
    $$VisitaLocalTableTableCreateCompanionBuilder,
    $$VisitaLocalTableTableUpdateCompanionBuilder,
    (
      VisitaLocalDTO,
      BaseReferences<_$LocalAppDatabase, $VisitaLocalTableTable, VisitaLocalDTO>
    ),
    VisitaLocalDTO,
    PrefetchHooks Function()>;
typedef $$PedidoVentaLineaLocalTableTableCreateCompanionBuilder
    = PedidoVentaLineaLocalTableCompanion Function({
  required String pedidoVentaAppId,
  Value<String?> pedidoId,
  Value<String?> empresaId,
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
  Value<DateTime?> fechaDisponible,
  required double iva,
  Value<String?> pedidoLineaIdComponente,
  Value<int> rowid,
});
typedef $$PedidoVentaLineaLocalTableTableUpdateCompanionBuilder
    = PedidoVentaLineaLocalTableCompanion Function({
  Value<String> pedidoVentaAppId,
  Value<String?> pedidoId,
  Value<String?> empresaId,
  Value<String> pedidoVentaLineaAppId,
  Value<String> articuloId,
  Value<String> articuloDescription,
  Value<int> cantidad,
  Value<double> precioDivisa,
  Value<int> tipoPrecio,
  Value<double> descuento1,
  Value<double> descuento2,
  Value<double> descuento3,
  Value<double> descuentoProntoPago,
  Value<String> stockDisponibleSN,
  Value<DateTime?> fechaDisponible,
  Value<double> iva,
  Value<String?> pedidoLineaIdComponente,
  Value<int> rowid,
});

class $$PedidoVentaLineaLocalTableTableFilterComposer extends FilterComposer<
    _$LocalAppDatabase, $PedidoVentaLineaLocalTableTable> {
  $$PedidoVentaLineaLocalTableTableFilterComposer(super.$state);
  ColumnFilters<String> get pedidoVentaAppId => $state.composableBuilder(
      column: $state.table.pedidoVentaAppId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get pedidoId => $state.composableBuilder(
      column: $state.table.pedidoId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get empresaId => $state.composableBuilder(
      column: $state.table.empresaId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get pedidoVentaLineaAppId => $state.composableBuilder(
      column: $state.table.pedidoVentaLineaAppId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get articuloId => $state.composableBuilder(
      column: $state.table.articuloId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get articuloDescription => $state.composableBuilder(
      column: $state.table.articuloDescription,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get cantidad => $state.composableBuilder(
      column: $state.table.cantidad,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get precioDivisa => $state.composableBuilder(
      column: $state.table.precioDivisa,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get tipoPrecio => $state.composableBuilder(
      column: $state.table.tipoPrecio,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get descuento1 => $state.composableBuilder(
      column: $state.table.descuento1,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get descuento2 => $state.composableBuilder(
      column: $state.table.descuento2,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get descuento3 => $state.composableBuilder(
      column: $state.table.descuento3,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get descuentoProntoPago => $state.composableBuilder(
      column: $state.table.descuentoProntoPago,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get stockDisponibleSN => $state.composableBuilder(
      column: $state.table.stockDisponibleSN,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get fechaDisponible => $state.composableBuilder(
      column: $state.table.fechaDisponible,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get iva => $state.composableBuilder(
      column: $state.table.iva,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get pedidoLineaIdComponente => $state.composableBuilder(
      column: $state.table.pedidoLineaIdComponente,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$PedidoVentaLineaLocalTableTableOrderingComposer
    extends OrderingComposer<_$LocalAppDatabase,
        $PedidoVentaLineaLocalTableTable> {
  $$PedidoVentaLineaLocalTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get pedidoVentaAppId => $state.composableBuilder(
      column: $state.table.pedidoVentaAppId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get pedidoId => $state.composableBuilder(
      column: $state.table.pedidoId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get empresaId => $state.composableBuilder(
      column: $state.table.empresaId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get pedidoVentaLineaAppId => $state.composableBuilder(
      column: $state.table.pedidoVentaLineaAppId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get articuloId => $state.composableBuilder(
      column: $state.table.articuloId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get articuloDescription => $state.composableBuilder(
      column: $state.table.articuloDescription,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get cantidad => $state.composableBuilder(
      column: $state.table.cantidad,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get precioDivisa => $state.composableBuilder(
      column: $state.table.precioDivisa,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get tipoPrecio => $state.composableBuilder(
      column: $state.table.tipoPrecio,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get descuento1 => $state.composableBuilder(
      column: $state.table.descuento1,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get descuento2 => $state.composableBuilder(
      column: $state.table.descuento2,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get descuento3 => $state.composableBuilder(
      column: $state.table.descuento3,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get descuentoProntoPago => $state.composableBuilder(
      column: $state.table.descuentoProntoPago,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get stockDisponibleSN => $state.composableBuilder(
      column: $state.table.stockDisponibleSN,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get fechaDisponible => $state.composableBuilder(
      column: $state.table.fechaDisponible,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get iva => $state.composableBuilder(
      column: $state.table.iva,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get pedidoLineaIdComponente =>
      $state.composableBuilder(
          column: $state.table.pedidoLineaIdComponente,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$PedidoVentaLineaLocalTableTableTableManager extends RootTableManager<
    _$LocalAppDatabase,
    $PedidoVentaLineaLocalTableTable,
    PedidoVentaLineaLocalDTO,
    $$PedidoVentaLineaLocalTableTableFilterComposer,
    $$PedidoVentaLineaLocalTableTableOrderingComposer,
    $$PedidoVentaLineaLocalTableTableCreateCompanionBuilder,
    $$PedidoVentaLineaLocalTableTableUpdateCompanionBuilder,
    (
      PedidoVentaLineaLocalDTO,
      BaseReferences<_$LocalAppDatabase, $PedidoVentaLineaLocalTableTable,
          PedidoVentaLineaLocalDTO>
    ),
    PedidoVentaLineaLocalDTO,
    PrefetchHooks Function()> {
  $$PedidoVentaLineaLocalTableTableTableManager(
      _$LocalAppDatabase db, $PedidoVentaLineaLocalTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$PedidoVentaLineaLocalTableTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$PedidoVentaLineaLocalTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> pedidoVentaAppId = const Value.absent(),
            Value<String?> pedidoId = const Value.absent(),
            Value<String?> empresaId = const Value.absent(),
            Value<String> pedidoVentaLineaAppId = const Value.absent(),
            Value<String> articuloId = const Value.absent(),
            Value<String> articuloDescription = const Value.absent(),
            Value<int> cantidad = const Value.absent(),
            Value<double> precioDivisa = const Value.absent(),
            Value<int> tipoPrecio = const Value.absent(),
            Value<double> descuento1 = const Value.absent(),
            Value<double> descuento2 = const Value.absent(),
            Value<double> descuento3 = const Value.absent(),
            Value<double> descuentoProntoPago = const Value.absent(),
            Value<String> stockDisponibleSN = const Value.absent(),
            Value<DateTime?> fechaDisponible = const Value.absent(),
            Value<double> iva = const Value.absent(),
            Value<String?> pedidoLineaIdComponente = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PedidoVentaLineaLocalTableCompanion(
            pedidoVentaAppId: pedidoVentaAppId,
            pedidoId: pedidoId,
            empresaId: empresaId,
            pedidoVentaLineaAppId: pedidoVentaLineaAppId,
            articuloId: articuloId,
            articuloDescription: articuloDescription,
            cantidad: cantidad,
            precioDivisa: precioDivisa,
            tipoPrecio: tipoPrecio,
            descuento1: descuento1,
            descuento2: descuento2,
            descuento3: descuento3,
            descuentoProntoPago: descuentoProntoPago,
            stockDisponibleSN: stockDisponibleSN,
            fechaDisponible: fechaDisponible,
            iva: iva,
            pedidoLineaIdComponente: pedidoLineaIdComponente,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String pedidoVentaAppId,
            Value<String?> pedidoId = const Value.absent(),
            Value<String?> empresaId = const Value.absent(),
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
            Value<DateTime?> fechaDisponible = const Value.absent(),
            required double iva,
            Value<String?> pedidoLineaIdComponente = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PedidoVentaLineaLocalTableCompanion.insert(
            pedidoVentaAppId: pedidoVentaAppId,
            pedidoId: pedidoId,
            empresaId: empresaId,
            pedidoVentaLineaAppId: pedidoVentaLineaAppId,
            articuloId: articuloId,
            articuloDescription: articuloDescription,
            cantidad: cantidad,
            precioDivisa: precioDivisa,
            tipoPrecio: tipoPrecio,
            descuento1: descuento1,
            descuento2: descuento2,
            descuento3: descuento3,
            descuentoProntoPago: descuentoProntoPago,
            stockDisponibleSN: stockDisponibleSN,
            fechaDisponible: fechaDisponible,
            iva: iva,
            pedidoLineaIdComponente: pedidoLineaIdComponente,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PedidoVentaLineaLocalTableTableProcessedTableManager
    = ProcessedTableManager<
        _$LocalAppDatabase,
        $PedidoVentaLineaLocalTableTable,
        PedidoVentaLineaLocalDTO,
        $$PedidoVentaLineaLocalTableTableFilterComposer,
        $$PedidoVentaLineaLocalTableTableOrderingComposer,
        $$PedidoVentaLineaLocalTableTableCreateCompanionBuilder,
        $$PedidoVentaLineaLocalTableTableUpdateCompanionBuilder,
        (
          PedidoVentaLineaLocalDTO,
          BaseReferences<_$LocalAppDatabase, $PedidoVentaLineaLocalTableTable,
              PedidoVentaLineaLocalDTO>
        ),
        PedidoVentaLineaLocalDTO,
        PrefetchHooks Function()>;
typedef $$PedidoVentaLocalTableTableCreateCompanionBuilder
    = PedidoVentaLocalTableCompanion Function({
  Value<String?> usuarioId,
  required String pedidoVentaAppId,
  Value<String?> empresaId,
  Value<String?> pedidoId,
  required DateTime fechaAlta,
  required String clienteId,
  required String nombreCliente,
  Value<String?> direccionId,
  Value<String?> direccion1,
  Value<String?> direccion2,
  Value<String?> codigoPostal,
  Value<String?> poblacion,
  Value<String?> provincia,
  Value<String?> paisId,
  Value<String?> divisaId,
  Value<String?> pedidoCliente,
  Value<String?> observaciones,
  required String oferta,
  Value<DateTime?> ofertaFechaHasta,
  required double iva,
  required double dtoBonificacion,
  Value<String> enviada,
  Value<String> tratada,
  Value<String> borrador,
  Value<String?> errorSyncMessage,
  Value<int> rowid,
});
typedef $$PedidoVentaLocalTableTableUpdateCompanionBuilder
    = PedidoVentaLocalTableCompanion Function({
  Value<String?> usuarioId,
  Value<String> pedidoVentaAppId,
  Value<String?> empresaId,
  Value<String?> pedidoId,
  Value<DateTime> fechaAlta,
  Value<String> clienteId,
  Value<String> nombreCliente,
  Value<String?> direccionId,
  Value<String?> direccion1,
  Value<String?> direccion2,
  Value<String?> codigoPostal,
  Value<String?> poblacion,
  Value<String?> provincia,
  Value<String?> paisId,
  Value<String?> divisaId,
  Value<String?> pedidoCliente,
  Value<String?> observaciones,
  Value<String> oferta,
  Value<DateTime?> ofertaFechaHasta,
  Value<double> iva,
  Value<double> dtoBonificacion,
  Value<String> enviada,
  Value<String> tratada,
  Value<String> borrador,
  Value<String?> errorSyncMessage,
  Value<int> rowid,
});

class $$PedidoVentaLocalTableTableFilterComposer
    extends FilterComposer<_$LocalAppDatabase, $PedidoVentaLocalTableTable> {
  $$PedidoVentaLocalTableTableFilterComposer(super.$state);
  ColumnFilters<String> get usuarioId => $state.composableBuilder(
      column: $state.table.usuarioId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get pedidoVentaAppId => $state.composableBuilder(
      column: $state.table.pedidoVentaAppId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get empresaId => $state.composableBuilder(
      column: $state.table.empresaId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get pedidoId => $state.composableBuilder(
      column: $state.table.pedidoId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get fechaAlta => $state.composableBuilder(
      column: $state.table.fechaAlta,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clienteId => $state.composableBuilder(
      column: $state.table.clienteId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nombreCliente => $state.composableBuilder(
      column: $state.table.nombreCliente,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get direccionId => $state.composableBuilder(
      column: $state.table.direccionId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get direccion1 => $state.composableBuilder(
      column: $state.table.direccion1,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get direccion2 => $state.composableBuilder(
      column: $state.table.direccion2,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get codigoPostal => $state.composableBuilder(
      column: $state.table.codigoPostal,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get poblacion => $state.composableBuilder(
      column: $state.table.poblacion,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get provincia => $state.composableBuilder(
      column: $state.table.provincia,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get paisId => $state.composableBuilder(
      column: $state.table.paisId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get divisaId => $state.composableBuilder(
      column: $state.table.divisaId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get pedidoCliente => $state.composableBuilder(
      column: $state.table.pedidoCliente,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get observaciones => $state.composableBuilder(
      column: $state.table.observaciones,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get oferta => $state.composableBuilder(
      column: $state.table.oferta,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get ofertaFechaHasta => $state.composableBuilder(
      column: $state.table.ofertaFechaHasta,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get iva => $state.composableBuilder(
      column: $state.table.iva,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get dtoBonificacion => $state.composableBuilder(
      column: $state.table.dtoBonificacion,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get enviada => $state.composableBuilder(
      column: $state.table.enviada,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get tratada => $state.composableBuilder(
      column: $state.table.tratada,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get borrador => $state.composableBuilder(
      column: $state.table.borrador,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get errorSyncMessage => $state.composableBuilder(
      column: $state.table.errorSyncMessage,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$PedidoVentaLocalTableTableOrderingComposer
    extends OrderingComposer<_$LocalAppDatabase, $PedidoVentaLocalTableTable> {
  $$PedidoVentaLocalTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get usuarioId => $state.composableBuilder(
      column: $state.table.usuarioId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get pedidoVentaAppId => $state.composableBuilder(
      column: $state.table.pedidoVentaAppId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get empresaId => $state.composableBuilder(
      column: $state.table.empresaId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get pedidoId => $state.composableBuilder(
      column: $state.table.pedidoId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get fechaAlta => $state.composableBuilder(
      column: $state.table.fechaAlta,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clienteId => $state.composableBuilder(
      column: $state.table.clienteId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nombreCliente => $state.composableBuilder(
      column: $state.table.nombreCliente,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get direccionId => $state.composableBuilder(
      column: $state.table.direccionId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get direccion1 => $state.composableBuilder(
      column: $state.table.direccion1,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get direccion2 => $state.composableBuilder(
      column: $state.table.direccion2,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get codigoPostal => $state.composableBuilder(
      column: $state.table.codigoPostal,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get poblacion => $state.composableBuilder(
      column: $state.table.poblacion,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get provincia => $state.composableBuilder(
      column: $state.table.provincia,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get paisId => $state.composableBuilder(
      column: $state.table.paisId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get divisaId => $state.composableBuilder(
      column: $state.table.divisaId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get pedidoCliente => $state.composableBuilder(
      column: $state.table.pedidoCliente,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get observaciones => $state.composableBuilder(
      column: $state.table.observaciones,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get oferta => $state.composableBuilder(
      column: $state.table.oferta,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get ofertaFechaHasta => $state.composableBuilder(
      column: $state.table.ofertaFechaHasta,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get iva => $state.composableBuilder(
      column: $state.table.iva,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get dtoBonificacion => $state.composableBuilder(
      column: $state.table.dtoBonificacion,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get enviada => $state.composableBuilder(
      column: $state.table.enviada,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get tratada => $state.composableBuilder(
      column: $state.table.tratada,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get borrador => $state.composableBuilder(
      column: $state.table.borrador,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get errorSyncMessage => $state.composableBuilder(
      column: $state.table.errorSyncMessage,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$PedidoVentaLocalTableTableTableManager extends RootTableManager<
    _$LocalAppDatabase,
    $PedidoVentaLocalTableTable,
    PedidoVentaLocalDTO,
    $$PedidoVentaLocalTableTableFilterComposer,
    $$PedidoVentaLocalTableTableOrderingComposer,
    $$PedidoVentaLocalTableTableCreateCompanionBuilder,
    $$PedidoVentaLocalTableTableUpdateCompanionBuilder,
    (
      PedidoVentaLocalDTO,
      BaseReferences<_$LocalAppDatabase, $PedidoVentaLocalTableTable,
          PedidoVentaLocalDTO>
    ),
    PedidoVentaLocalDTO,
    PrefetchHooks Function()> {
  $$PedidoVentaLocalTableTableTableManager(
      _$LocalAppDatabase db, $PedidoVentaLocalTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$PedidoVentaLocalTableTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$PedidoVentaLocalTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String?> usuarioId = const Value.absent(),
            Value<String> pedidoVentaAppId = const Value.absent(),
            Value<String?> empresaId = const Value.absent(),
            Value<String?> pedidoId = const Value.absent(),
            Value<DateTime> fechaAlta = const Value.absent(),
            Value<String> clienteId = const Value.absent(),
            Value<String> nombreCliente = const Value.absent(),
            Value<String?> direccionId = const Value.absent(),
            Value<String?> direccion1 = const Value.absent(),
            Value<String?> direccion2 = const Value.absent(),
            Value<String?> codigoPostal = const Value.absent(),
            Value<String?> poblacion = const Value.absent(),
            Value<String?> provincia = const Value.absent(),
            Value<String?> paisId = const Value.absent(),
            Value<String?> divisaId = const Value.absent(),
            Value<String?> pedidoCliente = const Value.absent(),
            Value<String?> observaciones = const Value.absent(),
            Value<String> oferta = const Value.absent(),
            Value<DateTime?> ofertaFechaHasta = const Value.absent(),
            Value<double> iva = const Value.absent(),
            Value<double> dtoBonificacion = const Value.absent(),
            Value<String> enviada = const Value.absent(),
            Value<String> tratada = const Value.absent(),
            Value<String> borrador = const Value.absent(),
            Value<String?> errorSyncMessage = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PedidoVentaLocalTableCompanion(
            usuarioId: usuarioId,
            pedidoVentaAppId: pedidoVentaAppId,
            empresaId: empresaId,
            pedidoId: pedidoId,
            fechaAlta: fechaAlta,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
            direccionId: direccionId,
            direccion1: direccion1,
            direccion2: direccion2,
            codigoPostal: codigoPostal,
            poblacion: poblacion,
            provincia: provincia,
            paisId: paisId,
            divisaId: divisaId,
            pedidoCliente: pedidoCliente,
            observaciones: observaciones,
            oferta: oferta,
            ofertaFechaHasta: ofertaFechaHasta,
            iva: iva,
            dtoBonificacion: dtoBonificacion,
            enviada: enviada,
            tratada: tratada,
            borrador: borrador,
            errorSyncMessage: errorSyncMessage,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String?> usuarioId = const Value.absent(),
            required String pedidoVentaAppId,
            Value<String?> empresaId = const Value.absent(),
            Value<String?> pedidoId = const Value.absent(),
            required DateTime fechaAlta,
            required String clienteId,
            required String nombreCliente,
            Value<String?> direccionId = const Value.absent(),
            Value<String?> direccion1 = const Value.absent(),
            Value<String?> direccion2 = const Value.absent(),
            Value<String?> codigoPostal = const Value.absent(),
            Value<String?> poblacion = const Value.absent(),
            Value<String?> provincia = const Value.absent(),
            Value<String?> paisId = const Value.absent(),
            Value<String?> divisaId = const Value.absent(),
            Value<String?> pedidoCliente = const Value.absent(),
            Value<String?> observaciones = const Value.absent(),
            required String oferta,
            Value<DateTime?> ofertaFechaHasta = const Value.absent(),
            required double iva,
            required double dtoBonificacion,
            Value<String> enviada = const Value.absent(),
            Value<String> tratada = const Value.absent(),
            Value<String> borrador = const Value.absent(),
            Value<String?> errorSyncMessage = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PedidoVentaLocalTableCompanion.insert(
            usuarioId: usuarioId,
            pedidoVentaAppId: pedidoVentaAppId,
            empresaId: empresaId,
            pedidoId: pedidoId,
            fechaAlta: fechaAlta,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
            direccionId: direccionId,
            direccion1: direccion1,
            direccion2: direccion2,
            codigoPostal: codigoPostal,
            poblacion: poblacion,
            provincia: provincia,
            paisId: paisId,
            divisaId: divisaId,
            pedidoCliente: pedidoCliente,
            observaciones: observaciones,
            oferta: oferta,
            ofertaFechaHasta: ofertaFechaHasta,
            iva: iva,
            dtoBonificacion: dtoBonificacion,
            enviada: enviada,
            tratada: tratada,
            borrador: borrador,
            errorSyncMessage: errorSyncMessage,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PedidoVentaLocalTableTableProcessedTableManager
    = ProcessedTableManager<
        _$LocalAppDatabase,
        $PedidoVentaLocalTableTable,
        PedidoVentaLocalDTO,
        $$PedidoVentaLocalTableTableFilterComposer,
        $$PedidoVentaLocalTableTableOrderingComposer,
        $$PedidoVentaLocalTableTableCreateCompanionBuilder,
        $$PedidoVentaLocalTableTableUpdateCompanionBuilder,
        (
          PedidoVentaLocalDTO,
          BaseReferences<_$LocalAppDatabase, $PedidoVentaLocalTableTable,
              PedidoVentaLocalDTO>
        ),
        PedidoVentaLocalDTO,
        PrefetchHooks Function()>;
typedef $$SyncDateTimeTableTableCreateCompanionBuilder
    = SyncDateTimeTableCompanion Function({
  Value<int> id,
  required int dbSchemaVersion,
  required DateTime articuloUltimaSync,
  required DateTime clienteUltimaSync,
  required DateTime pedidoUltimaSync,
  required DateTime visitaUltimaSync,
});
typedef $$SyncDateTimeTableTableUpdateCompanionBuilder
    = SyncDateTimeTableCompanion Function({
  Value<int> id,
  Value<int> dbSchemaVersion,
  Value<DateTime> articuloUltimaSync,
  Value<DateTime> clienteUltimaSync,
  Value<DateTime> pedidoUltimaSync,
  Value<DateTime> visitaUltimaSync,
});

class $$SyncDateTimeTableTableFilterComposer
    extends FilterComposer<_$LocalAppDatabase, $SyncDateTimeTableTable> {
  $$SyncDateTimeTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get dbSchemaVersion => $state.composableBuilder(
      column: $state.table.dbSchemaVersion,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get articuloUltimaSync => $state.composableBuilder(
      column: $state.table.articuloUltimaSync,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get clienteUltimaSync => $state.composableBuilder(
      column: $state.table.clienteUltimaSync,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get pedidoUltimaSync => $state.composableBuilder(
      column: $state.table.pedidoUltimaSync,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get visitaUltimaSync => $state.composableBuilder(
      column: $state.table.visitaUltimaSync,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SyncDateTimeTableTableOrderingComposer
    extends OrderingComposer<_$LocalAppDatabase, $SyncDateTimeTableTable> {
  $$SyncDateTimeTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get dbSchemaVersion => $state.composableBuilder(
      column: $state.table.dbSchemaVersion,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get articuloUltimaSync => $state.composableBuilder(
      column: $state.table.articuloUltimaSync,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get clienteUltimaSync => $state.composableBuilder(
      column: $state.table.clienteUltimaSync,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get pedidoUltimaSync => $state.composableBuilder(
      column: $state.table.pedidoUltimaSync,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get visitaUltimaSync => $state.composableBuilder(
      column: $state.table.visitaUltimaSync,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$SyncDateTimeTableTableTableManager extends RootTableManager<
    _$LocalAppDatabase,
    $SyncDateTimeTableTable,
    SyncDateTimeDTO,
    $$SyncDateTimeTableTableFilterComposer,
    $$SyncDateTimeTableTableOrderingComposer,
    $$SyncDateTimeTableTableCreateCompanionBuilder,
    $$SyncDateTimeTableTableUpdateCompanionBuilder,
    (
      SyncDateTimeDTO,
      BaseReferences<_$LocalAppDatabase, $SyncDateTimeTableTable,
          SyncDateTimeDTO>
    ),
    SyncDateTimeDTO,
    PrefetchHooks Function()> {
  $$SyncDateTimeTableTableTableManager(
      _$LocalAppDatabase db, $SyncDateTimeTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SyncDateTimeTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$SyncDateTimeTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> dbSchemaVersion = const Value.absent(),
            Value<DateTime> articuloUltimaSync = const Value.absent(),
            Value<DateTime> clienteUltimaSync = const Value.absent(),
            Value<DateTime> pedidoUltimaSync = const Value.absent(),
            Value<DateTime> visitaUltimaSync = const Value.absent(),
          }) =>
              SyncDateTimeTableCompanion(
            id: id,
            dbSchemaVersion: dbSchemaVersion,
            articuloUltimaSync: articuloUltimaSync,
            clienteUltimaSync: clienteUltimaSync,
            pedidoUltimaSync: pedidoUltimaSync,
            visitaUltimaSync: visitaUltimaSync,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int dbSchemaVersion,
            required DateTime articuloUltimaSync,
            required DateTime clienteUltimaSync,
            required DateTime pedidoUltimaSync,
            required DateTime visitaUltimaSync,
          }) =>
              SyncDateTimeTableCompanion.insert(
            id: id,
            dbSchemaVersion: dbSchemaVersion,
            articuloUltimaSync: articuloUltimaSync,
            clienteUltimaSync: clienteUltimaSync,
            pedidoUltimaSync: pedidoUltimaSync,
            visitaUltimaSync: visitaUltimaSync,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SyncDateTimeTableTableProcessedTableManager = ProcessedTableManager<
    _$LocalAppDatabase,
    $SyncDateTimeTableTable,
    SyncDateTimeDTO,
    $$SyncDateTimeTableTableFilterComposer,
    $$SyncDateTimeTableTableOrderingComposer,
    $$SyncDateTimeTableTableCreateCompanionBuilder,
    $$SyncDateTimeTableTableUpdateCompanionBuilder,
    (
      SyncDateTimeDTO,
      BaseReferences<_$LocalAppDatabase, $SyncDateTimeTableTable,
          SyncDateTimeDTO>
    ),
    SyncDateTimeDTO,
    PrefetchHooks Function()>;
typedef $$LogTableTableCreateCompanionBuilder = LogTableCompanion Function({
  Value<int> id,
  required String level,
  required String message,
  Value<String?> error,
  Value<String?> stackTrace,
  required String appId,
  required String appBuild,
  required String appBuildName,
  required String device,
  required String userId,
  Value<String?> userEmail,
  Value<String?> userName,
  required DateTime timestamp,
});
typedef $$LogTableTableUpdateCompanionBuilder = LogTableCompanion Function({
  Value<int> id,
  Value<String> level,
  Value<String> message,
  Value<String?> error,
  Value<String?> stackTrace,
  Value<String> appId,
  Value<String> appBuild,
  Value<String> appBuildName,
  Value<String> device,
  Value<String> userId,
  Value<String?> userEmail,
  Value<String?> userName,
  Value<DateTime> timestamp,
});

class $$LogTableTableFilterComposer
    extends FilterComposer<_$LocalAppDatabase, $LogTableTable> {
  $$LogTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get level => $state.composableBuilder(
      column: $state.table.level,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get message => $state.composableBuilder(
      column: $state.table.message,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get error => $state.composableBuilder(
      column: $state.table.error,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get stackTrace => $state.composableBuilder(
      column: $state.table.stackTrace,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get appId => $state.composableBuilder(
      column: $state.table.appId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get appBuild => $state.composableBuilder(
      column: $state.table.appBuild,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get appBuildName => $state.composableBuilder(
      column: $state.table.appBuildName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get device => $state.composableBuilder(
      column: $state.table.device,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get userEmail => $state.composableBuilder(
      column: $state.table.userEmail,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get userName => $state.composableBuilder(
      column: $state.table.userName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get timestamp => $state.composableBuilder(
      column: $state.table.timestamp,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$LogTableTableOrderingComposer
    extends OrderingComposer<_$LocalAppDatabase, $LogTableTable> {
  $$LogTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get level => $state.composableBuilder(
      column: $state.table.level,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get message => $state.composableBuilder(
      column: $state.table.message,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get error => $state.composableBuilder(
      column: $state.table.error,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get stackTrace => $state.composableBuilder(
      column: $state.table.stackTrace,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get appId => $state.composableBuilder(
      column: $state.table.appId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get appBuild => $state.composableBuilder(
      column: $state.table.appBuild,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get appBuildName => $state.composableBuilder(
      column: $state.table.appBuildName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get device => $state.composableBuilder(
      column: $state.table.device,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get userEmail => $state.composableBuilder(
      column: $state.table.userEmail,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get userName => $state.composableBuilder(
      column: $state.table.userName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get timestamp => $state.composableBuilder(
      column: $state.table.timestamp,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$LogTableTableTableManager extends RootTableManager<
    _$LocalAppDatabase,
    $LogTableTable,
    LogDTO,
    $$LogTableTableFilterComposer,
    $$LogTableTableOrderingComposer,
    $$LogTableTableCreateCompanionBuilder,
    $$LogTableTableUpdateCompanionBuilder,
    (LogDTO, BaseReferences<_$LocalAppDatabase, $LogTableTable, LogDTO>),
    LogDTO,
    PrefetchHooks Function()> {
  $$LogTableTableTableManager(_$LocalAppDatabase db, $LogTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$LogTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$LogTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> level = const Value.absent(),
            Value<String> message = const Value.absent(),
            Value<String?> error = const Value.absent(),
            Value<String?> stackTrace = const Value.absent(),
            Value<String> appId = const Value.absent(),
            Value<String> appBuild = const Value.absent(),
            Value<String> appBuildName = const Value.absent(),
            Value<String> device = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String?> userEmail = const Value.absent(),
            Value<String?> userName = const Value.absent(),
            Value<DateTime> timestamp = const Value.absent(),
          }) =>
              LogTableCompanion(
            id: id,
            level: level,
            message: message,
            error: error,
            stackTrace: stackTrace,
            appId: appId,
            appBuild: appBuild,
            appBuildName: appBuildName,
            device: device,
            userId: userId,
            userEmail: userEmail,
            userName: userName,
            timestamp: timestamp,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String level,
            required String message,
            Value<String?> error = const Value.absent(),
            Value<String?> stackTrace = const Value.absent(),
            required String appId,
            required String appBuild,
            required String appBuildName,
            required String device,
            required String userId,
            Value<String?> userEmail = const Value.absent(),
            Value<String?> userName = const Value.absent(),
            required DateTime timestamp,
          }) =>
              LogTableCompanion.insert(
            id: id,
            level: level,
            message: message,
            error: error,
            stackTrace: stackTrace,
            appId: appId,
            appBuild: appBuild,
            appBuildName: appBuildName,
            device: device,
            userId: userId,
            userEmail: userEmail,
            userName: userName,
            timestamp: timestamp,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LogTableTableProcessedTableManager = ProcessedTableManager<
    _$LocalAppDatabase,
    $LogTableTable,
    LogDTO,
    $$LogTableTableFilterComposer,
    $$LogTableTableOrderingComposer,
    $$LogTableTableCreateCompanionBuilder,
    $$LogTableTableUpdateCompanionBuilder,
    (LogDTO, BaseReferences<_$LocalAppDatabase, $LogTableTable, LogDTO>),
    LogDTO,
    PrefetchHooks Function()>;
typedef $$CatalogoFavoritoTableTableCreateCompanionBuilder
    = CatalogoFavoritoTableCompanion Function({
  Value<int> catalogoId,
  required String nombre,
  required String idiomaId,
  required String tipoPrecioCatalogoId,
  required String tipoPrecioCatalogoNombre,
  required String tipoCatalogoId,
  required String tagBusqueda,
  required int orden,
  required String nombreFicheroPortada,
  required String nombreFicheroCatalogo,
  required String descarga,
});
typedef $$CatalogoFavoritoTableTableUpdateCompanionBuilder
    = CatalogoFavoritoTableCompanion Function({
  Value<int> catalogoId,
  Value<String> nombre,
  Value<String> idiomaId,
  Value<String> tipoPrecioCatalogoId,
  Value<String> tipoPrecioCatalogoNombre,
  Value<String> tipoCatalogoId,
  Value<String> tagBusqueda,
  Value<int> orden,
  Value<String> nombreFicheroPortada,
  Value<String> nombreFicheroCatalogo,
  Value<String> descarga,
});

class $$CatalogoFavoritoTableTableFilterComposer
    extends FilterComposer<_$LocalAppDatabase, $CatalogoFavoritoTableTable> {
  $$CatalogoFavoritoTableTableFilterComposer(super.$state);
  ColumnFilters<int> get catalogoId => $state.composableBuilder(
      column: $state.table.catalogoId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nombre => $state.composableBuilder(
      column: $state.table.nombre,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get idiomaId => $state.composableBuilder(
      column: $state.table.idiomaId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get tipoPrecioCatalogoId => $state.composableBuilder(
      column: $state.table.tipoPrecioCatalogoId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get tipoPrecioCatalogoNombre =>
      $state.composableBuilder(
          column: $state.table.tipoPrecioCatalogoNombre,
          builder: (column, joinBuilders) =>
              ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get tipoCatalogoId => $state.composableBuilder(
      column: $state.table.tipoCatalogoId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get tagBusqueda => $state.composableBuilder(
      column: $state.table.tagBusqueda,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get orden => $state.composableBuilder(
      column: $state.table.orden,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nombreFicheroPortada => $state.composableBuilder(
      column: $state.table.nombreFicheroPortada,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nombreFicheroCatalogo => $state.composableBuilder(
      column: $state.table.nombreFicheroCatalogo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get descarga => $state.composableBuilder(
      column: $state.table.descarga,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$CatalogoFavoritoTableTableOrderingComposer
    extends OrderingComposer<_$LocalAppDatabase, $CatalogoFavoritoTableTable> {
  $$CatalogoFavoritoTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get catalogoId => $state.composableBuilder(
      column: $state.table.catalogoId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nombre => $state.composableBuilder(
      column: $state.table.nombre,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get idiomaId => $state.composableBuilder(
      column: $state.table.idiomaId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get tipoPrecioCatalogoId => $state.composableBuilder(
      column: $state.table.tipoPrecioCatalogoId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get tipoPrecioCatalogoNombre =>
      $state.composableBuilder(
          column: $state.table.tipoPrecioCatalogoNombre,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get tipoCatalogoId => $state.composableBuilder(
      column: $state.table.tipoCatalogoId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get tagBusqueda => $state.composableBuilder(
      column: $state.table.tagBusqueda,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get orden => $state.composableBuilder(
      column: $state.table.orden,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nombreFicheroPortada => $state.composableBuilder(
      column: $state.table.nombreFicheroPortada,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nombreFicheroCatalogo => $state.composableBuilder(
      column: $state.table.nombreFicheroCatalogo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get descarga => $state.composableBuilder(
      column: $state.table.descarga,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$CatalogoFavoritoTableTableTableManager extends RootTableManager<
    _$LocalAppDatabase,
    $CatalogoFavoritoTableTable,
    CatalogoDTO,
    $$CatalogoFavoritoTableTableFilterComposer,
    $$CatalogoFavoritoTableTableOrderingComposer,
    $$CatalogoFavoritoTableTableCreateCompanionBuilder,
    $$CatalogoFavoritoTableTableUpdateCompanionBuilder,
    (
      CatalogoDTO,
      BaseReferences<_$LocalAppDatabase, $CatalogoFavoritoTableTable,
          CatalogoDTO>
    ),
    CatalogoDTO,
    PrefetchHooks Function()> {
  $$CatalogoFavoritoTableTableTableManager(
      _$LocalAppDatabase db, $CatalogoFavoritoTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$CatalogoFavoritoTableTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$CatalogoFavoritoTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> catalogoId = const Value.absent(),
            Value<String> nombre = const Value.absent(),
            Value<String> idiomaId = const Value.absent(),
            Value<String> tipoPrecioCatalogoId = const Value.absent(),
            Value<String> tipoPrecioCatalogoNombre = const Value.absent(),
            Value<String> tipoCatalogoId = const Value.absent(),
            Value<String> tagBusqueda = const Value.absent(),
            Value<int> orden = const Value.absent(),
            Value<String> nombreFicheroPortada = const Value.absent(),
            Value<String> nombreFicheroCatalogo = const Value.absent(),
            Value<String> descarga = const Value.absent(),
          }) =>
              CatalogoFavoritoTableCompanion(
            catalogoId: catalogoId,
            nombre: nombre,
            idiomaId: idiomaId,
            tipoPrecioCatalogoId: tipoPrecioCatalogoId,
            tipoPrecioCatalogoNombre: tipoPrecioCatalogoNombre,
            tipoCatalogoId: tipoCatalogoId,
            tagBusqueda: tagBusqueda,
            orden: orden,
            nombreFicheroPortada: nombreFicheroPortada,
            nombreFicheroCatalogo: nombreFicheroCatalogo,
            descarga: descarga,
          ),
          createCompanionCallback: ({
            Value<int> catalogoId = const Value.absent(),
            required String nombre,
            required String idiomaId,
            required String tipoPrecioCatalogoId,
            required String tipoPrecioCatalogoNombre,
            required String tipoCatalogoId,
            required String tagBusqueda,
            required int orden,
            required String nombreFicheroPortada,
            required String nombreFicheroCatalogo,
            required String descarga,
          }) =>
              CatalogoFavoritoTableCompanion.insert(
            catalogoId: catalogoId,
            nombre: nombre,
            idiomaId: idiomaId,
            tipoPrecioCatalogoId: tipoPrecioCatalogoId,
            tipoPrecioCatalogoNombre: tipoPrecioCatalogoNombre,
            tipoCatalogoId: tipoCatalogoId,
            tagBusqueda: tagBusqueda,
            orden: orden,
            nombreFicheroPortada: nombreFicheroPortada,
            nombreFicheroCatalogo: nombreFicheroCatalogo,
            descarga: descarga,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CatalogoFavoritoTableTableProcessedTableManager
    = ProcessedTableManager<
        _$LocalAppDatabase,
        $CatalogoFavoritoTableTable,
        CatalogoDTO,
        $$CatalogoFavoritoTableTableFilterComposer,
        $$CatalogoFavoritoTableTableOrderingComposer,
        $$CatalogoFavoritoTableTableCreateCompanionBuilder,
        $$CatalogoFavoritoTableTableUpdateCompanionBuilder,
        (
          CatalogoDTO,
          BaseReferences<_$LocalAppDatabase, $CatalogoFavoritoTableTable,
              CatalogoDTO>
        ),
        CatalogoDTO,
        PrefetchHooks Function()>;
typedef $$ClienteContactoImpTableTableCreateCompanionBuilder
    = ClienteContactoImpTableCompanion Function({
  required String id,
  required DateTime fecha,
  required String usuarioId,
  required String clienteId,
  Value<String?> contactoId,
  Value<String?> observaciones,
  Value<String?> nombre,
  Value<String?> apellido1,
  Value<String?> apellido2,
  Value<String?> telefono1,
  Value<String?> telefono2,
  Value<String?> email,
  Value<String> enviado,
  Value<String> borrar,
  Value<int> rowid,
});
typedef $$ClienteContactoImpTableTableUpdateCompanionBuilder
    = ClienteContactoImpTableCompanion Function({
  Value<String> id,
  Value<DateTime> fecha,
  Value<String> usuarioId,
  Value<String> clienteId,
  Value<String?> contactoId,
  Value<String?> observaciones,
  Value<String?> nombre,
  Value<String?> apellido1,
  Value<String?> apellido2,
  Value<String?> telefono1,
  Value<String?> telefono2,
  Value<String?> email,
  Value<String> enviado,
  Value<String> borrar,
  Value<int> rowid,
});

class $$ClienteContactoImpTableTableFilterComposer
    extends FilterComposer<_$LocalAppDatabase, $ClienteContactoImpTableTable> {
  $$ClienteContactoImpTableTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get fecha => $state.composableBuilder(
      column: $state.table.fecha,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get usuarioId => $state.composableBuilder(
      column: $state.table.usuarioId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clienteId => $state.composableBuilder(
      column: $state.table.clienteId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get contactoId => $state.composableBuilder(
      column: $state.table.contactoId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get observaciones => $state.composableBuilder(
      column: $state.table.observaciones,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nombre => $state.composableBuilder(
      column: $state.table.nombre,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get apellido1 => $state.composableBuilder(
      column: $state.table.apellido1,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get apellido2 => $state.composableBuilder(
      column: $state.table.apellido2,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get telefono1 => $state.composableBuilder(
      column: $state.table.telefono1,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get telefono2 => $state.composableBuilder(
      column: $state.table.telefono2,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get enviado => $state.composableBuilder(
      column: $state.table.enviado,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get borrar => $state.composableBuilder(
      column: $state.table.borrar,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ClienteContactoImpTableTableOrderingComposer extends OrderingComposer<
    _$LocalAppDatabase, $ClienteContactoImpTableTable> {
  $$ClienteContactoImpTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get fecha => $state.composableBuilder(
      column: $state.table.fecha,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get usuarioId => $state.composableBuilder(
      column: $state.table.usuarioId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clienteId => $state.composableBuilder(
      column: $state.table.clienteId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get contactoId => $state.composableBuilder(
      column: $state.table.contactoId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get observaciones => $state.composableBuilder(
      column: $state.table.observaciones,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nombre => $state.composableBuilder(
      column: $state.table.nombre,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get apellido1 => $state.composableBuilder(
      column: $state.table.apellido1,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get apellido2 => $state.composableBuilder(
      column: $state.table.apellido2,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get telefono1 => $state.composableBuilder(
      column: $state.table.telefono1,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get telefono2 => $state.composableBuilder(
      column: $state.table.telefono2,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get enviado => $state.composableBuilder(
      column: $state.table.enviado,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get borrar => $state.composableBuilder(
      column: $state.table.borrar,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$ClienteContactoImpTableTableTableManager extends RootTableManager<
    _$LocalAppDatabase,
    $ClienteContactoImpTableTable,
    ClienteContactoImpDTO,
    $$ClienteContactoImpTableTableFilterComposer,
    $$ClienteContactoImpTableTableOrderingComposer,
    $$ClienteContactoImpTableTableCreateCompanionBuilder,
    $$ClienteContactoImpTableTableUpdateCompanionBuilder,
    (
      ClienteContactoImpDTO,
      BaseReferences<_$LocalAppDatabase, $ClienteContactoImpTableTable,
          ClienteContactoImpDTO>
    ),
    ClienteContactoImpDTO,
    PrefetchHooks Function()> {
  $$ClienteContactoImpTableTableTableManager(
      _$LocalAppDatabase db, $ClienteContactoImpTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$ClienteContactoImpTableTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$ClienteContactoImpTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> fecha = const Value.absent(),
            Value<String> usuarioId = const Value.absent(),
            Value<String> clienteId = const Value.absent(),
            Value<String?> contactoId = const Value.absent(),
            Value<String?> observaciones = const Value.absent(),
            Value<String?> nombre = const Value.absent(),
            Value<String?> apellido1 = const Value.absent(),
            Value<String?> apellido2 = const Value.absent(),
            Value<String?> telefono1 = const Value.absent(),
            Value<String?> telefono2 = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String> enviado = const Value.absent(),
            Value<String> borrar = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ClienteContactoImpTableCompanion(
            id: id,
            fecha: fecha,
            usuarioId: usuarioId,
            clienteId: clienteId,
            contactoId: contactoId,
            observaciones: observaciones,
            nombre: nombre,
            apellido1: apellido1,
            apellido2: apellido2,
            telefono1: telefono1,
            telefono2: telefono2,
            email: email,
            enviado: enviado,
            borrar: borrar,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime fecha,
            required String usuarioId,
            required String clienteId,
            Value<String?> contactoId = const Value.absent(),
            Value<String?> observaciones = const Value.absent(),
            Value<String?> nombre = const Value.absent(),
            Value<String?> apellido1 = const Value.absent(),
            Value<String?> apellido2 = const Value.absent(),
            Value<String?> telefono1 = const Value.absent(),
            Value<String?> telefono2 = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String> enviado = const Value.absent(),
            Value<String> borrar = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ClienteContactoImpTableCompanion.insert(
            id: id,
            fecha: fecha,
            usuarioId: usuarioId,
            clienteId: clienteId,
            contactoId: contactoId,
            observaciones: observaciones,
            nombre: nombre,
            apellido1: apellido1,
            apellido2: apellido2,
            telefono1: telefono1,
            telefono2: telefono2,
            email: email,
            enviado: enviado,
            borrar: borrar,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ClienteContactoImpTableTableProcessedTableManager
    = ProcessedTableManager<
        _$LocalAppDatabase,
        $ClienteContactoImpTableTable,
        ClienteContactoImpDTO,
        $$ClienteContactoImpTableTableFilterComposer,
        $$ClienteContactoImpTableTableOrderingComposer,
        $$ClienteContactoImpTableTableCreateCompanionBuilder,
        $$ClienteContactoImpTableTableUpdateCompanionBuilder,
        (
          ClienteContactoImpDTO,
          BaseReferences<_$LocalAppDatabase, $ClienteContactoImpTableTable,
              ClienteContactoImpDTO>
        ),
        ClienteContactoImpDTO,
        PrefetchHooks Function()>;
typedef $$ClienteDireccionImpTableTableCreateCompanionBuilder
    = ClienteDireccionImpTableCompanion Function({
  required String id,
  required DateTime fecha,
  required String usuarioId,
  required String clienteId,
  Value<String?> direccionId,
  Value<String?> nombre,
  Value<String?> direccion1,
  Value<String?> direccion2,
  Value<String?> codigoPostal,
  Value<String?> poblacion,
  Value<String?> provincia,
  Value<String?> paisId,
  Value<String?> telefono,
  Value<String> enviada,
  Value<String> borrar,
  Value<int> rowid,
});
typedef $$ClienteDireccionImpTableTableUpdateCompanionBuilder
    = ClienteDireccionImpTableCompanion Function({
  Value<String> id,
  Value<DateTime> fecha,
  Value<String> usuarioId,
  Value<String> clienteId,
  Value<String?> direccionId,
  Value<String?> nombre,
  Value<String?> direccion1,
  Value<String?> direccion2,
  Value<String?> codigoPostal,
  Value<String?> poblacion,
  Value<String?> provincia,
  Value<String?> paisId,
  Value<String?> telefono,
  Value<String> enviada,
  Value<String> borrar,
  Value<int> rowid,
});

class $$ClienteDireccionImpTableTableFilterComposer
    extends FilterComposer<_$LocalAppDatabase, $ClienteDireccionImpTableTable> {
  $$ClienteDireccionImpTableTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get fecha => $state.composableBuilder(
      column: $state.table.fecha,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get usuarioId => $state.composableBuilder(
      column: $state.table.usuarioId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get clienteId => $state.composableBuilder(
      column: $state.table.clienteId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get direccionId => $state.composableBuilder(
      column: $state.table.direccionId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nombre => $state.composableBuilder(
      column: $state.table.nombre,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get direccion1 => $state.composableBuilder(
      column: $state.table.direccion1,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get direccion2 => $state.composableBuilder(
      column: $state.table.direccion2,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get codigoPostal => $state.composableBuilder(
      column: $state.table.codigoPostal,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get poblacion => $state.composableBuilder(
      column: $state.table.poblacion,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get provincia => $state.composableBuilder(
      column: $state.table.provincia,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get paisId => $state.composableBuilder(
      column: $state.table.paisId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get telefono => $state.composableBuilder(
      column: $state.table.telefono,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get enviada => $state.composableBuilder(
      column: $state.table.enviada,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get borrar => $state.composableBuilder(
      column: $state.table.borrar,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ClienteDireccionImpTableTableOrderingComposer extends OrderingComposer<
    _$LocalAppDatabase, $ClienteDireccionImpTableTable> {
  $$ClienteDireccionImpTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get fecha => $state.composableBuilder(
      column: $state.table.fecha,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get usuarioId => $state.composableBuilder(
      column: $state.table.usuarioId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get clienteId => $state.composableBuilder(
      column: $state.table.clienteId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get direccionId => $state.composableBuilder(
      column: $state.table.direccionId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nombre => $state.composableBuilder(
      column: $state.table.nombre,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get direccion1 => $state.composableBuilder(
      column: $state.table.direccion1,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get direccion2 => $state.composableBuilder(
      column: $state.table.direccion2,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get codigoPostal => $state.composableBuilder(
      column: $state.table.codigoPostal,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get poblacion => $state.composableBuilder(
      column: $state.table.poblacion,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get provincia => $state.composableBuilder(
      column: $state.table.provincia,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get paisId => $state.composableBuilder(
      column: $state.table.paisId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get telefono => $state.composableBuilder(
      column: $state.table.telefono,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get enviada => $state.composableBuilder(
      column: $state.table.enviada,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get borrar => $state.composableBuilder(
      column: $state.table.borrar,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$ClienteDireccionImpTableTableTableManager extends RootTableManager<
    _$LocalAppDatabase,
    $ClienteDireccionImpTableTable,
    ClienteDireccionImpDTO,
    $$ClienteDireccionImpTableTableFilterComposer,
    $$ClienteDireccionImpTableTableOrderingComposer,
    $$ClienteDireccionImpTableTableCreateCompanionBuilder,
    $$ClienteDireccionImpTableTableUpdateCompanionBuilder,
    (
      ClienteDireccionImpDTO,
      BaseReferences<_$LocalAppDatabase, $ClienteDireccionImpTableTable,
          ClienteDireccionImpDTO>
    ),
    ClienteDireccionImpDTO,
    PrefetchHooks Function()> {
  $$ClienteDireccionImpTableTableTableManager(
      _$LocalAppDatabase db, $ClienteDireccionImpTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$ClienteDireccionImpTableTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$ClienteDireccionImpTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<DateTime> fecha = const Value.absent(),
            Value<String> usuarioId = const Value.absent(),
            Value<String> clienteId = const Value.absent(),
            Value<String?> direccionId = const Value.absent(),
            Value<String?> nombre = const Value.absent(),
            Value<String?> direccion1 = const Value.absent(),
            Value<String?> direccion2 = const Value.absent(),
            Value<String?> codigoPostal = const Value.absent(),
            Value<String?> poblacion = const Value.absent(),
            Value<String?> provincia = const Value.absent(),
            Value<String?> paisId = const Value.absent(),
            Value<String?> telefono = const Value.absent(),
            Value<String> enviada = const Value.absent(),
            Value<String> borrar = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ClienteDireccionImpTableCompanion(
            id: id,
            fecha: fecha,
            usuarioId: usuarioId,
            clienteId: clienteId,
            direccionId: direccionId,
            nombre: nombre,
            direccion1: direccion1,
            direccion2: direccion2,
            codigoPostal: codigoPostal,
            poblacion: poblacion,
            provincia: provincia,
            paisId: paisId,
            telefono: telefono,
            enviada: enviada,
            borrar: borrar,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required DateTime fecha,
            required String usuarioId,
            required String clienteId,
            Value<String?> direccionId = const Value.absent(),
            Value<String?> nombre = const Value.absent(),
            Value<String?> direccion1 = const Value.absent(),
            Value<String?> direccion2 = const Value.absent(),
            Value<String?> codigoPostal = const Value.absent(),
            Value<String?> poblacion = const Value.absent(),
            Value<String?> provincia = const Value.absent(),
            Value<String?> paisId = const Value.absent(),
            Value<String?> telefono = const Value.absent(),
            Value<String> enviada = const Value.absent(),
            Value<String> borrar = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ClienteDireccionImpTableCompanion.insert(
            id: id,
            fecha: fecha,
            usuarioId: usuarioId,
            clienteId: clienteId,
            direccionId: direccionId,
            nombre: nombre,
            direccion1: direccion1,
            direccion2: direccion2,
            codigoPostal: codigoPostal,
            poblacion: poblacion,
            provincia: provincia,
            paisId: paisId,
            telefono: telefono,
            enviada: enviada,
            borrar: borrar,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ClienteDireccionImpTableTableProcessedTableManager
    = ProcessedTableManager<
        _$LocalAppDatabase,
        $ClienteDireccionImpTableTable,
        ClienteDireccionImpDTO,
        $$ClienteDireccionImpTableTableFilterComposer,
        $$ClienteDireccionImpTableTableOrderingComposer,
        $$ClienteDireccionImpTableTableCreateCompanionBuilder,
        $$ClienteDireccionImpTableTableUpdateCompanionBuilder,
        (
          ClienteDireccionImpDTO,
          BaseReferences<_$LocalAppDatabase, $ClienteDireccionImpTableTable,
              ClienteDireccionImpDTO>
        ),
        ClienteDireccionImpDTO,
        PrefetchHooks Function()>;
typedef $$CatalogoOrdenTableTableCreateCompanionBuilder
    = CatalogoOrdenTableCompanion Function({
  Value<int> catalogoId,
  required DateTime fechaAbierto,
});
typedef $$CatalogoOrdenTableTableUpdateCompanionBuilder
    = CatalogoOrdenTableCompanion Function({
  Value<int> catalogoId,
  Value<DateTime> fechaAbierto,
});

class $$CatalogoOrdenTableTableFilterComposer
    extends FilterComposer<_$LocalAppDatabase, $CatalogoOrdenTableTable> {
  $$CatalogoOrdenTableTableFilterComposer(super.$state);
  ColumnFilters<int> get catalogoId => $state.composableBuilder(
      column: $state.table.catalogoId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get fechaAbierto => $state.composableBuilder(
      column: $state.table.fechaAbierto,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$CatalogoOrdenTableTableOrderingComposer
    extends OrderingComposer<_$LocalAppDatabase, $CatalogoOrdenTableTable> {
  $$CatalogoOrdenTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get catalogoId => $state.composableBuilder(
      column: $state.table.catalogoId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get fechaAbierto => $state.composableBuilder(
      column: $state.table.fechaAbierto,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$CatalogoOrdenTableTableTableManager extends RootTableManager<
    _$LocalAppDatabase,
    $CatalogoOrdenTableTable,
    CatalogoOrdenDTO,
    $$CatalogoOrdenTableTableFilterComposer,
    $$CatalogoOrdenTableTableOrderingComposer,
    $$CatalogoOrdenTableTableCreateCompanionBuilder,
    $$CatalogoOrdenTableTableUpdateCompanionBuilder,
    (
      CatalogoOrdenDTO,
      BaseReferences<_$LocalAppDatabase, $CatalogoOrdenTableTable,
          CatalogoOrdenDTO>
    ),
    CatalogoOrdenDTO,
    PrefetchHooks Function()> {
  $$CatalogoOrdenTableTableTableManager(
      _$LocalAppDatabase db, $CatalogoOrdenTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CatalogoOrdenTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$CatalogoOrdenTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> catalogoId = const Value.absent(),
            Value<DateTime> fechaAbierto = const Value.absent(),
          }) =>
              CatalogoOrdenTableCompanion(
            catalogoId: catalogoId,
            fechaAbierto: fechaAbierto,
          ),
          createCompanionCallback: ({
            Value<int> catalogoId = const Value.absent(),
            required DateTime fechaAbierto,
          }) =>
              CatalogoOrdenTableCompanion.insert(
            catalogoId: catalogoId,
            fechaAbierto: fechaAbierto,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CatalogoOrdenTableTableProcessedTableManager = ProcessedTableManager<
    _$LocalAppDatabase,
    $CatalogoOrdenTableTable,
    CatalogoOrdenDTO,
    $$CatalogoOrdenTableTableFilterComposer,
    $$CatalogoOrdenTableTableOrderingComposer,
    $$CatalogoOrdenTableTableCreateCompanionBuilder,
    $$CatalogoOrdenTableTableUpdateCompanionBuilder,
    (
      CatalogoOrdenDTO,
      BaseReferences<_$LocalAppDatabase, $CatalogoOrdenTableTable,
          CatalogoOrdenDTO>
    ),
    CatalogoOrdenDTO,
    PrefetchHooks Function()>;

class $LocalAppDatabaseManager {
  final _$LocalAppDatabase _db;
  $LocalAppDatabaseManager(this._db);
  $$VisitaLocalTableTableTableManager get visitaLocalTable =>
      $$VisitaLocalTableTableTableManager(_db, _db.visitaLocalTable);
  $$PedidoVentaLineaLocalTableTableTableManager
      get pedidoVentaLineaLocalTable =>
          $$PedidoVentaLineaLocalTableTableTableManager(
              _db, _db.pedidoVentaLineaLocalTable);
  $$PedidoVentaLocalTableTableTableManager get pedidoVentaLocalTable =>
      $$PedidoVentaLocalTableTableTableManager(_db, _db.pedidoVentaLocalTable);
  $$SyncDateTimeTableTableTableManager get syncDateTimeTable =>
      $$SyncDateTimeTableTableTableManager(_db, _db.syncDateTimeTable);
  $$LogTableTableTableManager get logTable =>
      $$LogTableTableTableManager(_db, _db.logTable);
  $$CatalogoFavoritoTableTableTableManager get catalogoFavoritoTable =>
      $$CatalogoFavoritoTableTableTableManager(_db, _db.catalogoFavoritoTable);
  $$ClienteContactoImpTableTableTableManager get clienteContactoImpTable =>
      $$ClienteContactoImpTableTableTableManager(
          _db, _db.clienteContactoImpTable);
  $$ClienteDireccionImpTableTableTableManager get clienteDireccionImpTable =>
      $$ClienteDireccionImpTableTableTableManager(
          _db, _db.clienteDireccionImpTable);
  $$CatalogoOrdenTableTableTableManager get catalogoOrdenTable =>
      $$CatalogoOrdenTableTableTableManager(_db, _db.catalogoOrdenTable);
}
