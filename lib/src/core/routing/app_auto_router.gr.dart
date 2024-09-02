// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_auto_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ArticuloComponenteRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloComponenteRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ArticuloComponentePage(
          key: args.key,
          articuloId: args.articuloId,
          description: args.description,
        ),
      );
    },
    ArticuloDetalleRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloDetalleRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ArticuloDetallePage(
          key: args.key,
          articuloId: args.articuloId,
        ),
      );
    },
    ArticuloDocumentoRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloDocumentoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ArticuloDocumentoPage(
          key: args.key,
          articuloId: args.articuloId,
          description: args.description,
        ),
      );
    },
    ArticuloGrupoNetoRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloGrupoNetoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ArticuloGrupoNetoPage(
          key: args.key,
          articuloId: args.articuloId,
          description: args.description,
        ),
      );
    },
    ArticuloListaRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloListaRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ArticuloListaPage(
          key: args.key,
          isSearchArticuloForForm: args.isSearchArticuloForForm,
        ),
      );
    },
    ArticuloPedidoVentaRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloPedidoVentaRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ArticuloPedidoVentaPage(
          key: args.key,
          articuloId: args.articuloId,
          description: args.description,
        ),
      );
    },
    ArticuloPrecioTarifaRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloPrecioTarifaRouteArgs>();
      return AutoRoutePage<dynamic>(
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
      return AutoRoutePage<dynamic>(
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
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ArticuloSustitutivoPage(
          key: args.key,
          articuloId: args.articuloId,
          description: args.description,
        ),
      );
    },
    ArticuloUltimosPreciosRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloUltimosPreciosRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ArticuloUltimosPreciosPage(
          key: args.key,
          articuloId: args.articuloId,
          description: args.description,
        ),
      );
    },
    ArticuloVentasClienteRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloVentasClienteRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ArticuloVentasClientePage(
          key: args.key,
          articuloId: args.articuloId,
          description: args.description,
        ),
      );
    },
    ArticuloVentasMesRoute.name: (routeData) {
      final args = routeData.argsAs<ArticuloVentasMesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ArticuloVentasMesPage(
          key: args.key,
          articuloId: args.articuloId,
          descripcion: args.descripcion,
        ),
      );
    },
    CatalogoListaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogoListaPage(),
      );
    },
    CatalogoPdfViewerRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogoPdfViewerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CatalogoPdfViewerPage(
          key: args.key,
          pdfFile: args.pdfFile,
        ),
      );
    },
    ClienteAdjuntoRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteAdjuntoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteAdjuntoPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteArticulosTopListRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteArticulosTopListRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteArticulosTopListPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteContactoEditRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteContactoEditRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteContactoEditPage(
          key: args.key,
          clienteImpParam: args.clienteImpParam,
        ),
      );
    },
    ClienteContactoListRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteContactoListRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteContactoListPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteDescuentoRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteDescuentoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteDescuentoPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteDetalleRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteDetalleRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteDetallePage(
          key: args.key,
          clienteId: args.clienteId,
        ),
      );
    },
    ClienteDevolucionDetalleRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteDevolucionDetalleRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteDevolucionDetallePage(
          key: args.key,
          devolucion: args.devolucion,
        ),
      );
    },
    ClienteDevolucionRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteDevolucionRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteDevolucionPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteDireccionEditRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteDireccionEditRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteDireccionEditPage(
          key: args.key,
          clienteImpParam: args.clienteImpParam,
        ),
      );
    },
    ClienteDireccionSeleccionarPaisRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteDireccionSeleccionarPaisRouteArgs>(
          orElse: () => const ClienteDireccionSeleccionarPaisRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteDireccionSeleccionarPaisPage(key: args.key),
      );
    },
    ClienteDireccionesListRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteDireccionesListRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteDireccionesListPage(
          key: args.key,
          clienteId: args.clienteId,
          paisCliente: args.paisCliente,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteGrupoNetoRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteGrupoNetoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteGrupoNetoPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteListaRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteListaRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteListaPage(
          key: args.key,
          isSearchClienteForFrom: args.isSearchClienteForFrom,
        ),
      );
    },
    ClientePagoPendienteRoute.name: (routeData) {
      final args = routeData.argsAs<ClientePagoPendienteRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClientePagoPendientePage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClientePedidosRoute.name: (routeData) {
      final args = routeData.argsAs<ClientePedidosRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClientePedidosPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClientePrecioNetoRoute.name: (routeData) {
      final args = routeData.argsAs<ClientePrecioNetoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClientePrecioNetoPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteRappelRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteRappelRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteRappelPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteUltimosPreciosRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteUltimosPreciosRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteUltimosPreciosPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteVentasArticuloRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteVentasArticuloRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteVentasArticuloPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteVentasMesRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteVentasMesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteVentasMesPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClienteVisitasRoute.name: (routeData) {
      final args = routeData.argsAs<ClienteVisitasRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ClienteVisitasPage(
          key: args.key,
          clienteId: args.clienteId,
          nombreCliente: args.nombreCliente,
        ),
      );
    },
    ClientesAlrededorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ClientesAlrededorPage(),
      );
    },
    ExpedicionListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ExpedicionListPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    NotificationDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NotificationDetailPage(
          key: args.key,
          notificationId: args.notificationId,
        ),
      );
    },
    NotificationIndexRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationIndexRouteArgs>(
          orElse: () => const NotificationIndexRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NotificationIndexPage(key: args.key),
      );
    },
    PedidoVentaDetalleRoute.name: (routeData) {
      final args = routeData.argsAs<PedidoVentaDetalleRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PedidoVentaDetallePage(
          key: args.key,
          pedidoLocalParam: args.pedidoLocalParam,
        ),
      );
    },
    PedidoVentaEditRoute.name: (routeData) {
      final args = routeData.argsAs<PedidoVentaEditRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PedidoVentaEditPage(
          key: args.key,
          pedidoAppId: args.pedidoAppId,
          pedidoId: args.pedidoId,
          empresaId: args.empresaId,
          isLocal: args.isLocal,
          createPedidoFromClienteId: args.createPedidoFromClienteId,
          addLineaDesdeArticulo: args.addLineaDesdeArticulo,
        ),
      );
    },
    PedidoVentaListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PedidoVentaListPage(),
      );
    },
    SeleccionarCantidadRoute.name: (routeData) {
      final args = routeData.argsAs<SeleccionarCantidadRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SeleccionarCantidadPage(
          key: args.key,
          seleccionarCantidadParam: args.seleccionarCantidadParam,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsRouteArgs>(
          orElse: () => const SettingsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SettingsPage(key: args.key),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    VisitaDetalleRoute.name: (routeData) {
      final args = routeData.argsAs<VisitaDetalleRouteArgs>();
      return AutoRoutePage<dynamic>(
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
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VisitaEditPage(
          key: args.key,
          id: args.id,
          isNew: args.isNew,
          createVisitaFromClienteId: args.createVisitaFromClienteId,
        ),
      );
    },
    VisitaListaRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VisitaListaPage(),
      );
    },
  };
}

/// generated route for
/// [ArticuloComponentePage]
class ArticuloComponenteRoute
    extends PageRouteInfo<ArticuloComponenteRouteArgs> {
  ArticuloComponenteRoute({
    Key? key,
    required String articuloId,
    required String description,
    List<PageRouteInfo>? children,
  }) : super(
          ArticuloComponenteRoute.name,
          args: ArticuloComponenteRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticuloComponenteRoute';

  static const PageInfo<ArticuloComponenteRouteArgs> page =
      PageInfo<ArticuloComponenteRouteArgs>(name);
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
/// [ArticuloDetallePage]
class ArticuloDetalleRoute extends PageRouteInfo<ArticuloDetalleRouteArgs> {
  ArticuloDetalleRoute({
    Key? key,
    required String articuloId,
    List<PageRouteInfo>? children,
  }) : super(
          ArticuloDetalleRoute.name,
          args: ArticuloDetalleRouteArgs(
            key: key,
            articuloId: articuloId,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticuloDetalleRoute';

  static const PageInfo<ArticuloDetalleRouteArgs> page =
      PageInfo<ArticuloDetalleRouteArgs>(name);
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
/// [ArticuloDocumentoPage]
class ArticuloDocumentoRoute extends PageRouteInfo<ArticuloDocumentoRouteArgs> {
  ArticuloDocumentoRoute({
    Key? key,
    required String articuloId,
    required String description,
    List<PageRouteInfo>? children,
  }) : super(
          ArticuloDocumentoRoute.name,
          args: ArticuloDocumentoRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticuloDocumentoRoute';

  static const PageInfo<ArticuloDocumentoRouteArgs> page =
      PageInfo<ArticuloDocumentoRouteArgs>(name);
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
/// [ArticuloGrupoNetoPage]
class ArticuloGrupoNetoRoute extends PageRouteInfo<ArticuloGrupoNetoRouteArgs> {
  ArticuloGrupoNetoRoute({
    Key? key,
    required String articuloId,
    required String description,
    List<PageRouteInfo>? children,
  }) : super(
          ArticuloGrupoNetoRoute.name,
          args: ArticuloGrupoNetoRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticuloGrupoNetoRoute';

  static const PageInfo<ArticuloGrupoNetoRouteArgs> page =
      PageInfo<ArticuloGrupoNetoRouteArgs>(name);
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
/// [ArticuloListaPage]
class ArticuloListaRoute extends PageRouteInfo<ArticuloListaRouteArgs> {
  ArticuloListaRoute({
    Key? key,
    required bool isSearchArticuloForForm,
    List<PageRouteInfo>? children,
  }) : super(
          ArticuloListaRoute.name,
          args: ArticuloListaRouteArgs(
            key: key,
            isSearchArticuloForForm: isSearchArticuloForForm,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticuloListaRoute';

  static const PageInfo<ArticuloListaRouteArgs> page =
      PageInfo<ArticuloListaRouteArgs>(name);
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
/// [ArticuloPedidoVentaPage]
class ArticuloPedidoVentaRoute
    extends PageRouteInfo<ArticuloPedidoVentaRouteArgs> {
  ArticuloPedidoVentaRoute({
    Key? key,
    required String articuloId,
    required String description,
    List<PageRouteInfo>? children,
  }) : super(
          ArticuloPedidoVentaRoute.name,
          args: ArticuloPedidoVentaRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticuloPedidoVentaRoute';

  static const PageInfo<ArticuloPedidoVentaRouteArgs> page =
      PageInfo<ArticuloPedidoVentaRouteArgs>(name);
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
/// [ArticuloPrecioTarifaPage]
class ArticuloPrecioTarifaRoute
    extends PageRouteInfo<ArticuloPrecioTarifaRouteArgs> {
  ArticuloPrecioTarifaRoute({
    Key? key,
    required String articuloId,
    required String description,
    List<PageRouteInfo>? children,
  }) : super(
          ArticuloPrecioTarifaRoute.name,
          args: ArticuloPrecioTarifaRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticuloPrecioTarifaRoute';

  static const PageInfo<ArticuloPrecioTarifaRouteArgs> page =
      PageInfo<ArticuloPrecioTarifaRouteArgs>(name);
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
    List<PageRouteInfo>? children,
  }) : super(
          ArticuloRecambioRoute.name,
          args: ArticuloRecambioRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticuloRecambioRoute';

  static const PageInfo<ArticuloRecambioRouteArgs> page =
      PageInfo<ArticuloRecambioRouteArgs>(name);
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
    List<PageRouteInfo>? children,
  }) : super(
          ArticuloSustitutivoRoute.name,
          args: ArticuloSustitutivoRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticuloSustitutivoRoute';

  static const PageInfo<ArticuloSustitutivoRouteArgs> page =
      PageInfo<ArticuloSustitutivoRouteArgs>(name);
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
/// [ArticuloUltimosPreciosPage]
class ArticuloUltimosPreciosRoute
    extends PageRouteInfo<ArticuloUltimosPreciosRouteArgs> {
  ArticuloUltimosPreciosRoute({
    Key? key,
    required String articuloId,
    required String description,
    List<PageRouteInfo>? children,
  }) : super(
          ArticuloUltimosPreciosRoute.name,
          args: ArticuloUltimosPreciosRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticuloUltimosPreciosRoute';

  static const PageInfo<ArticuloUltimosPreciosRouteArgs> page =
      PageInfo<ArticuloUltimosPreciosRouteArgs>(name);
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
/// [ArticuloVentasClientePage]
class ArticuloVentasClienteRoute
    extends PageRouteInfo<ArticuloVentasClienteRouteArgs> {
  ArticuloVentasClienteRoute({
    Key? key,
    required String articuloId,
    required String description,
    List<PageRouteInfo>? children,
  }) : super(
          ArticuloVentasClienteRoute.name,
          args: ArticuloVentasClienteRouteArgs(
            key: key,
            articuloId: articuloId,
            description: description,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticuloVentasClienteRoute';

  static const PageInfo<ArticuloVentasClienteRouteArgs> page =
      PageInfo<ArticuloVentasClienteRouteArgs>(name);
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
/// [ArticuloVentasMesPage]
class ArticuloVentasMesRoute extends PageRouteInfo<ArticuloVentasMesRouteArgs> {
  ArticuloVentasMesRoute({
    Key? key,
    required String articuloId,
    required String descripcion,
    List<PageRouteInfo>? children,
  }) : super(
          ArticuloVentasMesRoute.name,
          args: ArticuloVentasMesRouteArgs(
            key: key,
            articuloId: articuloId,
            descripcion: descripcion,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticuloVentasMesRoute';

  static const PageInfo<ArticuloVentasMesRouteArgs> page =
      PageInfo<ArticuloVentasMesRouteArgs>(name);
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
/// [CatalogoListaPage]
class CatalogoListaRoute extends PageRouteInfo<void> {
  const CatalogoListaRoute({List<PageRouteInfo>? children})
      : super(
          CatalogoListaRoute.name,
          initialChildren: children,
        );

  static const String name = 'CatalogoListaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogoPdfViewerPage]
class CatalogoPdfViewerRoute extends PageRouteInfo<CatalogoPdfViewerRouteArgs> {
  CatalogoPdfViewerRoute({
    Key? key,
    required File pdfFile,
    List<PageRouteInfo>? children,
  }) : super(
          CatalogoPdfViewerRoute.name,
          args: CatalogoPdfViewerRouteArgs(
            key: key,
            pdfFile: pdfFile,
          ),
          initialChildren: children,
        );

  static const String name = 'CatalogoPdfViewerRoute';

  static const PageInfo<CatalogoPdfViewerRouteArgs> page =
      PageInfo<CatalogoPdfViewerRouteArgs>(name);
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
/// [ClienteAdjuntoPage]
class ClienteAdjuntoRoute extends PageRouteInfo<ClienteAdjuntoRouteArgs> {
  ClienteAdjuntoRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteAdjuntoRoute.name,
          args: ClienteAdjuntoRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteAdjuntoRoute';

  static const PageInfo<ClienteAdjuntoRouteArgs> page =
      PageInfo<ClienteAdjuntoRouteArgs>(name);
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
/// [ClienteArticulosTopListPage]
class ClienteArticulosTopListRoute
    extends PageRouteInfo<ClienteArticulosTopListRouteArgs> {
  ClienteArticulosTopListRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteArticulosTopListRoute.name,
          args: ClienteArticulosTopListRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteArticulosTopListRoute';

  static const PageInfo<ClienteArticulosTopListRouteArgs> page =
      PageInfo<ClienteArticulosTopListRouteArgs>(name);
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
/// [ClienteContactoEditPage]
class ClienteContactoEditRoute
    extends PageRouteInfo<ClienteContactoEditRouteArgs> {
  ClienteContactoEditRoute({
    Key? key,
    required ClienteImpParam clienteImpParam,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteContactoEditRoute.name,
          args: ClienteContactoEditRouteArgs(
            key: key,
            clienteImpParam: clienteImpParam,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteContactoEditRoute';

  static const PageInfo<ClienteContactoEditRouteArgs> page =
      PageInfo<ClienteContactoEditRouteArgs>(name);
}

class ClienteContactoEditRouteArgs {
  const ClienteContactoEditRouteArgs({
    this.key,
    required this.clienteImpParam,
  });

  final Key? key;

  final ClienteImpParam clienteImpParam;

  @override
  String toString() {
    return 'ClienteContactoEditRouteArgs{key: $key, clienteImpParam: $clienteImpParam}';
  }
}

/// generated route for
/// [ClienteContactoListPage]
class ClienteContactoListRoute
    extends PageRouteInfo<ClienteContactoListRouteArgs> {
  ClienteContactoListRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteContactoListRoute.name,
          args: ClienteContactoListRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteContactoListRoute';

  static const PageInfo<ClienteContactoListRouteArgs> page =
      PageInfo<ClienteContactoListRouteArgs>(name);
}

class ClienteContactoListRouteArgs {
  const ClienteContactoListRouteArgs({
    this.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final Key? key;

  final String clienteId;

  final String? nombreCliente;

  @override
  String toString() {
    return 'ClienteContactoListRouteArgs{key: $key, clienteId: $clienteId, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [ClienteDescuentoPage]
class ClienteDescuentoRoute extends PageRouteInfo<ClienteDescuentoRouteArgs> {
  ClienteDescuentoRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteDescuentoRoute.name,
          args: ClienteDescuentoRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteDescuentoRoute';

  static const PageInfo<ClienteDescuentoRouteArgs> page =
      PageInfo<ClienteDescuentoRouteArgs>(name);
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
/// [ClienteDetallePage]
class ClienteDetalleRoute extends PageRouteInfo<ClienteDetalleRouteArgs> {
  ClienteDetalleRoute({
    Key? key,
    required String clienteId,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteDetalleRoute.name,
          args: ClienteDetalleRouteArgs(
            key: key,
            clienteId: clienteId,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteDetalleRoute';

  static const PageInfo<ClienteDetalleRouteArgs> page =
      PageInfo<ClienteDetalleRouteArgs>(name);
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
/// [ClienteDevolucionDetallePage]
class ClienteDevolucionDetalleRoute
    extends PageRouteInfo<ClienteDevolucionDetalleRouteArgs> {
  ClienteDevolucionDetalleRoute({
    Key? key,
    required Devolucion devolucion,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteDevolucionDetalleRoute.name,
          args: ClienteDevolucionDetalleRouteArgs(
            key: key,
            devolucion: devolucion,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteDevolucionDetalleRoute';

  static const PageInfo<ClienteDevolucionDetalleRouteArgs> page =
      PageInfo<ClienteDevolucionDetalleRouteArgs>(name);
}

class ClienteDevolucionDetalleRouteArgs {
  const ClienteDevolucionDetalleRouteArgs({
    this.key,
    required this.devolucion,
  });

  final Key? key;

  final Devolucion devolucion;

  @override
  String toString() {
    return 'ClienteDevolucionDetalleRouteArgs{key: $key, devolucion: $devolucion}';
  }
}

/// generated route for
/// [ClienteDevolucionPage]
class ClienteDevolucionRoute extends PageRouteInfo<ClienteDevolucionRouteArgs> {
  ClienteDevolucionRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteDevolucionRoute.name,
          args: ClienteDevolucionRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteDevolucionRoute';

  static const PageInfo<ClienteDevolucionRouteArgs> page =
      PageInfo<ClienteDevolucionRouteArgs>(name);
}

class ClienteDevolucionRouteArgs {
  const ClienteDevolucionRouteArgs({
    this.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final Key? key;

  final String clienteId;

  final String? nombreCliente;

  @override
  String toString() {
    return 'ClienteDevolucionRouteArgs{key: $key, clienteId: $clienteId, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [ClienteDireccionEditPage]
class ClienteDireccionEditRoute
    extends PageRouteInfo<ClienteDireccionEditRouteArgs> {
  ClienteDireccionEditRoute({
    Key? key,
    required ClienteImpParam clienteImpParam,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteDireccionEditRoute.name,
          args: ClienteDireccionEditRouteArgs(
            key: key,
            clienteImpParam: clienteImpParam,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteDireccionEditRoute';

  static const PageInfo<ClienteDireccionEditRouteArgs> page =
      PageInfo<ClienteDireccionEditRouteArgs>(name);
}

class ClienteDireccionEditRouteArgs {
  const ClienteDireccionEditRouteArgs({
    this.key,
    required this.clienteImpParam,
  });

  final Key? key;

  final ClienteImpParam clienteImpParam;

  @override
  String toString() {
    return 'ClienteDireccionEditRouteArgs{key: $key, clienteImpParam: $clienteImpParam}';
  }
}

/// generated route for
/// [ClienteDireccionSeleccionarPaisPage]
class ClienteDireccionSeleccionarPaisRoute
    extends PageRouteInfo<ClienteDireccionSeleccionarPaisRouteArgs> {
  ClienteDireccionSeleccionarPaisRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteDireccionSeleccionarPaisRoute.name,
          args: ClienteDireccionSeleccionarPaisRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ClienteDireccionSeleccionarPaisRoute';

  static const PageInfo<ClienteDireccionSeleccionarPaisRouteArgs> page =
      PageInfo<ClienteDireccionSeleccionarPaisRouteArgs>(name);
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
/// [ClienteDireccionesListPage]
class ClienteDireccionesListRoute
    extends PageRouteInfo<ClienteDireccionesListRouteArgs> {
  ClienteDireccionesListRoute({
    Key? key,
    required String clienteId,
    required Pais? paisCliente,
    required String? nombreCliente,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteDireccionesListRoute.name,
          args: ClienteDireccionesListRouteArgs(
            key: key,
            clienteId: clienteId,
            paisCliente: paisCliente,
            nombreCliente: nombreCliente,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteDireccionesListRoute';

  static const PageInfo<ClienteDireccionesListRouteArgs> page =
      PageInfo<ClienteDireccionesListRouteArgs>(name);
}

class ClienteDireccionesListRouteArgs {
  const ClienteDireccionesListRouteArgs({
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
    return 'ClienteDireccionesListRouteArgs{key: $key, clienteId: $clienteId, paisCliente: $paisCliente, nombreCliente: $nombreCliente}';
  }
}

/// generated route for
/// [ClienteGrupoNetoPage]
class ClienteGrupoNetoRoute extends PageRouteInfo<ClienteGrupoNetoRouteArgs> {
  ClienteGrupoNetoRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteGrupoNetoRoute.name,
          args: ClienteGrupoNetoRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteGrupoNetoRoute';

  static const PageInfo<ClienteGrupoNetoRouteArgs> page =
      PageInfo<ClienteGrupoNetoRouteArgs>(name);
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
/// [ClienteListaPage]
class ClienteListaRoute extends PageRouteInfo<ClienteListaRouteArgs> {
  ClienteListaRoute({
    Key? key,
    required bool isSearchClienteForFrom,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteListaRoute.name,
          args: ClienteListaRouteArgs(
            key: key,
            isSearchClienteForFrom: isSearchClienteForFrom,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteListaRoute';

  static const PageInfo<ClienteListaRouteArgs> page =
      PageInfo<ClienteListaRouteArgs>(name);
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
/// [ClientePagoPendientePage]
class ClientePagoPendienteRoute
    extends PageRouteInfo<ClientePagoPendienteRouteArgs> {
  ClientePagoPendienteRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
    List<PageRouteInfo>? children,
  }) : super(
          ClientePagoPendienteRoute.name,
          args: ClientePagoPendienteRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
          initialChildren: children,
        );

  static const String name = 'ClientePagoPendienteRoute';

  static const PageInfo<ClientePagoPendienteRouteArgs> page =
      PageInfo<ClientePagoPendienteRouteArgs>(name);
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
/// [ClientePedidosPage]
class ClientePedidosRoute extends PageRouteInfo<ClientePedidosRouteArgs> {
  ClientePedidosRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
    List<PageRouteInfo>? children,
  }) : super(
          ClientePedidosRoute.name,
          args: ClientePedidosRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
          initialChildren: children,
        );

  static const String name = 'ClientePedidosRoute';

  static const PageInfo<ClientePedidosRouteArgs> page =
      PageInfo<ClientePedidosRouteArgs>(name);
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
/// [ClientePrecioNetoPage]
class ClientePrecioNetoRoute extends PageRouteInfo<ClientePrecioNetoRouteArgs> {
  ClientePrecioNetoRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
    List<PageRouteInfo>? children,
  }) : super(
          ClientePrecioNetoRoute.name,
          args: ClientePrecioNetoRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
          initialChildren: children,
        );

  static const String name = 'ClientePrecioNetoRoute';

  static const PageInfo<ClientePrecioNetoRouteArgs> page =
      PageInfo<ClientePrecioNetoRouteArgs>(name);
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
/// [ClienteRappelPage]
class ClienteRappelRoute extends PageRouteInfo<ClienteRappelRouteArgs> {
  ClienteRappelRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteRappelRoute.name,
          args: ClienteRappelRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteRappelRoute';

  static const PageInfo<ClienteRappelRouteArgs> page =
      PageInfo<ClienteRappelRouteArgs>(name);
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
/// [ClienteUltimosPreciosPage]
class ClienteUltimosPreciosRoute
    extends PageRouteInfo<ClienteUltimosPreciosRouteArgs> {
  ClienteUltimosPreciosRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteUltimosPreciosRoute.name,
          args: ClienteUltimosPreciosRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteUltimosPreciosRoute';

  static const PageInfo<ClienteUltimosPreciosRouteArgs> page =
      PageInfo<ClienteUltimosPreciosRouteArgs>(name);
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
/// [ClienteVentasArticuloPage]
class ClienteVentasArticuloRoute
    extends PageRouteInfo<ClienteVentasArticuloRouteArgs> {
  ClienteVentasArticuloRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteVentasArticuloRoute.name,
          args: ClienteVentasArticuloRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteVentasArticuloRoute';

  static const PageInfo<ClienteVentasArticuloRouteArgs> page =
      PageInfo<ClienteVentasArticuloRouteArgs>(name);
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
/// [ClienteVentasMesPage]
class ClienteVentasMesRoute extends PageRouteInfo<ClienteVentasMesRouteArgs> {
  ClienteVentasMesRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteVentasMesRoute.name,
          args: ClienteVentasMesRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteVentasMesRoute';

  static const PageInfo<ClienteVentasMesRouteArgs> page =
      PageInfo<ClienteVentasMesRouteArgs>(name);
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
/// [ClienteVisitasPage]
class ClienteVisitasRoute extends PageRouteInfo<ClienteVisitasRouteArgs> {
  ClienteVisitasRoute({
    Key? key,
    required String clienteId,
    required String? nombreCliente,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteVisitasRoute.name,
          args: ClienteVisitasRouteArgs(
            key: key,
            clienteId: clienteId,
            nombreCliente: nombreCliente,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteVisitasRoute';

  static const PageInfo<ClienteVisitasRouteArgs> page =
      PageInfo<ClienteVisitasRouteArgs>(name);
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
/// [ClientesAlrededorPage]
class ClientesAlrededorRoute extends PageRouteInfo<void> {
  const ClientesAlrededorRoute({List<PageRouteInfo>? children})
      : super(
          ClientesAlrededorRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClientesAlrededorRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ExpedicionListPage]
class ExpedicionListRoute extends PageRouteInfo<void> {
  const ExpedicionListRoute({List<PageRouteInfo>? children})
      : super(
          ExpedicionListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExpedicionListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NotificationDetailPage]
class NotificationDetailRoute
    extends PageRouteInfo<NotificationDetailRouteArgs> {
  NotificationDetailRoute({
    Key? key,
    required String notificationId,
    List<PageRouteInfo>? children,
  }) : super(
          NotificationDetailRoute.name,
          args: NotificationDetailRouteArgs(
            key: key,
            notificationId: notificationId,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailRoute';

  static const PageInfo<NotificationDetailRouteArgs> page =
      PageInfo<NotificationDetailRouteArgs>(name);
}

class NotificationDetailRouteArgs {
  const NotificationDetailRouteArgs({
    this.key,
    required this.notificationId,
  });

  final Key? key;

  final String notificationId;

  @override
  String toString() {
    return 'NotificationDetailRouteArgs{key: $key, notificationId: $notificationId}';
  }
}

/// generated route for
/// [NotificationIndexPage]
class NotificationIndexRoute extends PageRouteInfo<NotificationIndexRouteArgs> {
  NotificationIndexRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          NotificationIndexRoute.name,
          args: NotificationIndexRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'NotificationIndexRoute';

  static const PageInfo<NotificationIndexRouteArgs> page =
      PageInfo<NotificationIndexRouteArgs>(name);
}

class NotificationIndexRouteArgs {
  const NotificationIndexRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'NotificationIndexRouteArgs{key: $key}';
  }
}

/// generated route for
/// [PedidoVentaDetallePage]
class PedidoVentaDetalleRoute
    extends PageRouteInfo<PedidoVentaDetalleRouteArgs> {
  PedidoVentaDetalleRoute({
    Key? key,
    required PedidoLocalParam pedidoLocalParam,
    List<PageRouteInfo>? children,
  }) : super(
          PedidoVentaDetalleRoute.name,
          args: PedidoVentaDetalleRouteArgs(
            key: key,
            pedidoLocalParam: pedidoLocalParam,
          ),
          initialChildren: children,
        );

  static const String name = 'PedidoVentaDetalleRoute';

  static const PageInfo<PedidoVentaDetalleRouteArgs> page =
      PageInfo<PedidoVentaDetalleRouteArgs>(name);
}

class PedidoVentaDetalleRouteArgs {
  const PedidoVentaDetalleRouteArgs({
    this.key,
    required this.pedidoLocalParam,
  });

  final Key? key;

  final PedidoLocalParam pedidoLocalParam;

  @override
  String toString() {
    return 'PedidoVentaDetalleRouteArgs{key: $key, pedidoLocalParam: $pedidoLocalParam}';
  }
}

/// generated route for
/// [PedidoVentaEditPage]
class PedidoVentaEditRoute extends PageRouteInfo<PedidoVentaEditRouteArgs> {
  PedidoVentaEditRoute({
    Key? key,
    String? pedidoAppId,
    String? pedidoId,
    String? empresaId,
    required bool isLocal,
    String? createPedidoFromClienteId,
    PedidoVentaLinea? addLineaDesdeArticulo,
    List<PageRouteInfo>? children,
  }) : super(
          PedidoVentaEditRoute.name,
          args: PedidoVentaEditRouteArgs(
            key: key,
            pedidoAppId: pedidoAppId,
            pedidoId: pedidoId,
            empresaId: empresaId,
            isLocal: isLocal,
            createPedidoFromClienteId: createPedidoFromClienteId,
            addLineaDesdeArticulo: addLineaDesdeArticulo,
          ),
          initialChildren: children,
        );

  static const String name = 'PedidoVentaEditRoute';

  static const PageInfo<PedidoVentaEditRouteArgs> page =
      PageInfo<PedidoVentaEditRouteArgs>(name);
}

class PedidoVentaEditRouteArgs {
  const PedidoVentaEditRouteArgs({
    this.key,
    this.pedidoAppId,
    this.pedidoId,
    this.empresaId,
    required this.isLocal,
    this.createPedidoFromClienteId,
    this.addLineaDesdeArticulo,
  });

  final Key? key;

  final String? pedidoAppId;

  final String? pedidoId;

  final String? empresaId;

  final bool isLocal;

  final String? createPedidoFromClienteId;

  final PedidoVentaLinea? addLineaDesdeArticulo;

  @override
  String toString() {
    return 'PedidoVentaEditRouteArgs{key: $key, pedidoAppId: $pedidoAppId, pedidoId: $pedidoId, empresaId: $empresaId, isLocal: $isLocal, createPedidoFromClienteId: $createPedidoFromClienteId, addLineaDesdeArticulo: $addLineaDesdeArticulo}';
  }
}

/// generated route for
/// [PedidoVentaListPage]
class PedidoVentaListRoute extends PageRouteInfo<void> {
  const PedidoVentaListRoute({List<PageRouteInfo>? children})
      : super(
          PedidoVentaListRoute.name,
          initialChildren: children,
        );

  static const String name = 'PedidoVentaListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SeleccionarCantidadPage]
class SeleccionarCantidadRoute
    extends PageRouteInfo<SeleccionarCantidadRouteArgs> {
  SeleccionarCantidadRoute({
    Key? key,
    required SeleccionarCantidadParam seleccionarCantidadParam,
    List<PageRouteInfo>? children,
  }) : super(
          SeleccionarCantidadRoute.name,
          args: SeleccionarCantidadRouteArgs(
            key: key,
            seleccionarCantidadParam: seleccionarCantidadParam,
          ),
          initialChildren: children,
        );

  static const String name = 'SeleccionarCantidadRoute';

  static const PageInfo<SeleccionarCantidadRouteArgs> page =
      PageInfo<SeleccionarCantidadRouteArgs>(name);
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
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SettingsRoute.name,
          args: SettingsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<SettingsRouteArgs> page =
      PageInfo<SettingsRouteArgs>(name);
}

class SettingsRouteArgs {
  const SettingsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SettingsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VisitaDetallePage]
class VisitaDetalleRoute extends PageRouteInfo<VisitaDetalleRouteArgs> {
  VisitaDetalleRoute({
    Key? key,
    required VisitaIdIsLocalParam visitaIdIsLocalParam,
    List<PageRouteInfo>? children,
  }) : super(
          VisitaDetalleRoute.name,
          args: VisitaDetalleRouteArgs(
            key: key,
            visitaIdIsLocalParam: visitaIdIsLocalParam,
          ),
          initialChildren: children,
        );

  static const String name = 'VisitaDetalleRoute';

  static const PageInfo<VisitaDetalleRouteArgs> page =
      PageInfo<VisitaDetalleRouteArgs>(name);
}

class VisitaDetalleRouteArgs {
  const VisitaDetalleRouteArgs({
    this.key,
    required this.visitaIdIsLocalParam,
  });

  final Key? key;

  final VisitaIdIsLocalParam visitaIdIsLocalParam;

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
    List<PageRouteInfo>? children,
  }) : super(
          VisitaEditRoute.name,
          args: VisitaEditRouteArgs(
            key: key,
            id: id,
            isNew: isNew,
            createVisitaFromClienteId: createVisitaFromClienteId,
          ),
          initialChildren: children,
        );

  static const String name = 'VisitaEditRoute';

  static const PageInfo<VisitaEditRouteArgs> page =
      PageInfo<VisitaEditRouteArgs>(name);
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
/// [VisitaListaPage]
class VisitaListaRoute extends PageRouteInfo<void> {
  const VisitaListaRoute({List<PageRouteInfo>? children})
      : super(
          VisitaListaRoute.name,
          initialChildren: children,
        );

  static const String name = 'VisitaListaRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
