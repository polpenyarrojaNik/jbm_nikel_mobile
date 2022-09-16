import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/features/cliente_alrededor/presentation/clientes_alrededor_page.dart';

import '../../features/app_initialization/presentation/splash_page.dart';
import '../../features/articulos/presentation/index/articulo_lista_page.dart';
import '../../features/articulos/presentation/show/articulo_componente_page.dart';
import '../../features/articulos/presentation/show/articulo_detalle_page.dart';
import '../../features/articulos/presentation/show/articulo_documento_page.dart';
import '../../features/articulos/presentation/show/articulo_grupos_netos_page.dart';
import '../../features/articulos/presentation/show/articulo_pedido_venta_page.dart';
import '../../features/articulos/presentation/show/articulo_recambio_page.dart';
import '../../features/articulos/presentation/show/articulo_sustitutivo_page.dart';
import '../../features/articulos/presentation/show/articulo_precio_tarifa_page.dart';
import '../../features/articulos/presentation/show/ultimos_precios/articulo_ultimos_precios_page.dart';
import '../../features/cliente/presentation/index/cliente_lista_page.dart';
import '../../features/cliente/presentation/show/cliente_articulo_top_lista_page.dart';
import '../../features/cliente/presentation/show/cliente_detalle_page.dart';
import '../../features/cliente/presentation/show/cliente_pago_pendiente_page.dart';
import '../../features/cliente/presentation/show/cliente_ventas_articulo_page.dart';
import '../../features/cliente/presentation/show/cliente_ventas_mes_page.dart';
import '../../features/pedido_venta/presentation/edit/pedido_venta_edit_page.dart';
import '../../features/pedido_venta/presentation/index/pedido_venta_lista_page.dart';
import '../../features/pedido_venta/presentation/show/pedido_venta_detalle_page.dart';
import '../../features/settings/presentation/setting/settings_page.dart';
import '../../features/usuario/application/usuario_notifier.dart';
import '../../features/usuario/domain/usuario.dart';
import '../../features/usuario/presentation/login/login_page.dart';
import '../../features/visitas/presentation/edit/visit_edit_page.dart';
import '../../features/visitas/presentation/index/visita_lista_page.dart';
import '../../features/visitas/presentation/show/visita_detalle_page.dart';
import 'not_found_screen.dart';

enum AppRoutes {
  splash,
  login,
  clienteindex,
  clienteshow,
  clientependingpayment,
  clientesalesmes,
  clientesalesarticulo,
  clientetoparticulos,
  clientetoparticulosshow,
  clientealrededor,
  clientealrededorshow,
  articuloindex,
  articuloshow,
  articulosalesorder,
  articuloultimoprecio,
  articulocomponente,
  articulogruponeto,
  articulopreciotarifa,
  articulorecambio,
  articulosustitutivo,
  articulodocumento,
  salesorderindex,
  salesordershow,
  salesorderedit,
  salesordernew,
  visitaindex,
  visitashow,
  visitaedit,
  visitanew,
  kpisindex,
  settings,
}

final routerNotifierProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier(ref);

  return GoRouter(
    debugLogDiagnostics: true,
    refreshListenable: router,
    redirect: router._redirectLogic,
    routes: router._routes,
    errorBuilder: (context, state) => const NotFoundScreen(),
    urlPathStrategy: UrlPathStrategy.path,
  );
});

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  RouterNotifier(this._ref) {
    _ref.listen<Usuario?>(
      usuarioNotifierProvider,
      (_, __) => notifyListeners(),
    );
  }

  String? _redirectLogic(GoRouterState state) {
    final usuario = _ref.read(usuarioNotifierProvider);

    final areWeInLoginPage = state.location == '/login';
    if (usuario == null) {
      return areWeInLoginPage ? null : '/login';
    }
    if (areWeInLoginPage) return '/';

    return null;
  }

  List<GoRoute> get _routes => [
        GoRoute(
          name: AppRoutes.splash.name,
          path: '/',
          builder: (context, state) => const SplashPage(),
        ),
        GoRoute(
          path: '/login',
          name: AppRoutes.login.name,
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          name: AppRoutes.clienteindex.name,
          path: '/clientes',
          builder: (context, state) => const ClienteListaPage(),
          routes: [
            GoRoute(
              path: 'alrededor',
              name: AppRoutes.clientealrededor.name,
              builder: (context, state) => const ClientesAlrededorPage(),
            ),
            GoRoute(
              name: AppRoutes.clienteshow.name,
              path: ':clienteId',
              pageBuilder: (context, state) {
                final clienteId = state.params['clienteId']!;
                return MaterialPage(
                  key: state.pageKey,
                  child: ClienteDetallePage(clienteId: clienteId),
                );
              },
              routes: [
                GoRoute(
                  name: AppRoutes.clientesalesmes.name,
                  path: 'sales-mes',
                  pageBuilder: (context, state) {
                    final clienteId = state.params['clienteId']!;
                    return MaterialPage(
                      key: state.pageKey,
                      child: ClienteVentasMonthPage(clienteId: clienteId),
                    );
                  },
                ),
                GoRoute(
                  name: AppRoutes.clientesalesarticulo.name,
                  path: 'sales-articulo',
                  pageBuilder: (context, state) {
                    final clienteId = state.params['clienteId']!;
                    return MaterialPage(
                      key: state.pageKey,
                      child: ClienteVentasArticuloPage(clienteId: clienteId),
                    );
                  },
                ),
                GoRoute(
                  name: AppRoutes.clientependingpayment.name,
                  path: 'pending-payments',
                  pageBuilder: (context, state) {
                    final clienteId = state.params['clienteId']!;
                    return MaterialPage(
                      key: state.pageKey,
                      child: ClientePagoPendientePage(clienteId: clienteId),
                    );
                  },
                ),
                GoRoute(
                  name: AppRoutes.clientetoparticulos.name,
                  path: 'top-articulos',
                  pageBuilder: (context, state) {
                    final clienteId = state.params['clienteId']!;
                    return MaterialPage(
                      key: state.pageKey,
                      child: ClienteArticulosTopListPage(clienteId: clienteId),
                    );
                  },
                  routes: [
                    GoRoute(
                      name: AppRoutes.clientetoparticulosshow.name,
                      path: ':articuloId',
                      pageBuilder: (context, state) {
                        final articuloId = state.params['articuloId']!;

                        return MaterialPage(
                          key: state.pageKey,
                          child: ArticuloDetallePage(
                            articuloId: articuloId,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          name: AppRoutes.salesorderindex.name,
          path: '/pedidos',
          builder: (context, state) => const PedidoVentaListPage(),
          routes: [
            GoRoute(
              name: AppRoutes.salesordernew.name,
              path: 'new',
              pageBuilder: (context, state) {
                return MaterialPage(
                  key: state.pageKey,
                  fullscreenDialog: true,
                  child: PedidoVentaEditPage(),
                );
              },
            ),
            GoRoute(
              name: AppRoutes.salesordershow.name,
              path: ':id',
              pageBuilder: (context, state) {
                final pedidoVentaId = state.params['id']!;
                return MaterialPage(
                  key: state.pageKey,
                  child: PedidoVentaDetallePage(pedidoVentaId: pedidoVentaId),
                );
              },
              routes: [
                GoRoute(
                  name: AppRoutes.salesorderedit.name,
                  path: 'edit',
                  pageBuilder: (context, state) {
                    final pedidoVentaId = state.params['id']!;

                    return MaterialPage(
                      key: state.pageKey,
                      fullscreenDialog: true,
                      child: PedidoVentaEditPage(pedidoVentaId: pedidoVentaId),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          name: AppRoutes.articuloindex.name,
          path: '/articulos',
          builder: (context, state) => const ArticuloListaPage(),
          routes: [
            GoRoute(
              name: AppRoutes.articuloshow.name,
              path: ':articuloId',
              pageBuilder: (context, state) {
                final articuloId = state.params['articuloId']!;
                return MaterialPage(
                  key: state.pageKey,
                  child: ArticuloDetallePage(articuloId: articuloId),
                );
              },
              routes: [
                GoRoute(
                  name: AppRoutes.articulosalesorder.name,
                  path: 'pedidosventa',
                  pageBuilder: (context, state) {
                    final articuloId = state.params['articuloId']!;
                    final description = state.extra as String;
                    return MaterialPage(
                      key: state.pageKey,
                      child: ArticuloPedidoVentaPage(
                          articuloId: articuloId, description: description),
                    );
                  },
                ),
                GoRoute(
                  name: AppRoutes.articuloultimoprecio.name,
                  path: 'ultimosprecios',
                  pageBuilder: (context, state) {
                    final articuloId = state.params['articuloId']!;
                    final description = state.extra as String;

                    return MaterialPage(
                      key: state.pageKey,
                      child: ArticuloUltimosPreciosPage(
                          articuloId: articuloId, description: description),
                    );
                  },
                ),
                GoRoute(
                  name: AppRoutes.articulocomponente.name,
                  path: 'componentes',
                  pageBuilder: (context, state) {
                    final articuloId = state.params['articuloId']!;
                    final description = state.extra as String;

                    return MaterialPage(
                      key: state.pageKey,
                      child: ArticuloComponentePage(
                          articuloId: articuloId, description: description),
                    );
                  },
                ),
                GoRoute(
                  name: AppRoutes.articulogruponeto.name,
                  path: 'gruposnetos',
                  pageBuilder: (context, state) {
                    final articuloId = state.params['articuloId']!;
                    final description = state.extra as String;

                    return MaterialPage(
                      key: state.pageKey,
                      child: ArticuloGrupoNetoPage(
                          articuloId: articuloId, description: description),
                    );
                  },
                ),
                GoRoute(
                  name: AppRoutes.articulopreciotarifa.name,
                  path: 'preciotarifa',
                  pageBuilder: (context, state) {
                    final articuloId = state.params['articuloId']!;
                    final description = state.extra as String;

                    return MaterialPage(
                      key: state.pageKey,
                      child: ArticuloPrecioTarifaPage(
                          articuloId: articuloId, description: description),
                    );
                  },
                ),
                GoRoute(
                  name: AppRoutes.articulorecambio.name,
                  path: 'recambios',
                  pageBuilder: (context, state) {
                    final articuloId = state.params['articuloId']!;
                    final description = state.extra as String;

                    return MaterialPage(
                      key: state.pageKey,
                      child: ArticuloRecambioPage(
                          articuloId: articuloId, description: description),
                    );
                  },
                ),
                GoRoute(
                  name: AppRoutes.articulosustitutivo.name,
                  path: 'sustitutivos',
                  pageBuilder: (context, state) {
                    final articuloId = state.params['articuloId']!;
                    final description = state.extra as String;

                    return MaterialPage(
                      key: state.pageKey,
                      child: ArticuloSustitutivoPage(
                          articuloId: articuloId, description: description),
                    );
                  },
                ),
                GoRoute(
                  name: AppRoutes.articulodocumento.name,
                  path: 'documentos',
                  pageBuilder: (context, state) {
                    final articuloId = state.params['articuloId']!;
                    final description = state.extra as String;

                    return MaterialPage(
                      key: state.pageKey,
                      child: ArticuloDocumentoPage(
                          articuloId: articuloId, description: description),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          name: AppRoutes.visitaindex.name,
          path: '/visita',
          builder: (context, state) => const VisitaListaPage(),
          routes: [
            GoRoute(
              name: AppRoutes.visitashow.name,
              path: ':visitaId',
              pageBuilder: (context, state) {
                final visitaId = state.params['id']!;
                return MaterialPage(
                  key: state.pageKey,
                  child: VisitaDetallePage(visitaId: visitaId),
                );
              },
            ),
            GoRoute(
              name: AppRoutes.visitanew.name,
              path: 'new',
              pageBuilder: (context, state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: VisitaEditPage(),
                );
              },
            ),
            GoRoute(
              name: AppRoutes.visitaedit.name,
              path: 'edit',
              pageBuilder: (context, state) {
                final visitaId = state.params['id']!;
                return MaterialPage(
                  key: state.pageKey,
                  child: VisitaEditPage(visitaId: visitaId),
                );
              },
            ),
          ],
        ),
        GoRoute(
          name: AppRoutes.settings.name,
          path: '/settings',
          builder: (context, state) => const SettingsPage(),
        ),
      ];
}
