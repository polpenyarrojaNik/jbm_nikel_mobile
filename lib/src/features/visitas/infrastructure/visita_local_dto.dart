import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

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
    @JsonKey(name: 'COD_VISITA_APP')
        String? visitaAppId,
    @JsonKey(name: 'FECHA')
        required DateTime fecha,
    @JsonKey(name: 'CLIENTE_ID')
        String? clienteId,
    @JsonKey(name: 'CLIENTE_POTENCIAL_SN')
        required String isClienteProvisional,
    @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE')
        String? clienteProvisionalNombre,
    @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL')
        String? clienteProvisionalEmail,
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
    @JsonKey(name: 'NUM_EMPL')
        required String numEmpl,
    @JsonKey(name: 'CONTACTO')
        required String contacto,
    @JsonKey(name: 'ATENDIDO_POR')
        String? atendidoPor,
    @JsonKey(name: 'RESUMEN')
        String? resumen,
    @JsonKey(name: 'MARCAS_COMPETENCIA')
        String? marcasCompetencia,
    @JsonKey(name: 'LATITUD')
        required double latitud,
    @JsonKey(name: 'LONGITUD')
        required double longitud,
    @JsonKey(name: 'ENVIADA')
    @Default('N')
        String enviada,
    @JsonKey(name: 'TRATADA')
    @Default('N')
        String tratada,
    @JsonKey(name: 'ERROR_SYNC')
        String? errorSyncMessage,
  }) = _VisitaLocalDTO;

  factory VisitaLocalDTO.fromJson(Map<String, dynamic> json) =>
      _$VisitaLocalDTOFromJson(json);

  factory VisitaLocalDTO.fromDomain(Visita _) {
    return VisitaLocalDTO(
      visitaAppId: _.visitaAppId,
      clienteId: _.clienteId,
      fecha: _.fecha,
      isClienteProvisional: (_.isClienteProvisional) ? 'S' : 'N',
      clienteProvisionalNombre: _.clienteProvisionalNombre,
      clienteProvisionalEmail: _.clienteProvisionalEmail,
      clienteProvisionalTelefono: _.clienteProvisionalTelefono,
      clienteProvisionalDireccion1: _.clienteProvisionalDireccion1,
      clienteProvisionalDireccion2: _.clienteProvisionalDireccion2,
      clienteProvisionalCodigoPostal: _.clienteProvisionalCodigoPostal,
      clienteProvisionalPoblacion: _.clienteProvisionalPoblacion,
      clienteProvisionalProvinciaId: _.clienteProvisionalProvincia?.provinciaId,
      clienteProvisionalRegionId: _.clienteProvisionalRegionId,
      clienteProvisionalPaisId: _.clienteProvisionalPais?.id,
      numEmpl: _.numEmpl,
      contacto: _.contacto!,
      atendidoPor: _.atendidoPor,
      resumen: _.resumen,
      marcasCompetencia: _.marcasCompetencia,
      latitud: _.latitud,
      longitud: _.longitud,
      enviada: (_.enviada) ? 'S' : 'N',
      tratada: (_.tratada) ? 'S' : 'N',
      errorSyncMessage: _.errorSyncMessage,
    );
  }

  Visita toDomain(
      {required String? nombreCliente,
      required Pais? pais,
      required Provincia? provincia}) {
    return Visita(
        id: null,
        fecha: fecha,
        clienteId: clienteId,
        nombreCliente: nombreCliente,
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
  RealColumn get latitud => real().named('LATITUD')();
  RealColumn get longitud => real().named('LONGITUD')();
  TextColumn get enviada =>
      text().withDefault(const Constant('N')).named('ENVIADA')();
  TextColumn get tratada =>
      text().withDefault(const Constant('N')).named('TRATADA')();
  TextColumn get errorSyncMessage => text().nullable().named('ERROR_SYNC')();
}
