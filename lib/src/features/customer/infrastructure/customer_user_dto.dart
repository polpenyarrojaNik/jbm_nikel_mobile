import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/customer/domain/customer_user.dart';

part 'customer_user_dto.freezed.dart';
part 'customer_user_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class CustomerUserDTO
    with _$CustomerUserDTO
    implements Insertable<CustomerUserDTO> {
  const CustomerUserDTO._();
  const factory CustomerUserDTO({
    @JsonKey(name: 'CLIENTE_ID') required String customerId,
    @JsonKey(name: 'USUARIO_ID') required String userId,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _CustomerUserDTO;

  factory CustomerUserDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerUserDTOFromJson(json);

  CustomerUser toDomain() {
    return CustomerUser(
      customerId: customerId,
      userId: userId,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return CustomerUserTableCompanion(
      customerId: Value(customerId),
      userId: Value(userId),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(CustomerUserDTO)
class CustomerUserTable extends Table {
  @override
  String get tableName => 'CLIENTES_USUARIO';

  @override
  Set<Column> get primaryKey => {customerId, userId};

  TextColumn get customerId => text()();
  TextColumn get userId => text()();
  DateTimeColumn get lastUpdated => dateTime()();
  TextColumn get deleted => text().withDefault(const Constant('N'))();
}
