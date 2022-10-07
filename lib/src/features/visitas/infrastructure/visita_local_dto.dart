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
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'FECHA') required DateTime fecha,
    @JsonKey(name: 'NUM_EMPL') required String numEmpl,
    @JsonKey(name: 'CONTACTO') String? contacto,
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
        clienteId: clienteId,
        nombreCliente: nombreCliente,
        fecha: fecha,
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
      clienteId: Value(clienteId),
      fecha: Value(fecha),
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
  TextColumn get clienteId => text().named('CLIENTE_ID')();
  DateTimeColumn get fecha => dateTime().named('FECHA')();
  TextColumn get numEmpl => text().named('NUM_EMPL')();
  TextColumn get contacto => text().nullable().named('CONTACTO')();
  TextColumn get resumen => text().nullable().named('RESUMEN')();
  RealColumn get latitud => real().named('LATITUD')();
  RealColumn get longitud => real().named('LONGITUD')();
  TextColumn get enviada =>
      text().withDefault(const Constant('N')).named('ENVIADA')();
  TextColumn get tratada =>
      text().withDefault(const Constant('N')).named('TRATADA')();
  TextColumn get errorSyncMessage => text().nullable().named('ERROR_SYNC')();
}
