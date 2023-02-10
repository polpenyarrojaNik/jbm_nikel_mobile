// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_auto_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    ClienteListaRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteListaRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClienteListaPage(
          key: args.key,
          isSearchClienteForFrom: args.isSearchClienteForFrom,
        ),
      );
    },
    ClientesAlrededorRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const ClientesAlrededorPage(),
      );
    },
    ClienteDetalleRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteDetalleRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClienteDetallePage(
          key: args.key,
          clienteId: args.clienteId,
        ),
      );
    },
    ClienteVentasMesRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteVentasMesRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClienteVentasMesPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteVentasArticuloRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteVentasArticuloRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClienteVentasArticuloPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClientePagoPendienteRoute.name: (routeData) {
      final args = routeData.argsAs<ClientePagoPendienteRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClientePagoPendientePage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteArticulosTopListRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteArticulosTopListRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClienteArticulosTopListPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteAdjuntoRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteAdjuntoRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClienteAdjuntoPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteContactoRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteContactoRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClienteContactoPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteContactoEditRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteContactoEditRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClienteContactoEditPage(
          key: args.key,
          clienteId: args.clienteId,
          clienteContactoEditParam: args.clienteContactoEditParam,
        ),
        fullscreenDialog: true,
      );
    },
    ClienteDescuentoRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteDescuentoRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClienteDescuentoPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteDireccionesRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteDireccionesRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClienteDireccionesPage(
          key: args.key,
          clienteId: args.clienteId,
          paisCliente: args.paisCliente,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteDireccionEditRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteDireccionEditRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClienteDireccionEditPage(
          key: args.key,
          clienteDireccionEditParam: args.clienteDireccionEditParam,
        ),
        fullscreenDialog: true,
      );
    },
    ClienteDireccionSeleccionarPaisRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteDireccionSeleccionarPaisRouteArgs>(
          orElse: () => const ClienteDireccionSeleccionarPaisRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClienteDireccionSeleccionarPaisPage(key: args.key),
      );
    },
    ClientePrecioNetoRoute.name: (routeData) {
      final args = routeData.argsAs<ClientePrecioNetoRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClientePrecioNetoPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteGrupoNetoRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteGrupoNetoRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClienteGrupoNetoPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteRappelRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteRappelRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClienteRappelPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteVisitasRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteVisitasRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClienteVisitasPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClientePedidosRoute.name: (routeData) {
      final args = routeData.argsAs<ClientePedidosRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClientePedidosPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteUltimosPreciosRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteUltimosPreciosRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ClienteUltimosPreciosPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    PedidoVentaListRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const PedidoVentaListPage(),
      );
    },
    PedidoVentaDetalleRoute.name: (routeData) {
      final args = routeData.argsAs<PedidoVentaDetalleRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PedidoVentaDetallePage(
          key: args.key,
          pedidoVentaIdIsLocalParam: args.pedidoVentaIdIsLocalParam,
        ),
      );
    },
    PedidoVentaEditRoute.name: (routeData) {
      final args = routeData.argsAs<PedidoVentaEditRouteArgs>(
          orElse: () => const PedidoVentaEditRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: PedidoVentaEditPage(
          key: args.key,
          id: args.id,
          createPedidoFromClienteId: args.createPedidoFromClienteId,
          addLineaDesdeArticulo: args.addLineaDesdeArticulo,
        ),
        fullscreenDialog: true,
      );
    },
    SeleccionarCantidadRoute.name: (routeData) {
      final args = routeData.argsAs<SeleccionarCantidadRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SeleccionarCantidadPage(
          key: args.key,
          seleccionarCantidadParam: args.seleccionarCantidadParam,
        ),
      );
    },
    ArticuloListaRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloListaRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ArticuloListaPage(
          key: args.key,
          isSearchArticuloForForm: args.isSearchArticuloForForm,
        ),
      );
    },
    ArticuloDetalleRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloDetalleRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ArticuloDetallePage(
          key: args.key,
          articuloId: args.articuloId,
        ),
      );
    },
    ArticuloPedidoVentaRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloPedidoVentaRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ArticuloPedidoVentaPage(
          key: args.key,
          articuloId: args.articuloId,
          description: args.description,
        ),
      );
    },
    ArticuloUltimosPreciosRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloUltimosPreciosRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ArticuloUltimosPreciosPage(
          key: args.key,
          articuloId: args.articuloId,
          description: args.description,
        ),
      );
    },
    ArticuloComponenteRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloComponenteRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ArticuloComponentePage(
          key: args.key,
          articuloId: args.articuloId,
          description: args.description,
        ),
      );
    },
    ArticuloGrupoNetoRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloGrupoNetoRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ArticuloGrupoNetoPage(
          key: args.key,
          articuloId: args.articuloId,
          description: args.description,
        ),
      );
    },
    ArticuloPrecioTarifaRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloPrecioTarifaRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ArticuloPrecioTarifaPage(
          key: args.key,
          articuloId: args.articuloId,
          description: args.description,
        ),
      );
    },
    ArticuloRecambioRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloRecambioRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ArticuloRecambioPage(
          key: args.key,
          articuloId: args.articuloId,
          description: args.description,
        ),
      );
    },
    ArticuloSustitutivoRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloSustitutivoRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ArticuloSustitutivoPage(
          key: args.key,
          articuloId: args.articuloId,
          description: args.description,
        ),
      );
    },
    ArticuloVentasMesRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloVentasMesRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ArticuloVentasMesPage(
          key: args.key,
          articuloId: args.articuloId,
          descripcion: args.descripcion,
        ),
      );
    },
    ArticuloVentasClienteRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloVentasClienteRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ArticuloVentasClientePage(
          key: args.key,
          articuloId: args.articuloId,
          description: args.description,
        ),
      );
    },
    ArticuloDocumentoRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloDocumentoRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ArticuloDocumentoPage(
          key: args.key,
          articuloId: args.articuloId,
          description: args.description,
        ),
      );
    },
    VisitaListaRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const VisitaListaPage(),
      );
    },
    VisitaDetalleRoute.name: (routeData) {
      final args = routeData.argsAs<VisitaDetalleRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: VisitaDetallePage(
          key: args.key,
          visitaIdIsLocalParam: args.visitaIdIsLocalParam,
        ),
      );
    },
    VisitaEditRoute.name: (routeData) {
      final args = routeData.argsAs<VisitaEditRouteArgs>(
          orElse: () => const VisitaEditRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: VisitaEditPage(
          key: args.key,
          id: args.id,
          isNew: args.isNew,
          createVisitaFromClienteId: args.createVisitaFromClienteId,
        ),
      );
    },
    CatalogoListaRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CatalogoListaPage(),
      );
    },
    CatalogoPdfViewerRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogoPdfViewerRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: CatalogoPdfViewerPage(
          key: args.key,
          pdfFile: args.pdfFile,
        ),
        fullscreenDialog: true,
      );
    },
    SettingsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/login',
          fullMatch: true,
        ),
        RouteConfig(
          SplashRoute.name,
          path: '/splash',
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        RouteConfig(
          ClienteListaRoute.name,
          path: '/cliente',
        ),
        RouteConfig(
          ClientesAlrededorRoute.name,
          path: '/cliente/alrededor',
        ),
        RouteConfig(
          ClienteDetalleRoute.name,
          path: '/cliente/:id',
        ),
        RouteConfig(
          ClienteVentasMesRoute.name,
          path: '/cliente/:id/ventas-mes',
        ),
        RouteConfig(
          ClienteVentasArticuloRoute.name,
          path: '/cliente/:id/ventas-articulo',
        ),
        RouteConfig(
          ClientePagoPendienteRoute.name,
          path: '/cliente/:id/facturas_pendientes',
        ),
        RouteConfig(
          ClienteArticulosTopListRoute.name,
          path: '/cliente/:id/top-articulos',
        ),
        RouteConfig(
          ClienteAdjuntoRoute.name,
          path: '/cliente/:id/adjuntos',
        ),
        RouteConfig(
          ClienteContactoRoute.name,
          path: '/cliente/:id/contactos',
        ),
        RouteConfig(
          ClienteContactoEditRoute.name,
          path: '/cliente/:id/contactos/:contactoId',
        ),
        RouteConfig(
          ClienteDescuentoRoute.name,
          path: '/cliente/:id/descuentos',
        ),
        RouteConfig(
          ClienteDireccionesRoute.name,
          path: '/cliente/:id/direcciones',
        ),
        RouteConfig(
          ClienteDireccionEditRoute.name,
          path: '/cliente/:id/direcciones/:direccionId',
        ),
        RouteConfig(
          ClienteDireccionSeleccionarPaisRoute.name,
          path: '/cliente/:id/direcciones/:direccionId/pais',
        ),
        RouteConfig(
          ClientePrecioNetoRoute.name,
          path: '/cliente/:id/precios-netos',
        ),
        RouteConfig(
          ClienteGrupoNetoRoute.name,
          path: '/cliente/:id/grupos-netos',
        ),
        RouteConfig(
          ClienteRappelRoute.name,
          path: '/cliente/:id/rappels',
        ),
        RouteConfig(
          ClienteVisitasRoute.name,
          path: '/cliente/:id/visitas',
        ),
        RouteConfig(
          ClientePedidosRoute.name,
          path: '/cliente/:id/pedidos',
        ),
        RouteConfig(
          ClienteUltimosPreciosRoute.name,
          path: '/cliente/:id/ultimos-precios',
        ),
        RouteConfig(
          PedidoVentaListRoute.name,
          path: '/pedido',
        ),
        RouteConfig(
          PedidoVentaDetalleRoute.name,
          path: '/pedido/:id',
        ),
        RouteConfig(
          PedidoVentaEditRoute.name,
          path: '/pedido/edit',
        ),
        RouteConfig(
          SeleccionarCantidadRoute.name,
          path: 'pedido/edit/seleccionar_cantidad',
        ),
        RouteConfig(
          ArticuloListaRoute.name,
          path: '/articulo',
        ),
        RouteConfig(
          ArticuloDetalleRoute.name,
          path: '/articulo/:id',
        ),
        RouteConfig(
          ArticuloPedidoVentaRoute.name,
          path: '/articulo/:id/pedido-venta',
        ),
        RouteConfig(
          ArticuloUltimosPreciosRoute.name,
          path: '/articulo/:id/ultimos-precios',
        ),
        RouteConfig(
          ArticuloComponenteRoute.name,
          path: '/articulo/:id/componentes',
        ),
        RouteConfig(
          ArticuloGrupoNetoRoute.name,
          path: '/articulo/:id/grupos-netos',
        ),
        RouteConfig(
          ArticuloPrecioTarifaRoute.name,
          path: '/articulo/:id/precio-tarifa',
        ),
        RouteConfig(
          ArticuloRecambioRoute.name,
          path: '/articulo/:id/recambios',
        ),
        RouteConfig(
          ArticuloSustitutivoRoute.name,
          path: '/articulo/:id/sustitutivos',
        ),
        RouteConfig(
          ArticuloVentasMesRoute.name,
          path: '/articulo/:id/ventas-mes',
        ),
        RouteConfig(
          ArticuloVentasClienteRoute.name,
          path: '/articulo/:id/ventas-cliente',
        ),
        RouteConfig(
          ArticuloDocumentoRoute.name,
          path: '/articulo/:id/documentos',
        ),
        RouteConfig(
          VisitaListaRoute.name,
          path: '/visita',
        ),
        RouteConfig(
          VisitaDetalleRoute.name,
          path: '/visita/:id',
        ),
        RouteConfig(
          VisitaEditRoute.name,
          path: '/visita/edit',
        ),
        RouteConfig(
          CatalogoListaRoute.name,
          path: '/catalogo',
        ),
        RouteConfig(
          CatalogoPdfViewerRoute.name,
          path: '/catalogo/viewer',
        ),
        RouteConfig(
          SettingsRoute.name,
          path: '/settings',
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [ClienteListaPage]
class ClienteListaRoute extends PageRouteInfo<ClienteListaRouteArgs> {
  ClienteListaRoute({
    Key? key,
    required bool isSearchClienteForFrom,
  }) : super(
          ClienteListaRoute.name,
          path: '/cliente',
          args: ClienteListaRouteArgs(
            key: key,
            isSearchClienteForFrom: isSearchClienteForFrom,
          ),
        );

  static const String name = 'ClienteListaRoute';
}

class ClienteListaRouteArgs {
  const ClienteListaRouteArgs({
    this.key,
    required this.isSearchClienteForFrom,
  });

  final Key? key;

  final bool isSearchClienteForFrom;

  @override
  String toString() {
    return 'ClienteListaRouteArgs{key: $key, isSearchClienteForFrom: $isSearchClienteForFrom}';
  }
}

/// generated route for
/// [ClientesAlrededorPage]
class ClientesAlrededorRoute extends PageRouteInfo<void> {
  const ClientesAlrededorRoute()
      : super(
          ClientesAlrededorRoute.name,
          path: '/cliente/alrededor',
        );

  static const String name = 'ClientesAlrededorRoute';
}

/// generated route for
/// [ClienteDetallePage]
class ClienteDetalleRoute extends PageRouteInfo<ClienteDetalleRouteArgs> {
  ClienteDetalleRoute({
    Key? key,
    required String clienteId,
  }) : super(
          ClienteDetalleRoute.name,
          path: '/cliente/:id',
          args: ClienteDetalleRouteArgs(
            key: key,
            clienteId: clienteId,
          ),
        );

  static const String name = 'ClienteDetalleRoute';
}

class ClienteDetalleRouteArgs {
  const ClienteDetalleRouteArgs({
    this.key,
    required this.clienteId,
  });

  final Key? key;

  final String clienteId;

  @override
  String toString() {
    return 'ClienteDetalleRouteArgs{key: $key, clienteId: $clienteId}';
  }
}

/// generated route for
/// [ClienteVentasMesPage]
class ClienteVentasMesRoute extends PageRouteInfo<ClienteVentasMesRouteArgs> {
  ClienteVentasMesRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
  }) : super(
          ClienteVentasMesRoute.name,
          path: '/cliente/:id/ventas-mes',
          args: ClienteVentasMesRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
        );

  static const String name = 'ClienteVentasMesRoute';
}

class ClienteVentasMesRouteArgs {
  const ClienteVentasMesRouteArgs({
    this.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final Key? key;

  final String clienteId;

  final String? nombreCliente;

  @override
  String toString() {
    return 'ClienteVentasMesRouteArgs{key: $key, clienteId: $clienteId, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [ClienteVentasArticuloPage]
class ClienteVentasArticuloRoute
    extends PageRouteInfo<ClienteVentasArticuloRouteArgs> {
  ClienteVentasArticuloRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
  }) : super(
          ClienteVentasArticuloRoute.name,
          path: '/cliente/:id/ventas-articulo',
          args: ClienteVentasArticuloRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
        );

  static const String name = 'ClienteVentasArticuloRoute';
}

class ClienteVentasArticuloRouteArgs {
  const ClienteVentasArticuloRouteArgs({
    this.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final Key? key;

  final String clienteId;

  final String? nombreCliente;

  @override
  String toString() {
    return 'ClienteVentasArticuloRouteArgs{key: $key, clienteId: $clienteId, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [ClientePagoPendientePage]
class ClientePagoPendienteRoute
    extends PageRouteInfo<ClientePagoPendienteRouteArgs> {
  ClientePagoPendienteRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
  }) : super(
          ClientePagoPendienteRoute.name,
          path: '/cliente/:id/facturas_pendientes',
          args: ClientePagoPendienteRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
        );

  static const String name = 'ClientePagoPendienteRoute';
}

class ClientePagoPendienteRouteArgs {
  const ClientePagoPendienteRouteArgs({
    this.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final Key? key;

  final String clienteId;

  final String? nombreCliente;

  @override
  String toString() {
    return 'ClientePagoPendienteRouteArgs{key: $key, clienteId: $clienteId, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [ClienteArticulosTopListPage]
class ClienteArticulosTopListRoute
    extends PageRouteInfo<ClienteArticulosTopListRouteArgs> {
  ClienteArticulosTopListRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
  }) : super(
          ClienteArticulosTopListRoute.name,
          path: '/cliente/:id/top-articulos',
          args: ClienteArticulosTopListRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
        );

  static const String name = 'ClienteArticulosTopListRoute';
}

class ClienteArticulosTopListRouteArgs {
  const ClienteArticulosTopListRouteArgs({
    this.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final Key? key;

  final String clienteId;

  final String? nombreCliente;

  @override
  String toString() {
    return 'ClienteArticulosTopListRouteArgs{key: $key, clienteId: $clienteId, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [ClienteAdjuntoPage]
class ClienteAdjuntoRoute extends PageRouteInfo<ClienteAdjuntoRouteArgs> {
  ClienteAdjuntoRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
  }) : super(
          ClienteAdjuntoRoute.name,
          path: '/cliente/:id/adjuntos',
          args: ClienteAdjuntoRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
        );

  static const String name = 'ClienteAdjuntoRoute';
}

class ClienteAdjuntoRouteArgs {
  const ClienteAdjuntoRouteArgs({
    this.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final Key? key;

  final String clienteId;

  final String? nombreCliente;

  @override
  String toString() {
    return 'ClienteAdjuntoRouteArgs{key: $key, clienteId: $clienteId, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [ClienteContactoPage]
class ClienteContactoRoute extends PageRouteInfo<ClienteContactoRouteArgs> {
  ClienteContactoRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
  }) : super(
          ClienteContactoRoute.name,
          path: '/cliente/:id/contactos',
          args: ClienteContactoRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
        );

  static const String name = 'ClienteContactoRoute';
}

class ClienteContactoRouteArgs {
  const ClienteContactoRouteArgs({
    this.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final Key? key;

  final String clienteId;

  final String? nombreCliente;

  @override
  String toString() {
    return 'ClienteContactoRouteArgs{key: $key, clienteId: $clienteId, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [ClienteContactoEditPage]
class ClienteContactoEditRoute
    extends PageRouteInfo<ClienteContactoEditRouteArgs> {
  ClienteContactoEditRoute({
    Key? key,
    required String clienteId,
    required ClienteContactoEditParam clienteContactoEditParam,
  }) : super(
          ClienteContactoEditRoute.name,
          path: '/cliente/:id/contactos/:contactoId',
          args: ClienteContactoEditRouteArgs(
            key: key,
            clienteId: clienteId,
            clienteContactoEditParam: clienteContactoEditParam,
          ),
        );

  static const String name = 'ClienteContactoEditRoute';
}

class ClienteContactoEditRouteArgs {
  const ClienteContactoEditRouteArgs({
    this.key,
    required this.clienteId,
    required this.clienteContactoEditParam,
  });

  final Key? key;

  final String clienteId;

  final ClienteContactoEditParam clienteContactoEditParam;

  @override
  String toString() {
    return 'ClienteContactoEditRouteArgs{key: $key, clienteId: $clienteId, clienteContactoEditParam: $clienteContactoEditParam}';
  }
}

/// generated route for
/// [ClienteDescuentoPage]
class ClienteDescuentoRoute extends PageRouteInfo<ClienteDescuentoRouteArgs> {
  ClienteDescuentoRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
  }) : super(
          ClienteDescuentoRoute.name,
          path: '/cliente/:id/descuentos',
          args: ClienteDescuentoRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
        );

  static const String name = 'ClienteDescuentoRoute';
}

class ClienteDescuentoRouteArgs {
  const ClienteDescuentoRouteArgs({
    this.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final Key? key;

  final String clienteId;

  final String? nombreCliente;

  @override
  String toString() {
    return 'ClienteDescuentoRouteArgs{key: $key, clienteId: $clienteId, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [ClienteDireccionesPage]
class ClienteDireccionesRoute
    extends PageRouteInfo<ClienteDireccionesRouteArgs> {
  ClienteDireccionesRoute({
    Key? key,
    required String clienteId,
    required Pais? paisCliente,
    required String? nombreCliente,
  }) : super(
          ClienteDireccionesRoute.name,
          path: '/cliente/:id/direcciones',
          args: ClienteDireccionesRouteArgs(
            key: key,
            clienteId: clienteId,
            paisCliente: paisCliente,
            nombreCliente: nombreCliente,
          ),
        );

  static const String name = 'ClienteDireccionesRoute';
}

class ClienteDireccionesRouteArgs {
  const ClienteDireccionesRouteArgs({
    this.key,
    required this.clienteId,
    required this.paisCliente,
    required this.nombreCliente,
  });

  final Key? key;

  final String clienteId;

  final Pais? paisCliente;

  final String? nombreCliente;

  @override
  String toString() {
    return 'ClienteDireccionesRouteArgs{key: $key, clienteId: $clienteId, paisCliente: $paisCliente, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [ClienteDireccionEditPage]
class ClienteDireccionEditRoute
    extends PageRouteInfo<ClienteDireccionEditRouteArgs> {
  ClienteDireccionEditRoute({
    Key? key,
    required ClienteDireccionEditParam clienteDireccionEditParam,
  }) : super(
          ClienteDireccionEditRoute.name,
          path: '/cliente/:id/direcciones/:direccionId',
          args: ClienteDireccionEditRouteArgs(
            key: key,
            clienteDireccionEditParam: clienteDireccionEditParam,
          ),
        );

  static const String name = 'ClienteDireccionEditRoute';
}

class ClienteDireccionEditRouteArgs {
  const ClienteDireccionEditRouteArgs({
    this.key,
    required this.clienteDireccionEditParam,
  });

  final Key? key;

  final ClienteDireccionEditParam clienteDireccionEditParam;

  @override
  String toString() {
    return 'ClienteDireccionEditRouteArgs{key: $key, clienteDireccionEditParam: $clienteDireccionEditParam}';
  }
}

/// generated route for
/// [ClienteDireccionSeleccionarPaisPage]
class ClienteDireccionSeleccionarPaisRoute
    extends PageRouteInfo<ClienteDireccionSeleccionarPaisRouteArgs> {
  ClienteDireccionSeleccionarPaisRoute({Key? key})
      : super(
          ClienteDireccionSeleccionarPaisRoute.name,
          path: '/cliente/:id/direcciones/:direccionId/pais',
          args: ClienteDireccionSeleccionarPaisRouteArgs(key: key),
        );

  static const String name = 'ClienteDireccionSeleccionarPaisRoute';
}

class ClienteDireccionSeleccionarPaisRouteArgs {
  const ClienteDireccionSeleccionarPaisRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ClienteDireccionSeleccionarPaisRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ClientePrecioNetoPage]
class ClientePrecioNetoRoute extends PageRouteInfo<ClientePrecioNetoRouteArgs> {
  ClientePrecioNetoRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
  }) : super(
          ClientePrecioNetoRoute.name,
          path: '/cliente/:id/precios-netos',
          args: ClientePrecioNetoRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
        );

  static const String name = 'ClientePrecioNetoRoute';
}

class ClientePrecioNetoRouteArgs {
  const ClientePrecioNetoRouteArgs({
    this.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final Key? key;

  final String clienteId;

  final String? nombreCliente;

  @override
  String toString() {
    return 'ClientePrecioNetoRouteArgs{key: $key, clienteId: $clienteId, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [ClienteGrupoNetoPage]
class ClienteGrupoNetoRoute extends PageRouteInfo<ClienteGrupoNetoRouteArgs> {
  ClienteGrupoNetoRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
  }) : super(
          ClienteGrupoNetoRoute.name,
          path: '/cliente/:id/grupos-netos',
          args: ClienteGrupoNetoRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
        );

  static const String name = 'ClienteGrupoNetoRoute';
}

class ClienteGrupoNetoRouteArgs {
  const ClienteGrupoNetoRouteArgs({
    this.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final Key? key;

  final String clienteId;

  final String? nombreCliente;

  @override
  String toString() {
    return 'ClienteGrupoNetoRouteArgs{key: $key, clienteId: $clienteId, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [ClienteRappelPage]
class ClienteRappelRoute extends PageRouteInfo<ClienteRappelRouteArgs> {
  ClienteRappelRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
  }) : super(
          ClienteRappelRoute.name,
          path: '/cliente/:id/rappels',
          args: ClienteRappelRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
        );

  static const String name = 'ClienteRappelRoute';
}

class ClienteRappelRouteArgs {
  const ClienteRappelRouteArgs({
    this.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final Key? key;

  final String clienteId;

  final String? nombreCliente;

  @override
  String toString() {
    return 'ClienteRappelRouteArgs{key: $key, clienteId: $clienteId, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [ClienteVisitasPage]
class ClienteVisitasRoute extends PageRouteInfo<ClienteVisitasRouteArgs> {
  ClienteVisitasRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
  }) : super(
          ClienteVisitasRoute.name,
          path: '/cliente/:id/visitas',
          args: ClienteVisitasRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
        );

  static const String name = 'ClienteVisitasRoute';
}

class ClienteVisitasRouteArgs {
  const ClienteVisitasRouteArgs({
    this.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final Key? key;

  final String clienteId;

  final String? nombreCliente;

  @override
  String toString() {
    return 'ClienteVisitasRouteArgs{key: $key, clienteId: $clienteId, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [ClientePedidosPage]
class ClientePedidosRoute extends PageRouteInfo<ClientePedidosRouteArgs> {
  ClientePedidosRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
  }) : super(
          ClientePedidosRoute.name,
          path: '/cliente/:id/pedidos',
          args: ClientePedidosRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
        );

  static const String name = 'ClientePedidosRoute';
}

class ClientePedidosRouteArgs {
  const ClientePedidosRouteArgs({
    this.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final Key? key;

  final String clienteId;

  final String? nombreCliente;

  @override
  String toString() {
    return 'ClientePedidosRouteArgs{key: $key, clienteId: $clienteId, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [ClienteUltimosPreciosPage]
class ClienteUltimosPreciosRoute
    extends PageRouteInfo<ClienteUltimosPreciosRouteArgs> {
  ClienteUltimosPreciosRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
  }) : super(
          ClienteUltimosPreciosRoute.name,
          path: '/cliente/:id/ultimos-precios',
          args: ClienteUltimosPreciosRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
        );

  static const String name = 'ClienteUltimosPreciosRoute';
}

class ClienteUltimosPreciosRouteArgs {
  const ClienteUltimosPreciosRouteArgs({
    this.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final Key? key;

  final String clienteId;

  final String? nombreCliente;

  @override
  String toString() {
    return 'ClienteUltimosPreciosRouteArgs{key: $key, clienteId: $clienteId, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [PedidoVentaListPage]
class PedidoVentaListRoute extends PageRouteInfo<void> {
  const PedidoVentaListRoute()
      : super(
          PedidoVentaListRoute.name,
          path: '/pedido',
        );

  static const String name = 'PedidoVentaListRoute';
}

/// generated route for
/// [PedidoVentaDetallePage]
class PedidoVentaDetalleRoute
    extends PageRouteInfo<PedidoVentaDetalleRouteArgs> {
  PedidoVentaDetalleRoute({
    Key? key,
    required EntityIdIsLocalParam pedidoVentaIdIsLocalParam,
  }) : super(
          PedidoVentaDetalleRoute.name,
          path: '/pedido/:id',
          args: PedidoVentaDetalleRouteArgs(
            key: key,
            pedidoVentaIdIsLocalParam: pedidoVentaIdIsLocalParam,
          ),
        );

  static const String name = 'PedidoVentaDetalleRoute';
}

class PedidoVentaDetalleRouteArgs {
  const PedidoVentaDetalleRouteArgs({
    this.key,
    required this.pedidoVentaIdIsLocalParam,
  });

  final Key? key;

  final EntityIdIsLocalParam pedidoVentaIdIsLocalParam;

  @override
  String toString() {
    return 'PedidoVentaDetalleRouteArgs{key: $key, pedidoVentaIdIsLocalParam: $pedidoVentaIdIsLocalParam}';
  }
}

/// generated route for
/// [PedidoVentaEditPage]
class PedidoVentaEditRoute extends PageRouteInfo<PedidoVentaEditRouteArgs> {
  PedidoVentaEditRoute({
    Key? key,
    String? id,
    String? createPedidoFromClienteId,
    PedidoVentaLinea? addLineaDesdeArticulo,
  }) : super(
          PedidoVentaEditRoute.name,
          path: '/pedido/edit',
          args: PedidoVentaEditRouteArgs(
            key: key,
            id: id,
            createPedidoFromClienteId: createPedidoFromClienteId,
            addLineaDesdeArticulo: addLineaDesdeArticulo,
          ),
        );

  static const String name = 'PedidoVentaEditRoute';
}

class PedidoVentaEditRouteArgs {
  const PedidoVentaEditRouteArgs({
    this.key,
    this.id,
    this.createPedidoFromClienteId,
    this.addLineaDesdeArticulo,
  });

  final Key? key;

  final String? id;

  final String? createPedidoFromClienteId;

  final PedidoVentaLinea? addLineaDesdeArticulo;

  @override
  String toString() {
    return 'PedidoVentaEditRouteArgs{key: $key, id: $id, createPedidoFromClienteId: $createPedidoFromClienteId, addLineaDesdeArticulo: $addLineaDesdeArticulo}';
  }
}

/// generated route for
/// [SeleccionarCantidadPage]
class SeleccionarCantidadRoute
    extends PageRouteInfo<SeleccionarCantidadRouteArgs> {
  SeleccionarCantidadRoute({
    Key? key,
    required SeleccionarCantidadParam seleccionarCantidadParam,
  }) : super(
          SeleccionarCantidadRoute.name,
          path: 'pedido/edit/seleccionar_cantidad',
          args: SeleccionarCantidadRouteArgs(
            key: key,
            seleccionarCantidadParam: seleccionarCantidadParam,
          ),
        );

  static const String name = 'SeleccionarCantidadRoute';
}

class SeleccionarCantidadRouteArgs {
  const SeleccionarCantidadRouteArgs({
    this.key,
    required this.seleccionarCantidadParam,
  });

  final Key? key;

  final SeleccionarCantidadParam seleccionarCantidadParam;

  @override
  String toString() {
    return 'SeleccionarCantidadRouteArgs{key: $key, seleccionarCantidadParam: $seleccionarCantidadParam}';
  }
}

/// generated route for
/// [ArticuloListaPage]
class ArticuloListaRoute extends PageRouteInfo<ArticuloListaRouteArgs> {
  ArticuloListaRoute({
    Key? key,
    required bool isSearchArticuloForForm,
  }) : super(
          ArticuloListaRoute.name,
          path: '/articulo',
          args: ArticuloListaRouteArgs(
            key: key,
            isSearchArticuloForForm: isSearchArticuloForForm,
          ),
        );

  static const String name = 'ArticuloListaRoute';
}

class ArticuloListaRouteArgs {
  const ArticuloListaRouteArgs({
    this.key,
    required this.isSearchArticuloForForm,
  });

  final Key? key;

  final bool isSearchArticuloForForm;

  @override
  String toString() {
    return 'ArticuloListaRouteArgs{key: $key, isSearchArticuloForForm: $isSearchArticuloForForm}';
  }
}

/// generated route for
/// [ArticuloDetallePage]
class ArticuloDetalleRoute extends PageRouteInfo<ArticuloDetalleRouteArgs> {
  ArticuloDetalleRoute({
    Key? key,
    required String articuloId,
  }) : super(
          ArticuloDetalleRoute.name,
          path: '/articulo/:id',
          args: ArticuloDetalleRouteArgs(
            key: key,
            articuloId: articuloId,
          ),
        );

  static const String name = 'ArticuloDetalleRoute';
}

class ArticuloDetalleRouteArgs {
  const ArticuloDetalleRouteArgs({
    this.key,
    required this.articuloId,
  });

  final Key? key;

  final String articuloId;

  @override
  String toString() {
    return 'ArticuloDetalleRouteArgs{key: $key, articuloId: $articuloId}';
  }
}

/// generated route for
/// [ArticuloPedidoVentaPage]
class ArticuloPedidoVentaRoute
    extends PageRouteInfo<ArticuloPedidoVentaRouteArgs> {
  ArticuloPedidoVentaRoute({
    Key? key,
    required String articuloId,
    required String description,
  }) : super(
          ArticuloPedidoVentaRoute.name,
          path: '/articulo/:id/pedido-venta',
          args: ArticuloPedidoVentaRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
        );

  static const String name = 'ArticuloPedidoVentaRoute';
}

class ArticuloPedidoVentaRouteArgs {
  const ArticuloPedidoVentaRouteArgs({
    this.key,
    required this.articuloId,
    required this.description,
  });

  final Key? key;

  final String articuloId;

  final String description;

  @override
  String toString() {
    return 'ArticuloPedidoVentaRouteArgs{key: $key, articuloId: $articuloId, description: $description}';
  }
}

/// generated route for
/// [ArticuloUltimosPreciosPage]
class ArticuloUltimosPreciosRoute
    extends PageRouteInfo<ArticuloUltimosPreciosRouteArgs> {
  ArticuloUltimosPreciosRoute({
    Key? key,
    required String articuloId,
    required String description,
  }) : super(
          ArticuloUltimosPreciosRoute.name,
          path: '/articulo/:id/ultimos-precios',
          args: ArticuloUltimosPreciosRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
        );

  static const String name = 'ArticuloUltimosPreciosRoute';
}

class ArticuloUltimosPreciosRouteArgs {
  const ArticuloUltimosPreciosRouteArgs({
    this.key,
    required this.articuloId,
    required this.description,
  });

  final Key? key;

  final String articuloId;

  final String description;

  @override
  String toString() {
    return 'ArticuloUltimosPreciosRouteArgs{key: $key, articuloId: $articuloId, description: $description}';
  }
}

/// generated route for
/// [ArticuloComponentePage]
class ArticuloComponenteRoute
    extends PageRouteInfo<ArticuloComponenteRouteArgs> {
  ArticuloComponenteRoute({
    Key? key,
    required String articuloId,
    required String description,
  }) : super(
          ArticuloComponenteRoute.name,
          path: '/articulo/:id/componentes',
          args: ArticuloComponenteRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
        );

  static const String name = 'ArticuloComponenteRoute';
}

class ArticuloComponenteRouteArgs {
  const ArticuloComponenteRouteArgs({
    this.key,
    required this.articuloId,
    required this.description,
  });

  final Key? key;

  final String articuloId;

  final String description;

  @override
  String toString() {
    return 'ArticuloComponenteRouteArgs{key: $key, articuloId: $articuloId, description: $description}';
  }
}

/// generated route for
/// [ArticuloGrupoNetoPage]
class ArticuloGrupoNetoRoute extends PageRouteInfo<ArticuloGrupoNetoRouteArgs> {
  ArticuloGrupoNetoRoute({
    Key? key,
    required String articuloId,
    required String description,
  }) : super(
          ArticuloGrupoNetoRoute.name,
          path: '/articulo/:id/grupos-netos',
          args: ArticuloGrupoNetoRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
        );

  static const String name = 'ArticuloGrupoNetoRoute';
}

class ArticuloGrupoNetoRouteArgs {
  const ArticuloGrupoNetoRouteArgs({
    this.key,
    required this.articuloId,
    required this.description,
  });

  final Key? key;

  final String articuloId;

  final String description;

  @override
  String toString() {
    return 'ArticuloGrupoNetoRouteArgs{key: $key, articuloId: $articuloId, description: $description}';
  }
}

/// generated route for
/// [ArticuloPrecioTarifaPage]
class ArticuloPrecioTarifaRoute
    extends PageRouteInfo<ArticuloPrecioTarifaRouteArgs> {
  ArticuloPrecioTarifaRoute({
    Key? key,
    required String articuloId,
    required String description,
  }) : super(
          ArticuloPrecioTarifaRoute.name,
          path: '/articulo/:id/precio-tarifa',
          args: ArticuloPrecioTarifaRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
        );

  static const String name = 'ArticuloPrecioTarifaRoute';
}

class ArticuloPrecioTarifaRouteArgs {
  const ArticuloPrecioTarifaRouteArgs({
    this.key,
    required this.articuloId,
    required this.description,
  });

  final Key? key;

  final String articuloId;

  final String description;

  @override
  String toString() {
    return 'ArticuloPrecioTarifaRouteArgs{key: $key, articuloId: $articuloId, description: $description}';
  }
}

/// generated route for
/// [ArticuloRecambioPage]
class ArticuloRecambioRoute extends PageRouteInfo<ArticuloRecambioRouteArgs> {
  ArticuloRecambioRoute({
    Key? key,
    required String articuloId,
    required String description,
  }) : super(
          ArticuloRecambioRoute.name,
          path: '/articulo/:id/recambios',
          args: ArticuloRecambioRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
        );

  static const String name = 'ArticuloRecambioRoute';
}

class ArticuloRecambioRouteArgs {
  const ArticuloRecambioRouteArgs({
    this.key,
    required this.articuloId,
    required this.description,
  });

  final Key? key;

  final String articuloId;

  final String description;

  @override
  String toString() {
    return 'ArticuloRecambioRouteArgs{key: $key, articuloId: $articuloId, description: $description}';
  }
}

/// generated route for
/// [ArticuloSustitutivoPage]
class ArticuloSustitutivoRoute
    extends PageRouteInfo<ArticuloSustitutivoRouteArgs> {
  ArticuloSustitutivoRoute({
    Key? key,
    required String articuloId,
    required String description,
  }) : super(
          ArticuloSustitutivoRoute.name,
          path: '/articulo/:id/sustitutivos',
          args: ArticuloSustitutivoRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
        );

  static const String name = 'ArticuloSustitutivoRoute';
}

class ArticuloSustitutivoRouteArgs {
  const ArticuloSustitutivoRouteArgs({
    this.key,
    required this.articuloId,
    required this.description,
  });

  final Key? key;

  final String articuloId;

  final String description;

  @override
  String toString() {
    return 'ArticuloSustitutivoRouteArgs{key: $key, articuloId: $articuloId, description: $description}';
  }
}

/// generated route for
/// [ArticuloVentasMesPage]
class ArticuloVentasMesRoute extends PageRouteInfo<ArticuloVentasMesRouteArgs> {
  ArticuloVentasMesRoute({
    Key? key,
    required String articuloId,
    required String descripcion,
  }) : super(
          ArticuloVentasMesRoute.name,
          path: '/articulo/:id/ventas-mes',
          args: ArticuloVentasMesRouteArgs(
            key: key,
            articuloId: articuloId,
            descripcion: descripcion,
          ),
        );

  static const String name = 'ArticuloVentasMesRoute';
}

class ArticuloVentasMesRouteArgs {
  const ArticuloVentasMesRouteArgs({
    this.key,
    required this.articuloId,
    required this.descripcion,
  });

  final Key? key;

  final String articuloId;

  final String descripcion;

  @override
  String toString() {
    return 'ArticuloVentasMesRouteArgs{key: $key, articuloId: $articuloId, descripcion: $descripcion}';
  }
}

/// generated route for
/// [ArticuloVentasClientePage]
class ArticuloVentasClienteRoute
    extends PageRouteInfo<ArticuloVentasClienteRouteArgs> {
  ArticuloVentasClienteRoute({
    Key? key,
    required String articuloId,
    required String description,
  }) : super(
          ArticuloVentasClienteRoute.name,
          path: '/articulo/:id/ventas-cliente',
          args: ArticuloVentasClienteRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
        );

  static const String name = 'ArticuloVentasClienteRoute';
}

class ArticuloVentasClienteRouteArgs {
  const ArticuloVentasClienteRouteArgs({
    this.key,
    required this.articuloId,
    required this.description,
  });

  final Key? key;

  final String articuloId;

  final String description;

  @override
  String toString() {
    return 'ArticuloVentasClienteRouteArgs{key: $key, articuloId: $articuloId, description: $description}';
  }
}

/// generated route for
/// [ArticuloDocumentoPage]
class ArticuloDocumentoRoute extends PageRouteInfo<ArticuloDocumentoRouteArgs> {
  ArticuloDocumentoRoute({
    Key? key,
    required String articuloId,
    required String description,
  }) : super(
          ArticuloDocumentoRoute.name,
          path: '/articulo/:id/documentos',
          args: ArticuloDocumentoRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
        );

  static const String name = 'ArticuloDocumentoRoute';
}

class ArticuloDocumentoRouteArgs {
  const ArticuloDocumentoRouteArgs({
    this.key,
    required this.articuloId,
    required this.description,
  });

  final Key? key;

  final String articuloId;

  final String description;

  @override
  String toString() {
    return 'ArticuloDocumentoRouteArgs{key: $key, articuloId: $articuloId, description: $description}';
  }
}

/// generated route for
/// [VisitaListaPage]
class VisitaListaRoute extends PageRouteInfo<void> {
  const VisitaListaRoute()
      : super(
          VisitaListaRoute.name,
          path: '/visita',
        );

  static const String name = 'VisitaListaRoute';
}

/// generated route for
/// [VisitaDetallePage]
class VisitaDetalleRoute extends PageRouteInfo<VisitaDetalleRouteArgs> {
  VisitaDetalleRoute({
    Key? key,
    required EntityIdIsLocalParam visitaIdIsLocalParam,
  }) : super(
          VisitaDetalleRoute.name,
          path: '/visita/:id',
          args: VisitaDetalleRouteArgs(
            key: key,
            visitaIdIsLocalParam: visitaIdIsLocalParam,
          ),
        );

  static const String name = 'VisitaDetalleRoute';
}

class VisitaDetalleRouteArgs {
  const VisitaDetalleRouteArgs({
    this.key,
    required this.visitaIdIsLocalParam,
  });

  final Key? key;

  final EntityIdIsLocalParam visitaIdIsLocalParam;

  @override
  String toString() {
    return 'VisitaDetalleRouteArgs{key: $key, visitaIdIsLocalParam: $visitaIdIsLocalParam}';
  }
}

/// generated route for
/// [VisitaEditPage]
class VisitaEditRoute extends PageRouteInfo<VisitaEditRouteArgs> {
  VisitaEditRoute({
    Key? key,
    String? id,
    bool? isNew,
    String? createVisitaFromClienteId,
  }) : super(
          VisitaEditRoute.name,
          path: '/visita/edit',
          args: VisitaEditRouteArgs(
            key: key,
            id: id,
            isNew: isNew,
            createVisitaFromClienteId: createVisitaFromClienteId,
          ),
        );

  static const String name = 'VisitaEditRoute';
}

class VisitaEditRouteArgs {
  const VisitaEditRouteArgs({
    this.key,
    this.id,
    this.isNew,
    this.createVisitaFromClienteId,
  });

  final Key? key;

  final String? id;

  final bool? isNew;

  final String? createVisitaFromClienteId;

  @override
  String toString() {
    return 'VisitaEditRouteArgs{key: $key, id: $id, isNew: $isNew, createVisitaFromClienteId: $createVisitaFromClienteId}';
  }
}

/// generated route for
/// [CatalogoListaPage]
class CatalogoListaRoute extends PageRouteInfo<void> {
  const CatalogoListaRoute()
      : super(
          CatalogoListaRoute.name,
          path: '/catalogo',
        );

  static const String name = 'CatalogoListaRoute';
}

/// generated route for
/// [CatalogoPdfViewerPage]
class CatalogoPdfViewerRoute extends PageRouteInfo<CatalogoPdfViewerRouteArgs> {
  CatalogoPdfViewerRoute({
    Key? key,
    required File pdfFile,
  }) : super(
          CatalogoPdfViewerRoute.name,
          path: '/catalogo/viewer',
          args: CatalogoPdfViewerRouteArgs(
            key: key,
            pdfFile: pdfFile,
          ),
        );

  static const String name = 'CatalogoPdfViewerRoute';
}

class CatalogoPdfViewerRouteArgs {
  const CatalogoPdfViewerRouteArgs({
    this.key,
    required this.pdfFile,
  });

  final Key? key;

  final File pdfFile;

  @override
  String toString() {
    return 'CatalogoPdfViewerRouteArgs{key: $key, pdfFile: $pdfFile}';
  }
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: '/settings',
        );

  static const String name = 'SettingsRoute';
}
