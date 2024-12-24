// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_auto_router.dart';

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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticuloComponenteRouteArgs>();
      return ArticuloComponentePage(
        key: args.key,
        articuloId: args.articuloId,
        description: args.description,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticuloDetalleRouteArgs>();
      return ArticuloDetallePage(
        key: args.key,
        articuloId: args.articuloId,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticuloDocumentoRouteArgs>();
      return ArticuloDocumentoPage(
        key: args.key,
        articuloId: args.articuloId,
        description: args.description,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticuloGrupoNetoRouteArgs>();
      return ArticuloGrupoNetoPage(
        key: args.key,
        articuloId: args.articuloId,
        description: args.description,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticuloListaRouteArgs>();
      return ArticuloListaPage(
        key: args.key,
        isSearchArticuloForForm: args.isSearchArticuloForForm,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticuloPedidoVentaRouteArgs>();
      return ArticuloPedidoVentaPage(
        key: args.key,
        articuloId: args.articuloId,
        description: args.description,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticuloPrecioTarifaRouteArgs>();
      return ArticuloPrecioTarifaPage(
        key: args.key,
        articuloId: args.articuloId,
        description: args.description,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticuloRecambioRouteArgs>();
      return ArticuloRecambioPage(
        key: args.key,
        articuloId: args.articuloId,
        description: args.description,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticuloSustitutivoRouteArgs>();
      return ArticuloSustitutivoPage(
        key: args.key,
        articuloId: args.articuloId,
        description: args.description,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticuloUltimosPreciosRouteArgs>();
      return ArticuloUltimosPreciosPage(
        key: args.key,
        articuloId: args.articuloId,
        description: args.description,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticuloVentasClienteRouteArgs>();
      return ArticuloVentasClientePage(
        key: args.key,
        articuloId: args.articuloId,
        description: args.description,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticuloVentasMesRouteArgs>();
      return ArticuloVentasMesPage(
        key: args.key,
        articuloId: args.articuloId,
        descripcion: args.descripcion,
      );
    },
  );
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
/// [CameraPage]
class CameraRoute extends PageRouteInfo<void> {
  const CameraRoute({List<PageRouteInfo>? children})
      : super(
          CameraRoute.name,
          initialChildren: children,
        );

  static const String name = 'CameraRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CameraPage();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CatalogoListaPage();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CatalogoPdfViewerRouteArgs>();
      return CatalogoPdfViewerPage(
        key: args.key,
        pdfFile: args.pdfFile,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteAdjuntoRouteArgs>();
      return ClienteAdjuntoPage(
        key: args.key,
        clienteId: args.clienteId,
        nombreCliente: args.nombreCliente,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteArticulosTopListRouteArgs>();
      return ClienteArticulosTopListPage(
        key: args.key,
        clienteId: args.clienteId,
        nombreCliente: args.nombreCliente,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteContactoEditRouteArgs>();
      return ClienteContactoEditPage(
        key: args.key,
        clienteImpParam: args.clienteImpParam,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteContactoListRouteArgs>();
      return ClienteContactoListPage(
        key: args.key,
        clienteId: args.clienteId,
        nombreCliente: args.nombreCliente,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteDescuentoRouteArgs>();
      return ClienteDescuentoPage(
        key: args.key,
        clienteId: args.clienteId,
        nombreCliente: args.nombreCliente,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteDetalleRouteArgs>();
      return ClienteDetallePage(
        key: args.key,
        clienteId: args.clienteId,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteDevolucionDetalleRouteArgs>();
      return ClienteDevolucionDetallePage(
        key: args.key,
        devolucion: args.devolucion,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteDevolucionRouteArgs>();
      return ClienteDevolucionPage(
        key: args.key,
        clienteId: args.clienteId,
        nombreCliente: args.nombreCliente,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteDireccionEditRouteArgs>();
      return ClienteDireccionEditPage(
        key: args.key,
        clienteImpParam: args.clienteImpParam,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteDireccionSeleccionarPaisRouteArgs>(
          orElse: () => const ClienteDireccionSeleccionarPaisRouteArgs());
      return ClienteDireccionSeleccionarPaisPage(key: args.key);
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteDireccionesListRouteArgs>();
      return ClienteDireccionesListPage(
        key: args.key,
        clienteId: args.clienteId,
        paisCliente: args.paisCliente,
        nombreCliente: args.nombreCliente,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteGrupoNetoRouteArgs>();
      return ClienteGrupoNetoPage(
        key: args.key,
        clienteId: args.clienteId,
        nombreCliente: args.nombreCliente,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteListaRouteArgs>();
      return ClienteListaPage(
        key: args.key,
        isSearchClienteForFrom: args.isSearchClienteForFrom,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClientePagoPendienteRouteArgs>();
      return ClientePagoPendientePage(
        key: args.key,
        clienteId: args.clienteId,
        nombreCliente: args.nombreCliente,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClientePedidosRouteArgs>();
      return ClientePedidosPage(
        key: args.key,
        clienteId: args.clienteId,
        nombreCliente: args.nombreCliente,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClientePrecioNetoRouteArgs>();
      return ClientePrecioNetoPage(
        key: args.key,
        clienteId: args.clienteId,
        nombreCliente: args.nombreCliente,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteRappelRouteArgs>();
      return ClienteRappelPage(
        key: args.key,
        clienteId: args.clienteId,
        nombreCliente: args.nombreCliente,
      );
    },
  );
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
/// [ClienteSectorPage]
class ClienteSectorRoute extends PageRouteInfo<ClienteSectorRouteArgs> {
  ClienteSectorRoute({
    Key? key,
    required Cliente cliente,
    List<PageRouteInfo>? children,
  }) : super(
          ClienteSectorRoute.name,
          args: ClienteSectorRouteArgs(
            key: key,
            cliente: cliente,
          ),
          initialChildren: children,
        );

  static const String name = 'ClienteSectorRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteSectorRouteArgs>();
      return ClienteSectorPage(
        key: args.key,
        cliente: args.cliente,
      );
    },
  );
}

class ClienteSectorRouteArgs {
  const ClienteSectorRouteArgs({
    this.key,
    required this.cliente,
  });

  final Key? key;

  final Cliente cliente;

  @override
  String toString() {
    return 'ClienteSectorRouteArgs{key: $key, cliente: $cliente}';
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteUltimosPreciosRouteArgs>();
      return ClienteUltimosPreciosPage(
        key: args.key,
        clienteId: args.clienteId,
        nombreCliente: args.nombreCliente,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteVentasArticuloRouteArgs>();
      return ClienteVentasArticuloPage(
        key: args.key,
        clienteId: args.clienteId,
        nombreCliente: args.nombreCliente,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteVentasMesRouteArgs>();
      return ClienteVentasMesPage(
        key: args.key,
        clienteId: args.clienteId,
        nombreCliente: args.nombreCliente,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClienteVisitasRouteArgs>();
      return ClienteVisitasPage(
        key: args.key,
        clienteId: args.clienteId,
        nombreCliente: args.nombreCliente,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ClientesAlrededorPage();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ExpedicionListPage();
    },
  );
}

/// generated route for
/// [ImageFormPage]
class ImageFormRoute extends PageRouteInfo<ImageFormRouteArgs> {
  ImageFormRoute({
    Key? key,
    required File imageFile,
    List<PageRouteInfo>? children,
  }) : super(
          ImageFormRoute.name,
          args: ImageFormRouteArgs(
            key: key,
            imageFile: imageFile,
          ),
          initialChildren: children,
        );

  static const String name = 'ImageFormRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ImageFormRouteArgs>();
      return ImageFormPage(
        key: args.key,
        imageFile: args.imageFile,
      );
    },
  );
}

class ImageFormRouteArgs {
  const ImageFormRouteArgs({
    this.key,
    required this.imageFile,
  });

  final Key? key;

  final File imageFile;

  @override
  String toString() {
    return 'ImageFormRouteArgs{key: $key, imageFile: $imageFile}';
  }
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NotificationDetailRouteArgs>();
      return NotificationDetailPage(
        key: args.key,
        notificationId: args.notificationId,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NotificationIndexRouteArgs>(
          orElse: () => const NotificationIndexRouteArgs());
      return NotificationIndexPage(key: args.key);
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PedidoVentaDetalleRouteArgs>();
      return PedidoVentaDetallePage(
        key: args.key,
        pedidoLocalParam: args.pedidoLocalParam,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PedidoVentaEditRouteArgs>();
      return PedidoVentaEditPage(
        key: args.key,
        pedidoAppId: args.pedidoAppId,
        pedidoId: args.pedidoId,
        empresaId: args.empresaId,
        isLocal: args.isLocal,
        createPedidoFromClienteId: args.createPedidoFromClienteId,
        addLineaDesdeArticulo: args.addLineaDesdeArticulo,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PedidoVentaListPage();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SeleccionarCantidadRouteArgs>();
      return SeleccionarCantidadPage(
        key: args.key,
        seleccionarCantidadParam: args.seleccionarCantidadParam,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SettingsRouteArgs>(
          orElse: () => const SettingsRouteArgs());
      return SettingsPage(key: args.key);
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashPage();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VisitaDetalleRouteArgs>();
      return VisitaDetallePage(
        key: args.key,
        visitaIdIsLocalParam: args.visitaIdIsLocalParam,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VisitaEditRouteArgs>(
          orElse: () => const VisitaEditRouteArgs());
      return VisitaEditPage(
        key: args.key,
        id: args.id,
        isNew: args.isNew,
        createVisitaFromClienteId: args.createVisitaFromClienteId,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const VisitaListaPage();
    },
  );
}
