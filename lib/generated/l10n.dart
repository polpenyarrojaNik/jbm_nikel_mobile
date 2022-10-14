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

  /// `An error occurred`
  String get haOcurridoUnError {
    return Intl.message(
      'An error occurred',
      name: 'haOcurridoUnError',
      desc: '',
      args: [],
    );
  }

  /// `units`
  String get unidades {
    return Intl.message(
      'units',
      name: 'unidades',
      desc: '',
      args: [],
    );
  }

  /// `unit`
  String get unidad {
    return Intl.message(
      'unit',
      name: 'unidad',
      desc: '',
      args: [],
    );
  }

  /// `Stock`
  String get stock {
    return Intl.message(
      'Stock',
      name: 'stock',
      desc: '',
      args: [],
    );
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

  /// `Not connection`
  String get sincConexion {
    return Intl.message(
      'Not connection',
      name: 'sincConexion',
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
  String get commonWidgets_emptyPlaceholder_irAIncio {
    return Intl.message(
      'Go Home',
      name: 'commonWidgets_emptyPlaceholder_irAIncio',
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

  /// `Delete`
  String get commonWidgets_sliderBackground_borrar {
    return Intl.message(
      'Delete',
      name: 'commonWidgets_sliderBackground_borrar',
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

  /// `Article detail`
  String get articulo_show_articuloDetalle_titulo {
    return Intl.message(
      'Article detail',
      name: 'articulo_show_articuloDetalle_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Datos generales`
  String get articulo_show_articuloDetalle_datosGenerales {
    return Intl.message(
      'Datos generales',
      name: 'articulo_show_articuloDetalle_datosGenerales',
      desc: '',
      args: [],
    );
  }

  /// `Queries`
  String get articulo_show_articuloDetalle_consultas {
    return Intl.message(
      'Queries',
      name: 'articulo_show_articuloDetalle_consultas',
      desc: '',
      args: [],
    );
  }

  /// `Stock y Entregas`
  String get articulo_show_articuloDetalle_stockYEntregas {
    return Intl.message(
      'Stock y Entregas',
      name: 'articulo_show_articuloDetalle_stockYEntregas',
      desc: '',
      args: [],
    );
  }

  /// `Logístic data`
  String get articulo_show_articuloDetalle_datosLogistica {
    return Intl.message(
      'Logístic data',
      name: 'articulo_show_articuloDetalle_datosLogistica',
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

  /// `+`
  String get articulo_show_articuloDetalle_mas {
    return Intl.message(
      '+',
      name: 'articulo_show_articuloDetalle_mas',
      desc: '',
      args: [],
    );
  }

  /// `Subbox quantity`
  String get articulo_show_articuloDetalle_cantidadSubcaja {
    return Intl.message(
      'Subbox quantity',
      name: 'articulo_show_articuloDetalle_cantidadSubcaja',
      desc: '',
      args: [],
    );
  }

  /// `Box quantity`
  String get articulo_show_articuloDetalle_cantidadCaja {
    return Intl.message(
      'Box quantity',
      name: 'articulo_show_articuloDetalle_cantidadCaja',
      desc: '',
      args: [],
    );
  }

  /// `Palet quantity`
  String get articulo_show_articuloDetalle_cantidadPalet {
    return Intl.message(
      'Palet quantity',
      name: 'articulo_show_articuloDetalle_cantidadPalet',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get articulo_show_articuloDetalle_peso {
    return Intl.message(
      'Weight',
      name: 'articulo_show_articuloDetalle_peso',
      desc: '',
      args: [],
    );
  }

  /// `kg`
  String get articulo_show_articuloDetalle_kg {
    return Intl.message(
      'kg',
      name: 'articulo_show_articuloDetalle_kg',
      desc: '',
      args: [],
    );
  }

  /// `Measures`
  String get articulo_show_articuloDetalle_medidas {
    return Intl.message(
      'Measures',
      name: 'articulo_show_articuloDetalle_medidas',
      desc: '',
      args: [],
    );
  }

  /// `Other data`
  String get articulo_show_articuloDetalle_otrosDatos {
    return Intl.message(
      'Other data',
      name: 'articulo_show_articuloDetalle_otrosDatos',
      desc: '',
      args: [],
    );
  }

  /// `Page in catalogue`
  String get articulo_show_articuloDetalle_paginaEnCatalogo {
    return Intl.message(
      'Page in catalogue',
      name: 'articulo_show_articuloDetalle_paginaEnCatalogo',
      desc: '',
      args: [],
    );
  }

  /// `Page 2nd edition`
  String get articulo_show_articuloDetalle_pagina2Edicion {
    return Intl.message(
      'Page 2nd edition',
      name: 'articulo_show_articuloDetalle_pagina2Edicion',
      desc: '',
      args: [],
    );
  }

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

  /// `Not available`
  String get articulo_show_articuloDetalle_noDisponible {
    return Intl.message(
      'Not available',
      name: 'articulo_show_articuloDetalle_noDisponible',
      desc: '',
      args: [],
    );
  }

  /// `Related data`
  String get articulo_show_articuloDetalle_datosRelacionados {
    return Intl.message(
      'Related data',
      name: 'articulo_show_articuloDetalle_datosRelacionados',
      desc: '',
      args: [],
    );
  }

  /// `Rate Prices`
  String get articulo_show_articuloPreciosTarifa_titulo {
    return Intl.message(
      'Rate Prices',
      name: 'articulo_show_articuloPreciosTarifa_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Net groups`
  String get articulo_show_articuloGruposNetos_titulo {
    return Intl.message(
      'Net groups',
      name: 'articulo_show_articuloGruposNetos_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Components`
  String get articulo_show_articuloComponentes_titulo {
    return Intl.message(
      'Components',
      name: 'articulo_show_articuloComponentes_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Spare`
  String get articulo_show_articuloRecambio_titulo {
    return Intl.message(
      'Spare',
      name: 'articulo_show_articuloRecambio_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Substitute Artiicles`
  String get articulo_show_articuloSustitutivo_titulo {
    return Intl.message(
      'Substitute Artiicles',
      name: 'articulo_show_articuloSustitutivo_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Documents`
  String get articulo_show_articuloDocumentos_titulo {
    return Intl.message(
      'Documents',
      name: 'articulo_show_articuloDocumentos_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Last prices`
  String get ultimosPrecios_titulo {
    return Intl.message(
      'Last prices',
      name: 'ultimosPrecios_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get ultimosPrecios_precio {
    return Intl.message(
      'Price',
      name: 'ultimosPrecios_precio',
      desc: '',
      args: [],
    );
  }

  /// `Search...`
  String get ultimosPrecios_buscarUltimosPrecios {
    return Intl.message(
      'Search...',
      name: 'ultimosPrecios_buscarUltimosPrecios',
      desc: '',
      args: [],
    );
  }

  /// `Sales orders`
  String get articulo_show_articuloPedidoVenta_titulo {
    return Intl.message(
      'Sales orders',
      name: 'articulo_show_articuloPedidoVenta_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to`
  String get auth_loginPage_titulo {
    return Intl.message(
      'Welcome to',
      name: 'auth_loginPage_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Required field`
  String get auth_loginPage_requerido {
    return Intl.message(
      'Required field',
      name: 'auth_loginPage_requerido',
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

  /// `Password`
  String get auth_loginPage_contrasena {
    return Intl.message(
      'Password',
      name: 'auth_loginPage_contrasena',
      desc: '',
      args: [],
    );
  }

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

  /// `Id`
  String get cliente_show_clienteContacto_id {
    return Intl.message(
      'Id',
      name: 'cliente_show_clienteContacto_id',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get cliente_show_clienteContacto_nombre {
    return Intl.message(
      'Name',
      name: 'cliente_show_clienteContacto_nombre',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get cliente_show_clienteContacto_email {
    return Intl.message(
      'Email',
      name: 'cliente_show_clienteContacto_email',
      desc: '',
      args: [],
    );
  }

  /// `Phone 1`
  String get cliente_show_clienteContacto_phone1 {
    return Intl.message(
      'Phone 1',
      name: 'cliente_show_clienteContacto_phone1',
      desc: '',
      args: [],
    );
  }

  /// `Phone 2`
  String get cliente_show_clienteContacto_phone2 {
    return Intl.message(
      'Phone 2',
      name: 'cliente_show_clienteContacto_phone2',
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

  /// `Articles sales`
  String get cliente_show_clienteVentasArticulo_titulo {
    return Intl.message(
      'Articles sales',
      name: 'cliente_show_clienteVentasArticulo_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get cliente_show_clienteVentasArticulo_importe {
    return Intl.message(
      'Amount',
      name: 'cliente_show_clienteVentasArticulo_importe',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get cliente_show_clienteVentasArticulo_cantidad {
    return Intl.message(
      'Quantity',
      name: 'cliente_show_clienteVentasArticulo_cantidad',
      desc: '',
      args: [],
    );
  }

  /// `Article`
  String get cliente_show_clienteVentasArticulo_articulo {
    return Intl.message(
      'Article',
      name: 'cliente_show_clienteVentasArticulo_articulo',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get cliente_show_clienteVentasArticulo_description {
    return Intl.message(
      'Description',
      name: 'cliente_show_clienteVentasArticulo_description',
      desc: '',
      args: [],
    );
  }

  /// `Month sales`
  String get cliente_show_clienteVentasMes_titulo {
    return Intl.message(
      'Month sales',
      name: 'cliente_show_clienteVentasMes_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get cliente_show_clienteVentasMes_total {
    return Intl.message(
      'Total',
      name: 'cliente_show_clienteVentasMes_total',
      desc: '',
      args: [],
    );
  }

  /// `Month`
  String get cliente_show_clienteVentasMes_mes {
    return Intl.message(
      'Month',
      name: 'cliente_show_clienteVentasMes_mes',
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

  /// `Sales`
  String get cliente_show_clienteDetalle_ventas {
    return Intl.message(
      'Sales',
      name: 'cliente_show_clienteDetalle_ventas',
      desc: '',
      args: [],
    );
  }

  /// `Margin`
  String get cliente_show_clienteDetalle_margen {
    return Intl.message(
      'Margin',
      name: 'cliente_show_clienteDetalle_margen',
      desc: '',
      args: [],
    );
  }

  /// `Current year`
  String get cliente_show_clienteDetalle_anoActual {
    return Intl.message(
      'Current year',
      name: 'cliente_show_clienteDetalle_anoActual',
      desc: '',
      args: [],
    );
  }

  /// `Last year`
  String get cliente_show_clienteDetalle_anoAnterior {
    return Intl.message(
      'Last year',
      name: 'cliente_show_clienteDetalle_anoAnterior',
      desc: '',
      args: [],
    );
  }

  /// `Two years ago`
  String get cliente_show_clienteDetalle_hace2Anos {
    return Intl.message(
      'Two years ago',
      name: 'cliente_show_clienteDetalle_hace2Anos',
      desc: '',
      args: [],
    );
  }

  /// `Warranty percentage`
  String get cliente_show_clienteDetalle_porcentajeGarantias {
    return Intl.message(
      'Warranty percentage',
      name: 'cliente_show_clienteDetalle_porcentajeGarantias',
      desc: '',
      args: [],
    );
  }

  /// `Payment percentage`
  String get cliente_show_clienteDetalle_porcentajeAbonos {
    return Intl.message(
      'Payment percentage',
      name: 'cliente_show_clienteDetalle_porcentajeAbonos',
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

  /// `Prices & Payment Methods`
  String get cliente_show_clienteDetalle_preciosYFormaDePago {
    return Intl.message(
      'Prices & Payment Methods',
      name: 'cliente_show_clienteDetalle_preciosYFormaDePago',
      desc: '',
      args: [],
    );
  }

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

  /// `Best price`
  String
      get cliente_show_clienteDetalle_metodoCalculoPrecioMejorPrecioDescripcion {
    return Intl.message(
      'Best price',
      name:
          'cliente_show_clienteDetalle_metodoCalculoPrecioMejorPrecioDescripcion',
      desc: '',
      args: [],
    );
  }

  /// `Net prices`
  String
      get cliente_show_clienteDetalle_metodoCalculoPrecioPreciosNetosDescripcion {
    return Intl.message(
      'Net prices',
      name:
          'cliente_show_clienteDetalle_metodoCalculoPrecioPreciosNetosDescripcion',
      desc: '',
      args: [],
    );
  }

  /// `¿Ritmo visitas(sem)?`
  String get cliente_show_clienteDetalle_ritmoVisitas {
    return Intl.message(
      '¿Ritmo visitas(sem)?',
      name: 'cliente_show_clienteDetalle_ritmoVisitas',
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

  /// `Pending to facturate`
  String get cliente_show_clienteDetalle_pdteFacturar {
    return Intl.message(
      'Pending to facturate',
      name: 'cliente_show_clienteDetalle_pdteFacturar',
      desc: '',
      args: [],
    );
  }

  /// `Analysis`
  String get cliente_show_clienteDetalle_analisis {
    return Intl.message(
      'Analysis',
      name: 'cliente_show_clienteDetalle_analisis',
      desc: '',
      args: [],
    );
  }

  /// `Related data`
  String get cliente_show_clienteDetalle_datosRelacionados {
    return Intl.message(
      'Related data',
      name: 'cliente_show_clienteDetalle_datosRelacionados',
      desc: '',
      args: [],
    );
  }

  /// `Queries`
  String get cliente_show_clienteDetalle_consultas {
    return Intl.message(
      'Queries',
      name: 'cliente_show_clienteDetalle_consultas',
      desc: '',
      args: [],
    );
  }

  /// `Contacts`
  String get cliente_show_clienteContacto_titulo {
    return Intl.message(
      'Contacts',
      name: 'cliente_show_clienteContacto_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Attachments`
  String get cliente_show_clienteAdjunto_titulo {
    return Intl.message(
      'Attachments',
      name: 'cliente_show_clienteAdjunto_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Open attachment...`
  String get cliente_show_clienteAdjunto_abriendoArchivo {
    return Intl.message(
      'Open attachment...',
      name: 'cliente_show_clienteAdjunto_abriendoArchivo',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Addresses`
  String get cliente_show_clienteDireccion_titulo {
    return Intl.message(
      'Shipping Addresses',
      name: 'cliente_show_clienteDireccion_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Net groups`
  String get cliente_show_clienteGrupoNeto_titulo {
    return Intl.message(
      'Net groups',
      name: 'cliente_show_clienteGrupoNeto_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Rappels`
  String get cliente_show_clienteRappel_titulo {
    return Intl.message(
      'Rappels',
      name: 'cliente_show_clienteRappel_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Discounts`
  String get cliente_show_clienteDescuento_titulo {
    return Intl.message(
      'Discounts',
      name: 'cliente_show_clienteDescuento_titulo',
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

  /// `Net prices`
  String get cliente_show_clientePrecioNeto_titulo {
    return Intl.message(
      'Net prices',
      name: 'cliente_show_clientePrecioNeto_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Pending Payments`
  String get cliente_show_clienteFacturasPendientes_titulo {
    return Intl.message(
      'Pending Payments',
      name: 'cliente_show_clienteFacturasPendientes_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get cliente_show_clienteFacturasPendientes_estadoPendiente {
    return Intl.message(
      'Pending',
      name: 'cliente_show_clienteFacturasPendientes_estadoPendiente',
      desc: '',
      args: [],
    );
  }

  /// `Charged`
  String get cliente_show_clienteFacturasPendientes_estadoCobrado {
    return Intl.message(
      'Charged',
      name: 'cliente_show_clienteFacturasPendientes_estadoCobrado',
      desc: '',
      args: [],
    );
  }

  /// `Unpaid`
  String get cliente_show_clienteFacturasPendientes_estadoImpagado {
    return Intl.message(
      'Unpaid',
      name: 'cliente_show_clienteFacturasPendientes_estadoImpagado',
      desc: '',
      args: [],
    );
  }

  /// `Returned`
  String get cliente_show_clienteFacturasPendientes_estadoDevuelto {
    return Intl.message(
      'Returned',
      name: 'cliente_show_clienteFacturasPendientes_estadoDevuelto',
      desc: '',
      args: [],
    );
  }

  /// `JBM expirated`
  String get cliente_show_clienteFacturasPendientes_vencidoJBM {
    return Intl.message(
      'JBM expirated',
      name: 'cliente_show_clienteFacturasPendientes_vencidoJBM',
      desc: '',
      args: [],
    );
  }

  /// `Init Expiration`
  String get cliente_show_clienteFacturasPendientes_vencInicial {
    return Intl.message(
      'Init Expiration',
      name: 'cliente_show_clienteFacturasPendientes_vencInicial',
      desc: '',
      args: [],
    );
  }

  /// `Bill date`
  String get cliente_show_clienteFacturasPendientes_fFactura {
    return Intl.message(
      'Bill date',
      name: 'cliente_show_clienteFacturasPendientes_fFactura',
      desc: '',
      args: [],
    );
  }

  /// `Expire date`
  String get cliente_show_clienteFacturasPendientes_fvcto {
    return Intl.message(
      'Expire date',
      name: 'cliente_show_clienteFacturasPendientes_fvcto',
      desc: '',
      args: [],
    );
  }

  /// `Original expire date`
  String get cliente_show_clienteFacturasPendientes_fvctoOriginal {
    return Intl.message(
      'Original expire date',
      name: 'cliente_show_clienteFacturasPendientes_fvctoOriginal',
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

  /// `Towards clients `
  String get cliente_alrededor_titulo {
    return Intl.message(
      'Towards clients ',
      name: 'cliente_alrededor_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Current year sales`
  String get cliente_alrededor_ventasAnoActual {
    return Intl.message(
      'Current year sales',
      name: 'cliente_alrededor_ventasAnoActual',
      desc: '',
      args: [],
    );
  }

  /// `Current year margin`
  String get cliente_alrededor_margenAnoActual {
    return Intl.message(
      'Current year margin',
      name: 'cliente_alrededor_margenAnoActual',
      desc: '',
      args: [],
    );
  }

  /// `Payment percentage`
  String get cliente_alrededor_porcentajeAbonos {
    return Intl.message(
      'Payment percentage',
      name: 'cliente_alrededor_porcentajeAbonos',
      desc: '',
      args: [],
    );
  }

  /// `Loading map`
  String get cliente_alrededor_cargandoMapa {
    return Intl.message(
      'Loading map',
      name: 'cliente_alrededor_cargandoMapa',
      desc: '',
      args: [],
    );
  }

  /// `Sales orders`
  String get pedido_index_titulo {
    return Intl.message(
      'Sales orders',
      name: 'pedido_index_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Search sales orders...`
  String get pedido_index_buscarPedidos {
    return Intl.message(
      'Search sales orders...',
      name: 'pedido_index_buscarPedidos',
      desc: '',
      args: [],
    );
  }

  /// `Sales order detail`
  String get pedido_show_pedidoVentaDetalle_titulo {
    return Intl.message(
      'Sales order detail',
      name: 'pedido_show_pedidoVentaDetalle_titulo',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get pedido_show_pedidoVentaDetalle_estado {
    return Intl.message(
      'Status',
      name: 'pedido_show_pedidoVentaDetalle_estado',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get pedido_show_pedidoVentaDetalle_fecha {
    return Intl.message(
      'Date',
      name: 'pedido_show_pedidoVentaDetalle_fecha',
      desc: '',
      args: [],
    );
  }

  /// `Tax base`
  String get pedido_show_pedidoVentaDetalle_baseImponible {
    return Intl.message(
      'Tax base',
      name: 'pedido_show_pedidoVentaDetalle_baseImponible',
      desc: '',
      args: [],
    );
  }

  /// `Amount IVA`
  String get pedido_show_pedidoVentaDetalle_importeIva {
    return Intl.message(
      'Amount IVA',
      name: 'pedido_show_pedidoVentaDetalle_importeIva',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get pedido_show_pedidoVentaDetalle_total {
    return Intl.message(
      'Total',
      name: 'pedido_show_pedidoVentaDetalle_total',
      desc: '',
      args: [],
    );
  }

  /// `Lines`
  String get pedido_show_pedidoVentaDetalle_lineas {
    return Intl.message(
      'Lines',
      name: 'pedido_show_pedidoVentaDetalle_lineas',
      desc: '',
      args: [],
    );
  }

  /// `Remarks`
  String get pedido_show_pedidoVentaDetalle_remarks {
    return Intl.message(
      'Remarks',
      name: 'pedido_show_pedidoVentaDetalle_remarks',
      desc: '',
      args: [],
    );
  }

  /// `Customer sales order`
  String get pedido_show_pedidoVentaDetalle_pedidoCliente {
    return Intl.message(
      'Customer sales order',
      name: 'pedido_show_pedidoVentaDetalle_pedidoCliente',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get pedido_show_pedidoVentaDetalle_precio {
    return Intl.message(
      'Price',
      name: 'pedido_show_pedidoVentaDetalle_precio',
      desc: '',
      args: [],
    );
  }

  /// `Disc.`
  String get pedido_show_pedidoVentaDetalle_dto {
    return Intl.message(
      'Disc.',
      name: 'pedido_show_pedidoVentaDetalle_dto',
      desc: '',
      args: [],
    );
  }

  /// `Attention:`
  String get pedido_edit_askPopAlertDialog_atencion {
    return Intl.message(
      'Attention:',
      name: 'pedido_edit_askPopAlertDialog_atencion',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to close that sales order?`
  String get pedido_edit_askPopAlertDialog_seguroQuieresSales {
    return Intl.message(
      'Are you sure to close that sales order?',
      name: 'pedido_edit_askPopAlertDialog_seguroQuieresSales',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get pedido_edit_askPopAlertDialog_cancelar {
    return Intl.message(
      'Cancel',
      name: 'pedido_edit_askPopAlertDialog_cancelar',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get pedido_edit_askPopAlertDialog_aceptar {
    return Intl.message(
      'Accept',
      name: 'pedido_edit_askPopAlertDialog_aceptar',
      desc: '',
      args: [],
    );
  }

  /// `New sales order`
  String get pedido_edit_pedidoEdit_nuevoPedido {
    return Intl.message(
      'New sales order',
      name: 'pedido_edit_pedidoEdit_nuevoPedido',
      desc: '',
      args: [],
    );
  }

  /// `Edit sales order`
  String get pedido_edit_pedidoEdit_editarPedido {
    return Intl.message(
      'Edit sales order',
      name: 'pedido_edit_pedidoEdit_editarPedido',
      desc: '',
      args: [],
    );
  }

  /// `Add many line into sales order`
  String get pedido_edit_pedidoEdit_anadeAlgunaLinea {
    return Intl.message(
      'Add many line into sales order',
      name: 'pedido_edit_pedidoEdit_anadeAlgunaLinea',
      desc: '',
      args: [],
    );
  }

  /// `Select a client`
  String get pedido_edit_pedidoEdit_seleccioneCliente {
    return Intl.message(
      'Select a client',
      name: 'pedido_edit_pedidoEdit_seleccioneCliente',
      desc: '',
      args: [],
    );
  }

  /// `Shipping addresess`
  String get pedido_edit_pedidoEdit_direccionesEnvio {
    return Intl.message(
      'Shipping addresess',
      name: 'pedido_edit_pedidoEdit_direccionesEnvio',
      desc: '',
      args: [],
    );
  }

  /// `Can't change the client`
  String get pedido_edit_pedidoEdit_noPuedesCambiarCliente {
    return Intl.message(
      'Can\'t change the client',
      name: 'pedido_edit_pedidoEdit_noPuedesCambiarCliente',
      desc: '',
      args: [],
    );
  }

  /// `No articles`
  String get pedido_edit_pedidoEdit_sinArticulos {
    return Intl.message(
      'No articles',
      name: 'pedido_edit_pedidoEdit_sinArticulos',
      desc: '',
      args: [],
    );
  }

  /// `Customer sales order`
  String get pedido_edit_pedidoEdit_pedidoCliente {
    return Intl.message(
      'Customer sales order',
      name: 'pedido_edit_pedidoEdit_pedidoCliente',
      desc: '',
      args: [],
    );
  }

  /// `Remarks`
  String get pedido_edit_pedidoEdit_observaciones {
    return Intl.message(
      'Remarks',
      name: 'pedido_edit_pedidoEdit_observaciones',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get pedido_edit_pedidoEdit_total {
    return Intl.message(
      'Total',
      name: 'pedido_edit_pedidoEdit_total',
      desc: '',
      args: [],
    );
  }

  /// `Lines`
  String get pedido_edit_pedidoEdit_lineas {
    return Intl.message(
      'Lines',
      name: 'pedido_edit_pedidoEdit_lineas',
      desc: '',
      args: [],
    );
  }

  /// `Price:`
  String get pedido_edit_lineaNuevoTile_precio {
    return Intl.message(
      'Price:',
      name: 'pedido_edit_lineaNuevoTile_precio',
      desc: '',
      args: [],
    );
  }

  /// `Disc.:`
  String get pedido_edit_lineaNuevoTile_dto {
    return Intl.message(
      'Disc.:',
      name: 'pedido_edit_lineaNuevoTile_dto',
      desc: '',
      args: [],
    );
  }

  /// `Select quantity`
  String get pedido_edit_selectQuantity_seleccionarCantidad {
    return Intl.message(
      'Select quantity',
      name: 'pedido_edit_selectQuantity_seleccionarCantidad',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get pedido_edit_selectQuantity_cantidad {
    return Intl.message(
      'Quantity',
      name: 'pedido_edit_selectQuantity_cantidad',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get pedido_edit_selectQuantity_precio {
    return Intl.message(
      'Price',
      name: 'pedido_edit_selectQuantity_precio',
      desc: '',
      args: [],
    );
  }

  /// `Discount 1`
  String get pedido_edit_selectQuantity_descuneto1 {
    return Intl.message(
      'Discount 1',
      name: 'pedido_edit_selectQuantity_descuneto1',
      desc: '',
      args: [],
    );
  }

  /// `Discount 2`
  String get pedido_edit_selectQuantity_descuneto2 {
    return Intl.message(
      'Discount 2',
      name: 'pedido_edit_selectQuantity_descuneto2',
      desc: '',
      args: [],
    );
  }

  /// `Discount 3`
  String get pedido_edit_selectQuantity_descuneto3 {
    return Intl.message(
      'Discount 3',
      name: 'pedido_edit_selectQuantity_descuneto3',
      desc: '',
      args: [],
    );
  }

  /// `Sent`
  String get pedido_enviado {
    return Intl.message(
      'Sent',
      name: 'pedido_enviado',
      desc: '',
      args: [],
    );
  }

  /// `Not sent`
  String get pedido_noEnviado {
    return Intl.message(
      'Not sent',
      name: 'pedido_noEnviado',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get settings_cerrar_sesion {
    return Intl.message(
      'Sign out',
      name: 'settings_cerrar_sesion',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get settings_user {
    return Intl.message(
      'User',
      name: 'settings_user',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get settings_nombre_usuario {
    return Intl.message(
      'Username',
      name: 'settings_nombre_usuario',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get settings_version {
    return Intl.message(
      'Version',
      name: 'settings_version',
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

  /// `Sent`
  String get visita_enviada {
    return Intl.message(
      'Sent',
      name: 'visita_enviada',
      desc: '',
      args: [],
    );
  }

  /// `Not sent`
  String get visita_noEnviada {
    return Intl.message(
      'Not sent',
      name: 'visita_noEnviada',
      desc: '',
      args: [],
    );
  }

  /// `Search visits...`
  String get visita_index_buscarVisitas {
    return Intl.message(
      'Search visits...',
      name: 'visita_index_buscarVisitas',
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

  /// `Contact`
  String get visitas_show_visitaDetalle_contacto {
    return Intl.message(
      'Contact',
      name: 'visitas_show_visitaDetalle_contacto',
      desc: '',
      args: [],
    );
  }

  /// `Summary`
  String get visitas_show_visitaDetalle_resumen {
    return Intl.message(
      'Summary',
      name: 'visitas_show_visitaDetalle_resumen',
      desc: '',
      args: [],
    );
  }

  /// `Saved`
  String get visitas_edit_saved {
    return Intl.message(
      'Saved',
      name: 'visitas_edit_saved',
      desc: '',
      args: [],
    );
  }

  /// `New visit`
  String get visitas_edit_visitaEditar_titleNueva {
    return Intl.message(
      'New visit',
      name: 'visitas_edit_visitaEditar_titleNueva',
      desc: '',
      args: [],
    );
  }

  /// `Edit visit`
  String get visitas_edit_visitaEditar_titleEditar {
    return Intl.message(
      'Edit visit',
      name: 'visitas_edit_visitaEditar_titleEditar',
      desc: '',
      args: [],
    );
  }

  /// `Error validating form`
  String get visitas_edit_visitaEditar_errorValidarFormulario {
    return Intl.message(
      'Error validating form',
      name: 'visitas_edit_visitaEditar_errorValidarFormulario',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get visitas_edit_visitaEditar_fecha {
    return Intl.message(
      'Date',
      name: 'visitas_edit_visitaEditar_fecha',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get visitas_edit_visitaEditar_contacto {
    return Intl.message(
      'Contact',
      name: 'visitas_edit_visitaEditar_contacto',
      desc: '',
      args: [],
    );
  }

  /// `Summary`
  String get visitas_edit_visitaEditar_resumen {
    return Intl.message(
      'Summary',
      name: 'visitas_edit_visitaEditar_resumen',
      desc: '',
      args: [],
    );
  }

  /// `Customer`
  String get visitas_edit_visitaEditar_cliente {
    return Intl.message(
      'Customer',
      name: 'visitas_edit_visitaEditar_cliente',
      desc: '',
      args: [],
    );
  }

  /// `Saved`
  String get visitas_edit_visitaEditar_saved {
    return Intl.message(
      'Saved',
      name: 'visitas_edit_visitaEditar_saved',
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
