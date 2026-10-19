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
  String get tableName => 'promocion_art_promo';

  @override
  Set<Column> get primaryKey => {empresaId, promoId, articuloId};

  TextColumn get empresaId => text().named('empresa_id')();
  TextColumn get promoId => text().named('promo_id')();
  TextColumn get articuloId => text().named('articulo_id')();
  IntColumn get cantidad => integer().named('cantidad')();
  RealColumn get precio => real().named('precio')();
  IntColumn get tipoPrecio => integer().named('tipo_precio')();
  DateTimeColumn get lastUpdated => dateTime().named('last_updated')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('deleted')();
}
