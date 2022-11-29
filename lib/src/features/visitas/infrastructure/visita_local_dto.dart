import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/database.dart';
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
    @JsonKey(name: 'NUM_EMPL') required String numEmpl,
    @JsonKey(name: 'CONTACTO') required String contacto,
    @JsonKey(name: 'RESUMEN') String? resumen,
    @JsonKey(name: 'LATITUD') required double latitud,
    @JsonKey(name: 'LONGITUD') required double longitud,
    @JsonKey(name: 'ENVIADA') @Default('N') String enviada,
    @JsonKey(name: 'TRATADA') @Default('N') String tratada,
    @JsonKey(name: 'ERROR_SYNC') String? errorSyncMessage,
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
      numEmpl: _.numEmpl,
      contacto: _.contacto,
      resumen: _.resumen,
      latitud: _.latitud,
      longitud: _.longitud,
      enviada: (_.enviada) ? 'S' : 'N',
      tratada: (_.tratada) ? 'S' : 'N',
      errorSyncMessage: _.errorSyncMessage,
    );
  }

  Visita toDomain({required String? nombreCliente}) {
    return Visita(
        id: null,
        fecha: fecha,
        clienteId: clienteId,
        nombreCliente: nombreCliente,
        isClienteProvisional: (isClienteProvisional == 'S') ? true : false,
        clienteProvisionalNombre: clienteProvisionalNombre,
        clienteProvisionalEmail: clienteProvisionalEmail,
        clienteProvisionalTelefono: clienteProvisionalTelefono,
        numEmpl: numEmpl,
        contacto: contacto,
        resumen: resumen,
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
      numEmpl: Value(numEmpl),
      contacto: Value(contacto),
      resumen: Value(resumen),
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
  DateTimeColumn get fecha => dateTime().named('FECHA')();
  TextColumn get numEmpl => text().named('NUM_EMPL')();
  TextColumn get contacto => text().named('CONTACTO')();
  TextColumn get resumen => text().nullable().named('RESUMEN')();
  RealColumn get latitud => real().named('LATITUD')();
  RealColumn get longitud => real().named('LONGITUD')();
  TextColumn get enviada =>
      text().withDefault(const Constant('N')).named('ENVIADA')();
  TextColumn get tratada =>
      text().withDefault(const Constant('N')).named('TRATADA')();
  TextColumn get errorSyncMessage => text().nullable().named('ERROR_SYNC')();
}
