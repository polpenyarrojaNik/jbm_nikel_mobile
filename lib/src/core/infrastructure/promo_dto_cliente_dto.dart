import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'remote_database.dart';

part 'promo_dto_cliente_dto.freezed.dart';
part 'promo_dto_cliente_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class PromoDtoClienteDTO
    with _$PromoDtoClienteDTO
    implements Insertable<PromoDtoClienteDTO> {
  const PromoDtoClienteDTO._();
  const factory PromoDtoClienteDTO({
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'PROMO_DTO_ID') required String promoDtoId,
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'TIPO') required String tipo,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _PromoDtoClienteDTO;

  factory PromoDtoClienteDTO.fromJson(Map<String, dynamic> json) =>
      _$PromoDtoClienteDTOFromJson(json);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PromoDtoClienteTableCompanion(
      empresaId: Value(empresaId),
      promoDtoId: Value(promoDtoId),
      clienteId: Value(clienteId),
      tipo: Value(tipo),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(PromoDtoClienteDTO)
class PromoDtoClienteTable extends Table {
  @override
  String get tableName => 'promo_dto_cliente';

  @override
  Set<Column> get primaryKey => {empresaId, promoDtoId, clienteId};

  TextColumn get empresaId => text().named('EMPRESA_ID')();
  TextColumn get promoDtoId => text().named('PROMO_DTO_ID')();
  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get tipo => text().named('TIPO')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
