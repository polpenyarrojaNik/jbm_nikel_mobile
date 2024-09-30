import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/app_initialization/presentation/splash_page.dart';
import '../../features/articulos/presentation/index/articulo_lista_page.dart';
import '../../features/articulos/presentation/show/articulo_componente_page.dart';
import '../../features/articulos/presentation/show/articulo_detalle_page.dart';
import '../../features/articulos/presentation/show/articulo_documento_page.dart';
import '../../features/articulos/presentation/show/articulo_grupos_netos_page.dart';
import '../../features/articulos/presentation/show/articulo_pedido_venta_page.dart';
import '../../features/articulos/presentation/show/articulo_precio_tarifa_page.dart';
import '../../features/articulos/presentation/show/articulo_recambio_page.dart';
import '../../features/articulos/presentation/show/articulo_sustitutivo_page.dart';
import '../../features/articulos/presentation/show/articulo_ventas_cliente_page.dart';
import '../../features/articulos/presentation/show/articulo_ventas_mes_page.dart';
import '../../features/articulos/presentation/show/ultimos_precios/articulo_ultimos_precios_page.dart';
import '../../features/catalogos/presentation/catalogo_list_page.dart';
import '../../features/catalogos/presentation/catalogo_pdf_viewer.dart';
import '../../features/cliente/domain/cliente_imp_param.dart';
import '../../features/cliente/presentation/index/cliente_lista_page.dart';
import '../../features/cliente/presentation/show/cliente_adjunto_page.dart';
import '../../features/cliente/presentation/show/cliente_articulo_top_lista_page.dart';
import '../../features/cliente/presentation/show/cliente_contacto_edit_page.dart';
import '../../features/cliente/presentation/show/cliente_contacto_list_page.dart';
import '../../features/cliente/presentation/show/cliente_descuento_page.dart';
import '../../features/cliente/presentation/show/cliente_detalle_page.dart';
import '../../features/cliente/presentation/show/cliente_devolucion_detalle_page.dart';
import '../../features/cliente/presentation/show/cliente_devolucion_page.dart';
import '../../features/cliente/presentation/show/cliente_direccion_edit_page.dart';
import '../../features/cliente/presentation/show/cliente_direccion_list_page.dart';
import '../../features/cliente/presentation/show/cliente_direccion_seleccionar_pais_page.dart';
import '../../features/cliente/presentation/show/cliente_factura_pendiente_page.dart';
import '../../features/cliente/presentation/show/cliente_grupo_neto_page.dart';
import '../../features/cliente/presentation/show/cliente_pedidos_page.dart';
import '../../features/cliente/presentation/show/cliente_precio_neto_page.dart';
import '../../features/cliente/presentation/show/cliente_rappel_page.dart';
import '../../features/cliente/presentation/show/cliente_ventas_articulo_page.dart';
import '../../features/cliente/presentation/show/cliente_ventas_mes_page.dart';
import '../../features/cliente/presentation/show/cliente_visita_page.dart';
import '../../features/cliente/presentation/show/ultimos_precios/cliente_ultimos_precios_page.dart';
import '../../features/cliente_alrededor/presentation/clientes_alrededor_page.dart';
import '../../features/devoluciones/domain/devolucion.dart';
import '../../features/expediciones/presentation/expedicion_lista_page.dart';
import '../../features/notifications/detail/notification_detail_page.dart';
import '../../features/notifications/index/notification_list_page.dart';
import '../../features/pedido_venta/domain/pedido_local_param.dart';
import '../../features/pedido_venta/domain/pedido_venta_linea.dart';
import '../../features/pedido_venta/domain/seleccionar_cantidad_param.dart';
import '../../features/pedido_venta/presentation/edit/pedido_venta_edit_page.dart';
import '../../features/pedido_venta/presentation/edit/select_quantity_page.dart';
import '../../features/pedido_venta/presentation/index/pedido_venta_lista_page.dart';
import '../../features/pedido_venta/presentation/show/pedido_venta_detalle_page.dart';
import '../../features/settings/presentation/settings_page.dart';
import '../../features/usuario/application/usuario_notifier.dart';
import '../../features/usuario/domain/usuario.dart';
import '../../features/usuario/presentation/login/login_page.dart';
import '../../features/visitas/domain/visita_id_param.dart';
import '../../features/visitas/presentation/edit/visit_edit_page.dart';
import '../../features/visitas/presentation/index/visita_lista_page.dart';
import '../../features/visitas/presentation/show/visita_detalle_page.dart';
import '../application/log_service.dart';
import '../domain/pais.dart';

part 'app_auto_router.g.dart';
part 'app_auto_router.gr.dart';

@Riverpod(keepAlive: true)
// ignore: unsupported_provider_value
AppRouter appRouter(AppRouterRef ref) {
  final usuario = ref.watch(usuarioNotifierProvider);
  final router = AppRouter(usuario: usuario);
  ref.onDispose(router.dispose);
  return router;
}

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends RootStackRouter {
  AppRouter({super.navigatorKey, this.usuario});
  final Usuario? usuario;

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  late final List<AutoRouteGuard> guards = [
    AuthGuard(usuario),
  ];

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, path: '/', initial: true),
    AutoRoute(page: LoginRoute.page, path: '/login'),
    AutoRoute(page: ClienteListaRoute.page, path: '/cliente'),
    AutoRoute(page: ClientesAlrededorRoute.page, path: '/cliente/alrededor'),
    AutoRoute(page: ClienteDetalleRoute.page, path: '/cliente/:id'),
    AutoRoute(
        page: ClienteVentasMesRoute.page, path: '/cliente/:id/ventas-mes'),
    AutoRoute(
        page: ClienteVentasArticuloRoute.page,
        path: '/cliente/:id/ventas-articulo'),
    AutoRoute(
        page: ClientePagoPendienteRoute.page,
        path: '/cliente/:id/facturas_pendientes'),
    AutoRoute(
        page: ClienteArticulosTopListRoute.page,
        path: '/cliente/:id/top-articulos'),
    AutoRoute(page: ClienteAdjuntoRoute.page, path: '/cliente/:id/adjuntos'),
    AutoRoute(
        page: ClienteContactoListRoute.page, path: '/cliente/:id/contactos'),
    AutoRoute(
        page: ClienteContactoEditRoute.page,
        path: '/cliente/:id/contactos/:contactoId',
        fullscreenDialog: true),
    AutoRoute(
        page: ClienteDescuentoRoute.page, path: '/cliente/:id/descuentos'),
    AutoRoute(
        page: ClienteDireccionesListRoute.page,
        path: '/cliente/:id/direcciones'),
    AutoRoute(
        page: ClienteDireccionEditRoute.page,
        path: '/cliente/:id/direcciones/:direccionId',
        fullscreenDialog: true),
    AutoRoute(
        page: ClienteDireccionSeleccionarPaisRoute.page,
        path: '/cliente/:id/direcciones/:direccionId/pais'),
    AutoRoute(
        page: ClientePrecioNetoRoute.page, path: '/cliente/:id/precios-netos'),
    AutoRoute(
        page: ClienteGrupoNetoRoute.page, path: '/cliente/:id/grupos-netos'),
    AutoRoute(page: ClienteRappelRoute.page, path: '/cliente/:id/rappels'),
    AutoRoute(page: ClienteVisitasRoute.page, path: '/cliente/:id/visitas'),
    AutoRoute(page: ClientePedidosRoute.page, path: '/cliente/:id/pedidos'),
    AutoRoute(
        page: ClienteDevolucionRoute.page, path: '/cliente/:id/devoluciones'),
    AutoRoute(
        page: ClienteDevolucionDetalleRoute.page,
        path: '/cliente/:id/devoluciones/:devolucionId'),
    AutoRoute(
        page: ClienteUltimosPreciosRoute.page,
        path: '/cliente/:id/ultimos-precios'),
    AutoRoute(page: PedidoVentaListRoute.page, path: '/pedido'),
    AutoRoute(page: PedidoVentaDetalleRoute.page, path: '/pedido/:id'),
    AutoRoute(
        page: PedidoVentaEditRoute.page,
        path: '/pedido/edit',
        fullscreenDialog: true),
    AutoRoute(
        page: SeleccionarCantidadRoute.page,
        path: '/pedido/edit/seleccionar_cantidad'),
    AutoRoute(page: ExpedicionListRoute.page, path: '/pedido_expedicion'),
    AutoRoute(page: ArticuloListaRoute.page, path: '/articulo'),
    AutoRoute(page: ArticuloDetalleRoute.page, path: '/articulo/:id'),
    AutoRoute(
        page: ArticuloPedidoVentaRoute.page,
        path: '/articulo/:id/pedido-venta'),
    AutoRoute(
        page: ArticuloUltimosPreciosRoute.page,
        path: '/articulo/:id/ultimos-precios'),
    AutoRoute(
        page: ArticuloComponenteRoute.page, path: '/articulo/:id/componentes'),
    AutoRoute(
        page: ArticuloGrupoNetoRoute.page, path: '/articulo/:id/grupos-netos'),
    AutoRoute(
        page: ArticuloPrecioTarifaRoute.page,
        path: '/articulo/:id/precio-tarifa'),
    AutoRoute(
        page: ArticuloRecambioRoute.page, path: '/articulo/:id/recambios'),
    AutoRoute(
        page: ArticuloSustitutivoRoute.page,
        path: '/articulo/:id/sustitutivos'),
    AutoRoute(
        page: ArticuloVentasMesRoute.page, path: '/articulo/:id/ventas-mes'),
    AutoRoute(
        page: ArticuloVentasClienteRoute.page,
        path: '/articulo/:id/ventas-cliente'),
    AutoRoute(
        page: ArticuloDocumentoRoute.page, path: '/articulo/:id/documentos'),
    AutoRoute(page: VisitaListaRoute.page, path: '/visita'),
    AutoRoute(page: VisitaDetalleRoute.page, path: '/visita/:id'),
    AutoRoute(page: VisitaEditRoute.page, path: '/visita/edit'),
    AutoRoute(page: CatalogoListaRoute.page, path: '/catalogo'),
    AutoRoute(
        page: CatalogoPdfViewerRoute.page,
        path: '/catalogo/viewer',
        fullscreenDialog: true),
    AutoRoute(page: NotificationIndexRoute.page, path: '/notification'),
    AutoRoute(
      page: NotificationDetailRoute.page,
      path: '/notification/:id',
      fullscreenDialog: true,
    ),
    AutoRoute(page: SettingsRoute.page, path: '/settings'),
    RedirectRoute(path: '*', redirectTo: '/'),
  ];
}

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this.usuario);

  final Usuario? usuario;
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (usuario != null || resolver.route.name == LoginRoute.name) {
      resolver.next(true);
    } else {
      resolver.redirect(const LoginRoute());
    }
  }
}

class AutoRouteLogObserver extends AutoRouterObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      log.d('Route: [pushed] ${route.settings.name}');

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) =>
      log.d('Route: [replaced] ${newRoute?.settings.name}');

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      log.d('Route: [popped] ${route.settings.name}');

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      log.d('Route: [removed] ${route.settings.name}');

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) =>
      log.d('Route: [tab route visited]: ${route.name}');

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) =>
      log.d('Route: [tab route re-visited: ${route.name}');
}

// class RouteGuard extends AutoRedirectGuard {
//   final WidgetRef ref;
//   RouteGuard(this.ref) {
//     ref.listen<Usuario?>(usuarioNotifierProvider, (_, state) {
//       if (state == null) {
//         reevaluate();
//       } else {}
//     });
//   }

//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) {
//     final usuario = ref.read(usuarioNotifierProvider);
//     if (usuario != null) return resolver.next();
//     router.push(
//       LoginRoute(
//         onLoginCallback: (_) {
//           resolver.next();
//           router.removeLast();
//         },
//       ),
//     );
//   }

//   @override
//   Future<bool> canNavigate(RouteMatch route) async {
//     final usuario = ref.read(usuarioNotifierProvider);
//     if (usuario == null) {
//       return false;
//     }
//     return true;
//   }
// }
