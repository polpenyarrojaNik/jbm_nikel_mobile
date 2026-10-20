import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'remote_database.dart';

part 'promocion_pais_dto.freezed.dart';
part 'promocion_pais_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class PromocionPaisDTO
    with _$PromocionPaisDTO
    implements Insertable<PromocionPaisDTO> {
  const PromocionPaisDTO._();
  const factory PromocionPaisDTO({
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'PROMO_ID') required String promoId,
    @JsonKey(name: 'PAIS_ID') required String paisId,
    @JsonKey(name: 'TIPO') required String tipo,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _PromocionPaisDTO;

  factory PromocionPaisDTO.fromJson(Map<String, dynamic> json) =>
      _$PromocionPaisDTOFromJson(json);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PromocionPaisTableCompanion(
      empresaId: Value(empresaId),
      promoId: Value(promoId),
      paisId: Value(paisId),
      tipo: Value(tipo),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(PromocionPaisDTO)
class PromocionPaisTable extends Table {
  @override
  String get tableName => 'PROMOCION_PAIS';

  @override
  Set<Column> get primaryKey => {empresaId, promoId, paisId};

  TextColumn get empresaId => text().named('EMPRESA_ID')();
  TextColumn get promoId => text().named('PROMO_ID')();
  TextColumn get paisId => text().named('PAIS_ID')();
  TextColumn get tipo => text().named('TIPO')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
