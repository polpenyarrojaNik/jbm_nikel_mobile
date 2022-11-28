import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/presentation/index/articulo_lista_page.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/presentation/show/articulo_pedido_venta_page.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/presentation/show/articulo_precio_tarifa_page.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/presentation/show/articulo_sustitutivo_page.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/presentation/show/ultimos_precios/articulo_ultimos_precios_page.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/presentation/show/cliente_articulo_top_lista_page.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/presentation/show/cliente_detalle_page.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/presentation/show/cliente_factura_pendiente_page.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/select_quantity_page.dart';
import 'package:jbm_nikel_mobile/src/features/settings/presentation/settings_page.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/presentation/login/login_page.dart';

import '../../features/app_initialization/presentation/splash_page.dart';
import '../../features/articulos/presentation/show/articulo_componente_page.dart';
import '../../features/articulos/presentation/show/articulo_detalle_page.dart';
import '../../features/articulos/presentation/show/articulo_documento_page.dart';
import '../../features/articulos/presentation/show/articulo_grupos_netos_page.dart';
import '../../features/articulos/presentation/show/articulo_recambio_page.dart';
import '../../features/articulos/presentation/show/articulo_ventas_cliente_page.dart';
import '../../features/articulos/presentation/show/articulo_ventas_mes_page.dart';
import '../../features/cliente/presentation/index/cliente_lista_page.dart';
import '../../features/cliente/presentation/show/cliente_adjunto_page.dart';
import '../../features/cliente/presentation/show/cliente_contacto_page.dart';
import '../../features/cliente/presentation/show/cliente_descuento_page.dart';
import '../../features/cliente/presentation/show/cliente_direccion_page.dart';
import '../../features/cliente/presentation/show/cliente_grupo_neto_page.dart';
import '../../features/cliente/presentation/show/cliente_pedidos_page.dart';
import '../../features/cliente/presentation/show/cliente_precio_neto_page.dart';
import '../../features/cliente/presentation/show/cliente_rappel_page.dart';
import '../../features/cliente/presentation/show/cliente_ventas_articulo_page.dart';
import '../../features/cliente/presentation/show/cliente_ventas_mes_page.dart';
import '../../features/cliente/presentation/show/cliente_visita_page.dart';
import '../../features/cliente/presentation/show/ultimos_precios/cliente_ultimos_precios_page.dart';
import '../../features/cliente_alrededor/presentation/clientes_alrededor_page.dart';
import '../../features/pedido_venta/domain/seleccionar_cantidad_param.dart';
import '../../features/pedido_venta/presentation/edit/pedido_venta_edit_page.dart';
import '../../features/pedido_venta/presentation/index/pedido_venta_lista_page.dart';
import '../../features/pedido_venta/presentation/show/pedido_venta_detalle_page.dart';
import '../../features/visitas/presentation/edit/visit_edit_page.dart';
import '../../features/visitas/presentation/index/visita_lista_page.dart';
import '../../features/visitas/presentation/show/visita_detalle_page.dart';
import '../domain/entity_id_is_local_param.dart';

part 'app_auto_router.gr.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(
      page: SplashPage,
      path: '/splash',
    ),
    AutoRoute(
      page: LoginPage,
      path: '/login',
      initial: true,
    ),
    AutoRoute(
      page: ClienteListaPage,
      path: '/cliente',
    ),
    AutoRoute(page: ClientesAlrededorPage, path: '/cliente/alrededor'),
    AutoRoute(page: ClienteDetallePage, path: '/cliente/:id'),
    AutoRoute(page: ClienteVentasMesPage, path: '/cliente/:id/ventas-mes'),
    AutoRoute(
        page: ClienteVentasArticuloPage, path: '/cliente/:id/ventas-articulo'),
    AutoRoute(
        page: ClientePagoPendientePage,
        path: '/cliente/:id/facturas_pendientes'),
    AutoRoute(
        page: ClienteArticulosTopListPage, path: '/cliente/:id/top-articulos'),
    AutoRoute(page: ClienteAdjuntoPage, path: '/cliente/:id/adjuntos'),
    AutoRoute(page: ClienteContactoPage, path: '/cliente/:id/contactos'),
    AutoRoute(page: ClienteDescuentoPage, path: '/cliente/:id/descuentos'),
    AutoRoute(page: ClienteDireccionesPage, path: '/cliente/:id/direcciones'),
    AutoRoute(page: ClientePrecioNetoPage, path: '/cliente/:id/precios-netos'),
    AutoRoute(page: ClienteGrupoNetoPage, path: '/cliente/:id/grupos-netos'),
    AutoRoute(page: ClienteRappelPage, path: '/cliente/:id/rappels'),
    AutoRoute(page: ClienteVisitasPage, path: '/cliente/:id/visitas'),
    AutoRoute(page: ClientePedidosPage, path: '/cliente/:id/pedidos'),
    AutoRoute(
        page: ClienteUltimosPreciosPage, path: '/cliente/:id/ultimos-precios'),
    AutoRoute(page: PedidoVentaListPage, path: '/pedido'),
    AutoRoute(page: PedidoVentaDetallePage, path: '/pedido/:id'),
    AutoRoute(
        page: PedidoVentaEditPage,
        path: '/pedido/edit',
        fullscreenDialog: true),
    AutoRoute(
        page: SeleccionarCantidadPage,
        path: 'pedido/edit/seleccionar_cantidad'),
    AutoRoute(page: ArticuloListaPage, path: '/articulo'),
    AutoRoute(page: ArticuloDetallePage, path: '/articulo/:id'),
    AutoRoute(
        page: ArticuloPedidoVentaPage, path: '/articulo/:id/pedido-venta'),
    AutoRoute(
        page: ArticuloUltimosPreciosPage,
        path: '/articulo/:id/ultimos-precios'),
    AutoRoute(page: ArticuloComponentePage, path: '/articulo/:id/componentes'),
    AutoRoute(page: ArticuloGrupoNetoPage, path: '/articulo/:id/grupos-netos'),
    AutoRoute(
        page: ArticuloPrecioTarifaPage, path: '/articulo/:id/precio-tarifa'),
    AutoRoute(page: ArticuloRecambioPage, path: '/articulo/:id/recambios'),
    AutoRoute(
        page: ArticuloSustitutivoPage, path: '/articulo/:id/sustitutivos'),
    AutoRoute(page: ArticuloVentasMesPage, path: '/articulo/:id/ventas-mes'),
    AutoRoute(
        page: ArticuloVentasClientePage, path: '/articulo/:id/ventas-cliente'),
    AutoRoute(page: ArticuloDocumentoPage, path: '/articulo/:id/documentos'),
    AutoRoute(page: VisitaListaPage, path: '/visita'),
    AutoRoute(page: VisitaDetallePage, path: '/visita/:id'),
    AutoRoute(page: VisitaEditPage, path: '/visita/edit'),
    AutoRoute(page: SettingsPage, path: '/settings'),
  ],
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  // AppRouter({required super.routeGuard});
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
