// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticuloDTO {

@JsonKey(name: 'ARTICULO_ID') String get id;@JsonKey(name: 'DESCRIPCION_ES') String get descripcionES;@JsonKey(name: 'DESCRIPCION_EN') String? get descripcionEN;@JsonKey(name: 'DESCRIPCION_FR') String? get descripcionFR;@JsonKey(name: 'DESCRIPCION_DE') String? get descripcionDE;@JsonKey(name: 'DESCRIPCION_CA') String? get descripcionCA;@JsonKey(name: 'DESCRIPCION_GB') String? get descripcionGB;@JsonKey(name: 'DESCRIPCION_HU') String? get descripcionHU;@JsonKey(name: 'DESCRIPCION_IT') String? get descripcionIT;@JsonKey(name: 'DESCRIPCION_NL') String? get descripcionNL;@JsonKey(name: 'DESCRIPCION_PL') String? get descripcionPL;@JsonKey(name: 'DESCRIPCION_PT') String? get descripcionPT;@JsonKey(name: 'DESCRIPCION_RO') String? get descripcionRO;@JsonKey(name: 'DESCRIPCION_RU') String? get descripcionRU;@JsonKey(name: 'DESCRIPCION_CN') String? get descripcionCN;@JsonKey(name: 'DESCRIPCION_EL') String? get descripcionEL;@JsonKey(name: 'FAMILIA_ID') String? get familiaId;@JsonKey(name: 'SUBFAMILIA_ID') String? get subfamiliaId;@JsonKey(name: 'VENTA_MINIMO') int get ventaMinimo;@JsonKey(name: 'VENTA_MULTIPLO') int get ventaMultiplo;@JsonKey(name: 'UNIDADES_SUBCAJA') int get unidadesSubcaja;@JsonKey(name: 'UNIDADES_CAJA') int get unidadesCaja;@JsonKey(name: 'UNIDADES_PALET') int get unidadesPalet;@JsonKey(name: 'ACTIVO_WEB') String get activoWeb;@JsonKey(name: 'ACTIVO_APP') String get activoApp;@JsonKey(name: 'EN_CATALOGO') String get enCatalogo;@JsonKey(name: 'DESCATALOGADO') String get descatalogado;@JsonKey(name: 'PAGINA_EN_CATALOGO') String? get paginaEnCatalgo;@JsonKey(name: 'PAGINA_EN_CATALOGO2') String? get paginaEnCatalgo2;@JsonKey(name: 'PESO_KG') double get pesoKg;@JsonKey(name: 'LARGO_CM') double get largoCm;@JsonKey(name: 'ANCHO_CM') double get anchoCm;@JsonKey(name: 'ALTO_CM') double get altoCm;@JsonKey(name: 'RESUMEN_ES') String? get resumenES;@JsonKey(name: 'RESUMEN_EN') String? get resumenEN;@JsonKey(name: 'RESUMEN_FR') String? get resumenFR;@JsonKey(name: 'RESUMEN_DE') String? get resumenDE;@JsonKey(name: 'RESUMEN_CA') String? get resumenCA;@JsonKey(name: 'RESUMEN_GB') String? get resumenGB;@JsonKey(name: 'RESUMEN_HU') String? get resumenHU;@JsonKey(name: 'RESUMEN_IT') String? get resumenIT;@JsonKey(name: 'RESUMEN_NL') String? get resumenNL;@JsonKey(name: 'RESUMEN_PL') String? get resumenPL;@JsonKey(name: 'RESUMEN_PT') String? get resumenPT;@JsonKey(name: 'RESUMEN_RO') String? get resumenRO;@JsonKey(name: 'RESUMEN_RU') String? get resumenRU;@JsonKey(name: 'RESUMEN_CN') String? get resumenCN;@JsonKey(name: 'RESUMEN_EL') String? get resumenEL;@JsonKey(name: 'STOCK_DISPONIBLE') int get stockDisponible;@JsonKey(name: 'VENTAS_ACTUAL') double get ventasActual;@JsonKey(name: 'VENTAS_ANTERIOR') double get ventasAnterior;@JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_1') int get comprasEntregaCantidad1;@JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_2') int get comprasEntregaCantidad2;@JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_3') int get comprasEntregaCantidad3;@JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_MAS_3') int get comprasEntregaCantidadMas3;@JsonKey(name: 'COMPRAS_ENTREGA_FECHA_1') DateTime? get comprasEntregaFecha1;@JsonKey(name: 'COMPRAS_ENTREGA_FECHA_2') DateTime? get comprasEntregaFecha2;@JsonKey(name: 'COMPRAS_ENTREGA_FECHA_3') DateTime? get comprasEntregaFecha3;@JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_1') String? get comprasEntregaEstado1;@JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_2') String? get comprasEntregaEstado2;@JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_') String? get comprasEntregaEstado3;@JsonKey(name: 'IMAGEN_PRINCIPAL') String? get imagenPrincipal;@JsonKey(name: 'GTIN_13_UNIDAD') String? get gtin13Unidad;@JsonKey(name: 'GS1_128_SUBCAJA') String? get gs1128Subcaja;@JsonKey(name: 'GS1_128_CAJA') String? get gs1128Caja;@JsonKey(name: 'GS1_128_PALET') String? get gs1128Palet;@JsonKey(name: 'VENTAS_ORDEN') int? get ventasOrden;@JsonKey(name: 'COSTE_UNITARIO') double? get costeUnitario;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ArticuloDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloDTOCopyWith<ArticuloDTO> get copyWith => _$ArticuloDTOCopyWithImpl<ArticuloDTO>(this as ArticuloDTO, _$identity);

  /// Serializes this ArticuloDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.descripcionES, descripcionES) || other.descripcionES == descripcionES)&&(identical(other.descripcionEN, descripcionEN) || other.descripcionEN == descripcionEN)&&(identical(other.descripcionFR, descripcionFR) || other.descripcionFR == descripcionFR)&&(identical(other.descripcionDE, descripcionDE) || other.descripcionDE == descripcionDE)&&(identical(other.descripcionCA, descripcionCA) || other.descripcionCA == descripcionCA)&&(identical(other.descripcionGB, descripcionGB) || other.descripcionGB == descripcionGB)&&(identical(other.descripcionHU, descripcionHU) || other.descripcionHU == descripcionHU)&&(identical(other.descripcionIT, descripcionIT) || other.descripcionIT == descripcionIT)&&(identical(other.descripcionNL, descripcionNL) || other.descripcionNL == descripcionNL)&&(identical(other.descripcionPL, descripcionPL) || other.descripcionPL == descripcionPL)&&(identical(other.descripcionPT, descripcionPT) || other.descripcionPT == descripcionPT)&&(identical(other.descripcionRO, descripcionRO) || other.descripcionRO == descripcionRO)&&(identical(other.descripcionRU, descripcionRU) || other.descripcionRU == descripcionRU)&&(identical(other.descripcionCN, descripcionCN) || other.descripcionCN == descripcionCN)&&(identical(other.descripcionEL, descripcionEL) || other.descripcionEL == descripcionEL)&&(identical(other.familiaId, familiaId) || other.familiaId == familiaId)&&(identical(other.subfamiliaId, subfamiliaId) || other.subfamiliaId == subfamiliaId)&&(identical(other.ventaMinimo, ventaMinimo) || other.ventaMinimo == ventaMinimo)&&(identical(other.ventaMultiplo, ventaMultiplo) || other.ventaMultiplo == ventaMultiplo)&&(identical(other.unidadesSubcaja, unidadesSubcaja) || other.unidadesSubcaja == unidadesSubcaja)&&(identical(other.unidadesCaja, unidadesCaja) || other.unidadesCaja == unidadesCaja)&&(identical(other.unidadesPalet, unidadesPalet) || other.unidadesPalet == unidadesPalet)&&(identical(other.activoWeb, activoWeb) || other.activoWeb == activoWeb)&&(identical(other.activoApp, activoApp) || other.activoApp == activoApp)&&(identical(other.enCatalogo, enCatalogo) || other.enCatalogo == enCatalogo)&&(identical(other.descatalogado, descatalogado) || other.descatalogado == descatalogado)&&(identical(other.paginaEnCatalgo, paginaEnCatalgo) || other.paginaEnCatalgo == paginaEnCatalgo)&&(identical(other.paginaEnCatalgo2, paginaEnCatalgo2) || other.paginaEnCatalgo2 == paginaEnCatalgo2)&&(identical(other.pesoKg, pesoKg) || other.pesoKg == pesoKg)&&(identical(other.largoCm, largoCm) || other.largoCm == largoCm)&&(identical(other.anchoCm, anchoCm) || other.anchoCm == anchoCm)&&(identical(other.altoCm, altoCm) || other.altoCm == altoCm)&&(identical(other.resumenES, resumenES) || other.resumenES == resumenES)&&(identical(other.resumenEN, resumenEN) || other.resumenEN == resumenEN)&&(identical(other.resumenFR, resumenFR) || other.resumenFR == resumenFR)&&(identical(other.resumenDE, resumenDE) || other.resumenDE == resumenDE)&&(identical(other.resumenCA, resumenCA) || other.resumenCA == resumenCA)&&(identical(other.resumenGB, resumenGB) || other.resumenGB == resumenGB)&&(identical(other.resumenHU, resumenHU) || other.resumenHU == resumenHU)&&(identical(other.resumenIT, resumenIT) || other.resumenIT == resumenIT)&&(identical(other.resumenNL, resumenNL) || other.resumenNL == resumenNL)&&(identical(other.resumenPL, resumenPL) || other.resumenPL == resumenPL)&&(identical(other.resumenPT, resumenPT) || other.resumenPT == resumenPT)&&(identical(other.resumenRO, resumenRO) || other.resumenRO == resumenRO)&&(identical(other.resumenRU, resumenRU) || other.resumenRU == resumenRU)&&(identical(other.resumenCN, resumenCN) || other.resumenCN == resumenCN)&&(identical(other.resumenEL, resumenEL) || other.resumenEL == resumenEL)&&(identical(other.stockDisponible, stockDisponible) || other.stockDisponible == stockDisponible)&&(identical(other.ventasActual, ventasActual) || other.ventasActual == ventasActual)&&(identical(other.ventasAnterior, ventasAnterior) || other.ventasAnterior == ventasAnterior)&&(identical(other.comprasEntregaCantidad1, comprasEntregaCantidad1) || other.comprasEntregaCantidad1 == comprasEntregaCantidad1)&&(identical(other.comprasEntregaCantidad2, comprasEntregaCantidad2) || other.comprasEntregaCantidad2 == comprasEntregaCantidad2)&&(identical(other.comprasEntregaCantidad3, comprasEntregaCantidad3) || other.comprasEntregaCantidad3 == comprasEntregaCantidad3)&&(identical(other.comprasEntregaCantidadMas3, comprasEntregaCantidadMas3) || other.comprasEntregaCantidadMas3 == comprasEntregaCantidadMas3)&&(identical(other.comprasEntregaFecha1, comprasEntregaFecha1) || other.comprasEntregaFecha1 == comprasEntregaFecha1)&&(identical(other.comprasEntregaFecha2, comprasEntregaFecha2) || other.comprasEntregaFecha2 == comprasEntregaFecha2)&&(identical(other.comprasEntregaFecha3, comprasEntregaFecha3) || other.comprasEntregaFecha3 == comprasEntregaFecha3)&&(identical(other.comprasEntregaEstado1, comprasEntregaEstado1) || other.comprasEntregaEstado1 == comprasEntregaEstado1)&&(identical(other.comprasEntregaEstado2, comprasEntregaEstado2) || other.comprasEntregaEstado2 == comprasEntregaEstado2)&&(identical(other.comprasEntregaEstado3, comprasEntregaEstado3) || other.comprasEntregaEstado3 == comprasEntregaEstado3)&&(identical(other.imagenPrincipal, imagenPrincipal) || other.imagenPrincipal == imagenPrincipal)&&(identical(other.gtin13Unidad, gtin13Unidad) || other.gtin13Unidad == gtin13Unidad)&&(identical(other.gs1128Subcaja, gs1128Subcaja) || other.gs1128Subcaja == gs1128Subcaja)&&(identical(other.gs1128Caja, gs1128Caja) || other.gs1128Caja == gs1128Caja)&&(identical(other.gs1128Palet, gs1128Palet) || other.gs1128Palet == gs1128Palet)&&(identical(other.ventasOrden, ventasOrden) || other.ventasOrden == ventasOrden)&&(identical(other.costeUnitario, costeUnitario) || other.costeUnitario == costeUnitario)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,descripcionES,descripcionEN,descripcionFR,descripcionDE,descripcionCA,descripcionGB,descripcionHU,descripcionIT,descripcionNL,descripcionPL,descripcionPT,descripcionRO,descripcionRU,descripcionCN,descripcionEL,familiaId,subfamiliaId,ventaMinimo,ventaMultiplo,unidadesSubcaja,unidadesCaja,unidadesPalet,activoWeb,activoApp,enCatalogo,descatalogado,paginaEnCatalgo,paginaEnCatalgo2,pesoKg,largoCm,anchoCm,altoCm,resumenES,resumenEN,resumenFR,resumenDE,resumenCA,resumenGB,resumenHU,resumenIT,resumenNL,resumenPL,resumenPT,resumenRO,resumenRU,resumenCN,resumenEL,stockDisponible,ventasActual,ventasAnterior,comprasEntregaCantidad1,comprasEntregaCantidad2,comprasEntregaCantidad3,comprasEntregaCantidadMas3,comprasEntregaFecha1,comprasEntregaFecha2,comprasEntregaFecha3,comprasEntregaEstado1,comprasEntregaEstado2,comprasEntregaEstado3,imagenPrincipal,gtin13Unidad,gs1128Subcaja,gs1128Caja,gs1128Palet,ventasOrden,costeUnitario,lastUpdated,deleted]);

@override
String toString() {
  return 'ArticuloDTO(id: $id, descripcionES: $descripcionES, descripcionEN: $descripcionEN, descripcionFR: $descripcionFR, descripcionDE: $descripcionDE, descripcionCA: $descripcionCA, descripcionGB: $descripcionGB, descripcionHU: $descripcionHU, descripcionIT: $descripcionIT, descripcionNL: $descripcionNL, descripcionPL: $descripcionPL, descripcionPT: $descripcionPT, descripcionRO: $descripcionRO, descripcionRU: $descripcionRU, descripcionCN: $descripcionCN, descripcionEL: $descripcionEL, familiaId: $familiaId, subfamiliaId: $subfamiliaId, ventaMinimo: $ventaMinimo, ventaMultiplo: $ventaMultiplo, unidadesSubcaja: $unidadesSubcaja, unidadesCaja: $unidadesCaja, unidadesPalet: $unidadesPalet, activoWeb: $activoWeb, activoApp: $activoApp, enCatalogo: $enCatalogo, descatalogado: $descatalogado, paginaEnCatalgo: $paginaEnCatalgo, paginaEnCatalgo2: $paginaEnCatalgo2, pesoKg: $pesoKg, largoCm: $largoCm, anchoCm: $anchoCm, altoCm: $altoCm, resumenES: $resumenES, resumenEN: $resumenEN, resumenFR: $resumenFR, resumenDE: $resumenDE, resumenCA: $resumenCA, resumenGB: $resumenGB, resumenHU: $resumenHU, resumenIT: $resumenIT, resumenNL: $resumenNL, resumenPL: $resumenPL, resumenPT: $resumenPT, resumenRO: $resumenRO, resumenRU: $resumenRU, resumenCN: $resumenCN, resumenEL: $resumenEL, stockDisponible: $stockDisponible, ventasActual: $ventasActual, ventasAnterior: $ventasAnterior, comprasEntregaCantidad1: $comprasEntregaCantidad1, comprasEntregaCantidad2: $comprasEntregaCantidad2, comprasEntregaCantidad3: $comprasEntregaCantidad3, comprasEntregaCantidadMas3: $comprasEntregaCantidadMas3, comprasEntregaFecha1: $comprasEntregaFecha1, comprasEntregaFecha2: $comprasEntregaFecha2, comprasEntregaFecha3: $comprasEntregaFecha3, comprasEntregaEstado1: $comprasEntregaEstado1, comprasEntregaEstado2: $comprasEntregaEstado2, comprasEntregaEstado3: $comprasEntregaEstado3, imagenPrincipal: $imagenPrincipal, gtin13Unidad: $gtin13Unidad, gs1128Subcaja: $gs1128Subcaja, gs1128Caja: $gs1128Caja, gs1128Palet: $gs1128Palet, ventasOrden: $ventasOrden, costeUnitario: $costeUnitario, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ArticuloDTOCopyWith<$Res>  {
  factory $ArticuloDTOCopyWith(ArticuloDTO value, $Res Function(ArticuloDTO) _then) = _$ArticuloDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String id,@JsonKey(name: 'DESCRIPCION_ES') String descripcionES,@JsonKey(name: 'DESCRIPCION_EN') String? descripcionEN,@JsonKey(name: 'DESCRIPCION_FR') String? descripcionFR,@JsonKey(name: 'DESCRIPCION_DE') String? descripcionDE,@JsonKey(name: 'DESCRIPCION_CA') String? descripcionCA,@JsonKey(name: 'DESCRIPCION_GB') String? descripcionGB,@JsonKey(name: 'DESCRIPCION_HU') String? descripcionHU,@JsonKey(name: 'DESCRIPCION_IT') String? descripcionIT,@JsonKey(name: 'DESCRIPCION_NL') String? descripcionNL,@JsonKey(name: 'DESCRIPCION_PL') String? descripcionPL,@JsonKey(name: 'DESCRIPCION_PT') String? descripcionPT,@JsonKey(name: 'DESCRIPCION_RO') String? descripcionRO,@JsonKey(name: 'DESCRIPCION_RU') String? descripcionRU,@JsonKey(name: 'DESCRIPCION_CN') String? descripcionCN,@JsonKey(name: 'DESCRIPCION_EL') String? descripcionEL,@JsonKey(name: 'FAMILIA_ID') String? familiaId,@JsonKey(name: 'SUBFAMILIA_ID') String? subfamiliaId,@JsonKey(name: 'VENTA_MINIMO') int ventaMinimo,@JsonKey(name: 'VENTA_MULTIPLO') int ventaMultiplo,@JsonKey(name: 'UNIDADES_SUBCAJA') int unidadesSubcaja,@JsonKey(name: 'UNIDADES_CAJA') int unidadesCaja,@JsonKey(name: 'UNIDADES_PALET') int unidadesPalet,@JsonKey(name: 'ACTIVO_WEB') String activoWeb,@JsonKey(name: 'ACTIVO_APP') String activoApp,@JsonKey(name: 'EN_CATALOGO') String enCatalogo,@JsonKey(name: 'DESCATALOGADO') String descatalogado,@JsonKey(name: 'PAGINA_EN_CATALOGO') String? paginaEnCatalgo,@JsonKey(name: 'PAGINA_EN_CATALOGO2') String? paginaEnCatalgo2,@JsonKey(name: 'PESO_KG') double pesoKg,@JsonKey(name: 'LARGO_CM') double largoCm,@JsonKey(name: 'ANCHO_CM') double anchoCm,@JsonKey(name: 'ALTO_CM') double altoCm,@JsonKey(name: 'RESUMEN_ES') String? resumenES,@JsonKey(name: 'RESUMEN_EN') String? resumenEN,@JsonKey(name: 'RESUMEN_FR') String? resumenFR,@JsonKey(name: 'RESUMEN_DE') String? resumenDE,@JsonKey(name: 'RESUMEN_CA') String? resumenCA,@JsonKey(name: 'RESUMEN_GB') String? resumenGB,@JsonKey(name: 'RESUMEN_HU') String? resumenHU,@JsonKey(name: 'RESUMEN_IT') String? resumenIT,@JsonKey(name: 'RESUMEN_NL') String? resumenNL,@JsonKey(name: 'RESUMEN_PL') String? resumenPL,@JsonKey(name: 'RESUMEN_PT') String? resumenPT,@JsonKey(name: 'RESUMEN_RO') String? resumenRO,@JsonKey(name: 'RESUMEN_RU') String? resumenRU,@JsonKey(name: 'RESUMEN_CN') String? resumenCN,@JsonKey(name: 'RESUMEN_EL') String? resumenEL,@JsonKey(name: 'STOCK_DISPONIBLE') int stockDisponible,@JsonKey(name: 'VENTAS_ACTUAL') double ventasActual,@JsonKey(name: 'VENTAS_ANTERIOR') double ventasAnterior,@JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_1') int comprasEntregaCantidad1,@JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_2') int comprasEntregaCantidad2,@JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_3') int comprasEntregaCantidad3,@JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_MAS_3') int comprasEntregaCantidadMas3,@JsonKey(name: 'COMPRAS_ENTREGA_FECHA_1') DateTime? comprasEntregaFecha1,@JsonKey(name: 'COMPRAS_ENTREGA_FECHA_2') DateTime? comprasEntregaFecha2,@JsonKey(name: 'COMPRAS_ENTREGA_FECHA_3') DateTime? comprasEntregaFecha3,@JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_1') String? comprasEntregaEstado1,@JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_2') String? comprasEntregaEstado2,@JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_') String? comprasEntregaEstado3,@JsonKey(name: 'IMAGEN_PRINCIPAL') String? imagenPrincipal,@JsonKey(name: 'GTIN_13_UNIDAD') String? gtin13Unidad,@JsonKey(name: 'GS1_128_SUBCAJA') String? gs1128Subcaja,@JsonKey(name: 'GS1_128_CAJA') String? gs1128Caja,@JsonKey(name: 'GS1_128_PALET') String? gs1128Palet,@JsonKey(name: 'VENTAS_ORDEN') int? ventasOrden,@JsonKey(name: 'COSTE_UNITARIO') double? costeUnitario,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ArticuloDTOCopyWithImpl<$Res>
    implements $ArticuloDTOCopyWith<$Res> {
  _$ArticuloDTOCopyWithImpl(this._self, this._then);

  final ArticuloDTO _self;
  final $Res Function(ArticuloDTO) _then;

/// Create a copy of ArticuloDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? descripcionES = null,Object? descripcionEN = freezed,Object? descripcionFR = freezed,Object? descripcionDE = freezed,Object? descripcionCA = freezed,Object? descripcionGB = freezed,Object? descripcionHU = freezed,Object? descripcionIT = freezed,Object? descripcionNL = freezed,Object? descripcionPL = freezed,Object? descripcionPT = freezed,Object? descripcionRO = freezed,Object? descripcionRU = freezed,Object? descripcionCN = freezed,Object? descripcionEL = freezed,Object? familiaId = freezed,Object? subfamiliaId = freezed,Object? ventaMinimo = null,Object? ventaMultiplo = null,Object? unidadesSubcaja = null,Object? unidadesCaja = null,Object? unidadesPalet = null,Object? activoWeb = null,Object? activoApp = null,Object? enCatalogo = null,Object? descatalogado = null,Object? paginaEnCatalgo = freezed,Object? paginaEnCatalgo2 = freezed,Object? pesoKg = null,Object? largoCm = null,Object? anchoCm = null,Object? altoCm = null,Object? resumenES = freezed,Object? resumenEN = freezed,Object? resumenFR = freezed,Object? resumenDE = freezed,Object? resumenCA = freezed,Object? resumenGB = freezed,Object? resumenHU = freezed,Object? resumenIT = freezed,Object? resumenNL = freezed,Object? resumenPL = freezed,Object? resumenPT = freezed,Object? resumenRO = freezed,Object? resumenRU = freezed,Object? resumenCN = freezed,Object? resumenEL = freezed,Object? stockDisponible = null,Object? ventasActual = null,Object? ventasAnterior = null,Object? comprasEntregaCantidad1 = null,Object? comprasEntregaCantidad2 = null,Object? comprasEntregaCantidad3 = null,Object? comprasEntregaCantidadMas3 = null,Object? comprasEntregaFecha1 = freezed,Object? comprasEntregaFecha2 = freezed,Object? comprasEntregaFecha3 = freezed,Object? comprasEntregaEstado1 = freezed,Object? comprasEntregaEstado2 = freezed,Object? comprasEntregaEstado3 = freezed,Object? imagenPrincipal = freezed,Object? gtin13Unidad = freezed,Object? gs1128Subcaja = freezed,Object? gs1128Caja = freezed,Object? gs1128Palet = freezed,Object? ventasOrden = freezed,Object? costeUnitario = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,descripcionES: null == descripcionES ? _self.descripcionES : descripcionES // ignore: cast_nullable_to_non_nullable
as String,descripcionEN: freezed == descripcionEN ? _self.descripcionEN : descripcionEN // ignore: cast_nullable_to_non_nullable
as String?,descripcionFR: freezed == descripcionFR ? _self.descripcionFR : descripcionFR // ignore: cast_nullable_to_non_nullable
as String?,descripcionDE: freezed == descripcionDE ? _self.descripcionDE : descripcionDE // ignore: cast_nullable_to_non_nullable
as String?,descripcionCA: freezed == descripcionCA ? _self.descripcionCA : descripcionCA // ignore: cast_nullable_to_non_nullable
as String?,descripcionGB: freezed == descripcionGB ? _self.descripcionGB : descripcionGB // ignore: cast_nullable_to_non_nullable
as String?,descripcionHU: freezed == descripcionHU ? _self.descripcionHU : descripcionHU // ignore: cast_nullable_to_non_nullable
as String?,descripcionIT: freezed == descripcionIT ? _self.descripcionIT : descripcionIT // ignore: cast_nullable_to_non_nullable
as String?,descripcionNL: freezed == descripcionNL ? _self.descripcionNL : descripcionNL // ignore: cast_nullable_to_non_nullable
as String?,descripcionPL: freezed == descripcionPL ? _self.descripcionPL : descripcionPL // ignore: cast_nullable_to_non_nullable
as String?,descripcionPT: freezed == descripcionPT ? _self.descripcionPT : descripcionPT // ignore: cast_nullable_to_non_nullable
as String?,descripcionRO: freezed == descripcionRO ? _self.descripcionRO : descripcionRO // ignore: cast_nullable_to_non_nullable
as String?,descripcionRU: freezed == descripcionRU ? _self.descripcionRU : descripcionRU // ignore: cast_nullable_to_non_nullable
as String?,descripcionCN: freezed == descripcionCN ? _self.descripcionCN : descripcionCN // ignore: cast_nullable_to_non_nullable
as String?,descripcionEL: freezed == descripcionEL ? _self.descripcionEL : descripcionEL // ignore: cast_nullable_to_non_nullable
as String?,familiaId: freezed == familiaId ? _self.familiaId : familiaId // ignore: cast_nullable_to_non_nullable
as String?,subfamiliaId: freezed == subfamiliaId ? _self.subfamiliaId : subfamiliaId // ignore: cast_nullable_to_non_nullable
as String?,ventaMinimo: null == ventaMinimo ? _self.ventaMinimo : ventaMinimo // ignore: cast_nullable_to_non_nullable
as int,ventaMultiplo: null == ventaMultiplo ? _self.ventaMultiplo : ventaMultiplo // ignore: cast_nullable_to_non_nullable
as int,unidadesSubcaja: null == unidadesSubcaja ? _self.unidadesSubcaja : unidadesSubcaja // ignore: cast_nullable_to_non_nullable
as int,unidadesCaja: null == unidadesCaja ? _self.unidadesCaja : unidadesCaja // ignore: cast_nullable_to_non_nullable
as int,unidadesPalet: null == unidadesPalet ? _self.unidadesPalet : unidadesPalet // ignore: cast_nullable_to_non_nullable
as int,activoWeb: null == activoWeb ? _self.activoWeb : activoWeb // ignore: cast_nullable_to_non_nullable
as String,activoApp: null == activoApp ? _self.activoApp : activoApp // ignore: cast_nullable_to_non_nullable
as String,enCatalogo: null == enCatalogo ? _self.enCatalogo : enCatalogo // ignore: cast_nullable_to_non_nullable
as String,descatalogado: null == descatalogado ? _self.descatalogado : descatalogado // ignore: cast_nullable_to_non_nullable
as String,paginaEnCatalgo: freezed == paginaEnCatalgo ? _self.paginaEnCatalgo : paginaEnCatalgo // ignore: cast_nullable_to_non_nullable
as String?,paginaEnCatalgo2: freezed == paginaEnCatalgo2 ? _self.paginaEnCatalgo2 : paginaEnCatalgo2 // ignore: cast_nullable_to_non_nullable
as String?,pesoKg: null == pesoKg ? _self.pesoKg : pesoKg // ignore: cast_nullable_to_non_nullable
as double,largoCm: null == largoCm ? _self.largoCm : largoCm // ignore: cast_nullable_to_non_nullable
as double,anchoCm: null == anchoCm ? _self.anchoCm : anchoCm // ignore: cast_nullable_to_non_nullable
as double,altoCm: null == altoCm ? _self.altoCm : altoCm // ignore: cast_nullable_to_non_nullable
as double,resumenES: freezed == resumenES ? _self.resumenES : resumenES // ignore: cast_nullable_to_non_nullable
as String?,resumenEN: freezed == resumenEN ? _self.resumenEN : resumenEN // ignore: cast_nullable_to_non_nullable
as String?,resumenFR: freezed == resumenFR ? _self.resumenFR : resumenFR // ignore: cast_nullable_to_non_nullable
as String?,resumenDE: freezed == resumenDE ? _self.resumenDE : resumenDE // ignore: cast_nullable_to_non_nullable
as String?,resumenCA: freezed == resumenCA ? _self.resumenCA : resumenCA // ignore: cast_nullable_to_non_nullable
as String?,resumenGB: freezed == resumenGB ? _self.resumenGB : resumenGB // ignore: cast_nullable_to_non_nullable
as String?,resumenHU: freezed == resumenHU ? _self.resumenHU : resumenHU // ignore: cast_nullable_to_non_nullable
as String?,resumenIT: freezed == resumenIT ? _self.resumenIT : resumenIT // ignore: cast_nullable_to_non_nullable
as String?,resumenNL: freezed == resumenNL ? _self.resumenNL : resumenNL // ignore: cast_nullable_to_non_nullable
as String?,resumenPL: freezed == resumenPL ? _self.resumenPL : resumenPL // ignore: cast_nullable_to_non_nullable
as String?,resumenPT: freezed == resumenPT ? _self.resumenPT : resumenPT // ignore: cast_nullable_to_non_nullable
as String?,resumenRO: freezed == resumenRO ? _self.resumenRO : resumenRO // ignore: cast_nullable_to_non_nullable
as String?,resumenRU: freezed == resumenRU ? _self.resumenRU : resumenRU // ignore: cast_nullable_to_non_nullable
as String?,resumenCN: freezed == resumenCN ? _self.resumenCN : resumenCN // ignore: cast_nullable_to_non_nullable
as String?,resumenEL: freezed == resumenEL ? _self.resumenEL : resumenEL // ignore: cast_nullable_to_non_nullable
as String?,stockDisponible: null == stockDisponible ? _self.stockDisponible : stockDisponible // ignore: cast_nullable_to_non_nullable
as int,ventasActual: null == ventasActual ? _self.ventasActual : ventasActual // ignore: cast_nullable_to_non_nullable
as double,ventasAnterior: null == ventasAnterior ? _self.ventasAnterior : ventasAnterior // ignore: cast_nullable_to_non_nullable
as double,comprasEntregaCantidad1: null == comprasEntregaCantidad1 ? _self.comprasEntregaCantidad1 : comprasEntregaCantidad1 // ignore: cast_nullable_to_non_nullable
as int,comprasEntregaCantidad2: null == comprasEntregaCantidad2 ? _self.comprasEntregaCantidad2 : comprasEntregaCantidad2 // ignore: cast_nullable_to_non_nullable
as int,comprasEntregaCantidad3: null == comprasEntregaCantidad3 ? _self.comprasEntregaCantidad3 : comprasEntregaCantidad3 // ignore: cast_nullable_to_non_nullable
as int,comprasEntregaCantidadMas3: null == comprasEntregaCantidadMas3 ? _self.comprasEntregaCantidadMas3 : comprasEntregaCantidadMas3 // ignore: cast_nullable_to_non_nullable
as int,comprasEntregaFecha1: freezed == comprasEntregaFecha1 ? _self.comprasEntregaFecha1 : comprasEntregaFecha1 // ignore: cast_nullable_to_non_nullable
as DateTime?,comprasEntregaFecha2: freezed == comprasEntregaFecha2 ? _self.comprasEntregaFecha2 : comprasEntregaFecha2 // ignore: cast_nullable_to_non_nullable
as DateTime?,comprasEntregaFecha3: freezed == comprasEntregaFecha3 ? _self.comprasEntregaFecha3 : comprasEntregaFecha3 // ignore: cast_nullable_to_non_nullable
as DateTime?,comprasEntregaEstado1: freezed == comprasEntregaEstado1 ? _self.comprasEntregaEstado1 : comprasEntregaEstado1 // ignore: cast_nullable_to_non_nullable
as String?,comprasEntregaEstado2: freezed == comprasEntregaEstado2 ? _self.comprasEntregaEstado2 : comprasEntregaEstado2 // ignore: cast_nullable_to_non_nullable
as String?,comprasEntregaEstado3: freezed == comprasEntregaEstado3 ? _self.comprasEntregaEstado3 : comprasEntregaEstado3 // ignore: cast_nullable_to_non_nullable
as String?,imagenPrincipal: freezed == imagenPrincipal ? _self.imagenPrincipal : imagenPrincipal // ignore: cast_nullable_to_non_nullable
as String?,gtin13Unidad: freezed == gtin13Unidad ? _self.gtin13Unidad : gtin13Unidad // ignore: cast_nullable_to_non_nullable
as String?,gs1128Subcaja: freezed == gs1128Subcaja ? _self.gs1128Subcaja : gs1128Subcaja // ignore: cast_nullable_to_non_nullable
as String?,gs1128Caja: freezed == gs1128Caja ? _self.gs1128Caja : gs1128Caja // ignore: cast_nullable_to_non_nullable
as String?,gs1128Palet: freezed == gs1128Palet ? _self.gs1128Palet : gs1128Palet // ignore: cast_nullable_to_non_nullable
as String?,ventasOrden: freezed == ventasOrden ? _self.ventasOrden : ventasOrden // ignore: cast_nullable_to_non_nullable
as int?,costeUnitario: freezed == costeUnitario ? _self.costeUnitario : costeUnitario // ignore: cast_nullable_to_non_nullable
as double?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloDTO].
extension ArticuloDTOPatterns on ArticuloDTO {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloDTO() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloDTO value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloDTO():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloDTO() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String id, @JsonKey(name: 'DESCRIPCION_ES')  String descripcionES, @JsonKey(name: 'DESCRIPCION_EN')  String? descripcionEN, @JsonKey(name: 'DESCRIPCION_FR')  String? descripcionFR, @JsonKey(name: 'DESCRIPCION_DE')  String? descripcionDE, @JsonKey(name: 'DESCRIPCION_CA')  String? descripcionCA, @JsonKey(name: 'DESCRIPCION_GB')  String? descripcionGB, @JsonKey(name: 'DESCRIPCION_HU')  String? descripcionHU, @JsonKey(name: 'DESCRIPCION_IT')  String? descripcionIT, @JsonKey(name: 'DESCRIPCION_NL')  String? descripcionNL, @JsonKey(name: 'DESCRIPCION_PL')  String? descripcionPL, @JsonKey(name: 'DESCRIPCION_PT')  String? descripcionPT, @JsonKey(name: 'DESCRIPCION_RO')  String? descripcionRO, @JsonKey(name: 'DESCRIPCION_RU')  String? descripcionRU, @JsonKey(name: 'DESCRIPCION_CN')  String? descripcionCN, @JsonKey(name: 'DESCRIPCION_EL')  String? descripcionEL, @JsonKey(name: 'FAMILIA_ID')  String? familiaId, @JsonKey(name: 'SUBFAMILIA_ID')  String? subfamiliaId, @JsonKey(name: 'VENTA_MINIMO')  int ventaMinimo, @JsonKey(name: 'VENTA_MULTIPLO')  int ventaMultiplo, @JsonKey(name: 'UNIDADES_SUBCAJA')  int unidadesSubcaja, @JsonKey(name: 'UNIDADES_CAJA')  int unidadesCaja, @JsonKey(name: 'UNIDADES_PALET')  int unidadesPalet, @JsonKey(name: 'ACTIVO_WEB')  String activoWeb, @JsonKey(name: 'ACTIVO_APP')  String activoApp, @JsonKey(name: 'EN_CATALOGO')  String enCatalogo, @JsonKey(name: 'DESCATALOGADO')  String descatalogado, @JsonKey(name: 'PAGINA_EN_CATALOGO')  String? paginaEnCatalgo, @JsonKey(name: 'PAGINA_EN_CATALOGO2')  String? paginaEnCatalgo2, @JsonKey(name: 'PESO_KG')  double pesoKg, @JsonKey(name: 'LARGO_CM')  double largoCm, @JsonKey(name: 'ANCHO_CM')  double anchoCm, @JsonKey(name: 'ALTO_CM')  double altoCm, @JsonKey(name: 'RESUMEN_ES')  String? resumenES, @JsonKey(name: 'RESUMEN_EN')  String? resumenEN, @JsonKey(name: 'RESUMEN_FR')  String? resumenFR, @JsonKey(name: 'RESUMEN_DE')  String? resumenDE, @JsonKey(name: 'RESUMEN_CA')  String? resumenCA, @JsonKey(name: 'RESUMEN_GB')  String? resumenGB, @JsonKey(name: 'RESUMEN_HU')  String? resumenHU, @JsonKey(name: 'RESUMEN_IT')  String? resumenIT, @JsonKey(name: 'RESUMEN_NL')  String? resumenNL, @JsonKey(name: 'RESUMEN_PL')  String? resumenPL, @JsonKey(name: 'RESUMEN_PT')  String? resumenPT, @JsonKey(name: 'RESUMEN_RO')  String? resumenRO, @JsonKey(name: 'RESUMEN_RU')  String? resumenRU, @JsonKey(name: 'RESUMEN_CN')  String? resumenCN, @JsonKey(name: 'RESUMEN_EL')  String? resumenEL, @JsonKey(name: 'STOCK_DISPONIBLE')  int stockDisponible, @JsonKey(name: 'VENTAS_ACTUAL')  double ventasActual, @JsonKey(name: 'VENTAS_ANTERIOR')  double ventasAnterior, @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_1')  int comprasEntregaCantidad1, @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_2')  int comprasEntregaCantidad2, @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_3')  int comprasEntregaCantidad3, @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_MAS_3')  int comprasEntregaCantidadMas3, @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_1')  DateTime? comprasEntregaFecha1, @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_2')  DateTime? comprasEntregaFecha2, @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_3')  DateTime? comprasEntregaFecha3, @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_1')  String? comprasEntregaEstado1, @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_2')  String? comprasEntregaEstado2, @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_')  String? comprasEntregaEstado3, @JsonKey(name: 'IMAGEN_PRINCIPAL')  String? imagenPrincipal, @JsonKey(name: 'GTIN_13_UNIDAD')  String? gtin13Unidad, @JsonKey(name: 'GS1_128_SUBCAJA')  String? gs1128Subcaja, @JsonKey(name: 'GS1_128_CAJA')  String? gs1128Caja, @JsonKey(name: 'GS1_128_PALET')  String? gs1128Palet, @JsonKey(name: 'VENTAS_ORDEN')  int? ventasOrden, @JsonKey(name: 'COSTE_UNITARIO')  double? costeUnitario, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloDTO() when $default != null:
return $default(_that.id,_that.descripcionES,_that.descripcionEN,_that.descripcionFR,_that.descripcionDE,_that.descripcionCA,_that.descripcionGB,_that.descripcionHU,_that.descripcionIT,_that.descripcionNL,_that.descripcionPL,_that.descripcionPT,_that.descripcionRO,_that.descripcionRU,_that.descripcionCN,_that.descripcionEL,_that.familiaId,_that.subfamiliaId,_that.ventaMinimo,_that.ventaMultiplo,_that.unidadesSubcaja,_that.unidadesCaja,_that.unidadesPalet,_that.activoWeb,_that.activoApp,_that.enCatalogo,_that.descatalogado,_that.paginaEnCatalgo,_that.paginaEnCatalgo2,_that.pesoKg,_that.largoCm,_that.anchoCm,_that.altoCm,_that.resumenES,_that.resumenEN,_that.resumenFR,_that.resumenDE,_that.resumenCA,_that.resumenGB,_that.resumenHU,_that.resumenIT,_that.resumenNL,_that.resumenPL,_that.resumenPT,_that.resumenRO,_that.resumenRU,_that.resumenCN,_that.resumenEL,_that.stockDisponible,_that.ventasActual,_that.ventasAnterior,_that.comprasEntregaCantidad1,_that.comprasEntregaCantidad2,_that.comprasEntregaCantidad3,_that.comprasEntregaCantidadMas3,_that.comprasEntregaFecha1,_that.comprasEntregaFecha2,_that.comprasEntregaFecha3,_that.comprasEntregaEstado1,_that.comprasEntregaEstado2,_that.comprasEntregaEstado3,_that.imagenPrincipal,_that.gtin13Unidad,_that.gs1128Subcaja,_that.gs1128Caja,_that.gs1128Palet,_that.ventasOrden,_that.costeUnitario,_that.lastUpdated,_that.deleted);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String id, @JsonKey(name: 'DESCRIPCION_ES')  String descripcionES, @JsonKey(name: 'DESCRIPCION_EN')  String? descripcionEN, @JsonKey(name: 'DESCRIPCION_FR')  String? descripcionFR, @JsonKey(name: 'DESCRIPCION_DE')  String? descripcionDE, @JsonKey(name: 'DESCRIPCION_CA')  String? descripcionCA, @JsonKey(name: 'DESCRIPCION_GB')  String? descripcionGB, @JsonKey(name: 'DESCRIPCION_HU')  String? descripcionHU, @JsonKey(name: 'DESCRIPCION_IT')  String? descripcionIT, @JsonKey(name: 'DESCRIPCION_NL')  String? descripcionNL, @JsonKey(name: 'DESCRIPCION_PL')  String? descripcionPL, @JsonKey(name: 'DESCRIPCION_PT')  String? descripcionPT, @JsonKey(name: 'DESCRIPCION_RO')  String? descripcionRO, @JsonKey(name: 'DESCRIPCION_RU')  String? descripcionRU, @JsonKey(name: 'DESCRIPCION_CN')  String? descripcionCN, @JsonKey(name: 'DESCRIPCION_EL')  String? descripcionEL, @JsonKey(name: 'FAMILIA_ID')  String? familiaId, @JsonKey(name: 'SUBFAMILIA_ID')  String? subfamiliaId, @JsonKey(name: 'VENTA_MINIMO')  int ventaMinimo, @JsonKey(name: 'VENTA_MULTIPLO')  int ventaMultiplo, @JsonKey(name: 'UNIDADES_SUBCAJA')  int unidadesSubcaja, @JsonKey(name: 'UNIDADES_CAJA')  int unidadesCaja, @JsonKey(name: 'UNIDADES_PALET')  int unidadesPalet, @JsonKey(name: 'ACTIVO_WEB')  String activoWeb, @JsonKey(name: 'ACTIVO_APP')  String activoApp, @JsonKey(name: 'EN_CATALOGO')  String enCatalogo, @JsonKey(name: 'DESCATALOGADO')  String descatalogado, @JsonKey(name: 'PAGINA_EN_CATALOGO')  String? paginaEnCatalgo, @JsonKey(name: 'PAGINA_EN_CATALOGO2')  String? paginaEnCatalgo2, @JsonKey(name: 'PESO_KG')  double pesoKg, @JsonKey(name: 'LARGO_CM')  double largoCm, @JsonKey(name: 'ANCHO_CM')  double anchoCm, @JsonKey(name: 'ALTO_CM')  double altoCm, @JsonKey(name: 'RESUMEN_ES')  String? resumenES, @JsonKey(name: 'RESUMEN_EN')  String? resumenEN, @JsonKey(name: 'RESUMEN_FR')  String? resumenFR, @JsonKey(name: 'RESUMEN_DE')  String? resumenDE, @JsonKey(name: 'RESUMEN_CA')  String? resumenCA, @JsonKey(name: 'RESUMEN_GB')  String? resumenGB, @JsonKey(name: 'RESUMEN_HU')  String? resumenHU, @JsonKey(name: 'RESUMEN_IT')  String? resumenIT, @JsonKey(name: 'RESUMEN_NL')  String? resumenNL, @JsonKey(name: 'RESUMEN_PL')  String? resumenPL, @JsonKey(name: 'RESUMEN_PT')  String? resumenPT, @JsonKey(name: 'RESUMEN_RO')  String? resumenRO, @JsonKey(name: 'RESUMEN_RU')  String? resumenRU, @JsonKey(name: 'RESUMEN_CN')  String? resumenCN, @JsonKey(name: 'RESUMEN_EL')  String? resumenEL, @JsonKey(name: 'STOCK_DISPONIBLE')  int stockDisponible, @JsonKey(name: 'VENTAS_ACTUAL')  double ventasActual, @JsonKey(name: 'VENTAS_ANTERIOR')  double ventasAnterior, @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_1')  int comprasEntregaCantidad1, @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_2')  int comprasEntregaCantidad2, @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_3')  int comprasEntregaCantidad3, @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_MAS_3')  int comprasEntregaCantidadMas3, @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_1')  DateTime? comprasEntregaFecha1, @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_2')  DateTime? comprasEntregaFecha2, @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_3')  DateTime? comprasEntregaFecha3, @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_1')  String? comprasEntregaEstado1, @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_2')  String? comprasEntregaEstado2, @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_')  String? comprasEntregaEstado3, @JsonKey(name: 'IMAGEN_PRINCIPAL')  String? imagenPrincipal, @JsonKey(name: 'GTIN_13_UNIDAD')  String? gtin13Unidad, @JsonKey(name: 'GS1_128_SUBCAJA')  String? gs1128Subcaja, @JsonKey(name: 'GS1_128_CAJA')  String? gs1128Caja, @JsonKey(name: 'GS1_128_PALET')  String? gs1128Palet, @JsonKey(name: 'VENTAS_ORDEN')  int? ventasOrden, @JsonKey(name: 'COSTE_UNITARIO')  double? costeUnitario, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ArticuloDTO():
return $default(_that.id,_that.descripcionES,_that.descripcionEN,_that.descripcionFR,_that.descripcionDE,_that.descripcionCA,_that.descripcionGB,_that.descripcionHU,_that.descripcionIT,_that.descripcionNL,_that.descripcionPL,_that.descripcionPT,_that.descripcionRO,_that.descripcionRU,_that.descripcionCN,_that.descripcionEL,_that.familiaId,_that.subfamiliaId,_that.ventaMinimo,_that.ventaMultiplo,_that.unidadesSubcaja,_that.unidadesCaja,_that.unidadesPalet,_that.activoWeb,_that.activoApp,_that.enCatalogo,_that.descatalogado,_that.paginaEnCatalgo,_that.paginaEnCatalgo2,_that.pesoKg,_that.largoCm,_that.anchoCm,_that.altoCm,_that.resumenES,_that.resumenEN,_that.resumenFR,_that.resumenDE,_that.resumenCA,_that.resumenGB,_that.resumenHU,_that.resumenIT,_that.resumenNL,_that.resumenPL,_that.resumenPT,_that.resumenRO,_that.resumenRU,_that.resumenCN,_that.resumenEL,_that.stockDisponible,_that.ventasActual,_that.ventasAnterior,_that.comprasEntregaCantidad1,_that.comprasEntregaCantidad2,_that.comprasEntregaCantidad3,_that.comprasEntregaCantidadMas3,_that.comprasEntregaFecha1,_that.comprasEntregaFecha2,_that.comprasEntregaFecha3,_that.comprasEntregaEstado1,_that.comprasEntregaEstado2,_that.comprasEntregaEstado3,_that.imagenPrincipal,_that.gtin13Unidad,_that.gs1128Subcaja,_that.gs1128Caja,_that.gs1128Palet,_that.ventasOrden,_that.costeUnitario,_that.lastUpdated,_that.deleted);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ARTICULO_ID')  String id, @JsonKey(name: 'DESCRIPCION_ES')  String descripcionES, @JsonKey(name: 'DESCRIPCION_EN')  String? descripcionEN, @JsonKey(name: 'DESCRIPCION_FR')  String? descripcionFR, @JsonKey(name: 'DESCRIPCION_DE')  String? descripcionDE, @JsonKey(name: 'DESCRIPCION_CA')  String? descripcionCA, @JsonKey(name: 'DESCRIPCION_GB')  String? descripcionGB, @JsonKey(name: 'DESCRIPCION_HU')  String? descripcionHU, @JsonKey(name: 'DESCRIPCION_IT')  String? descripcionIT, @JsonKey(name: 'DESCRIPCION_NL')  String? descripcionNL, @JsonKey(name: 'DESCRIPCION_PL')  String? descripcionPL, @JsonKey(name: 'DESCRIPCION_PT')  String? descripcionPT, @JsonKey(name: 'DESCRIPCION_RO')  String? descripcionRO, @JsonKey(name: 'DESCRIPCION_RU')  String? descripcionRU, @JsonKey(name: 'DESCRIPCION_CN')  String? descripcionCN, @JsonKey(name: 'DESCRIPCION_EL')  String? descripcionEL, @JsonKey(name: 'FAMILIA_ID')  String? familiaId, @JsonKey(name: 'SUBFAMILIA_ID')  String? subfamiliaId, @JsonKey(name: 'VENTA_MINIMO')  int ventaMinimo, @JsonKey(name: 'VENTA_MULTIPLO')  int ventaMultiplo, @JsonKey(name: 'UNIDADES_SUBCAJA')  int unidadesSubcaja, @JsonKey(name: 'UNIDADES_CAJA')  int unidadesCaja, @JsonKey(name: 'UNIDADES_PALET')  int unidadesPalet, @JsonKey(name: 'ACTIVO_WEB')  String activoWeb, @JsonKey(name: 'ACTIVO_APP')  String activoApp, @JsonKey(name: 'EN_CATALOGO')  String enCatalogo, @JsonKey(name: 'DESCATALOGADO')  String descatalogado, @JsonKey(name: 'PAGINA_EN_CATALOGO')  String? paginaEnCatalgo, @JsonKey(name: 'PAGINA_EN_CATALOGO2')  String? paginaEnCatalgo2, @JsonKey(name: 'PESO_KG')  double pesoKg, @JsonKey(name: 'LARGO_CM')  double largoCm, @JsonKey(name: 'ANCHO_CM')  double anchoCm, @JsonKey(name: 'ALTO_CM')  double altoCm, @JsonKey(name: 'RESUMEN_ES')  String? resumenES, @JsonKey(name: 'RESUMEN_EN')  String? resumenEN, @JsonKey(name: 'RESUMEN_FR')  String? resumenFR, @JsonKey(name: 'RESUMEN_DE')  String? resumenDE, @JsonKey(name: 'RESUMEN_CA')  String? resumenCA, @JsonKey(name: 'RESUMEN_GB')  String? resumenGB, @JsonKey(name: 'RESUMEN_HU')  String? resumenHU, @JsonKey(name: 'RESUMEN_IT')  String? resumenIT, @JsonKey(name: 'RESUMEN_NL')  String? resumenNL, @JsonKey(name: 'RESUMEN_PL')  String? resumenPL, @JsonKey(name: 'RESUMEN_PT')  String? resumenPT, @JsonKey(name: 'RESUMEN_RO')  String? resumenRO, @JsonKey(name: 'RESUMEN_RU')  String? resumenRU, @JsonKey(name: 'RESUMEN_CN')  String? resumenCN, @JsonKey(name: 'RESUMEN_EL')  String? resumenEL, @JsonKey(name: 'STOCK_DISPONIBLE')  int stockDisponible, @JsonKey(name: 'VENTAS_ACTUAL')  double ventasActual, @JsonKey(name: 'VENTAS_ANTERIOR')  double ventasAnterior, @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_1')  int comprasEntregaCantidad1, @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_2')  int comprasEntregaCantidad2, @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_3')  int comprasEntregaCantidad3, @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_MAS_3')  int comprasEntregaCantidadMas3, @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_1')  DateTime? comprasEntregaFecha1, @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_2')  DateTime? comprasEntregaFecha2, @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_3')  DateTime? comprasEntregaFecha3, @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_1')  String? comprasEntregaEstado1, @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_2')  String? comprasEntregaEstado2, @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_')  String? comprasEntregaEstado3, @JsonKey(name: 'IMAGEN_PRINCIPAL')  String? imagenPrincipal, @JsonKey(name: 'GTIN_13_UNIDAD')  String? gtin13Unidad, @JsonKey(name: 'GS1_128_SUBCAJA')  String? gs1128Subcaja, @JsonKey(name: 'GS1_128_CAJA')  String? gs1128Caja, @JsonKey(name: 'GS1_128_PALET')  String? gs1128Palet, @JsonKey(name: 'VENTAS_ORDEN')  int? ventasOrden, @JsonKey(name: 'COSTE_UNITARIO')  double? costeUnitario, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloDTO() when $default != null:
return $default(_that.id,_that.descripcionES,_that.descripcionEN,_that.descripcionFR,_that.descripcionDE,_that.descripcionCA,_that.descripcionGB,_that.descripcionHU,_that.descripcionIT,_that.descripcionNL,_that.descripcionPL,_that.descripcionPT,_that.descripcionRO,_that.descripcionRU,_that.descripcionCN,_that.descripcionEL,_that.familiaId,_that.subfamiliaId,_that.ventaMinimo,_that.ventaMultiplo,_that.unidadesSubcaja,_that.unidadesCaja,_that.unidadesPalet,_that.activoWeb,_that.activoApp,_that.enCatalogo,_that.descatalogado,_that.paginaEnCatalgo,_that.paginaEnCatalgo2,_that.pesoKg,_that.largoCm,_that.anchoCm,_that.altoCm,_that.resumenES,_that.resumenEN,_that.resumenFR,_that.resumenDE,_that.resumenCA,_that.resumenGB,_that.resumenHU,_that.resumenIT,_that.resumenNL,_that.resumenPL,_that.resumenPT,_that.resumenRO,_that.resumenRU,_that.resumenCN,_that.resumenEL,_that.stockDisponible,_that.ventasActual,_that.ventasAnterior,_that.comprasEntregaCantidad1,_that.comprasEntregaCantidad2,_that.comprasEntregaCantidad3,_that.comprasEntregaCantidadMas3,_that.comprasEntregaFecha1,_that.comprasEntregaFecha2,_that.comprasEntregaFecha3,_that.comprasEntregaEstado1,_that.comprasEntregaEstado2,_that.comprasEntregaEstado3,_that.imagenPrincipal,_that.gtin13Unidad,_that.gs1128Subcaja,_that.gs1128Caja,_that.gs1128Palet,_that.ventasOrden,_that.costeUnitario,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticuloDTO extends ArticuloDTO {
  const _ArticuloDTO({@JsonKey(name: 'ARTICULO_ID') required this.id, @JsonKey(name: 'DESCRIPCION_ES') required this.descripcionES, @JsonKey(name: 'DESCRIPCION_EN') this.descripcionEN, @JsonKey(name: 'DESCRIPCION_FR') this.descripcionFR, @JsonKey(name: 'DESCRIPCION_DE') this.descripcionDE, @JsonKey(name: 'DESCRIPCION_CA') this.descripcionCA, @JsonKey(name: 'DESCRIPCION_GB') this.descripcionGB, @JsonKey(name: 'DESCRIPCION_HU') this.descripcionHU, @JsonKey(name: 'DESCRIPCION_IT') this.descripcionIT, @JsonKey(name: 'DESCRIPCION_NL') this.descripcionNL, @JsonKey(name: 'DESCRIPCION_PL') this.descripcionPL, @JsonKey(name: 'DESCRIPCION_PT') this.descripcionPT, @JsonKey(name: 'DESCRIPCION_RO') this.descripcionRO, @JsonKey(name: 'DESCRIPCION_RU') this.descripcionRU, @JsonKey(name: 'DESCRIPCION_CN') this.descripcionCN, @JsonKey(name: 'DESCRIPCION_EL') this.descripcionEL, @JsonKey(name: 'FAMILIA_ID') this.familiaId, @JsonKey(name: 'SUBFAMILIA_ID') this.subfamiliaId, @JsonKey(name: 'VENTA_MINIMO') required this.ventaMinimo, @JsonKey(name: 'VENTA_MULTIPLO') required this.ventaMultiplo, @JsonKey(name: 'UNIDADES_SUBCAJA') required this.unidadesSubcaja, @JsonKey(name: 'UNIDADES_CAJA') required this.unidadesCaja, @JsonKey(name: 'UNIDADES_PALET') required this.unidadesPalet, @JsonKey(name: 'ACTIVO_WEB') required this.activoWeb, @JsonKey(name: 'ACTIVO_APP') required this.activoApp, @JsonKey(name: 'EN_CATALOGO') required this.enCatalogo, @JsonKey(name: 'DESCATALOGADO') required this.descatalogado, @JsonKey(name: 'PAGINA_EN_CATALOGO') this.paginaEnCatalgo, @JsonKey(name: 'PAGINA_EN_CATALOGO2') this.paginaEnCatalgo2, @JsonKey(name: 'PESO_KG') required this.pesoKg, @JsonKey(name: 'LARGO_CM') required this.largoCm, @JsonKey(name: 'ANCHO_CM') required this.anchoCm, @JsonKey(name: 'ALTO_CM') required this.altoCm, @JsonKey(name: 'RESUMEN_ES') this.resumenES, @JsonKey(name: 'RESUMEN_EN') this.resumenEN, @JsonKey(name: 'RESUMEN_FR') this.resumenFR, @JsonKey(name: 'RESUMEN_DE') this.resumenDE, @JsonKey(name: 'RESUMEN_CA') this.resumenCA, @JsonKey(name: 'RESUMEN_GB') this.resumenGB, @JsonKey(name: 'RESUMEN_HU') this.resumenHU, @JsonKey(name: 'RESUMEN_IT') this.resumenIT, @JsonKey(name: 'RESUMEN_NL') this.resumenNL, @JsonKey(name: 'RESUMEN_PL') this.resumenPL, @JsonKey(name: 'RESUMEN_PT') this.resumenPT, @JsonKey(name: 'RESUMEN_RO') this.resumenRO, @JsonKey(name: 'RESUMEN_RU') this.resumenRU, @JsonKey(name: 'RESUMEN_CN') this.resumenCN, @JsonKey(name: 'RESUMEN_EL') this.resumenEL, @JsonKey(name: 'STOCK_DISPONIBLE') required this.stockDisponible, @JsonKey(name: 'VENTAS_ACTUAL') required this.ventasActual, @JsonKey(name: 'VENTAS_ANTERIOR') required this.ventasAnterior, @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_1') required this.comprasEntregaCantidad1, @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_2') required this.comprasEntregaCantidad2, @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_3') required this.comprasEntregaCantidad3, @JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_MAS_3') required this.comprasEntregaCantidadMas3, @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_1') this.comprasEntregaFecha1, @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_2') this.comprasEntregaFecha2, @JsonKey(name: 'COMPRAS_ENTREGA_FECHA_3') this.comprasEntregaFecha3, @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_1') this.comprasEntregaEstado1, @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_2') this.comprasEntregaEstado2, @JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_') this.comprasEntregaEstado3, @JsonKey(name: 'IMAGEN_PRINCIPAL') this.imagenPrincipal, @JsonKey(name: 'GTIN_13_UNIDAD') this.gtin13Unidad, @JsonKey(name: 'GS1_128_SUBCAJA') this.gs1128Subcaja, @JsonKey(name: 'GS1_128_CAJA') this.gs1128Caja, @JsonKey(name: 'GS1_128_PALET') this.gs1128Palet, @JsonKey(name: 'VENTAS_ORDEN') this.ventasOrden, @JsonKey(name: 'COSTE_UNITARIO') this.costeUnitario, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _ArticuloDTO.fromJson(Map<String, dynamic> json) => _$ArticuloDTOFromJson(json);

@override@JsonKey(name: 'ARTICULO_ID') final  String id;
@override@JsonKey(name: 'DESCRIPCION_ES') final  String descripcionES;
@override@JsonKey(name: 'DESCRIPCION_EN') final  String? descripcionEN;
@override@JsonKey(name: 'DESCRIPCION_FR') final  String? descripcionFR;
@override@JsonKey(name: 'DESCRIPCION_DE') final  String? descripcionDE;
@override@JsonKey(name: 'DESCRIPCION_CA') final  String? descripcionCA;
@override@JsonKey(name: 'DESCRIPCION_GB') final  String? descripcionGB;
@override@JsonKey(name: 'DESCRIPCION_HU') final  String? descripcionHU;
@override@JsonKey(name: 'DESCRIPCION_IT') final  String? descripcionIT;
@override@JsonKey(name: 'DESCRIPCION_NL') final  String? descripcionNL;
@override@JsonKey(name: 'DESCRIPCION_PL') final  String? descripcionPL;
@override@JsonKey(name: 'DESCRIPCION_PT') final  String? descripcionPT;
@override@JsonKey(name: 'DESCRIPCION_RO') final  String? descripcionRO;
@override@JsonKey(name: 'DESCRIPCION_RU') final  String? descripcionRU;
@override@JsonKey(name: 'DESCRIPCION_CN') final  String? descripcionCN;
@override@JsonKey(name: 'DESCRIPCION_EL') final  String? descripcionEL;
@override@JsonKey(name: 'FAMILIA_ID') final  String? familiaId;
@override@JsonKey(name: 'SUBFAMILIA_ID') final  String? subfamiliaId;
@override@JsonKey(name: 'VENTA_MINIMO') final  int ventaMinimo;
@override@JsonKey(name: 'VENTA_MULTIPLO') final  int ventaMultiplo;
@override@JsonKey(name: 'UNIDADES_SUBCAJA') final  int unidadesSubcaja;
@override@JsonKey(name: 'UNIDADES_CAJA') final  int unidadesCaja;
@override@JsonKey(name: 'UNIDADES_PALET') final  int unidadesPalet;
@override@JsonKey(name: 'ACTIVO_WEB') final  String activoWeb;
@override@JsonKey(name: 'ACTIVO_APP') final  String activoApp;
@override@JsonKey(name: 'EN_CATALOGO') final  String enCatalogo;
@override@JsonKey(name: 'DESCATALOGADO') final  String descatalogado;
@override@JsonKey(name: 'PAGINA_EN_CATALOGO') final  String? paginaEnCatalgo;
@override@JsonKey(name: 'PAGINA_EN_CATALOGO2') final  String? paginaEnCatalgo2;
@override@JsonKey(name: 'PESO_KG') final  double pesoKg;
@override@JsonKey(name: 'LARGO_CM') final  double largoCm;
@override@JsonKey(name: 'ANCHO_CM') final  double anchoCm;
@override@JsonKey(name: 'ALTO_CM') final  double altoCm;
@override@JsonKey(name: 'RESUMEN_ES') final  String? resumenES;
@override@JsonKey(name: 'RESUMEN_EN') final  String? resumenEN;
@override@JsonKey(name: 'RESUMEN_FR') final  String? resumenFR;
@override@JsonKey(name: 'RESUMEN_DE') final  String? resumenDE;
@override@JsonKey(name: 'RESUMEN_CA') final  String? resumenCA;
@override@JsonKey(name: 'RESUMEN_GB') final  String? resumenGB;
@override@JsonKey(name: 'RESUMEN_HU') final  String? resumenHU;
@override@JsonKey(name: 'RESUMEN_IT') final  String? resumenIT;
@override@JsonKey(name: 'RESUMEN_NL') final  String? resumenNL;
@override@JsonKey(name: 'RESUMEN_PL') final  String? resumenPL;
@override@JsonKey(name: 'RESUMEN_PT') final  String? resumenPT;
@override@JsonKey(name: 'RESUMEN_RO') final  String? resumenRO;
@override@JsonKey(name: 'RESUMEN_RU') final  String? resumenRU;
@override@JsonKey(name: 'RESUMEN_CN') final  String? resumenCN;
@override@JsonKey(name: 'RESUMEN_EL') final  String? resumenEL;
@override@JsonKey(name: 'STOCK_DISPONIBLE') final  int stockDisponible;
@override@JsonKey(name: 'VENTAS_ACTUAL') final  double ventasActual;
@override@JsonKey(name: 'VENTAS_ANTERIOR') final  double ventasAnterior;
@override@JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_1') final  int comprasEntregaCantidad1;
@override@JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_2') final  int comprasEntregaCantidad2;
@override@JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_3') final  int comprasEntregaCantidad3;
@override@JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_MAS_3') final  int comprasEntregaCantidadMas3;
@override@JsonKey(name: 'COMPRAS_ENTREGA_FECHA_1') final  DateTime? comprasEntregaFecha1;
@override@JsonKey(name: 'COMPRAS_ENTREGA_FECHA_2') final  DateTime? comprasEntregaFecha2;
@override@JsonKey(name: 'COMPRAS_ENTREGA_FECHA_3') final  DateTime? comprasEntregaFecha3;
@override@JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_1') final  String? comprasEntregaEstado1;
@override@JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_2') final  String? comprasEntregaEstado2;
@override@JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_') final  String? comprasEntregaEstado3;
@override@JsonKey(name: 'IMAGEN_PRINCIPAL') final  String? imagenPrincipal;
@override@JsonKey(name: 'GTIN_13_UNIDAD') final  String? gtin13Unidad;
@override@JsonKey(name: 'GS1_128_SUBCAJA') final  String? gs1128Subcaja;
@override@JsonKey(name: 'GS1_128_CAJA') final  String? gs1128Caja;
@override@JsonKey(name: 'GS1_128_PALET') final  String? gs1128Palet;
@override@JsonKey(name: 'VENTAS_ORDEN') final  int? ventasOrden;
@override@JsonKey(name: 'COSTE_UNITARIO') final  double? costeUnitario;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ArticuloDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloDTOCopyWith<_ArticuloDTO> get copyWith => __$ArticuloDTOCopyWithImpl<_ArticuloDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticuloDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.descripcionES, descripcionES) || other.descripcionES == descripcionES)&&(identical(other.descripcionEN, descripcionEN) || other.descripcionEN == descripcionEN)&&(identical(other.descripcionFR, descripcionFR) || other.descripcionFR == descripcionFR)&&(identical(other.descripcionDE, descripcionDE) || other.descripcionDE == descripcionDE)&&(identical(other.descripcionCA, descripcionCA) || other.descripcionCA == descripcionCA)&&(identical(other.descripcionGB, descripcionGB) || other.descripcionGB == descripcionGB)&&(identical(other.descripcionHU, descripcionHU) || other.descripcionHU == descripcionHU)&&(identical(other.descripcionIT, descripcionIT) || other.descripcionIT == descripcionIT)&&(identical(other.descripcionNL, descripcionNL) || other.descripcionNL == descripcionNL)&&(identical(other.descripcionPL, descripcionPL) || other.descripcionPL == descripcionPL)&&(identical(other.descripcionPT, descripcionPT) || other.descripcionPT == descripcionPT)&&(identical(other.descripcionRO, descripcionRO) || other.descripcionRO == descripcionRO)&&(identical(other.descripcionRU, descripcionRU) || other.descripcionRU == descripcionRU)&&(identical(other.descripcionCN, descripcionCN) || other.descripcionCN == descripcionCN)&&(identical(other.descripcionEL, descripcionEL) || other.descripcionEL == descripcionEL)&&(identical(other.familiaId, familiaId) || other.familiaId == familiaId)&&(identical(other.subfamiliaId, subfamiliaId) || other.subfamiliaId == subfamiliaId)&&(identical(other.ventaMinimo, ventaMinimo) || other.ventaMinimo == ventaMinimo)&&(identical(other.ventaMultiplo, ventaMultiplo) || other.ventaMultiplo == ventaMultiplo)&&(identical(other.unidadesSubcaja, unidadesSubcaja) || other.unidadesSubcaja == unidadesSubcaja)&&(identical(other.unidadesCaja, unidadesCaja) || other.unidadesCaja == unidadesCaja)&&(identical(other.unidadesPalet, unidadesPalet) || other.unidadesPalet == unidadesPalet)&&(identical(other.activoWeb, activoWeb) || other.activoWeb == activoWeb)&&(identical(other.activoApp, activoApp) || other.activoApp == activoApp)&&(identical(other.enCatalogo, enCatalogo) || other.enCatalogo == enCatalogo)&&(identical(other.descatalogado, descatalogado) || other.descatalogado == descatalogado)&&(identical(other.paginaEnCatalgo, paginaEnCatalgo) || other.paginaEnCatalgo == paginaEnCatalgo)&&(identical(other.paginaEnCatalgo2, paginaEnCatalgo2) || other.paginaEnCatalgo2 == paginaEnCatalgo2)&&(identical(other.pesoKg, pesoKg) || other.pesoKg == pesoKg)&&(identical(other.largoCm, largoCm) || other.largoCm == largoCm)&&(identical(other.anchoCm, anchoCm) || other.anchoCm == anchoCm)&&(identical(other.altoCm, altoCm) || other.altoCm == altoCm)&&(identical(other.resumenES, resumenES) || other.resumenES == resumenES)&&(identical(other.resumenEN, resumenEN) || other.resumenEN == resumenEN)&&(identical(other.resumenFR, resumenFR) || other.resumenFR == resumenFR)&&(identical(other.resumenDE, resumenDE) || other.resumenDE == resumenDE)&&(identical(other.resumenCA, resumenCA) || other.resumenCA == resumenCA)&&(identical(other.resumenGB, resumenGB) || other.resumenGB == resumenGB)&&(identical(other.resumenHU, resumenHU) || other.resumenHU == resumenHU)&&(identical(other.resumenIT, resumenIT) || other.resumenIT == resumenIT)&&(identical(other.resumenNL, resumenNL) || other.resumenNL == resumenNL)&&(identical(other.resumenPL, resumenPL) || other.resumenPL == resumenPL)&&(identical(other.resumenPT, resumenPT) || other.resumenPT == resumenPT)&&(identical(other.resumenRO, resumenRO) || other.resumenRO == resumenRO)&&(identical(other.resumenRU, resumenRU) || other.resumenRU == resumenRU)&&(identical(other.resumenCN, resumenCN) || other.resumenCN == resumenCN)&&(identical(other.resumenEL, resumenEL) || other.resumenEL == resumenEL)&&(identical(other.stockDisponible, stockDisponible) || other.stockDisponible == stockDisponible)&&(identical(other.ventasActual, ventasActual) || other.ventasActual == ventasActual)&&(identical(other.ventasAnterior, ventasAnterior) || other.ventasAnterior == ventasAnterior)&&(identical(other.comprasEntregaCantidad1, comprasEntregaCantidad1) || other.comprasEntregaCantidad1 == comprasEntregaCantidad1)&&(identical(other.comprasEntregaCantidad2, comprasEntregaCantidad2) || other.comprasEntregaCantidad2 == comprasEntregaCantidad2)&&(identical(other.comprasEntregaCantidad3, comprasEntregaCantidad3) || other.comprasEntregaCantidad3 == comprasEntregaCantidad3)&&(identical(other.comprasEntregaCantidadMas3, comprasEntregaCantidadMas3) || other.comprasEntregaCantidadMas3 == comprasEntregaCantidadMas3)&&(identical(other.comprasEntregaFecha1, comprasEntregaFecha1) || other.comprasEntregaFecha1 == comprasEntregaFecha1)&&(identical(other.comprasEntregaFecha2, comprasEntregaFecha2) || other.comprasEntregaFecha2 == comprasEntregaFecha2)&&(identical(other.comprasEntregaFecha3, comprasEntregaFecha3) || other.comprasEntregaFecha3 == comprasEntregaFecha3)&&(identical(other.comprasEntregaEstado1, comprasEntregaEstado1) || other.comprasEntregaEstado1 == comprasEntregaEstado1)&&(identical(other.comprasEntregaEstado2, comprasEntregaEstado2) || other.comprasEntregaEstado2 == comprasEntregaEstado2)&&(identical(other.comprasEntregaEstado3, comprasEntregaEstado3) || other.comprasEntregaEstado3 == comprasEntregaEstado3)&&(identical(other.imagenPrincipal, imagenPrincipal) || other.imagenPrincipal == imagenPrincipal)&&(identical(other.gtin13Unidad, gtin13Unidad) || other.gtin13Unidad == gtin13Unidad)&&(identical(other.gs1128Subcaja, gs1128Subcaja) || other.gs1128Subcaja == gs1128Subcaja)&&(identical(other.gs1128Caja, gs1128Caja) || other.gs1128Caja == gs1128Caja)&&(identical(other.gs1128Palet, gs1128Palet) || other.gs1128Palet == gs1128Palet)&&(identical(other.ventasOrden, ventasOrden) || other.ventasOrden == ventasOrden)&&(identical(other.costeUnitario, costeUnitario) || other.costeUnitario == costeUnitario)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,descripcionES,descripcionEN,descripcionFR,descripcionDE,descripcionCA,descripcionGB,descripcionHU,descripcionIT,descripcionNL,descripcionPL,descripcionPT,descripcionRO,descripcionRU,descripcionCN,descripcionEL,familiaId,subfamiliaId,ventaMinimo,ventaMultiplo,unidadesSubcaja,unidadesCaja,unidadesPalet,activoWeb,activoApp,enCatalogo,descatalogado,paginaEnCatalgo,paginaEnCatalgo2,pesoKg,largoCm,anchoCm,altoCm,resumenES,resumenEN,resumenFR,resumenDE,resumenCA,resumenGB,resumenHU,resumenIT,resumenNL,resumenPL,resumenPT,resumenRO,resumenRU,resumenCN,resumenEL,stockDisponible,ventasActual,ventasAnterior,comprasEntregaCantidad1,comprasEntregaCantidad2,comprasEntregaCantidad3,comprasEntregaCantidadMas3,comprasEntregaFecha1,comprasEntregaFecha2,comprasEntregaFecha3,comprasEntregaEstado1,comprasEntregaEstado2,comprasEntregaEstado3,imagenPrincipal,gtin13Unidad,gs1128Subcaja,gs1128Caja,gs1128Palet,ventasOrden,costeUnitario,lastUpdated,deleted]);

@override
String toString() {
  return 'ArticuloDTO(id: $id, descripcionES: $descripcionES, descripcionEN: $descripcionEN, descripcionFR: $descripcionFR, descripcionDE: $descripcionDE, descripcionCA: $descripcionCA, descripcionGB: $descripcionGB, descripcionHU: $descripcionHU, descripcionIT: $descripcionIT, descripcionNL: $descripcionNL, descripcionPL: $descripcionPL, descripcionPT: $descripcionPT, descripcionRO: $descripcionRO, descripcionRU: $descripcionRU, descripcionCN: $descripcionCN, descripcionEL: $descripcionEL, familiaId: $familiaId, subfamiliaId: $subfamiliaId, ventaMinimo: $ventaMinimo, ventaMultiplo: $ventaMultiplo, unidadesSubcaja: $unidadesSubcaja, unidadesCaja: $unidadesCaja, unidadesPalet: $unidadesPalet, activoWeb: $activoWeb, activoApp: $activoApp, enCatalogo: $enCatalogo, descatalogado: $descatalogado, paginaEnCatalgo: $paginaEnCatalgo, paginaEnCatalgo2: $paginaEnCatalgo2, pesoKg: $pesoKg, largoCm: $largoCm, anchoCm: $anchoCm, altoCm: $altoCm, resumenES: $resumenES, resumenEN: $resumenEN, resumenFR: $resumenFR, resumenDE: $resumenDE, resumenCA: $resumenCA, resumenGB: $resumenGB, resumenHU: $resumenHU, resumenIT: $resumenIT, resumenNL: $resumenNL, resumenPL: $resumenPL, resumenPT: $resumenPT, resumenRO: $resumenRO, resumenRU: $resumenRU, resumenCN: $resumenCN, resumenEL: $resumenEL, stockDisponible: $stockDisponible, ventasActual: $ventasActual, ventasAnterior: $ventasAnterior, comprasEntregaCantidad1: $comprasEntregaCantidad1, comprasEntregaCantidad2: $comprasEntregaCantidad2, comprasEntregaCantidad3: $comprasEntregaCantidad3, comprasEntregaCantidadMas3: $comprasEntregaCantidadMas3, comprasEntregaFecha1: $comprasEntregaFecha1, comprasEntregaFecha2: $comprasEntregaFecha2, comprasEntregaFecha3: $comprasEntregaFecha3, comprasEntregaEstado1: $comprasEntregaEstado1, comprasEntregaEstado2: $comprasEntregaEstado2, comprasEntregaEstado3: $comprasEntregaEstado3, imagenPrincipal: $imagenPrincipal, gtin13Unidad: $gtin13Unidad, gs1128Subcaja: $gs1128Subcaja, gs1128Caja: $gs1128Caja, gs1128Palet: $gs1128Palet, ventasOrden: $ventasOrden, costeUnitario: $costeUnitario, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ArticuloDTOCopyWith<$Res> implements $ArticuloDTOCopyWith<$Res> {
  factory _$ArticuloDTOCopyWith(_ArticuloDTO value, $Res Function(_ArticuloDTO) _then) = __$ArticuloDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String id,@JsonKey(name: 'DESCRIPCION_ES') String descripcionES,@JsonKey(name: 'DESCRIPCION_EN') String? descripcionEN,@JsonKey(name: 'DESCRIPCION_FR') String? descripcionFR,@JsonKey(name: 'DESCRIPCION_DE') String? descripcionDE,@JsonKey(name: 'DESCRIPCION_CA') String? descripcionCA,@JsonKey(name: 'DESCRIPCION_GB') String? descripcionGB,@JsonKey(name: 'DESCRIPCION_HU') String? descripcionHU,@JsonKey(name: 'DESCRIPCION_IT') String? descripcionIT,@JsonKey(name: 'DESCRIPCION_NL') String? descripcionNL,@JsonKey(name: 'DESCRIPCION_PL') String? descripcionPL,@JsonKey(name: 'DESCRIPCION_PT') String? descripcionPT,@JsonKey(name: 'DESCRIPCION_RO') String? descripcionRO,@JsonKey(name: 'DESCRIPCION_RU') String? descripcionRU,@JsonKey(name: 'DESCRIPCION_CN') String? descripcionCN,@JsonKey(name: 'DESCRIPCION_EL') String? descripcionEL,@JsonKey(name: 'FAMILIA_ID') String? familiaId,@JsonKey(name: 'SUBFAMILIA_ID') String? subfamiliaId,@JsonKey(name: 'VENTA_MINIMO') int ventaMinimo,@JsonKey(name: 'VENTA_MULTIPLO') int ventaMultiplo,@JsonKey(name: 'UNIDADES_SUBCAJA') int unidadesSubcaja,@JsonKey(name: 'UNIDADES_CAJA') int unidadesCaja,@JsonKey(name: 'UNIDADES_PALET') int unidadesPalet,@JsonKey(name: 'ACTIVO_WEB') String activoWeb,@JsonKey(name: 'ACTIVO_APP') String activoApp,@JsonKey(name: 'EN_CATALOGO') String enCatalogo,@JsonKey(name: 'DESCATALOGADO') String descatalogado,@JsonKey(name: 'PAGINA_EN_CATALOGO') String? paginaEnCatalgo,@JsonKey(name: 'PAGINA_EN_CATALOGO2') String? paginaEnCatalgo2,@JsonKey(name: 'PESO_KG') double pesoKg,@JsonKey(name: 'LARGO_CM') double largoCm,@JsonKey(name: 'ANCHO_CM') double anchoCm,@JsonKey(name: 'ALTO_CM') double altoCm,@JsonKey(name: 'RESUMEN_ES') String? resumenES,@JsonKey(name: 'RESUMEN_EN') String? resumenEN,@JsonKey(name: 'RESUMEN_FR') String? resumenFR,@JsonKey(name: 'RESUMEN_DE') String? resumenDE,@JsonKey(name: 'RESUMEN_CA') String? resumenCA,@JsonKey(name: 'RESUMEN_GB') String? resumenGB,@JsonKey(name: 'RESUMEN_HU') String? resumenHU,@JsonKey(name: 'RESUMEN_IT') String? resumenIT,@JsonKey(name: 'RESUMEN_NL') String? resumenNL,@JsonKey(name: 'RESUMEN_PL') String? resumenPL,@JsonKey(name: 'RESUMEN_PT') String? resumenPT,@JsonKey(name: 'RESUMEN_RO') String? resumenRO,@JsonKey(name: 'RESUMEN_RU') String? resumenRU,@JsonKey(name: 'RESUMEN_CN') String? resumenCN,@JsonKey(name: 'RESUMEN_EL') String? resumenEL,@JsonKey(name: 'STOCK_DISPONIBLE') int stockDisponible,@JsonKey(name: 'VENTAS_ACTUAL') double ventasActual,@JsonKey(name: 'VENTAS_ANTERIOR') double ventasAnterior,@JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_1') int comprasEntregaCantidad1,@JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_2') int comprasEntregaCantidad2,@JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_3') int comprasEntregaCantidad3,@JsonKey(name: 'COMPRAS_ENTREGA_CANTIDAD_MAS_3') int comprasEntregaCantidadMas3,@JsonKey(name: 'COMPRAS_ENTREGA_FECHA_1') DateTime? comprasEntregaFecha1,@JsonKey(name: 'COMPRAS_ENTREGA_FECHA_2') DateTime? comprasEntregaFecha2,@JsonKey(name: 'COMPRAS_ENTREGA_FECHA_3') DateTime? comprasEntregaFecha3,@JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_1') String? comprasEntregaEstado1,@JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_2') String? comprasEntregaEstado2,@JsonKey(name: 'COMPRAS_ENTREGA_ESTADO_') String? comprasEntregaEstado3,@JsonKey(name: 'IMAGEN_PRINCIPAL') String? imagenPrincipal,@JsonKey(name: 'GTIN_13_UNIDAD') String? gtin13Unidad,@JsonKey(name: 'GS1_128_SUBCAJA') String? gs1128Subcaja,@JsonKey(name: 'GS1_128_CAJA') String? gs1128Caja,@JsonKey(name: 'GS1_128_PALET') String? gs1128Palet,@JsonKey(name: 'VENTAS_ORDEN') int? ventasOrden,@JsonKey(name: 'COSTE_UNITARIO') double? costeUnitario,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ArticuloDTOCopyWithImpl<$Res>
    implements _$ArticuloDTOCopyWith<$Res> {
  __$ArticuloDTOCopyWithImpl(this._self, this._then);

  final _ArticuloDTO _self;
  final $Res Function(_ArticuloDTO) _then;

/// Create a copy of ArticuloDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? descripcionES = null,Object? descripcionEN = freezed,Object? descripcionFR = freezed,Object? descripcionDE = freezed,Object? descripcionCA = freezed,Object? descripcionGB = freezed,Object? descripcionHU = freezed,Object? descripcionIT = freezed,Object? descripcionNL = freezed,Object? descripcionPL = freezed,Object? descripcionPT = freezed,Object? descripcionRO = freezed,Object? descripcionRU = freezed,Object? descripcionCN = freezed,Object? descripcionEL = freezed,Object? familiaId = freezed,Object? subfamiliaId = freezed,Object? ventaMinimo = null,Object? ventaMultiplo = null,Object? unidadesSubcaja = null,Object? unidadesCaja = null,Object? unidadesPalet = null,Object? activoWeb = null,Object? activoApp = null,Object? enCatalogo = null,Object? descatalogado = null,Object? paginaEnCatalgo = freezed,Object? paginaEnCatalgo2 = freezed,Object? pesoKg = null,Object? largoCm = null,Object? anchoCm = null,Object? altoCm = null,Object? resumenES = freezed,Object? resumenEN = freezed,Object? resumenFR = freezed,Object? resumenDE = freezed,Object? resumenCA = freezed,Object? resumenGB = freezed,Object? resumenHU = freezed,Object? resumenIT = freezed,Object? resumenNL = freezed,Object? resumenPL = freezed,Object? resumenPT = freezed,Object? resumenRO = freezed,Object? resumenRU = freezed,Object? resumenCN = freezed,Object? resumenEL = freezed,Object? stockDisponible = null,Object? ventasActual = null,Object? ventasAnterior = null,Object? comprasEntregaCantidad1 = null,Object? comprasEntregaCantidad2 = null,Object? comprasEntregaCantidad3 = null,Object? comprasEntregaCantidadMas3 = null,Object? comprasEntregaFecha1 = freezed,Object? comprasEntregaFecha2 = freezed,Object? comprasEntregaFecha3 = freezed,Object? comprasEntregaEstado1 = freezed,Object? comprasEntregaEstado2 = freezed,Object? comprasEntregaEstado3 = freezed,Object? imagenPrincipal = freezed,Object? gtin13Unidad = freezed,Object? gs1128Subcaja = freezed,Object? gs1128Caja = freezed,Object? gs1128Palet = freezed,Object? ventasOrden = freezed,Object? costeUnitario = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ArticuloDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,descripcionES: null == descripcionES ? _self.descripcionES : descripcionES // ignore: cast_nullable_to_non_nullable
as String,descripcionEN: freezed == descripcionEN ? _self.descripcionEN : descripcionEN // ignore: cast_nullable_to_non_nullable
as String?,descripcionFR: freezed == descripcionFR ? _self.descripcionFR : descripcionFR // ignore: cast_nullable_to_non_nullable
as String?,descripcionDE: freezed == descripcionDE ? _self.descripcionDE : descripcionDE // ignore: cast_nullable_to_non_nullable
as String?,descripcionCA: freezed == descripcionCA ? _self.descripcionCA : descripcionCA // ignore: cast_nullable_to_non_nullable
as String?,descripcionGB: freezed == descripcionGB ? _self.descripcionGB : descripcionGB // ignore: cast_nullable_to_non_nullable
as String?,descripcionHU: freezed == descripcionHU ? _self.descripcionHU : descripcionHU // ignore: cast_nullable_to_non_nullable
as String?,descripcionIT: freezed == descripcionIT ? _self.descripcionIT : descripcionIT // ignore: cast_nullable_to_non_nullable
as String?,descripcionNL: freezed == descripcionNL ? _self.descripcionNL : descripcionNL // ignore: cast_nullable_to_non_nullable
as String?,descripcionPL: freezed == descripcionPL ? _self.descripcionPL : descripcionPL // ignore: cast_nullable_to_non_nullable
as String?,descripcionPT: freezed == descripcionPT ? _self.descripcionPT : descripcionPT // ignore: cast_nullable_to_non_nullable
as String?,descripcionRO: freezed == descripcionRO ? _self.descripcionRO : descripcionRO // ignore: cast_nullable_to_non_nullable
as String?,descripcionRU: freezed == descripcionRU ? _self.descripcionRU : descripcionRU // ignore: cast_nullable_to_non_nullable
as String?,descripcionCN: freezed == descripcionCN ? _self.descripcionCN : descripcionCN // ignore: cast_nullable_to_non_nullable
as String?,descripcionEL: freezed == descripcionEL ? _self.descripcionEL : descripcionEL // ignore: cast_nullable_to_non_nullable
as String?,familiaId: freezed == familiaId ? _self.familiaId : familiaId // ignore: cast_nullable_to_non_nullable
as String?,subfamiliaId: freezed == subfamiliaId ? _self.subfamiliaId : subfamiliaId // ignore: cast_nullable_to_non_nullable
as String?,ventaMinimo: null == ventaMinimo ? _self.ventaMinimo : ventaMinimo // ignore: cast_nullable_to_non_nullable
as int,ventaMultiplo: null == ventaMultiplo ? _self.ventaMultiplo : ventaMultiplo // ignore: cast_nullable_to_non_nullable
as int,unidadesSubcaja: null == unidadesSubcaja ? _self.unidadesSubcaja : unidadesSubcaja // ignore: cast_nullable_to_non_nullable
as int,unidadesCaja: null == unidadesCaja ? _self.unidadesCaja : unidadesCaja // ignore: cast_nullable_to_non_nullable
as int,unidadesPalet: null == unidadesPalet ? _self.unidadesPalet : unidadesPalet // ignore: cast_nullable_to_non_nullable
as int,activoWeb: null == activoWeb ? _self.activoWeb : activoWeb // ignore: cast_nullable_to_non_nullable
as String,activoApp: null == activoApp ? _self.activoApp : activoApp // ignore: cast_nullable_to_non_nullable
as String,enCatalogo: null == enCatalogo ? _self.enCatalogo : enCatalogo // ignore: cast_nullable_to_non_nullable
as String,descatalogado: null == descatalogado ? _self.descatalogado : descatalogado // ignore: cast_nullable_to_non_nullable
as String,paginaEnCatalgo: freezed == paginaEnCatalgo ? _self.paginaEnCatalgo : paginaEnCatalgo // ignore: cast_nullable_to_non_nullable
as String?,paginaEnCatalgo2: freezed == paginaEnCatalgo2 ? _self.paginaEnCatalgo2 : paginaEnCatalgo2 // ignore: cast_nullable_to_non_nullable
as String?,pesoKg: null == pesoKg ? _self.pesoKg : pesoKg // ignore: cast_nullable_to_non_nullable
as double,largoCm: null == largoCm ? _self.largoCm : largoCm // ignore: cast_nullable_to_non_nullable
as double,anchoCm: null == anchoCm ? _self.anchoCm : anchoCm // ignore: cast_nullable_to_non_nullable
as double,altoCm: null == altoCm ? _self.altoCm : altoCm // ignore: cast_nullable_to_non_nullable
as double,resumenES: freezed == resumenES ? _self.resumenES : resumenES // ignore: cast_nullable_to_non_nullable
as String?,resumenEN: freezed == resumenEN ? _self.resumenEN : resumenEN // ignore: cast_nullable_to_non_nullable
as String?,resumenFR: freezed == resumenFR ? _self.resumenFR : resumenFR // ignore: cast_nullable_to_non_nullable
as String?,resumenDE: freezed == resumenDE ? _self.resumenDE : resumenDE // ignore: cast_nullable_to_non_nullable
as String?,resumenCA: freezed == resumenCA ? _self.resumenCA : resumenCA // ignore: cast_nullable_to_non_nullable
as String?,resumenGB: freezed == resumenGB ? _self.resumenGB : resumenGB // ignore: cast_nullable_to_non_nullable
as String?,resumenHU: freezed == resumenHU ? _self.resumenHU : resumenHU // ignore: cast_nullable_to_non_nullable
as String?,resumenIT: freezed == resumenIT ? _self.resumenIT : resumenIT // ignore: cast_nullable_to_non_nullable
as String?,resumenNL: freezed == resumenNL ? _self.resumenNL : resumenNL // ignore: cast_nullable_to_non_nullable
as String?,resumenPL: freezed == resumenPL ? _self.resumenPL : resumenPL // ignore: cast_nullable_to_non_nullable
as String?,resumenPT: freezed == resumenPT ? _self.resumenPT : resumenPT // ignore: cast_nullable_to_non_nullable
as String?,resumenRO: freezed == resumenRO ? _self.resumenRO : resumenRO // ignore: cast_nullable_to_non_nullable
as String?,resumenRU: freezed == resumenRU ? _self.resumenRU : resumenRU // ignore: cast_nullable_to_non_nullable
as String?,resumenCN: freezed == resumenCN ? _self.resumenCN : resumenCN // ignore: cast_nullable_to_non_nullable
as String?,resumenEL: freezed == resumenEL ? _self.resumenEL : resumenEL // ignore: cast_nullable_to_non_nullable
as String?,stockDisponible: null == stockDisponible ? _self.stockDisponible : stockDisponible // ignore: cast_nullable_to_non_nullable
as int,ventasActual: null == ventasActual ? _self.ventasActual : ventasActual // ignore: cast_nullable_to_non_nullable
as double,ventasAnterior: null == ventasAnterior ? _self.ventasAnterior : ventasAnterior // ignore: cast_nullable_to_non_nullable
as double,comprasEntregaCantidad1: null == comprasEntregaCantidad1 ? _self.comprasEntregaCantidad1 : comprasEntregaCantidad1 // ignore: cast_nullable_to_non_nullable
as int,comprasEntregaCantidad2: null == comprasEntregaCantidad2 ? _self.comprasEntregaCantidad2 : comprasEntregaCantidad2 // ignore: cast_nullable_to_non_nullable
as int,comprasEntregaCantidad3: null == comprasEntregaCantidad3 ? _self.comprasEntregaCantidad3 : comprasEntregaCantidad3 // ignore: cast_nullable_to_non_nullable
as int,comprasEntregaCantidadMas3: null == comprasEntregaCantidadMas3 ? _self.comprasEntregaCantidadMas3 : comprasEntregaCantidadMas3 // ignore: cast_nullable_to_non_nullable
as int,comprasEntregaFecha1: freezed == comprasEntregaFecha1 ? _self.comprasEntregaFecha1 : comprasEntregaFecha1 // ignore: cast_nullable_to_non_nullable
as DateTime?,comprasEntregaFecha2: freezed == comprasEntregaFecha2 ? _self.comprasEntregaFecha2 : comprasEntregaFecha2 // ignore: cast_nullable_to_non_nullable
as DateTime?,comprasEntregaFecha3: freezed == comprasEntregaFecha3 ? _self.comprasEntregaFecha3 : comprasEntregaFecha3 // ignore: cast_nullable_to_non_nullable
as DateTime?,comprasEntregaEstado1: freezed == comprasEntregaEstado1 ? _self.comprasEntregaEstado1 : comprasEntregaEstado1 // ignore: cast_nullable_to_non_nullable
as String?,comprasEntregaEstado2: freezed == comprasEntregaEstado2 ? _self.comprasEntregaEstado2 : comprasEntregaEstado2 // ignore: cast_nullable_to_non_nullable
as String?,comprasEntregaEstado3: freezed == comprasEntregaEstado3 ? _self.comprasEntregaEstado3 : comprasEntregaEstado3 // ignore: cast_nullable_to_non_nullable
as String?,imagenPrincipal: freezed == imagenPrincipal ? _self.imagenPrincipal : imagenPrincipal // ignore: cast_nullable_to_non_nullable
as String?,gtin13Unidad: freezed == gtin13Unidad ? _self.gtin13Unidad : gtin13Unidad // ignore: cast_nullable_to_non_nullable
as String?,gs1128Subcaja: freezed == gs1128Subcaja ? _self.gs1128Subcaja : gs1128Subcaja // ignore: cast_nullable_to_non_nullable
as String?,gs1128Caja: freezed == gs1128Caja ? _self.gs1128Caja : gs1128Caja // ignore: cast_nullable_to_non_nullable
as String?,gs1128Palet: freezed == gs1128Palet ? _self.gs1128Palet : gs1128Palet // ignore: cast_nullable_to_non_nullable
as String?,ventasOrden: freezed == ventasOrden ? _self.ventasOrden : ventasOrden // ignore: cast_nullable_to_non_nullable
as int?,costeUnitario: freezed == costeUnitario ? _self.costeUnitario : costeUnitario // ignore: cast_nullable_to_non_nullable
as double?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
