import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

import '../domain/customer_rappel.dart';

part 'customer_rappel_dto.freezed.dart';
part 'customer_rappel_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class CustomerRappelDTO
    with _$CustomerRappelDTO
    implements Insertable<CustomerRappelDTO> {
  const CustomerRappelDTO._();
  const factory CustomerRappelDTO({
    @JsonKey(name: 'CLIENTE_ID') required String customerId,
    @JsonKey(name: 'RAPPEL_ID') required String rappelId,
    @JsonKey(name: 'DESCRIPCION') required String description,
    @JsonKey(name: 'FECHA_DESDE') required DateTime dateFrom,
    @JsonKey(name: 'FECHA_HASTA') required DateTime? dateTo,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _CustomerRappelDTO;

  factory CustomerRappelDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerRappelDTOFromJson(json);

  CustomerRappel toDomain() {
    return CustomerRappel(
      customerId: customerId,
      rappelId: rappelId,
      description: description,
      dateFrom: dateFrom,
      dateTo: dateTo,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return CustomerRappelTableCompanion(
      customerId: Value(customerId),
      rappelId: Value(rappelId),
      description: Value(description),
      dateFrom: Value(dateFrom),
      dateTo: Value(dateTo),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(CustomerRappelDTO)
class CustomerRappelTable extends Table {
  @override
  String get tableName => 'CLIENTES_RAPPELS';

  @override
  Set<Column> get primaryKey => {customerId, rappelId};

  TextColumn get customerId => text().named('CLIENTE_ID')();
  TextColumn get rappelId => text().named('RAPPEL_ID')();
  TextColumn get description => text().named('DESCRIPCION')();
  DateTimeColumn get dateFrom => dateTime().named('FECHA_DESDE')();
  DateTimeColumn get dateTo => dateTime().nullable().named('FECHA_HASTA')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
