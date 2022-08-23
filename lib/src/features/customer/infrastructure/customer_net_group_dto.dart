import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

import '../domain/customer_net_group.dart';

part 'customer_net_group_dto.freezed.dart';
part 'customer_net_group_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class CustomerNetGroupDTO
    with _$CustomerNetGroupDTO
    implements Insertable<CustomerNetGroupDTO> {
  const CustomerNetGroupDTO._();
  const factory CustomerNetGroupDTO({
    @JsonKey(name: 'CLIENTE_ID') required String customerId,
    @JsonKey(name: 'GRUPO_NETO_ID') required String netGroupId,
    @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String? netGroupDescription,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _CustomerNetGroupDTO;

  factory CustomerNetGroupDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerNetGroupDTOFromJson(json);

  CustomerNetGroup toDomain() {
    return CustomerNetGroup(
      customerId: customerId,
      netGroupId: netGroupId,
      netGroupDescription: netGroupDescription,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return CustomerNetGroupTableCompanion(
      customerId: Value(customerId),
      netGroupId: Value(netGroupId),
      netGroupDescription: Value(netGroupDescription),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(CustomerNetGroupDTO)
class CustomerNetGroupTable extends Table {
  @override
  String get tableName => 'CLIENTES_GRUPOS_NETOS';

  @override
  Set<Column> get primaryKey => {customerId, netGroupId};

  TextColumn get customerId => text().named('CLIENTE_ID')();
  TextColumn get netGroupId => text().named('GRUPO_NETO_ID')();
  TextColumn get netGroupDescription =>
      text().nullable().named('GRUPO_NETO_DESCRIPCION')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
