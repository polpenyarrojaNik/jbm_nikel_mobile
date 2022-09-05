// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `No Results`
  String get sinResultados {
    return Intl.message(
      'No Results',
      name: 'sinResultados',
      desc: '',
      args: [],
    );
  }

  /// `Customers`
  String get commonWidgets_appDrawer_clientes {
    return Intl.message(
      'Customers',
      name: 'commonWidgets_appDrawer_clientes',
      desc: '',
      args: [],
    );
  }

  /// `Articles`
  String get commonWidgets_appDrawer_articulos {
    return Intl.message(
      'Articles',
      name: 'commonWidgets_appDrawer_articulos',
      desc: '',
      args: [],
    );
  }

  /// `Sales orders`
  String get commonWidgets_appDrawer_pedidos {
    return Intl.message(
      'Sales orders',
      name: 'commonWidgets_appDrawer_pedidos',
      desc: '',
      args: [],
    );
  }

  /// `Visits`
  String get commonWidgets_appDrawer_visitas {
    return Intl.message(
      'Visits',
      name: 'commonWidgets_appDrawer_visitas',
      desc: '',
      args: [],
    );
  }

  /// `KPI`
  String get commonWidgets_appDrawer_kpi {
    return Intl.message(
      'KPI',
      name: 'commonWidgets_appDrawer_kpi',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get commonWidgets_appDrawer_ajustes {
    return Intl.message(
      'Settings',
      name: 'commonWidgets_appDrawer_ajustes',
      desc: '',
      args: [],
    );
  }

  /// `Go Home`
  String get commonWidgets_emptyPlaceholfer_irAIncio {
    return Intl.message(
      'Go Home',
      name: 'commonWidgets_emptyPlaceholfer_irAIncio',
      desc: '',
      args: [],
    );
  }

  /// `Last sync`
  String get commonWidgets_ultimaSincronizacion {
    return Intl.message(
      'Last sync',
      name: 'commonWidgets_ultimaSincronizacion',
      desc: '',
      args: [],
    );
  }

  /// `Articles`
  String get article_index_titulo {
    return Intl.message(
      'Articles',
      name: 'article_index_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Search articles...`
  String get article_index_buscarArticulos {
    return Intl.message(
      'Search articles...',
      name: 'article_index_buscarArticulos',
      desc: '',
      args: [],
    );
  }

  /// `Stock`
  String get article_show_articleComponent_stock {
    return Intl.message(
      'Stock',
      name: 'article_show_articleComponent_stock',
      desc: '',
      args: [],
    );
  }

  /// `Stock`
  String get article_show_articleComponentIncluded_stock {
    return Intl.message(
      'Stock',
      name: 'article_show_articleComponentIncluded_stock',
      desc: '',
      args: [],
    );
  }

  /// `Sales orders`
  String get article_show_articleDetail_pedVentas {
    return Intl.message(
      'Sales orders',
      name: 'article_show_articleDetail_pedVentas',
      desc: '',
      args: [],
    );
  }

  /// `¿Returns?`
  String get article_show_articleDetail_devoluciones {
    return Intl.message(
      '¿Returns?',
      name: 'article_show_articleDetail_devoluciones',
      desc: '',
      args: [],
    );
  }

  /// `Last prices`
  String get article_show_articleDetail_ultimosPrecios {
    return Intl.message(
      'Last prices',
      name: 'article_show_articleDetail_ultimosPrecios',
      desc: '',
      args: [],
    );
  }

  /// `¿Stats?`
  String get article_show_articleDetail_estadisticas {
    return Intl.message(
      '¿Stats?',
      name: 'article_show_articleDetail_estadisticas',
      desc: '',
      args: [],
    );
  }

  /// `General data`
  String get article_show_articleDetail_datosGenerales {
    return Intl.message(
      'General data',
      name: 'article_show_articleDetail_datosGenerales',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get article_show_articleDetail_codigo {
    return Intl.message(
      'Code',
      name: 'article_show_articleDetail_codigo',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get article_show_articleDetail_descripcion {
    return Intl.message(
      'Description',
      name: 'article_show_articleDetail_descripcion',
      desc: '',
      args: [],
    );
  }

  /// `Family`
  String get article_show_articleDetail_familia {
    return Intl.message(
      'Family',
      name: 'article_show_articleDetail_familia',
      desc: '',
      args: [],
    );
  }

  /// `Subfamily`
  String get article_show_articleDetail_subfamilia {
    return Intl.message(
      'Subfamily',
      name: 'article_show_articleDetail_subfamilia',
      desc: '',
      args: [],
    );
  }

  /// `Delivery 1`
  String get article_show_articleDetail_entrega1 {
    return Intl.message(
      'Delivery 1',
      name: 'article_show_articleDetail_entrega1',
      desc: '',
      args: [],
    );
  }

  /// `Delivery 2`
  String get article_show_articleDetail_entrega2 {
    return Intl.message(
      'Delivery 2',
      name: 'article_show_articleDetail_entrega2',
      desc: '',
      args: [],
    );
  }

  /// `Delivery 3`
  String get article_show_articleDetail_entrega3 {
    return Intl.message(
      'Delivery 3',
      name: 'article_show_articleDetail_entrega3',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'article_show_articleDetail_+' key

  /// `Stock`
  String get article_show_articleDetail_stock {
    return Intl.message(
      'Stock',
      name: 'article_show_articleDetail_stock',
      desc: '',
      args: [],
    );
  }

  /// `Subbox`
  String get article_show_articleDetail_subcaja {
    return Intl.message(
      'Subbox',
      name: 'article_show_articleDetail_subcaja',
      desc: '',
      args: [],
    );
  }

  /// `Box`
  String get article_show_articleDetail_caja {
    return Intl.message(
      'Box',
      name: 'article_show_articleDetail_caja',
      desc: '',
      args: [],
    );
  }

  /// `Palet`
  String get article_show_articleDetail_palet {
    return Intl.message(
      'Palet',
      name: 'article_show_articleDetail_palet',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'article_show_articleDetail_peso(kg)' key

  // skipped getter for the 'article_show_articleDetail_largo(cm)' key

  // skipped getter for the 'article_show_articleDetail_alto(cm)' key

  // skipped getter for the 'article_show_articleDetail_ancho(cm)' key

  // skipped getter for the 'article_show_articleDetail_pagCatalogo/2ªEdi' key

  /// `Active web`
  String get article_show_articleDetail_activoWeb {
    return Intl.message(
      'Active web',
      name: 'article_show_articleDetail_activoWeb',
      desc: '',
      args: [],
    );
  }

  /// `Active app`
  String get article_show_articleDetail_activoApp {
    return Intl.message(
      'Active app',
      name: 'article_show_articleDetail_activoApp',
      desc: '',
      args: [],
    );
  }

  /// `In cataloge`
  String get article_show_articleDetail_enCatalogo {
    return Intl.message(
      'In cataloge',
      name: 'article_show_articleDetail_enCatalogo',
      desc: '',
      args: [],
    );
  }

  /// `Discontinued`
  String get article_show_articleDetail_descatalogadoCompras {
    return Intl.message(
      'Discontinued',
      name: 'article_show_articleDetail_descatalogadoCompras',
      desc: '',
      args: [],
    );
  }

  /// `Summary`
  String get article_show_articleDetail_resumen {
    return Intl.message(
      'Summary',
      name: 'article_show_articleDetail_resumen',
      desc: '',
      args: [],
    );
  }

  /// `Últimos precios`
  String get article_show_lastPrices_titulo {
    return Intl.message(
      'Últimos precios',
      name: 'article_show_lastPrices_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get article_show_lastPrices_precio {
    return Intl.message(
      'Price',
      name: 'article_show_lastPrices_precio',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get article_show_articleSalesOrder_pedido {
    return Intl.message(
      'Order',
      name: 'article_show_articleSalesOrder_pedido',
      desc: '',
      args: [],
    );
  }

  /// `LOGIN TITLE`
  String get auth_loginPage_titulo {
    return Intl.message(
      'LOGIN TITLE',
      name: 'auth_loginPage_titulo',
      desc: '',
      args: [],
    );
  }

  /// `This field not be empty`
  String get auth_loginPage_noPuedeEstarVacio {
    return Intl.message(
      'This field not be empty',
      name: 'auth_loginPage_noPuedeEstarVacio',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get auth_loginPage_usuario {
    return Intl.message(
      'User',
      name: 'auth_loginPage_usuario',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'auth_loginPage_contraseña' key

  /// `Log in`
  String get auth_loginPage_iniciarSesion {
    return Intl.message(
      'Log in',
      name: 'auth_loginPage_iniciarSesion',
      desc: '',
      args: [],
    );
  }

  /// `Customers`
  String get customer_index_titulo {
    return Intl.message(
      'Customers',
      name: 'customer_index_titulo',
      desc: '',
      args: [],
    );
  }

  /// ` Search customers...`
  String get customer_index_buscarClientes {
    return Intl.message(
      ' Search customers...',
      name: 'customer_index_buscarClientes',
      desc: '',
      args: [],
    );
  }

  /// `Remarks`
  String get customer_show_customerContact_observaciones {
    return Intl.message(
      'Remarks',
      name: 'customer_show_customerContact_observaciones',
      desc: '',
      args: [],
    );
  }

  /// `Customer detail`
  String get customer_show_customerDetail_titulo {
    return Intl.message(
      'Customer detail',
      name: 'customer_show_customerDetail_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Article sales`
  String get customer_show_customerDetail_vtasArt {
    return Intl.message(
      'Article sales',
      name: 'customer_show_customerDetail_vtasArt',
      desc: '',
      args: [],
    );
  }

  /// `Month sales`
  String get customer_show_customerDetail_vtasMes {
    return Intl.message(
      'Month sales',
      name: 'customer_show_customerDetail_vtasMes',
      desc: '',
      args: [],
    );
  }

  /// `¿Net price?`
  String get customer_show_customerDetail_precioNeto {
    return Intl.message(
      '¿Net price?',
      name: 'customer_show_customerDetail_precioNeto',
      desc: '',
      args: [],
    );
  }

  /// `Pending payments`
  String get customer_show_customerDetail_factPendientes {
    return Intl.message(
      'Pending payments',
      name: 'customer_show_customerDetail_factPendientes',
      desc: '',
      args: [],
    );
  }

  /// `¿Stock B2B?`
  String get customer_show_customerDetail_stockB2B {
    return Intl.message(
      '¿Stock B2B?',
      name: 'customer_show_customerDetail_stockB2B',
      desc: '',
      args: [],
    );
  }

  /// `Top 150`
  String get customer_show_customerDetail_top150 {
    return Intl.message(
      'Top 150',
      name: 'customer_show_customerDetail_top150',
      desc: '',
      args: [],
    );
  }

  /// `¿Descuento Tipo Entrada?`
  String get customer_show_customerDetail_descuentoTipoEntrada {
    return Intl.message(
      '¿Descuento Tipo Entrada?',
      name: 'customer_show_customerDetail_descuentoTipoEntrada',
      desc: '',
      args: [],
    );
  }

  /// `General data`
  String get customer_show_customerDetail_datosGenerales {
    return Intl.message(
      'General data',
      name: 'customer_show_customerDetail_datosGenerales',
      desc: '',
      args: [],
    );
  }

  /// `Fiscal name`
  String get customer_show_customerDetail_nombreFiscal {
    return Intl.message(
      'Fiscal name',
      name: 'customer_show_customerDetail_nombreFiscal',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get customer_show_customerDetail_direccion {
    return Intl.message(
      'Address',
      name: 'customer_show_customerDetail_direccion',
      desc: '',
      args: [],
    );
  }

  /// `Address 2`
  String get customer_show_customerDetail_direccion2 {
    return Intl.message(
      'Address 2',
      name: 'customer_show_customerDetail_direccion2',
      desc: '',
      args: [],
    );
  }

  /// `Zip code`
  String get customer_show_customerDetail_codigoPostal {
    return Intl.message(
      'Zip code',
      name: 'customer_show_customerDetail_codigoPostal',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get customer_show_customerDetail_poblacion {
    return Intl.message(
      'City',
      name: 'customer_show_customerDetail_poblacion',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get customer_show_customerDetail_provincia {
    return Intl.message(
      'State',
      name: 'customer_show_customerDetail_provincia',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get customer_show_customerDetail_pais {
    return Intl.message(
      'Country',
      name: 'customer_show_customerDetail_pais',
      desc: '',
      args: [],
    );
  }

  /// `NIF`
  String get customer_show_customerDetail_nif {
    return Intl.message(
      'NIF',
      name: 'customer_show_customerDetail_nif',
      desc: '',
      args: [],
    );
  }

  /// `Latitude`
  String get customer_show_customerDetail_latitud {
    return Intl.message(
      'Latitude',
      name: 'customer_show_customerDetail_latitud',
      desc: '',
      args: [],
    );
  }

  /// `Longitude`
  String get customer_show_customerDetail_longitud {
    return Intl.message(
      'Longitude',
      name: 'customer_show_customerDetail_longitud',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'customer_show_customerDetail_ventasAñoActual' key

  // skipped getter for the 'customer_show_customerDetail_ventasAñoAnterior' key

  // skipped getter for the 'customer_show_customerDetail_ventasHace2Años' key

  /// `Warranty percentage`
  String get customer_show_customerDetail_porcentajeGarantias {
    return Intl.message(
      'Warranty percentage',
      name: 'customer_show_customerDetail_porcentajeGarantias',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'customer_show_customerDetail_margenAñoActual' key

  // skipped getter for the 'customer_show_customerDetail_margenAñoAnterior' key

  // skipped getter for the 'customer_show_customerDetail_margenHace2Años' key

  /// `Payment percentage`
  String get customer_show_customerDetail_PorcentajeAbonos {
    return Intl.message(
      'Payment percentage',
      name: 'customer_show_customerDetail_PorcentajeAbonos',
      desc: '',
      args: [],
    );
  }

  /// `Shopping center`
  String get customer_show_customerDetail_centralCompras {
    return Intl.message(
      'Shopping center',
      name: 'customer_show_customerDetail_centralCompras',
      desc: '',
      args: [],
    );
  }

  /// `Web`
  String get customer_show_customerDetail_web {
    return Intl.message(
      'Web',
      name: 'customer_show_customerDetail_web',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'customer_show_customerDetail_precios&Otros' key

  /// `Valuta`
  String get customer_show_customerDetail_divisa {
    return Intl.message(
      'Valuta',
      name: 'customer_show_customerDetail_divisa',
      desc: '',
      args: [],
    );
  }

  /// `Rate price`
  String get customer_show_customerDetail_tarifa {
    return Intl.message(
      'Rate price',
      name: 'customer_show_customerDetail_tarifa',
      desc: '',
      args: [],
    );
  }

  /// `General discount`
  String get customer_show_customerDetail_descuentoGeneral {
    return Intl.message(
      'General discount',
      name: 'customer_show_customerDetail_descuentoGeneral',
      desc: '',
      args: [],
    );
  }

  /// `Bonus`
  String get customer_show_customerDetail_bonificacion {
    return Intl.message(
      'Bonus',
      name: 'customer_show_customerDetail_bonificacion',
      desc: '',
      args: [],
    );
  }

  /// `Price calculation type`
  String get customer_show_customerDetail_metodoCalculoPrecio {
    return Intl.message(
      'Price calculation type',
      name: 'customer_show_customerDetail_metodoCalculoPrecio',
      desc: '',
      args: [],
    );
  }

  /// `¿Visits pace(week)?`
  String get customer_show_customerDetail_ritmoVisitas {
    return Intl.message(
      '¿Visits pace(week)?',
      name: 'customer_show_customerDetail_ritmoVisitas',
      desc: '',
      args: [],
    );
  }

  /// `Billing`
  String get customer_show_customerDetail_facturacion {
    return Intl.message(
      'Billing',
      name: 'customer_show_customerDetail_facturacion',
      desc: '',
      args: [],
    );
  }

  /// `Collection term `
  String get customer_show_customerDetail_plazoDeCobro {
    return Intl.message(
      'Collection term ',
      name: 'customer_show_customerDetail_plazoDeCobro',
      desc: '',
      args: [],
    );
  }

  /// `Collection method`
  String get customer_show_customerDetail_metodoDeCobro {
    return Intl.message(
      'Collection method',
      name: 'customer_show_customerDetail_metodoDeCobro',
      desc: '',
      args: [],
    );
  }

  /// `P.P. Discount`
  String get customer_show_customerDetail_descuentoPP {
    return Intl.message(
      'P.P. Discount',
      name: 'customer_show_customerDetail_descuentoPP',
      desc: '',
      args: [],
    );
  }

  /// `Risks`
  String get customer_show_customerDetail_riesgos {
    return Intl.message(
      'Risks',
      name: 'customer_show_customerDetail_riesgos',
      desc: '',
      args: [],
    );
  }

  /// `Granted JBM`
  String get customer_show_customerDetail_concedidoJBM {
    return Intl.message(
      'Granted JBM',
      name: 'customer_show_customerDetail_concedidoJBM',
      desc: '',
      args: [],
    );
  }

  /// `Granted date`
  String get customer_show_customerDetail_concedidoFecha {
    return Intl.message(
      'Granted date',
      name: 'customer_show_customerDetail_concedidoFecha',
      desc: '',
      args: [],
    );
  }

  /// `Granted COFACE`
  String get customer_show_customerDetail_concedidoCOFACE {
    return Intl.message(
      'Granted COFACE',
      name: 'customer_show_customerDetail_concedidoCOFACE',
      desc: '',
      args: [],
    );
  }

  /// `COFACE date`
  String get customer_show_customerDetail_fechaCOFACE {
    return Intl.message(
      'COFACE date',
      name: 'customer_show_customerDetail_fechaCOFACE',
      desc: '',
      args: [],
    );
  }

  /// `Current risk`
  String get customer_show_customerDetail_riesgoActual {
    return Intl.message(
      'Current risk',
      name: 'customer_show_customerDetail_riesgoActual',
      desc: '',
      args: [],
    );
  }

  /// `Granted risk`
  String get customer_show_customerDetail_riesgoConcedido {
    return Intl.message(
      'Granted risk',
      name: 'customer_show_customerDetail_riesgoConcedido',
      desc: '',
      args: [],
    );
  }

  /// `Pending Collection Due`
  String get customer_show_customerDetail_pdteCobroVencido {
    return Intl.message(
      'Pending Collection Due',
      name: 'customer_show_customerDetail_pdteCobroVencido',
      desc: '',
      args: [],
    );
  }

  /// `Pending Collection No Due`
  String get customer_show_customerDetail_pdteCobroNoVencido {
    return Intl.message(
      'Pending Collection No Due',
      name: 'customer_show_customerDetail_pdteCobroNoVencido',
      desc: '',
      args: [],
    );
  }

  /// `Pending to serve`
  String get customer_show_customerDetail_pdteServir {
    return Intl.message(
      'Pending to serve',
      name: 'customer_show_customerDetail_pdteServir',
      desc: '',
      args: [],
    );
  }

  /// `Since`
  String get customer_show_customerDiscount_desDe {
    return Intl.message(
      'Since',
      name: 'customer_show_customerDiscount_desDe',
      desc: '',
      args: [],
    );
  }

  /// `Since`
  String get customer_show_customerNetPrice_desDe {
    return Intl.message(
      'Since',
      name: 'customer_show_customerNetPrice_desDe',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get customer_show_customerNetPrice_precio {
    return Intl.message(
      'Price',
      name: 'customer_show_customerNetPrice_precio',
      desc: '',
      args: [],
    );
  }

  /// `Pending Payments`
  String get customer_show_customerPendingPayment_titulo {
    return Intl.message(
      'Pending Payments',
      name: 'customer_show_customerPendingPayment_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Top 150`
  String get customer_show_customerTopArticles_titulo {
    return Intl.message(
      'Top 150',
      name: 'customer_show_customerTopArticles_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Sales orders`
  String get salesorder_index_titulo {
    return Intl.message(
      'Sales orders',
      name: 'salesorder_index_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Search sales orders...`
  String get salesorder_index_buscarPedidos {
    return Intl.message(
      'Search sales orders...',
      name: 'salesorder_index_buscarPedidos',
      desc: '',
      args: [],
    );
  }

  /// `Sales order detail`
  String get salesorder_show_salesOrderDetail_titulo {
    return Intl.message(
      'Sales order detail',
      name: 'salesorder_show_salesOrderDetail_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get salesorder_show_salesOrderDetail_estado {
    return Intl.message(
      'Status',
      name: 'salesorder_show_salesOrderDetail_estado',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get salesorder_show_salesOrderDetail_fecha {
    return Intl.message(
      'Date',
      name: 'salesorder_show_salesOrderDetail_fecha',
      desc: '',
      args: [],
    );
  }

  /// `Tax base`
  String get salesorder_show_salesOrderDetail_baseImponible {
    return Intl.message(
      'Tax base',
      name: 'salesorder_show_salesOrderDetail_baseImponible',
      desc: '',
      args: [],
    );
  }

  /// `Amount IVA`
  String get salesorder_show_salesOrderDetail_importeIva {
    return Intl.message(
      'Amount IVA',
      name: 'salesorder_show_salesOrderDetail_importeIva',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get salesorder_show_salesOrderDetail_total {
    return Intl.message(
      'Total',
      name: 'salesorder_show_salesOrderDetail_total',
      desc: '',
      args: [],
    );
  }

  /// `Lines`
  String get salesorder_show_salesOrderDetail_lineas {
    return Intl.message(
      'Lines',
      name: 'salesorder_show_salesOrderDetail_lineas',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get salesorder_show_salesOrderDetail_precio {
    return Intl.message(
      'Price',
      name: 'salesorder_show_salesOrderDetail_precio',
      desc: '',
      args: [],
    );
  }

  /// `Sync done successfullt`
  String get settings_sincronicacionRealizadaConExito {
    return Intl.message(
      'Sync done successfullt',
      name: 'settings_sincronicacionRealizadaConExito',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings_titulo {
    return Intl.message(
      'Settings',
      name: 'settings_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Sync data`
  String get settings_sincronizarDatos {
    return Intl.message(
      'Sync data',
      name: 'settings_sincronizarDatos',
      desc: '',
      args: [],
    );
  }

  /// `Visits`
  String get visit_index_titulo {
    return Intl.message(
      'Visits',
      name: 'visit_index_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Visit detail`
  String get visit_show_visitDetail_titulo {
    return Intl.message(
      'Visit detail',
      name: 'visit_show_visitDetail_titulo',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
