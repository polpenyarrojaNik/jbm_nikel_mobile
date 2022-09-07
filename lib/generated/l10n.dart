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

  /// `Customer`
  String get commonWidgets_appDrawer_clientes {
    return Intl.message(
      'Customer',
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
  String get articulo_index_titulo {
    return Intl.message(
      'Articles',
      name: 'articulo_index_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Search articles...`
  String get articulo_index_buscarArticulos {
    return Intl.message(
      'Search articles...',
      name: 'articulo_index_buscarArticulos',
      desc: '',
      args: [],
    );
  }

  /// `Stock`
  String get articulo_show_articuloComponente_stock {
    return Intl.message(
      'Stock',
      name: 'articulo_show_articuloComponente_stock',
      desc: '',
      args: [],
    );
  }

  /// `Stock`
  String get articulo_show_articuloComponenteIncluded_stock {
    return Intl.message(
      'Stock',
      name: 'articulo_show_articuloComponenteIncluded_stock',
      desc: '',
      args: [],
    );
  }

  /// `Sales orders`
  String get articulo_show_articuloDetalle_pedVentas {
    return Intl.message(
      'Sales orders',
      name: 'articulo_show_articuloDetalle_pedVentas',
      desc: '',
      args: [],
    );
  }

  /// `Last prices`
  String get articulo_show_articuloDetalle_ultimosPrecios {
    return Intl.message(
      'Last prices',
      name: 'articulo_show_articuloDetalle_ultimosPrecios',
      desc: '',
      args: [],
    );
  }

  /// `General data`
  String get articulo_show_articuloDetalle_datosGenerales {
    return Intl.message(
      'General data',
      name: 'articulo_show_articuloDetalle_datosGenerales',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get articulo_show_articuloDetalle_codigo {
    return Intl.message(
      'Code',
      name: 'articulo_show_articuloDetalle_codigo',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get articulo_show_articuloDetalle_descripcion {
    return Intl.message(
      'Description',
      name: 'articulo_show_articuloDetalle_descripcion',
      desc: '',
      args: [],
    );
  }

  /// `Family`
  String get articulo_show_articuloDetalle_familia {
    return Intl.message(
      'Family',
      name: 'articulo_show_articuloDetalle_familia',
      desc: '',
      args: [],
    );
  }

  /// `Subfamily`
  String get articulo_show_articuloDetalle_subfamilia {
    return Intl.message(
      'Subfamily',
      name: 'articulo_show_articuloDetalle_subfamilia',
      desc: '',
      args: [],
    );
  }

  /// `Delivery 1`
  String get articulo_show_articuloDetalle_entrega1 {
    return Intl.message(
      'Delivery 1',
      name: 'articulo_show_articuloDetalle_entrega1',
      desc: '',
      args: [],
    );
  }

  /// `Delivery 2`
  String get articulo_show_articuloDetalle_entrega2 {
    return Intl.message(
      'Delivery 2',
      name: 'articulo_show_articuloDetalle_entrega2',
      desc: '',
      args: [],
    );
  }

  /// `Delivery 3`
  String get articulo_show_articuloDetalle_entrega3 {
    return Intl.message(
      'Delivery 3',
      name: 'articulo_show_articuloDetalle_entrega3',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'articulo_show_articuloDetalle_+' key

  /// `Stock`
  String get articulo_show_articuloDetalle_stock {
    return Intl.message(
      'Stock',
      name: 'articulo_show_articuloDetalle_stock',
      desc: '',
      args: [],
    );
  }

  /// `Subbox`
  String get articulo_show_articuloDetalle_subcaja {
    return Intl.message(
      'Subbox',
      name: 'articulo_show_articuloDetalle_subcaja',
      desc: '',
      args: [],
    );
  }

  /// `Box`
  String get articulo_show_articuloDetalle_caja {
    return Intl.message(
      'Box',
      name: 'articulo_show_articuloDetalle_caja',
      desc: '',
      args: [],
    );
  }

  /// `Palet`
  String get articulo_show_articuloDetalle_palet {
    return Intl.message(
      'Palet',
      name: 'articulo_show_articuloDetalle_palet',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'articulo_show_articuloDetalle_peso(kg)' key

  // skipped getter for the 'articulo_show_articuloDetalle_largo(cm)' key

  // skipped getter for the 'articulo_show_articuloDetalle_alto(cm)' key

  // skipped getter for the 'articulo_show_articuloDetalle_ancho(cm)' key

  // skipped getter for the 'articulo_show_articuloDetalle_pagCatalogo/2ªEdi' key

  /// `Active web`
  String get articulo_show_articuloDetalle_activoWeb {
    return Intl.message(
      'Active web',
      name: 'articulo_show_articuloDetalle_activoWeb',
      desc: '',
      args: [],
    );
  }

  /// `Active app`
  String get articulo_show_articuloDetalle_activoApp {
    return Intl.message(
      'Active app',
      name: 'articulo_show_articuloDetalle_activoApp',
      desc: '',
      args: [],
    );
  }

  /// `In cataloge`
  String get articulo_show_articuloDetalle_enCatalogo {
    return Intl.message(
      'In cataloge',
      name: 'articulo_show_articuloDetalle_enCatalogo',
      desc: '',
      args: [],
    );
  }

  /// `Discontinued`
  String get articulo_show_articuloDetalle_descatalogadoCompras {
    return Intl.message(
      'Discontinued',
      name: 'articulo_show_articuloDetalle_descatalogadoCompras',
      desc: '',
      args: [],
    );
  }

  /// `Summary`
  String get articulo_show_articuloDetalle_resumen {
    return Intl.message(
      'Summary',
      name: 'articulo_show_articuloDetalle_resumen',
      desc: '',
      args: [],
    );
  }

  /// `Last prices`
  String get articulo_show_lastPrices_titulo {
    return Intl.message(
      'Last prices',
      name: 'articulo_show_lastPrices_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get articulo_show_lastPrices_precio {
    return Intl.message(
      'Price',
      name: 'articulo_show_lastPrices_precio',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get articulo_show_articuloPedidoVenta_pedido {
    return Intl.message(
      'Order',
      name: 'articulo_show_articuloPedidoVenta_pedido',
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

  /// `Customer`
  String get cliente_index_titulo {
    return Intl.message(
      'Customer',
      name: 'cliente_index_titulo',
      desc: '',
      args: [],
    );
  }

  /// ` Search customers...`
  String get cliente_index_buscarClientes {
    return Intl.message(
      ' Search customers...',
      name: 'cliente_index_buscarClientes',
      desc: '',
      args: [],
    );
  }

  /// `Remarks`
  String get cliente_show_clienteContacto_observaciones {
    return Intl.message(
      'Remarks',
      name: 'cliente_show_clienteContacto_observaciones',
      desc: '',
      args: [],
    );
  }

  /// `Customer detail`
  String get cliente_show_clienteDetalle_titulo {
    return Intl.message(
      'Customer detail',
      name: 'cliente_show_clienteDetalle_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Article sales`
  String get cliente_show_clienteDetalle_vtasArt {
    return Intl.message(
      'Article sales',
      name: 'cliente_show_clienteDetalle_vtasArt',
      desc: '',
      args: [],
    );
  }

  /// `Month sales`
  String get cliente_show_clienteDetalle_vtasMes {
    return Intl.message(
      'Month sales',
      name: 'cliente_show_clienteDetalle_vtasMes',
      desc: '',
      args: [],
    );
  }

  /// `Pending payments`
  String get cliente_show_clienteDetalle_factPendientes {
    return Intl.message(
      'Pending payments',
      name: 'cliente_show_clienteDetalle_factPendientes',
      desc: '',
      args: [],
    );
  }

  /// `Top 150`
  String get cliente_show_clienteDetalle_top150 {
    return Intl.message(
      'Top 150',
      name: 'cliente_show_clienteDetalle_top150',
      desc: '',
      args: [],
    );
  }

  /// `General data`
  String get cliente_show_clienteDetalle_datosGenerales {
    return Intl.message(
      'General data',
      name: 'cliente_show_clienteDetalle_datosGenerales',
      desc: '',
      args: [],
    );
  }

  /// `Fiscal name`
  String get cliente_show_clienteDetalle_nombreFiscal {
    return Intl.message(
      'Fiscal name',
      name: 'cliente_show_clienteDetalle_nombreFiscal',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get cliente_show_clienteDetalle_direccion {
    return Intl.message(
      'Address',
      name: 'cliente_show_clienteDetalle_direccion',
      desc: '',
      args: [],
    );
  }

  /// `Address 2`
  String get cliente_show_clienteDetalle_direccion2 {
    return Intl.message(
      'Address 2',
      name: 'cliente_show_clienteDetalle_direccion2',
      desc: '',
      args: [],
    );
  }

  /// `Zip code`
  String get cliente_show_clienteDetalle_codigoPostal {
    return Intl.message(
      'Zip code',
      name: 'cliente_show_clienteDetalle_codigoPostal',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get cliente_show_clienteDetalle_poblacion {
    return Intl.message(
      'City',
      name: 'cliente_show_clienteDetalle_poblacion',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get cliente_show_clienteDetalle_provincia {
    return Intl.message(
      'State',
      name: 'cliente_show_clienteDetalle_provincia',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get cliente_show_clienteDetalle_pais {
    return Intl.message(
      'Country',
      name: 'cliente_show_clienteDetalle_pais',
      desc: '',
      args: [],
    );
  }

  /// `NIF`
  String get cliente_show_clienteDetalle_nif {
    return Intl.message(
      'NIF',
      name: 'cliente_show_clienteDetalle_nif',
      desc: '',
      args: [],
    );
  }

  /// `Latitude`
  String get cliente_show_clienteDetalle_latitud {
    return Intl.message(
      'Latitude',
      name: 'cliente_show_clienteDetalle_latitud',
      desc: '',
      args: [],
    );
  }

  /// `Longitude`
  String get cliente_show_clienteDetalle_longitud {
    return Intl.message(
      'Longitude',
      name: 'cliente_show_clienteDetalle_longitud',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'cliente_show_clienteDetalle_ventasAñoActual' key

  // skipped getter for the 'cliente_show_clienteDetalle_ventasAñoAnterior' key

  // skipped getter for the 'cliente_show_clienteDetalle_ventasHace2Años' key

  /// `Warranty percentage`
  String get cliente_show_clienteDetalle_porcentajeGarantiass {
    return Intl.message(
      'Warranty percentage',
      name: 'cliente_show_clienteDetalle_porcentajeGarantiass',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'cliente_show_clienteDetalle_margenAñoActual' key

  // skipped getter for the 'cliente_show_clienteDetalle_margenAñoAnterior' key

  // skipped getter for the 'cliente_show_clienteDetalle_margenHace2Años' key

  /// `Payment percentage`
  String get cliente_show_clienteDetalle_PorcentajeAbonos {
    return Intl.message(
      'Payment percentage',
      name: 'cliente_show_clienteDetalle_PorcentajeAbonos',
      desc: '',
      args: [],
    );
  }

  /// `Shopping center`
  String get cliente_show_clienteDetalle_centralCompras {
    return Intl.message(
      'Shopping center',
      name: 'cliente_show_clienteDetalle_centralCompras',
      desc: '',
      args: [],
    );
  }

  /// `Web`
  String get cliente_show_clienteDetalle_web {
    return Intl.message(
      'Web',
      name: 'cliente_show_clienteDetalle_web',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'cliente_show_clienteDetalle_precios&Otros' key

  /// `Valuta`
  String get cliente_show_clienteDetalle_divisa {
    return Intl.message(
      'Valuta',
      name: 'cliente_show_clienteDetalle_divisa',
      desc: '',
      args: [],
    );
  }

  /// `Rate price`
  String get cliente_show_clienteDetalle_tarifa {
    return Intl.message(
      'Rate price',
      name: 'cliente_show_clienteDetalle_tarifa',
      desc: '',
      args: [],
    );
  }

  /// `General discount`
  String get cliente_show_clienteDetalle_descuentoGeneral {
    return Intl.message(
      'General discount',
      name: 'cliente_show_clienteDetalle_descuentoGeneral',
      desc: '',
      args: [],
    );
  }

  /// `Bonus`
  String get cliente_show_clienteDetalle_bonificacion {
    return Intl.message(
      'Bonus',
      name: 'cliente_show_clienteDetalle_bonificacion',
      desc: '',
      args: [],
    );
  }

  /// `Price calculation type`
  String get cliente_show_clienteDetalle_metodoCalculoPrecio {
    return Intl.message(
      'Price calculation type',
      name: 'cliente_show_clienteDetalle_metodoCalculoPrecio',
      desc: '',
      args: [],
    );
  }

  /// `Billing`
  String get cliente_show_clienteDetalle_facturacion {
    return Intl.message(
      'Billing',
      name: 'cliente_show_clienteDetalle_facturacion',
      desc: '',
      args: [],
    );
  }

  /// `Collection term `
  String get cliente_show_clienteDetalle_plazoDeCobro {
    return Intl.message(
      'Collection term ',
      name: 'cliente_show_clienteDetalle_plazoDeCobro',
      desc: '',
      args: [],
    );
  }

  /// `Collection method`
  String get cliente_show_clienteDetalle_metodoDeCobro {
    return Intl.message(
      'Collection method',
      name: 'cliente_show_clienteDetalle_metodoDeCobro',
      desc: '',
      args: [],
    );
  }

  /// `P.P. Discount`
  String get cliente_show_clienteDetalle_descuentoPP {
    return Intl.message(
      'P.P. Discount',
      name: 'cliente_show_clienteDetalle_descuentoPP',
      desc: '',
      args: [],
    );
  }

  /// `Risks`
  String get cliente_show_clienteDetalle_riesgos {
    return Intl.message(
      'Risks',
      name: 'cliente_show_clienteDetalle_riesgos',
      desc: '',
      args: [],
    );
  }

  /// `Granted JBM`
  String get cliente_show_clienteDetalle_concedidoJBM {
    return Intl.message(
      'Granted JBM',
      name: 'cliente_show_clienteDetalle_concedidoJBM',
      desc: '',
      args: [],
    );
  }

  /// `Granted date`
  String get cliente_show_clienteDetalle_concedidoFecha {
    return Intl.message(
      'Granted date',
      name: 'cliente_show_clienteDetalle_concedidoFecha',
      desc: '',
      args: [],
    );
  }

  /// `Granted COFACE`
  String get cliente_show_clienteDetalle_concedidoCOFACE {
    return Intl.message(
      'Granted COFACE',
      name: 'cliente_show_clienteDetalle_concedidoCOFACE',
      desc: '',
      args: [],
    );
  }

  /// `COFACE date`
  String get cliente_show_clienteDetalle_fechaCOFACE {
    return Intl.message(
      'COFACE date',
      name: 'cliente_show_clienteDetalle_fechaCOFACE',
      desc: '',
      args: [],
    );
  }

  /// `Current risk`
  String get cliente_show_clienteDetalle_riesgoActual {
    return Intl.message(
      'Current risk',
      name: 'cliente_show_clienteDetalle_riesgoActual',
      desc: '',
      args: [],
    );
  }

  /// `Granted risk`
  String get cliente_show_clienteDetalle_riesgoConcedido {
    return Intl.message(
      'Granted risk',
      name: 'cliente_show_clienteDetalle_riesgoConcedido',
      desc: '',
      args: [],
    );
  }

  /// `Pending Collection Due`
  String get cliente_show_clienteDetalle_pdteCobroVencido {
    return Intl.message(
      'Pending Collection Due',
      name: 'cliente_show_clienteDetalle_pdteCobroVencido',
      desc: '',
      args: [],
    );
  }

  /// `Pending Collection No Due`
  String get cliente_show_clienteDetalle_pdteCobroNoVencido {
    return Intl.message(
      'Pending Collection No Due',
      name: 'cliente_show_clienteDetalle_pdteCobroNoVencido',
      desc: '',
      args: [],
    );
  }

  /// `Pending to serve`
  String get cliente_show_clienteDetalle_pdteServir {
    return Intl.message(
      'Pending to serve',
      name: 'cliente_show_clienteDetalle_pdteServir',
      desc: '',
      args: [],
    );
  }

  /// `Since`
  String get cliente_show_clienteDescuento_desDe {
    return Intl.message(
      'Since',
      name: 'cliente_show_clienteDescuento_desDe',
      desc: '',
      args: [],
    );
  }

  /// `Since`
  String get cliente_show_clientePrecioNeto_desDe {
    return Intl.message(
      'Since',
      name: 'cliente_show_clientePrecioNeto_desDe',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get cliente_show_clientePrecioNeto_precio {
    return Intl.message(
      'Price',
      name: 'cliente_show_clientePrecioNeto_precio',
      desc: '',
      args: [],
    );
  }

  /// `Pending Payments`
  String get cliente_show_clientePendientePago_titulo {
    return Intl.message(
      'Pending Payments',
      name: 'cliente_show_clientePendientePago_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Top 150`
  String get cliente_show_clienteArticulosTop_titulo {
    return Intl.message(
      'Top 150',
      name: 'cliente_show_clienteArticulosTop_titulo',
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
  String get salesorder_show_pedidoVentaDetalle_titulo {
    return Intl.message(
      'Sales order detail',
      name: 'salesorder_show_pedidoVentaDetalle_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get salesorder_show_pedidoVentaDetalle_estado {
    return Intl.message(
      'Status',
      name: 'salesorder_show_pedidoVentaDetalle_estado',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get salesorder_show_pedidoVentaDetalle_fecha {
    return Intl.message(
      'Date',
      name: 'salesorder_show_pedidoVentaDetalle_fecha',
      desc: '',
      args: [],
    );
  }

  /// `Tax base`
  String get salesorder_show_pedidoVentaDetalle_baseImponible {
    return Intl.message(
      'Tax base',
      name: 'salesorder_show_pedidoVentaDetalle_baseImponible',
      desc: '',
      args: [],
    );
  }

  /// `Amount IVA`
  String get salesorder_show_pedidoVentaDetalle_importeIva {
    return Intl.message(
      'Amount IVA',
      name: 'salesorder_show_pedidoVentaDetalle_importeIva',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get salesorder_show_pedidoVentaDetalle_total {
    return Intl.message(
      'Total',
      name: 'salesorder_show_pedidoVentaDetalle_total',
      desc: '',
      args: [],
    );
  }

  /// `Lines`
  String get salesorder_show_pedidoVentaDetalle_lineas {
    return Intl.message(
      'Lines',
      name: 'salesorder_show_pedidoVentaDetalle_lineas',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get salesorder_show_pedidoVentaDetalle_precio {
    return Intl.message(
      'Price',
      name: 'salesorder_show_pedidoVentaDetalle_precio',
      desc: '',
      args: [],
    );
  }

  /// `Sync done successfully`
  String get settings_sincronicacionRealizadaConExito {
    return Intl.message(
      'Sync done successfully',
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
  String get visita_index_titulo {
    return Intl.message(
      'Visits',
      name: 'visita_index_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Visit detail`
  String get visita_show_visitaDetalle_titulo {
    return Intl.message(
      'Visit detail',
      name: 'visita_show_visitaDetalle_titulo',
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
