import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

import '../../../core/domain/familia.dart';
import '../../../core/domain/subfamilia.dart';
import '../../../core/helpers/extension.dart';
import '../../../core/infrastructure/familia_dto.dart';
import '../../../core/infrastructure/remote_database.dart';
import '../../../core/infrastructure/subfamilia_dto.dart';
import '../domain/articulo.dart';

part 'articulo_dto.freezed.dart';
part 'articulo_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class ArticuloDTO
    with _$ArticuloDTO
    implements Insertable<ArticuloDTO> {
  const ArticuloDTO._();
  const factory ArticuloDTO({
    @JsonKey(name: 'ARTICULO_ID') required String id,
    @JsonKey(name: 'DESCRIPCION_ES') required String descripcionES,
    @JsonKey(name: 'DESCRIPCION_EN') String? descripcionEN,
    @JsonKey(name: 'DESCRIPCION_FR') String? descripcionFR,
    @JsonKey(name: 'DESCRIPCION_DE') String? descripcionDE,
    @JsonKey(name: 'DESCRIPCION_CA') String? descripcionCA,
    @JsonKey(name: 'DESCRIPCION_GB') String? descripcionGB,
    @JsonKey(name: 'DESCRIPCION_HU') String? descripcionHU,
    @JsonKey(name: 'DESCRIPCION_IT') String? descripcionIT,
    @JsonKey(name: 'DESCRIPCION_NL') String? descripcionNL,
    @JsonKey(name: 'DESCRIPCION_PL') String? descripcionPL,
    @JsonKey(name: 'DESCRIPCION_PT') String? descripcionPT,
    @JsonKey(name: 'DESCRIPCION_RO') String? descripcionRO,
    @JsonKey(name: 'DESCRIPCION_RU') String? descripcionRU,
    @JsonKey(name: 'DESCRIPCION_CN') String? descripcionCN,
    @JsonKey(name: 'DESCRIPCION_EL') String? descripcionEL,
    @JsonKey(name: 'FAMILIA_ID') String? familiaId,
    @JsonKey(name: 'SUBFAMILIA_ID') String? subfamiliaId,
    @JsonKey(name: 'VENTA_MINIMO') required int ventaMinimo,
    @JsonKey(name: 'VENTA_MULTIPLO') required int ventaMultiplo,
    @JsonKey(name: 'UNIDADES_SUBCAJA') required int unidadesSubcaja,
    @JsonKey(name: 'UNIDADES_CAJA') required int unidadesCaja,
    @JsonKey(name: 'UNIDADES_PALET') required int unidadesPalet,
    @JsonKey(name: 'ACTIVO_WEB') required String activoWeb,
    @JsonKey(name: 'ACTIVO_APP') required String activoApp,
    @JsonKey(name: 'EN_CATALOGO') required String enCatalogo,
    @JsonKey(name: 'DESCATALOGADO') required String descatalogado,
    @JsonKey(name: 'PAGINA_EN_CATALOGO') String? paginaEnCatalgo,
    @JsonKey(name: 'PAGINA_EN_CATALOGO2') String? paginaEnCatalgo2,
    @JsonKey(name: 'PESO_KG') required double pesoKg,
    @JsonKey(name: 'LARGO_CM') required double largoCm,
    @JsonKey(name: 'ANCHO_CM') required double anchoCm,
    @JsonKey(name: 'ALTO_CM') required double altoCm,
    @JsonKey(name: 'RESUMEN_ES') String? resumenES,
    @JsonKey(name: 'RESUMEN_EN') String? resumenEN,
    @JsonKey(name: 'RESUMEN_FR') String? resumenFR,
    @JsonKey(name: 'RESUMEN_DE') String? resumenDE,
    @JsonKey(name: 'RESUMEN_CA') String? resumenCA,
    @JsonKey(name: 'RESUMEN_GB') String? resumenGB,
    @JsonKey(name: 'RESUMEN_HU') String? resumenHU,
    @JsonKey(name: 'RESUMEN_IT') String? resumenIT,
    @JsonKey(name: 'RESUMEN_NL') String? resumenNL,
    @JsonKey(name: 'RESUMEN_PL') String? resumenPL,
    @JsonKey(name: 'RESUMEN_PT') String? resumenPT,
    @JsonKey(name: 'RESUMEN_RO') String? resumenRO,
    @JsonKey(name: 'RESUMEN_RU') String? resumenRU,
    @JsonKey(name: 'RESUMEN_CN') String? resumenCN,
    @JsonKey(name: 'RESUMEN_EL') String? resumenEL,
    @JsonKey(name: 'STOCK_DISPONIBLE') required int stockDisponible,
    @JsonKey(name: 'VENTAS_ACTUAL') required double ventasActual,
    @JsonKey(name: 'VENTAS_ANTERIOR') required double ventasAnterior,
    @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_1')
    required int comprasEntregaCantidad1,
    @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_2')
    required int comprasEntregaCantidad2,
    @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_3')
    required int comprasEntregaCantidad3,
    @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_MAS_3')
    required int comprasEntregaCantidadMas3,
    @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_1') DateTime? comprasEntregaFecha1,
    @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_2') DateTime? comprasEntregaFecha2,
    @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_3') DateTime? comprasEntregaFecha3,
    @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_1') String? comprasEntregaEstado1,
    @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_2') String? comprasEntregaEstado2,
    @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_') String? comprasEntregaEstado3,
    @JsonKey(name: 'IMAGEN_PRINCIPAL') String? imagenPrincipal,
    @JsonKey(name: 'GTIN_13_UNIDAD') String? gtin13Unidad,
    @JsonKey(name: 'GS1_128_SUBCAJA') String? gs1128Subcaja,
    @JsonKey(name: 'GS1_128_CAJA') String? gs1128Caja,
    @JsonKey(name: 'GS1_128_PALET') String? gs1128Palet,
    @JsonKey(name: 'VENTAS_ORDEN') int? ventasOrden,
    @JsonKey(name: 'COSTE_UNITARIO') double? costeUnitario,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ArticuloDTO;

  factory ArticuloDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloDTOFromJson(json);

  Articulo toDomain({
    required Familia? familia,
    required Subfamilia? subfamilia,
  }) {
    return Articulo(
      id: id,
      descripcionES: descripcionES,
      descripcionEN: descripcionEN,
      descripcionFR: descripcionFR,
      descripcionDE: descripcionDE,
      descripcionCA: descripcionCA,
      descripcionGB: descripcionGB,
      descripcionHU: descripcionHU,
      descripcionIT: descripcionIT,
      descripcionNL: descripcionNL,
      descripcionPL: descripcionPL,
      descripcionPT: descripcionPT,
      descripcionRO: descripcionRO,
      descripcionRU: descripcionRU,
      descripcionCN: descripcionCN,
      descripcionEL: descripcionEL,
      familia: familia,
      subfamilia: subfamilia,
      ventaMinimo: ventaMinimo,
      ventaMultiplo: ventaMultiplo,
      unidadesSubcaja: unidadesSubcaja,
      unidadesCaja: unidadesCaja,
      unidadesPalet: unidadesPalet,
      activoWeb: (activoWeb == 'S'),
      activoApp: (activoApp == 'S'),
      enCatalogo: (enCatalogo == 'S'),
      descatalogado: (descatalogado == 'S'),
      paginaEnCatalgo: paginaEnCatalgo,
      paginaEnCatalgo2: paginaEnCatalgo2,
      pesoKg: pesoKg,
      largoCm: largoCm,
      anchoCm: anchoCm,
      altoCm: altoCm,
      resumenES: resumenES,
      resumenEN: resumenEN,
      resumenFR: resumenFR,
      resumenDE: resumenDE,
      resumenCA: resumenCA,
      resumenGB: resumenGB,
      resumenHU: resumenHU,
      resumenIT: resumenIT,
      resumenNL: resumenNL,
      resumenPL: resumenPL,
      resumenPT: resumenPT,
      resumenRO: resumenRO,
      resumenRU: resumenRU,
      resumenCN: resumenCN,
      resumenEL: resumenEL,
      stockDisponible: stockDisponible,
      ventasActual: ventasActual.toMoney(),
      ventasAnterior: ventasAnterior.toMoney(),
      comprasEntregaCantidad1: comprasEntregaCantidad1,
      comprasEntregaCantidad2: comprasEntregaCantidad2,
      comprasEntregaCantidad3: comprasEntregaCantidad3,
      comprasEntregaCantidadMas3: comprasEntregaCantidadMas3,
      comprasEntregaFecha1: comprasEntregaFecha1,
      comprasEntregaFecha2: comprasEntregaFecha2,
      comprasEntregaFecha3: comprasEntregaFecha3,
      comprasEntregaEstado1: comprasEntregaEstado1,
      comprasEntregaEstado2: comprasEntregaEstado2,
      comprasEntregaEstado3: comprasEntregaEstado3,
      imagenPrincipal: imagenPrincipal,
      gtin13Unidad: gtin13Unidad,
      gs1128Subcaja: gs1128Subcaja,
      gs1128Caja: gs1128Caja,
      gs1128Palet: gs1128Palet,
      ventasAnyoActual: Money.fromNum(0.0, isoCode: 'EU'),
      ventasAnyoAnterior: Money.fromNum(0.0, isoCode: 'EU'),
      ventasHaceDosAnyos: Money.fromNum(0.0, isoCode: 'EU'),
      margenAnyoActual: 0.0,
      margenAnyoAnterior: 0.0,
      margenHaceDosAnyos: 0.0,
      costeUnitario: (costeUnitario != null)
          ? Money.fromNum(costeUnitario!, isoCode: 'EU')
          : null,
      ventasOrden: ventasOrden,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S'),
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ArticuloTableCompanion(
      id: Value(id),
      descripcionES: Value(descripcionES),
      descripcionEN: Value(descripcionEN),
      descripcionFR: Value(descripcionFR),
      descripcionDE: Value(descripcionDE),
      descripcionCA: Value(descripcionCA),
      descripcionGB: Value(descripcionGB),
      descripcionHU: Value(descripcionHU),
      descripcionIT: Value(descripcionIT),
      descripcionNL: Value(descripcionNL),
      descripcionPL: Value(descripcionPL),
      descripcionPT: Value(descripcionPT),
      descripcionRO: Value(descripcionRO),
      descripcionRU: Value(descripcionRU),
      descripcionCN: Value(descripcionCN),
      descripcionEL: Value(descripcionEL),
      familiaId: Value(familiaId),
      subfamiliaId: Value(subfamiliaId),
      ventaMinimo: Value(ventaMinimo),
      ventaMultiplo: Value(ventaMultiplo),
      unidadesSubcaja: Value(unidadesSubcaja),
      unidadesCaja: Value(unidadesCaja),
      unidadesPalet: Value(unidadesPalet),
      activoWeb: Value(activoWeb),
      activoApp: Value(activoApp),
      enCatalogo: Value(enCatalogo),
      descatalogado: Value(descatalogado),
      paginaEnCatalgo: Value(paginaEnCatalgo),
      paginaEnCatalgo2: Value(paginaEnCatalgo2),
      pesoKg: Value(pesoKg),
      largoCm: Value(largoCm),
      anchoCm: Value(anchoCm),
      altoCm: Value(altoCm),
      resumenES: Value(resumenES),
      resumenEN: Value(resumenEN),
      resumenFR: Value(resumenFR),
      resumenDE: Value(resumenDE),
      resumenCA: Value(resumenCA),
      resumenGB: Value(resumenGB),
      resumenHU: Value(resumenHU),
      resumenIT: Value(resumenIT),
      resumenNL: Value(resumenNL),
      resumenPL: Value(resumenPL),
      resumenPT: Value(resumenPT),
      resumenRO: Value(resumenRO),
      resumenRU: Value(resumenRU),
      resumenCN: Value(resumenCN),
      resumenEL: Value(resumenEL),
      stockDisponible: Value(stockDisponible),
      ventasActual: Value(ventasActual),
      ventasAnterior: Value(ventasAnterior),
      comprasEntregaCantidad1: Value(comprasEntregaCantidad1),
      comprasEntregaCantidad2: Value(comprasEntregaCantidad2),
      comprasEntregaCantidad3: Value(comprasEntregaCantidad3),
      comprasEntregaCantidadMas3: Value(comprasEntregaCantidadMas3),
      comprasEntregaFecha1: Value(comprasEntregaFecha1),
      comprasEntregaFecha2: Value(comprasEntregaFecha2),
      comprasEntregaFecha3: Value(comprasEntregaFecha3),
      comprasEntregaEstado1: Value(comprasEntregaEstado1),
      comprasEntregaEstado2: Value(comprasEntregaEstado2),
      comprasEntregaEstado3: Value(comprasEntregaEstado3),
      imagenPrincipal: Value(imagenPrincipal),
      gtin13Unidad: Value(gtin13Unidad),
      gs1128Subcaja: Value(gs1128Subcaja),
      gs1128Caja: Value(gs1128Caja),
      gs1128Palet: Value(gs1128Palet),
      ventasOrden: Value(ventasOrden),
      costeUnitario: Value(costeUnitario),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ArticuloDTO)
class ArticuloTable extends Table {
  @override
  String get tableName => 'ARTICULOS';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('ARTICULO_ID')();
  TextColumn get descripcionES => text().named('DESCRIPCION_ES')();
  TextColumn get descripcionEN => text().nullable().named('DESCRIPCION_EN')();
  TextColumn get descripcionFR => text().nullable().named('DESCRIPCION_FR')();
  TextColumn get descripcionDE => text().nullable().named('DESCRIPCION_DE')();
  TextColumn get descripcionCA => text().nullable().named('DESCRIPCION_CA')();
  TextColumn get descripcionGB => text().nullable().named('DESCRIPCION_GB')();
  TextColumn get descripcionHU => text().nullable().named('DESCRIPCION_HU')();
  TextColumn get descripcionIT => text().nullable().named('DESCRIPCION_IT')();
  TextColumn get descripcionNL => text().nullable().named('DESCRIPCION_NL')();
  TextColumn get descripcionPL => text().nullable().named('DESCRIPCION_PL')();
  TextColumn get descripcionPT => text().nullable().named('DESCRIPCION_PT')();
  TextColumn get descripcionRO => text().nullable().named('DESCRIPCION_RO')();
  TextColumn get descripcionRU => text().nullable().named('DESCRIPCION_RU')();
  TextColumn get descripcionCN => text().nullable().named('DESCRIPCION_CN')();
  TextColumn get descripcionEL => text().nullable().named('DESCRIPCION_EL')();
  TextColumn get familiaId =>
      text().nullable().references(FamiliaTable, #id).named('FAMILIA_ID')();
  TextColumn get subfamiliaId => text()
      .nullable()
      .references(SubfamiliaTable, #id)
      .named('SUBFAMILIA_ID')();
  IntColumn get ventaMinimo => integer().named('VENTA_MINIMO')();
  IntColumn get ventaMultiplo => integer().named('VENTA_MULTIPLO')();
  IntColumn get unidadesSubcaja => integer().named('UNIDADES_SUBCAJA')();
  IntColumn get unidadesCaja => integer().named('UNIDADES_CAJA')();
  IntColumn get unidadesPalet => integer().named('UNIDADES_PALET')();
  TextColumn get activoWeb => text().named('ACTIVO_WEB')();
  TextColumn get activoApp => text().named('ACTIVO_APP')();
  TextColumn get enCatalogo => text().named('EN_CATALOGO')();
  TextColumn get descatalogado => text().named('DESCATALOGADO')();
  TextColumn get paginaEnCatalgo =>
      text().nullable().named('PAGINA_EN_CATALOGO')();
  TextColumn get paginaEnCatalgo2 =>
      text().nullable().named('PAGINA_EN_CATALOGO2')();
  RealColumn get pesoKg => real().named('PESO_KG')();
  RealColumn get largoCm => real().named('LARGO_CM')();
  RealColumn get anchoCm => real().named('ANCHO_CM')();
  RealColumn get altoCm => real().named('ALTO_CM')();
  TextColumn get resumenES => text().nullable().named('RESUMEN_ES')();
  TextColumn get resumenEN => text().nullable().named('RESUMEN_EN')();
  TextColumn get resumenFR => text().nullable().named('RESUMEN_FR')();
  TextColumn get resumenDE => text().nullable().named('RESUMEN_DE')();
  TextColumn get resumenCA => text().nullable().named('RESUMEN_CA')();
  TextColumn get resumenGB => text().nullable().named('RESUMEN_GB')();
  TextColumn get resumenHU => text().nullable().named('RESUMEN_HU')();
  TextColumn get resumenIT => text().nullable().named('RESUMEN_IT')();
  TextColumn get resumenNL => text().nullable().named('RESUMEN_NL')();
  TextColumn get resumenPL => text().nullable().named('RESUMEN_PL')();
  TextColumn get resumenPT => text().nullable().named('RESUMEN_PT')();
  TextColumn get resumenRO => text().nullable().named('RESUMEN_RO')();
  TextColumn get resumenRU => text().nullable().named('RESUMEN_RU')();
  TextColumn get resumenCN => text().nullable().named('RESUMEN_CN')();
  TextColumn get resumenEL => text().nullable().named('RESUMEN_EL')();
  IntColumn get stockDisponible => integer().named('STOCK_DISPONIBLE')();
  RealColumn get ventasActual => real().named('VENTAS_ACTUAL')();
  RealColumn get ventasAnterior => real().named('VENTAS_ANTERIOR')();
  IntColumn get comprasEntregaCantidad1 =>
      integer().named('COMPRAS_ENTREGA_CANTIDAD_1')();
  IntColumn get comprasEntregaCantidad2 =>
      integer().named('COMPRAS_ENTREGA_CANTIDAD_2')();
  IntColumn get comprasEntregaCantidad3 =>
      integer().named('COMPRAS_ENTREGA_CANTIDAD_3')();
  IntColumn get comprasEntregaCantidadMas3 =>
      integer().named('COMPRAS_ENTREGA_CANTIDAD_MAS_3')();
  DateTimeColumn get comprasEntregaFecha1 =>
      dateTime().nullable().named('COMPRAS_ENTREGA_FECHA_1')();
  DateTimeColumn get comprasEntregaFecha2 =>
      dateTime().nullable().named('COMPRAS_ENTREGA_FECHA_2')();
  DateTimeColumn get comprasEntregaFecha3 =>
      dateTime().nullable().named('COMPRAS_ENTREGA_FECHA_3')();
  TextColumn get comprasEntregaEstado1 =>
      text().nullable().named('COMPRAS_ENTREGA_ESTADO_1')();
  TextColumn get comprasEntregaEstado2 =>
      text().nullable().named('COMPRAS_ENTREGA_ESTADO_2')();
  TextColumn get comprasEntregaEstado3 =>
      text().nullable().named('COMPRAS_ENTREGA_ESTADO_3')();
  TextColumn get imagenPrincipal =>
      text().nullable().named('IMAGEN_PRINCIPAL')();
  TextColumn get gtin13Unidad => text().nullable().named('GTIN_13_UNIDAD')();
  TextColumn get gs1128Subcaja => text().nullable().named('GS1_128_SUBCAJA')();
  TextColumn get gs1128Caja => text().nullable().named('GS1_128_CAJA')();
  TextColumn get gs1128Palet => text().nullable().named('GS1_128_PALET')();
  IntColumn get ventasOrden => integer().nullable().named('VENTAS_ORDEN')();
  RealColumn get costeUnitario => real().nullable().named('COSTE_UNITARIO')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
