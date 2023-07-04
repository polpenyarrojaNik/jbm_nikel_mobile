import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/remote_database.dart';

import '../domain/cliente_grupo_neto.dart';

part 'cliente_grupo_neto_dto.freezed.dart';
part 'cliente_grupo_neto_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ClienteGrupoNetoDTO
    with _$ClienteGrupoNetoDTO
    implements Insertable<ClienteGrupoNetoDTO> {
  const ClienteGrupoNetoDTO._();
  const factory ClienteGrupoNetoDTO({
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'GRUPO_NETO_ID') required String grupoNetoId,
    @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')
    required String grupoNetoDescripcion,
    @JsonKey(name: 'DTO_ADICIONAL') required double dtoAdicional,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ClienteGrupoNetoDTO;

  factory ClienteGrupoNetoDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteGrupoNetoDTOFromJson(json);

  ClienteGrupoNeto toDomain() {
    return ClienteGrupoNeto(
      clienteId: clienteId,
      grupoNetoId: grupoNetoId,
      grupoNetoDescripcion: grupoNetoDescripcion,
      dtoAdicional: dtoAdicional,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ClienteGrupoNetoTableCompanion(
      clienteId: Value(clienteId),
      grupoNetoId: Value(grupoNetoId),
      grupoNetoDescripcion: Value(grupoNetoDescripcion),
      dtoAdicional: Value(dtoAdicional),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ClienteGrupoNetoDTO)
class ClienteGrupoNetoTable extends Table {
  @override
  String get tableName => 'CLIENTES_GRUPOS_NETOS';

  @override
  Set<Column> get primaryKey => {clienteId, grupoNetoId};

  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get grupoNetoId => text().named('GRUPO_NETO_ID')();
  TextColumn get grupoNetoDescripcion =>
      text().named('GRUPO_NETO_DESCRIPCION')();
  RealColumn get dtoAdicional => real().named('DTO_ADICIONAL')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
