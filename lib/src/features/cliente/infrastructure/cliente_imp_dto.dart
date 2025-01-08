import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/sector.dart';
import '../../../core/infrastructure/local_database.dart';
import '../domain/cliente_imp.dart';

part 'cliente_imp_dto.freezed.dart';
part 'cliente_imp_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ClienteImpDTO with _$ClienteImpDTO implements Insertable<ClienteImpDTO> {
  const ClienteImpDTO._();
  const factory ClienteImpDTO({
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'SECTOR_ID') required String sectorId,
  }) = _ClienteImpDTO;

  factory ClienteImpDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteImpDTOFromJson(json);

  factory ClienteImpDTO.fromDomain(ClienteImp clienteImp) => ClienteImpDTO(
        clienteId: clienteImp.clienteId,
        sectorId: clienteImp.sector.id,
      );

  ClienteImp toDomain(Sector sector) {
    return ClienteImp(
      clienteId: clienteId,
      sector: sector,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ClienteImpTableCompanion(
      clienteId: Value(clienteId),
      sectorId: Value(sectorId),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ClienteImpDTO)
class ClienteImpTable extends Table {
  @override
  String get tableName => 'CLIENTES_IMP';

  @override
  Set<Column> get primaryKey => {clienteId};

  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get sectorId => text().named('SECTOR_ID')();
}
