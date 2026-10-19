import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'remote_database.dart';

part 'promocion_art_regalo_dto.freezed.dart';
part 'promocion_art_regalo_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class PromocionArtRegaloDTO
    with _$PromocionArtRegaloDTO
    implements Insertable<PromocionArtRegaloDTO> {
  const PromocionArtRegaloDTO._();
  const factory PromocionArtRegaloDTO({
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'PROMO_ID') required String promoId,
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'CANTIDAD') required int cantidad,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _PromocionArtRegaloDTO;

  factory PromocionArtRegaloDTO.fromJson(Map<String, dynamic> json) =>
      _$PromocionArtRegaloDTOFromJson(json);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PromocionArtRegaloTableCompanion(
      empresaId: Value(empresaId),
      promoId: Value(promoId),
      articuloId: Value(articuloId),
      cantidad: Value(cantidad),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(PromocionArtRegaloDTO)
class PromocionArtRegaloTable extends Table {
  @override
  String get tableName => 'promocion_art_regalo';

  @override
  Set<Column> get primaryKey => {empresaId, promoId, articuloId};

  TextColumn get empresaId => text().named('empresa_id')();
  TextColumn get promoId => text().named('promo_id')();
  TextColumn get articuloId => text().named('articulo_id')();
  IntColumn get cantidad => integer().named('cantidad')();
  DateTimeColumn get lastUpdated => dateTime().named('last_updated')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('deleted')();
}
