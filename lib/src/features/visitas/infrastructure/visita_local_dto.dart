import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/helpers/formatters.dart';
import '../domain/visita_competidor.dart';
import '../domain/visita_motivos_no_venta.dart';
import '../domain/visita_sector.dart';

import '../../../core/domain/pais.dart';
import '../../../core/domain/provincia.dart';
import '../../../core/infrastructure/local_database.dart';
import '../domain/visita.dart';

part 'visita_local_dto.freezed.dart';
part 'visita_local_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class VisitaLocalDTO
    with _$VisitaLocalDTO
    implements Insertable<VisitaLocalDTO> {
  const VisitaLocalDTO._();
  const factory VisitaLocalDTO({
    @JsonKey(name: 'COD_VISITA_APP') String? visitaAppId,
    @JsonKey(name: 'FECHA') required DateTime fecha,
    @JsonKey(name: 'CLIENTE_ID') String? clienteId,
    @JsonKey(name: 'CLIENTE_POTENCIAL_SN') required String isClienteProvisional,
    @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE') String? clienteProvisionalNombre,
    @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL') String? clienteProvisionalEmail,
    @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO')
    String? clienteProvisionalTelefono,
    @JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION1')
    String? clienteProvisionalDireccion1,
    @JsonKey(name: 'CLIENTE_POTENCIAL_DIRECCION2')
    String? clienteProvisionalDireccion2,
    @JsonKey(name: 'CLIENTE_POTENCIAL_COD_POS')
    String? clienteProvisionalCodigoPostal,
    @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION')
    String? clienteProvisionalPoblacion,
    @JsonKey(name: 'CLIENTE_POTENCIAL_PROVINCIA_ID')
    String? clienteProvisionalProvinciaId,
    @JsonKey(name: 'CLIENTE_POTENCIAL_REGION_ID')
    String? clienteProvisionalRegionId,
    @JsonKey(name: 'CLIENTE_POTENCIAL_PAIS_ID')
    String? clienteProvisionalPaisId,
    @JsonKey(name: 'NUM_EMPL') required String numEmpl,
    @JsonKey(name: 'CONTACTO') required String contacto,
    @JsonKey(name: 'ATENDIDO_POR') String? atendidoPor,
    @JsonKey(name: 'RESUMEN') String? resumen,
    @JsonKey(name: 'MARCAS_COMPETENCIA') String? marcasCompetencia,
    @JsonKey(name: 'OFERTA_REALIZADA') required String ofertaRealizada,
    @JsonKey(name: 'INTERES_CLIENTE') required String? interesCliente,
    @JsonKey(name: 'PEDIDO_REALIZADO') required String pedidoRealizado,
    @JsonKey(name: 'CODIGO_MOTIVO_NO_INTERES') int? codigoMotivoNoInteres,
    @JsonKey(name: 'CODIGO_MOTIVO_NO_PEDIDO') int? codigoMotivoNoPedido,
    @JsonKey(name: 'CODIGO_SECTOR') int? codigoSector,
    @JsonKey(name: 'CODIGO_COMPETENCIA') int? codigoCompetencia,
    @JsonKey(name: 'ALMACEN_PROPIO') required String? almacenPropio,
    @JsonKey(name: 'CAPACIDAD') required String? capacidad,
    @JsonKey(name: 'FRECUENCIA_PEDIDO') required String? frecuenciaPedido,
    @JsonKey(name: 'LATITUD') required double latitud,
    @JsonKey(name: 'LONGITUD') required double longitud,
    @JsonKey(name: 'ENVIADA') @Default('N') String enviada,
    @JsonKey(name: 'TRATADA') @Default('N') String tratada,
    @JsonKey(name: 'ERROR_SYNC') String? errorSyncMessage,
  }) = _VisitaLocalDTO;

  factory VisitaLocalDTO.fromJson(Map<String, dynamic> json) =>
      _$VisitaLocalDTOFromJson(json);

  factory VisitaLocalDTO.fromDomain(Visita visita) {
    return VisitaLocalDTO(
      visitaAppId: visita.visitaAppId,
      clienteId: visita.clienteId,
      fecha: visita.fecha,
      isClienteProvisional: (visita.isClienteProvisional) ? 'S' : 'N',
      clienteProvisionalNombre: visita.clienteProvisionalNombre,
      clienteProvisionalEmail: visita.clienteProvisionalEmail,
      clienteProvisionalTelefono: visita.clienteProvisionalTelefono,
      clienteProvisionalDireccion1: visita.clienteProvisionalDireccion1,
      clienteProvisionalDireccion2: visita.clienteProvisionalDireccion2,
      clienteProvisionalCodigoPostal: visita.clienteProvisionalCodigoPostal,
      clienteProvisionalPoblacion: visita.clienteProvisionalPoblacion,
      clienteProvisionalProvinciaId:
          visita.clienteProvisionalProvincia?.provinciaId,
      clienteProvisionalRegionId: visita.clienteProvisionalRegionId,
      clienteProvisionalPaisId: visita.clienteProvisionalPais?.id,
      numEmpl: visita.numEmpl,
      contacto: visita.contacto!,
      atendidoPor: visita.atendidoPor,
      resumen: visita.resumen,
      marcasCompetencia: visita.marcasCompetencia,
      ofertaRealizada: visita.ofertaRealizada ? 'S' : 'N',
      interesCliente: getIdFromInteresCliente(visita.interesCliente),
      pedidoRealizado: visita.pedidoRealizado ? 'S' : 'N',
      codigoMotivoNoInteres: visita.motivoNoInteres?.id,
      codigoMotivoNoPedido: visita.motivoNoPedido?.id,
      codigoSector: visita.sector?.id,
      codigoCompetencia: visita.competencia?.id,
      almacenPropio: visita.almacenPropio != null
          ? visita.almacenPropio!
              ? 'S'
              : 'N'
          : null,
      capacidad: getIdFromCapacidad(visita.capacidad),
      frecuenciaPedido: getIdFromFrecuenciaPedido(visita.frecuenciaPedido),
      latitud: visita.latitud,
      longitud: visita.longitud,
      enviada: (visita.enviada) ? 'S' : 'N',
      tratada: (visita.tratada) ? 'S' : 'N',
      errorSyncMessage: visita.errorSyncMessage,
    );
  }

  Visita toDomain({
    required String? nombreCliente,
    required String? clienteEmail,
    required String? clienteTelefono,
    required Pais? pais,
    required Provincia? provincia,
    required VisitaMotivoNoVenta? motivoNoInteres,
    required VisitaMotivoNoVenta? motivoNoPedido,
    required VisitaSector? sector,
    required VisitaCompetidor? competencia,
  }) {
    return Visita(
        id: null,
        fecha: fecha,
        clienteId: clienteId,
        nombreCliente: nombreCliente,
        clienteEmail: clienteEmail,
        clienteTelefono: clienteTelefono,
        isClienteProvisional: (isClienteProvisional == 'S') ? true : false,
        clienteProvisionalNombre: clienteProvisionalNombre,
        clienteProvisionalEmail: clienteProvisionalEmail,
        clienteProvisionalTelefono: clienteProvisionalTelefono,
        clienteProvisionalDireccion1: clienteProvisionalDireccion1,
        clienteProvisionalDireccion2: clienteProvisionalDireccion2,
        clienteProvisionalCodigoPostal: clienteProvisionalCodigoPostal,
        clienteProvisionalPoblacion: clienteProvisionalPoblacion,
        clienteProvisionalProvincia: provincia,
        clienteProvisionalRegionId: clienteProvisionalRegionId,
        clienteProvisionalPais: pais,
        numEmpl: numEmpl,
        contacto: contacto,
        atendidoPor: atendidoPor,
        resumen: resumen,
        marcasCompetencia: marcasCompetencia,
        ofertaRealizada: ofertaRealizada == 'S',
        interesCliente: getInteresClienteFromId(interesCliente),
        pedidoRealizado: pedidoRealizado == 'S',
        motivoNoInteres: motivoNoInteres,
        motivoNoPedido: motivoNoPedido,
        sector: sector,
        competencia: competencia,
        almacenPropio: almacenPropio == 'S',
        capacidad: getCapacidadFromId(capacidad),
        frecuenciaPedido: getFrecuenciaPedidoFromId(frecuenciaPedido),
        latitud: latitud,
        longitud: longitud,
        visitaAppId: visitaAppId,
        lastUpdated: DateTime.now().toUtc(),
        deleted: false,
        enviada: (enviada == 'S') ? true : false,
        tratada: (tratada == 'S') ? true : false,
        errorSyncMessage: errorSyncMessage);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return VisitaLocalTableCompanion(
      visitaAppId: Value(visitaAppId!),
      fecha: Value(fecha),
      clienteId: Value(clienteId),
      isClienteProvisional: Value(isClienteProvisional),
      clienteProvisionalNombre: Value(clienteProvisionalNombre),
      clienteProvisionalEmail: Value(clienteProvisionalEmail),
      clienteProvisionalTelefono: Value(clienteProvisionalTelefono),
      clienteProvisionalDireccion1: Value(clienteProvisionalDireccion1),
      clienteProvisionalDireccion2: Value(clienteProvisionalDireccion2),
      clienteProvisionalCodigoPostal: Value(clienteProvisionalCodigoPostal),
      clienteProvisionalPoblacion: Value(clienteProvisionalPoblacion),
      clienteProvisionalProvinciaId: Value(clienteProvisionalProvinciaId),
      clienteProvisionalRegionId: Value(clienteProvisionalRegionId),
      clienteProvisionalPaisId: Value(clienteProvisionalPaisId),
      numEmpl: Value(numEmpl),
      contacto: Value(contacto),
      atendidoPor: Value(atendidoPor),
      resumen: Value(resumen),
      marcasCompetencia: Value(marcasCompetencia),
      ofertaRealizada: Value(ofertaRealizada),
      interesCliente: Value(interesCliente),
      pedidoRealizado: Value(pedidoRealizado),
      codigoMotivoNoInteres: Value(codigoMotivoNoInteres),
      codigoMotivoNoPedido: Value(codigoMotivoNoPedido),
      codigoSector: Value(codigoSector),
      codigoCompetencia: Value(codigoCompetencia),
      almacenPropio: Value(almacenPropio),
      capacidad: Value(capacidad),
      frecuenciaPedido: Value(frecuenciaPedido),
      latitud: Value(latitud),
      longitud: Value(longitud),
      enviada: Value(enviada),
      tratada: Value(tratada),
      errorSyncMessage: Value(errorSyncMessage),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(VisitaLocalDTO)
class VisitaLocalTable extends Table {
  @override
  String get tableName => 'VISITAS_LOCAL_IMP';

  @override
  Set<Column> get primaryKey => {visitaAppId};

  TextColumn get visitaAppId => text().named('COD_VISITA_APP')();
  TextColumn get clienteId => text().nullable().named('CLIENTE_ID')();
  TextColumn get isClienteProvisional => text().named('CLIENTE_POTENCIAL_SN')();
  TextColumn get clienteProvisionalNombre =>
      text().nullable().named('CLIENTE_POTENCIAL_NOMBRE')();
  TextColumn get clienteProvisionalEmail =>
      text().nullable().named('CLIENTE_POTENCIAL_EMAIL')();
  TextColumn get clienteProvisionalTelefono =>
      text().nullable().named('CLIENTE_POTENCIAL_TELEFONO')();
  TextColumn get clienteProvisionalDireccion1 =>
      text().nullable().named('CLIENTE_POTENCIAL_DIRECCION1')();
  TextColumn get clienteProvisionalDireccion2 =>
      text().nullable().named('CLIENTE_POTENCIAL_DIRECCION2')();
  TextColumn get clienteProvisionalCodigoPostal =>
      text().nullable().named('CLIENTE_POTENCIAL_COD_POS')();
  TextColumn get clienteProvisionalPoblacion =>
      text().nullable().named('CLIENTE_POTENCIAL_POBLACION')();
  TextColumn get clienteProvisionalProvinciaId =>
      text().nullable().named('CLIENTE_POTENCIAL_PROVINCIA_ID')();
  TextColumn get clienteProvisionalRegionId =>
      text().nullable().named('CLIENTE_POTENCIAL_REGION_ID')();
  TextColumn get clienteProvisionalPaisId =>
      text().nullable().named('CLIENTE_POTENCIAL_PAIS_ID')();
  DateTimeColumn get fecha => dateTime().named('FECHA')();
  TextColumn get numEmpl => text().named('NUM_EMPL')();
  TextColumn get contacto => text().named('CONTACTO')();
  TextColumn get atendidoPor => text().nullable().named('ATENDIDO_POR')();
  TextColumn get resumen => text().nullable().named('RESUMEN')();
  TextColumn get marcasCompetencia =>
      text().nullable().named('MARCAS_COMPETENCIA')();
  TextColumn get ofertaRealizada =>
      text().withDefault(const Constant('N')).named('OFERTA_REALIZADA')();
  TextColumn get interesCliente => text().nullable().named('INTERES_CLIENTE')();
  TextColumn get pedidoRealizado =>
      text().withDefault(const Constant('N')).named('PEDIDO_REALIZADO')();
  IntColumn get codigoMotivoNoInteres =>
      integer().nullable().named('CODIGO_MOTIVO_NO_INTERES')();
  IntColumn get codigoMotivoNoPedido =>
      integer().nullable().named('CODIGO_MOTIVO_NO_PEDIDO')();
  IntColumn get codigoSector => integer().nullable().named('CODIGO_SECTOR')();
  IntColumn get codigoCompetencia =>
      integer().nullable().named('CODIGO_COMPETENCIA')();
  TextColumn get almacenPropio => text().nullable().named('ALMACEN_PROPIO')();
  TextColumn get capacidad => text().nullable().named('CAPACIDAD')();
  TextColumn get frecuenciaPedido =>
      text().nullable().named('FRECUENCIA_PEDIDO')();
  RealColumn get latitud => real().named('LATITUD')();
  RealColumn get longitud => real().named('LONGITUD')();
  TextColumn get enviada =>
      text().withDefault(const Constant('N')).named('ENVIADA')();
  TextColumn get tratada =>
      text().withDefault(const Constant('N')).named('TRATADA')();
  TextColumn get errorSyncMessage => text().nullable().named('ERROR_SYNC')();
}
