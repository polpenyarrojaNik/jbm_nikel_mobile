import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'remote_database.dart';

part 'promocion_cliente_dto.freezed.dart';
part 'promocion_cliente_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class PromocionClienteDTO
    with _$PromocionClienteDTO
    implements Insertable<PromocionClienteDTO> {
  const PromocionClienteDTO._();
  const factory PromocionClienteDTO({
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'PROMO_ID') required String promoId,
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'TIPO') required String tipo,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _PromocionClienteDTO;

  factory PromocionClienteDTO.fromJson(Map<String, dynamic> json) =>
      _$PromocionClienteDTOFromJson(json);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PromocionClienteTableCompanion(
      empresaId: Value(empresaId),
      promoId: Value(promoId),
      clienteId: Value(clienteId),
      tipo: Value(tipo),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(PromocionClienteDTO)
class PromocionClienteTable extends Table {
  @override
  String get tableName => 'promocion_cliente';

  @override
  Set<Column> get primaryKey => {empresaId, promoId, clienteId};

  TextColumn get empresaId => text().named('empresa_id')();
  TextColumn get promoId => text().named('promo_id')();
  TextColumn get clienteId => text().named('cliente_id')();
  TextColumn get tipo => text().named('tipo')();
  DateTimeColumn get lastUpdated => dateTime().named('last_updated')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('deleted')();
}
