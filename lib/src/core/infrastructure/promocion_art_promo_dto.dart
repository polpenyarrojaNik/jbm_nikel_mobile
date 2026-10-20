import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'remote_database.dart';

part 'promocion_art_promo_dto.freezed.dart';
part 'promocion_art_promo_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class PromocionArtPromoDTO
    with _$PromocionArtPromoDTO
    implements Insertable<PromocionArtPromoDTO> {
  const PromocionArtPromoDTO._();
  const factory PromocionArtPromoDTO({
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'PROMO_ID') required String promoId,
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'CANTIDAD') required int cantidad,
    @JsonKey(name: 'PRECIO') required double precio,
    @JsonKey(name: 'TIPO_PRECIO') required int tipoPrecio,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _PromocionArtPromoDTO;

  factory PromocionArtPromoDTO.fromJson(Map<String, dynamic> json) =>
      _$PromocionArtPromoDTOFromJson(json);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PromocionArtPromoTableCompanion(
      empresaId: Value(empresaId),
      promoId: Value(promoId),
      articuloId: Value(articuloId),
      cantidad: Value(cantidad),
      precio: Value(precio),
      tipoPrecio: Value(tipoPrecio),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(PromocionArtPromoDTO)
class PromocionArtPromoTable extends Table {
  @override
  String get tableName => 'PROMOCION_ART_PROMO';

  @override
  Set<Column> get primaryKey => {empresaId, promoId, articuloId};

  TextColumn get empresaId => text().named('EMPRESA_ID')();
  TextColumn get promoId => text().named('PROMO_ID')();
  TextColumn get articuloId => text().named('ARTICULO_ID')();
  IntColumn get cantidad => integer().named('CANTIDAD')();
  RealColumn get precio => real().named('PRECIO')();
  IntColumn get tipoPrecio => integer().named('TIPO_PRECIO')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
