import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

import '../domain/cliente_rappel.dart';

part 'cliente_rappel_dto.freezed.dart';
part 'cliente_rappel_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ClienteRappelDTO
    with _$ClienteRappelDTO
    implements Insertable<ClienteRappelDTO> {
  const ClienteRappelDTO._();
  const factory ClienteRappelDTO({
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'RAPPEL_ID') required String rappelId,
    @JsonKey(name: 'DESCRIPCION') required String descripcion,
    @JsonKey(name: 'FECHA_DESDE') required DateTime fechaDesDe,
    @JsonKey(name: 'FECHA_HASTA') required DateTime? fechaHasta,
    @JsonKey(name: 'NOMBRE_ARCHIVO') String? nombreArchivo,
    @JsonKey(name: 'FIRMADO') String? firmado,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ClienteRappelDTO;

  factory ClienteRappelDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteRappelDTOFromJson(json);

  ClienteRappel toDomain() {
    return ClienteRappel(
      clienteId: clienteId,
      rappelId: rappelId,
      descripcion: descripcion,
      fechaDesDe: fechaDesDe,
      fechaHasta: fechaHasta,
      nombreArchivo: nombreArchivo,
      firmado: firmado == 'S',
      lastUpdated: lastUpdated,
      deleted: deleted == 'S',
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ClienteRappelTableCompanion(
      clienteId: Value(clienteId),
      rappelId: Value(rappelId),
      descripcion: Value(descripcion),
      fechaDesDe: Value(fechaDesDe),
      fechaHasta: Value(fechaHasta),
      nombreArchivo: Value(nombreArchivo),
      firmado: Value(firmado),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ClienteRappelDTO)
class ClienteRappelTable extends Table {
  @override
  String get tableName => 'CLIENTES_RAPPELS';

  @override
  Set<Column> get primaryKey => {clienteId, rappelId};

  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get rappelId => text().named('RAPPEL_ID')();
  TextColumn get descripcion => text().named('DESCRIPCION')();
  DateTimeColumn get fechaDesDe => dateTime().named('FECHA_DESDE')();
  DateTimeColumn get fechaHasta => dateTime().nullable().named('FECHA_HASTA')();
  TextColumn get nombreArchivo => text().nullable().named('NOMBRE_ARCHIVO')();
  TextColumn get firmado => text().nullable().named('FIRMADO')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
