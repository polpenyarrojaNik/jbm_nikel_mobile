import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/domain/visita.dart';

part 'visita_dto.freezed.dart';
part 'visita_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class VisitaDTO with _$VisitaDTO implements Insertable<VisitaDTO> {
  const VisitaDTO._();
  const factory VisitaDTO({
    @JsonKey(name: 'VISITA_ID') required String id,
    @JsonKey(name: 'FECHA') required DateTime fecha,
    @JsonKey(name: 'CLIENTE_ID') String? clienteId,
    @JsonKey(name: 'CLIENTE_POTENCIAL_SN') required String isClienteProvisional,
    @JsonKey(name: 'CLIENTE_POTENCIAL_NOMBRE') String? clienteProvisionalNombre,
    @JsonKey(name: 'CLIENTE_POTENCIAL_EMAIL') String? clienteProvisionalEmail,
    @JsonKey(name: 'CLIENTE_POTENCIAL_TELEFONO')
        String? clienteProvisionalTelefono,
    @JsonKey(name: 'CLIENTE_POTENCIAL_POBLACION')
        String? clienteProvisionalPoblacion,
    @JsonKey(name: 'NUM_EMPL') required String numEmpl,
    @JsonKey(name: 'CONTACTO') String? contacto,
    @JsonKey(name: 'ATENDIDO_POR') String? atendidoPor,
    @JsonKey(name: 'RESUMEN') String? resumen,
    @JsonKey(name: 'MARCAS_COMPETENCIA') String? marcasCompetencia,
    @JsonKey(name: 'LATITUD') required double latitud,
    @JsonKey(name: 'LONGITUD') required double longitud,
    @JsonKey(name: 'COD_VISITA_APP') String? visitaAppId,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _VisitaDTO;

  factory VisitaDTO.fromJson(Map<String, dynamic> json) =>
      _$VisitaDTOFromJson(json);

  Visita toDomain(
      {required String? nombreCliente,
      bool? enviada = true,
      bool? tratada = true}) {
    return Visita(
      id: id,
      fecha: fecha,
      clienteId: clienteId,
      nombreCliente: nombreCliente,
      isClienteProvisional: (isClienteProvisional == 'S') ? true : false,
      clienteProvisionalNombre: clienteProvisionalNombre,
      clienteProvisionalEmail: clienteProvisionalEmail,
      clienteProvisionalTelefono: clienteProvisionalTelefono,
      clienteProvisionalPoblacion: clienteProvisionalPoblacion,
      numEmpl: numEmpl,
      contacto: contacto,
      atendidoPor: atendidoPor,
      resumen: resumen,
      marcasCompetencia: marcasCompetencia,
      latitud: latitud,
      longitud: longitud,
      lastUpdated: lastUpdated,
      visitaAppId: visitaAppId,
      deleted: (deleted == 'S') ? true : false,
      enviada: enviada!,
      tratada: tratada!,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return VisitaTableCompanion(
      id: Value(id),
      fecha: Value(fecha),
      clienteId: Value(clienteId),
      isClienteProvisional: Value(isClienteProvisional),
      clienteProvisionalNombre: Value(clienteProvisionalNombre),
      clienteProvisionalEmail: Value(clienteProvisionalEmail),
      clienteProvisionalTelefono: Value(clienteProvisionalTelefono),
      clienteProvisionalPoblacion: Value(clienteProvisionalPoblacion),
      numEmpl: Value(numEmpl),
      contacto: Value(contacto),
      atendidoPor: Value(atendidoPor),
      resumen: Value(resumen),
      marcasCompetencia: Value(marcasCompetencia),
      latitud: Value(latitud),
      longitud: Value(longitud),
      visitaAppId: Value(visitaAppId),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(VisitaDTO)
class VisitaTable extends Table {
  @override
  String get tableName => 'VISITAS';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('VISITA_ID')();
  DateTimeColumn get fecha => dateTime().named('FECHA')();
  TextColumn get clienteId => text().nullable().named('CLIENTE_ID')();
  TextColumn get isClienteProvisional => text().named('CLIENTE_POTENCIAL_SN')();
  TextColumn get clienteProvisionalNombre =>
      text().nullable().named('CLIENTE_POTENCIAL_NOMBRE')();
  TextColumn get clienteProvisionalEmail =>
      text().nullable().named('CLIENTE_POTENCIAL_EMAIL')();
  TextColumn get clienteProvisionalTelefono =>
      text().nullable().named('CLIENTE_POTENCIAL_TELEFONO')();
  TextColumn get clienteProvisionalPoblacion =>
      text().nullable().named('CLIENTE_POTENCIAL_POBLACION')();
  TextColumn get numEmpl => text().named('NUM_EMPL')();
  TextColumn get contacto => text().nullable().named('CONTACTO')();
  TextColumn get atendidoPor => text().nullable().named('ATENDIDO_POR')();
  TextColumn get resumen => text().nullable().named('RESUMEN')();
  TextColumn get marcasCompetencia =>
      text().nullable().named('MARCAS_COMPETENCIA')();
  RealColumn get latitud => real().named('LATITUD')();
  RealColumn get longitud => real().named('LONGITUD')();
  TextColumn get visitaAppId => text().nullable().named('COD_VISITA_APP')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
