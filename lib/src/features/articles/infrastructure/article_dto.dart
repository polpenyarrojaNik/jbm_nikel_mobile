import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/family.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/family_dto.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/subfamily_dto.dart';

import '../../../core/domain/subfamily.dart';

import '../../../core/infrastructure/database.dart';
import '../domain/article.dart';

part 'article_dto.freezed.dart';
part 'article_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticleDTO with _$ArticleDTO implements Insertable<ArticleDTO> {
  const ArticleDTO._();
  const factory ArticleDTO({
    @JsonKey(name: 'ARTICULO_ID') required String id,
    @JsonKey(name: 'DESCRIPCION_ES') required String descriptionES,
    @JsonKey(name: 'DESCRIPCION_EN') String? descriptionEN,
    @JsonKey(name: 'DESCRIPCION_FR') String? descriptionFR,
    @JsonKey(name: 'DESCRIPCION_DE') String? descriptionDE,
    @JsonKey(name: 'DESCRIPCION_CA') String? descriptionCA,
    @JsonKey(name: 'DESCRIPCION_GB') String? descriptionGB,
    @JsonKey(name: 'DESCRIPCION_HU') String? descriptionHU,
    @JsonKey(name: 'DESCRIPCION_IT') String? descriptionIT,
    @JsonKey(name: 'DESCRIPCION_NL') String? descriptionNL,
    @JsonKey(name: 'DESCRIPCION_PL') String? descriptionPL,
    @JsonKey(name: 'DESCRIPCION_PT') String? descriptionPT,
    @JsonKey(name: 'DESCRIPCION_RO') String? descriptionRO,
    @JsonKey(name: 'DESCRIPCION_RU') String? descriptionRU,
    @JsonKey(name: 'DESCRIPCION_CN') String? descriptionCN,
    @JsonKey(name: 'DESCRIPCION_EL') String? descriptionEL,
    @JsonKey(name: 'FAMILIA_ID') String? familyId,
    @JsonKey(name: 'SUBFAMILIA_ID') String? subfamilyId,
    @JsonKey(name: 'VENTA_MINIMO') required double minimumSales,
    @JsonKey(name: 'VENTA_MULTIPLO') required double multipleSales,
    @JsonKey(name: 'UNIDADES_SUBCAJA') required double subboxUnits,
    @JsonKey(name: 'UNIDADES_CAJA') required double boxUnits,
    @JsonKey(name: 'UNIDADES_PALET') required double paletUnits,
    @JsonKey(name: 'ACTIVO_WEB') required String isActiveWeb,
    @JsonKey(name: 'ACTIVO_APP') required String isActiveApp,
    @JsonKey(name: 'EN_CATALOGO') required String inCatalogue,
    @JsonKey(name: 'DESCATALOGADO') required String discontinued,
    @JsonKey(name: 'PAGINA_EN_CATALOGO') String? cataloguePage,
    @JsonKey(name: 'PAGINA_EN_CATALOGO2') String? cataloguePage2,
    @JsonKey(name: 'PESO_KG') required double weightKg,
    @JsonKey(name: 'LARGO_CM') required double largeCm,
    @JsonKey(name: 'ANCHO_CM') required double widthCm,
    @JsonKey(name: 'ALTO_CM') required double tallCm,
    @JsonKey(name: 'SUMMARY_ES') String? summaryES,
    @JsonKey(name: 'SUMMARY_EN') String? summaryEN,
    @JsonKey(name: 'SUMMARY_FR') String? summaryFR,
    @JsonKey(name: 'SUMMARY_DE') String? summaryDE,
    @JsonKey(name: 'SUMMARY_CA') String? summaryCA,
    @JsonKey(name: 'SUMMARY_GB') String? summaryGB,
    @JsonKey(name: 'SUMMARY_HU') String? summaryHU,
    @JsonKey(name: 'SUMMARY_IT') String? summaryIT,
    @JsonKey(name: 'SUMMARY_NL') String? summaryNL,
    @JsonKey(name: 'SUMMARY_PL') String? summaryPL,
    @JsonKey(name: 'SUMMARY_PT') String? summaryPT,
    @JsonKey(name: 'SUMMARY_RO') String? summaryRO,
    @JsonKey(name: 'SUMMARY_RU') String? summaryRU,
    @JsonKey(name: 'SUMMARY_CN') String? summaryCN,
    @JsonKey(name: 'SUMMARY_EL') String? summaryEL,
    @JsonKey(name: 'STOCK_DISPONIBLE') double? availableStock,
    @JsonKey(name: 'VENTAS_ACTUAL') double? currentSales,
    @JsonKey(name: 'VENTAS_ANTERIOR') double? previousSales,
    @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_1')
        double? purchasesDeliveryQuantity1,
    @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_2')
        double? purchasesDeliveryQuantity2,
    @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_3')
        double? purchasesDeliveryQuantity3,
    @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_MAS_3')
        double? purchasesDeliveryQuantityMore3,
    @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_1') DateTime? purchasesDeliveryDate1,
    @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_2') DateTime? purchasesDeliveryDate2,
    @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_3') DateTime? purchasesDeliveryDate3,
    @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_1') String? purchasesDeliveryStatus1,
    @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_2') String? purchasesDeliveryStatus2,
    @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_') String? purchasesDeliveryStatus3,
    @JsonKey(name: 'IMAGEN_PRINCIPAL') String? principalImage,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ArticleDTO;

  factory ArticleDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticleDTOFromJson(json);

  Article toDomain({
    required Family? family,
    required Subfamily? subfamily,
  }) {
    return Article(
      id: id,
      description: getDescription(),
      family: family,
      subfamily: subfamily,
      minimumSales: minimumSales,
      multipleSales: multipleSales,
      subboxUnits: subboxUnits,
      boxUnits: boxUnits,
      paletUnits: paletUnits,
      isActiveWeb: isActiveWeb,
      isActiveApp: isActiveApp,
      inCatalogue: inCatalogue,
      discontinued: discontinued,
      cataloguePage: cataloguePage,
      cataloguePage2: cataloguePage2,
      weightKg: weightKg,
      largeCm: largeCm,
      widthCm: widthCm,
      tallCm: tallCm,
      summary: getSummary(),
      availableStock: availableStock,
      currentSales: currentSales,
      previousSales: previousSales,
      purchasesDeliveryQuantity1: purchasesDeliveryQuantity1,
      purchasesDeliveryQuantity2: purchasesDeliveryQuantity2,
      purchasesDeliveryQuantity3: purchasesDeliveryQuantity3,
      purchasesDeliveryQuantityMore3: purchasesDeliveryQuantityMore3,
      purchasesDeliveryDate1: purchasesDeliveryDate1,
      purchasesDeliveryDate2: purchasesDeliveryDate2,
      purchasesDeliveryDate3: purchasesDeliveryDate3,
      purchasesDeliveryStatus1: purchasesDeliveryStatus1,
      purchasesDeliveryStatus2: purchasesDeliveryStatus2,
      purchasesDeliveryStatus3: purchasesDeliveryStatus3,
      principalImage: principalImage,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  String getDescription() {
    if (descriptionEN != null) {
      return descriptionEN!;
    } else if (descriptionFR != null) {
      return descriptionFR!;
    } else if (descriptionDE != null) {
      return descriptionDE!;
    } else if (descriptionGB != null) {
      return descriptionGB!;
    } else if (descriptionCA != null) {
      return descriptionCA!;
    }
    return descriptionES;
  }

  String? getSummary() {
    if (summaryEN != null) {
      return summaryEN!;
    } else if (summaryFR != null) {
      return summaryFR!;
    } else if (summaryDE != null) {
      return summaryDE!;
    } else if (summaryGB != null) {
      return summaryGB!;
    } else if (summaryCA != null) {
      return summaryCA!;
    } else if (summaryES != null) {
      return summaryES!;
    }
    return null;
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ArticleTableCompanion(
      id: Value(id),
      descriptionES: Value(descriptionES),
      descriptionEN: Value(descriptionEN),
      descriptionFR: Value(descriptionFR),
      descriptionDE: Value(descriptionDE),
      descriptionCA: Value(descriptionCA),
      descriptionGB: Value(descriptionGB),
      descriptionHU: Value(descriptionHU),
      descriptionIT: Value(descriptionIT),
      descriptionNL: Value(descriptionNL),
      descriptionPL: Value(descriptionPL),
      descriptionPT: Value(descriptionPT),
      descriptionRO: Value(descriptionRO),
      descriptionRU: Value(descriptionRU),
      descriptionCN: Value(descriptionCN),
      descriptionEL: Value(descriptionEL),
      familyId: Value(familyId),
      subfamilyId: Value(subfamilyId),
      minimumSales: Value(minimumSales),
      multipleSales: Value(multipleSales),
      subboxUnits: Value(subboxUnits),
      boxUnits: Value(boxUnits),
      paletUnits: Value(paletUnits),
      isActiveWeb: Value(isActiveWeb),
      isActiveApp: Value(isActiveApp),
      inCatalogue: Value(inCatalogue),
      discontinued: Value(discontinued),
      cataloguePage: Value(cataloguePage),
      cataloguePage2: Value(cataloguePage2),
      weightKg: Value(weightKg),
      largeCm: Value(largeCm),
      widthCm: Value(widthCm),
      tallCm: Value(tallCm),
      summaryES: Value(summaryES),
      summaryEN: Value(summaryEN),
      summaryFR: Value(summaryFR),
      summaryDE: Value(summaryDE),
      summaryCA: Value(summaryCA),
      summaryGB: Value(summaryGB),
      summaryHU: Value(summaryHU),
      summaryIT: Value(summaryIT),
      summaryNL: Value(summaryNL),
      summaryPL: Value(summaryPL),
      summaryPT: Value(summaryPT),
      summaryRO: Value(summaryRO),
      summaryRU: Value(summaryRU),
      summaryCN: Value(summaryCN),
      summaryEL: Value(summaryEL),
      availableStock: Value(availableStock),
      currentSales: Value(currentSales),
      previousSales: Value(previousSales),
      purchasesDeliveryQuantity1: Value(purchasesDeliveryQuantity1),
      purchasesDeliveryQuantity2: Value(purchasesDeliveryQuantity2),
      purchasesDeliveryQuantity3: Value(purchasesDeliveryQuantity3),
      purchasesDeliveryQuantityMore3: Value(purchasesDeliveryQuantityMore3),
      purchasesDeliveryDate1: Value(purchasesDeliveryDate1),
      purchasesDeliveryDate2: Value(purchasesDeliveryDate2),
      purchasesDeliveryDate3: Value(purchasesDeliveryDate3),
      purchasesDeliveryStatus1: Value(purchasesDeliveryStatus1),
      purchasesDeliveryStatus2: Value(purchasesDeliveryStatus2),
      purchasesDeliveryStatus3: Value(purchasesDeliveryStatus3),
      principalImage: Value(principalImage),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ArticleDTO)
class ArticleTable extends Table {
  @override
  String get tableName => 'ARTICULOS';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('ARTICULO_ID')();
  TextColumn get descriptionES => text().named('DESCRIPCION_ES')();
  TextColumn get descriptionEN => text().nullable().named('DESCRIPCION_EN')();
  TextColumn get descriptionFR => text().nullable().named('DESCRIPCION_FR')();
  TextColumn get descriptionDE => text().nullable().named('DESCRIPCION_DE')();
  TextColumn get descriptionCA => text().nullable().named('DESCRIPCION_CA')();
  TextColumn get descriptionGB => text().nullable().named('DESCRIPCION_GB')();
  TextColumn get descriptionHU => text().nullable().named('DESCRIPCION_HU')();
  TextColumn get descriptionIT => text().nullable().named('DESCRIPCION_IT')();
  TextColumn get descriptionNL => text().nullable().named('DESCRIPCION_NL')();
  TextColumn get descriptionPL => text().nullable().named('DESCRIPCION_PL')();
  TextColumn get descriptionPT => text().nullable().named('DESCRIPCION_PT')();
  TextColumn get descriptionRO => text().nullable().named('DESCRIPCION_RO')();
  TextColumn get descriptionRU => text().nullable().named('DESCRIPCION_RU')();
  TextColumn get descriptionCN => text().nullable().named('DESCRIPCION_CN')();
  TextColumn get descriptionEL => text().nullable().named('DESCRIPCION_EL')();
  TextColumn get familyId =>
      text().nullable().references(FamilyTable, #id).named('FAMILIA_ID')();
  TextColumn get subfamilyId => text()
      .nullable()
      .references(SubfamilyTable, #id)
      .named('SUBFAMILIA_ID')();
  RealColumn get minimumSales => real().named('VENTA_MINIMO')();
  RealColumn get multipleSales => real().named('VENTA_MULTIPLO')();
  RealColumn get subboxUnits => real().named('UNIDADES_SUBCAJA')();
  RealColumn get boxUnits => real().named('UNIDADES_CAJA')();
  RealColumn get paletUnits => real().named('UNIDADES_PALET')();
  TextColumn get isActiveWeb => text().named('ACTIVO_WEB')();
  TextColumn get isActiveApp => text().named('ACTIVO_APP')();
  TextColumn get inCatalogue => text().named('EN_CATALOGO')();
  TextColumn get discontinued => text().named('DESCATALOGADO')();
  TextColumn get cataloguePage =>
      text().nullable().named('PAGINA_EN_CATALOGO')();
  TextColumn get cataloguePage2 =>
      text().nullable().named('PAGINA_EN_CATALOGO2')();
  RealColumn get weightKg => real().named('PESO_KG')();
  RealColumn get largeCm => real().named('LARGO_CM')();
  RealColumn get widthCm => real().named('ANCHO_CM')();
  RealColumn get tallCm => real().named('ALTO_CM')();
  TextColumn get summaryES => text().nullable().named('RESUMEN_ES')();
  TextColumn get summaryEN => text().nullable().named('RESUMEN_EN')();
  TextColumn get summaryFR => text().nullable().named('RESUMEN_FR')();
  TextColumn get summaryDE => text().nullable().named('RESUMEN_DE')();
  TextColumn get summaryCA => text().nullable().named('RESUMEN_CA')();
  TextColumn get summaryGB => text().nullable().named('RESUMEN_GB')();
  TextColumn get summaryHU => text().nullable().named('RESUMEN_HU')();
  TextColumn get summaryIT => text().nullable().named('RESUMEN_IT')();
  TextColumn get summaryNL => text().nullable().named('RESUMEN_NL')();
  TextColumn get summaryPL => text().nullable().named('RESUMEN_PL')();
  TextColumn get summaryPT => text().nullable().named('RESUMEN_PT')();
  TextColumn get summaryRO => text().nullable().named('RESUMEN_RO')();
  TextColumn get summaryRU => text().nullable().named('RESUMEN_RU')();
  TextColumn get summaryCN => text().nullable().named('RESUMEN_CN')();
  TextColumn get summaryEL => text().nullable().named('RESUMEN_EL')();
  RealColumn get availableStock =>
      real().nullable().named('STOCK_DISPONIBLE')();
  RealColumn get currentSales => real().nullable().named('VENTAS_ACTUAL')();
  RealColumn get previousSales => real().nullable().named('VENTAS_ANTERIOR')();
  RealColumn get purchasesDeliveryQuantity1 =>
      real().nullable().named('COMPRAS_ENTREGA_CANTIDAD_1')();
  RealColumn get purchasesDeliveryQuantity2 =>
      real().nullable().named('COMPRAS_ENTREGA_CANTIDAD_2')();
  RealColumn get purchasesDeliveryQuantity3 =>
      real().nullable().named('COMPRAS_ENTREGA_CANTIDAD_3')();
  RealColumn get purchasesDeliveryQuantityMore3 =>
      real().nullable().named('COMPRAS_ENTREGA_CANTIDAD_MAS_3')();
  DateTimeColumn get purchasesDeliveryDate1 =>
      dateTime().nullable().named('COMPRAS_ENTREGA_FECHA_1')();
  DateTimeColumn get purchasesDeliveryDate2 =>
      dateTime().nullable().named('COMPRAS_ENTREGA_FECHA_2')();
  DateTimeColumn get purchasesDeliveryDate3 =>
      dateTime().nullable().named('COMPRAS_ENTREGA_FECHA_3')();
  TextColumn get purchasesDeliveryStatus1 =>
      text().nullable().named('COMPRAS_ENTREGA_ESTADO_1')();
  TextColumn get purchasesDeliveryStatus2 =>
      text().nullable().named('COMPRAS_ENTREGA_ESTADO_2')();
  TextColumn get purchasesDeliveryStatus3 =>
      text().nullable().named('COMPRAS_ENTREGA_ESTADO_3')();
  TextColumn get principalImage =>
      text().nullable().named('IMAGEN_PRINCIPAL')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
