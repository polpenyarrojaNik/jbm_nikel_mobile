import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/routing/not_found_screen.dart';
import 'package:jbm_nikel_mobile/src/features/auth/infrastructure/auth_repository.dart';

import '../../features/articulos/presentation/index/articulo_lista_page.dart';
import '../../features/articulos/presentation/show/articulo_detalle_page.dart';
import '../../features/articulos/presentation/show/articulo_pedido_venta_page.dart';
import '../../features/articulos/presentation/show/articulo_ultimos_precios_page.dart';
import '../../features/auth/presentation/login_page.dart';
import '../../features/cliente/presentation/index/cliente_lista_page.dart';
import '../../features/cliente/presentation/show/cliente_articulo_top_lista_page.dart';
import '../../features/cliente/presentation/show/cliente_detalle_page.dart';
import '../../features/cliente/presentation/show/cliente_pago_pendiente_page.dart';
import '../../features/cliente/presentation/show/cliente_ventas_articulo_page.dart';
import '../../features/cliente/presentation/show/cliente_ventas_mes_page.dart';
import '../../features/pedido_venta/presentation/edit/pedido_venta_edit_page.dart';
import '../../features/pedido_venta/presentation/index/pedido_venta_lista_page.dart';
import '../../features/pedido_venta/presentation/show/pedido_venta_detalle_page.dart';
import '../../features/settings/presentation/sync_page.dart';
import '../../features/splash/presentation/splash_page.dart';
import '../../features/visitas/presentation/edit/visit_edit_page.dart';
import '../../features/visitas/presentation/index/visita_lista_page.dart';
import '../../features/visitas/presentation/show/visita_detalle_page.dart';

enum AppRoute {
  home,
  login,
  clienteindex,
  clienteshow,
  clientependingpayment,
  clientesalesmes,
  clientesalesarticulo,
  clientestockb2b,
  clientetoparticulos,
  clientetoparticulosshow,
  articuloindex,
  articuloshow,
  articulosalesorder,
  articuloreturns,
  articulolastprecio,
  articulostats,
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
  splash,
}

final goRouterProvider = Provider((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return GoRouter(
    debugLogDiagnostics: true,
    urlPathStrategy: UrlPathStrategy.path,
    refreshListenable: GoRouterRefreshStream(authRepository.authStateChanges()),
    redirect: (state) {
      final isLoggedIn = authRepository.currentUser != null;
      if (isLoggedIn) {
        if (state.location == '/login') {
          return state.namedLocation(AppRoute.clienteindex.name);
        }
      } else {
        if (state.location != '/login') {
          return state.namedLocation(AppRoute.login.name);
        }
      }
      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        name: AppRoute.home.name,
        redirect: (state) => state.namedLocation(AppRoute.splash.name),
      ),
      GoRoute(
        name: AppRoute.splash.name,
        path: '/splash',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        name: AppRoute.clienteindex.name,
        path: '/clientes',
        builder: (context, state) => const ClienteListaPage(),
        routes: [
          GoRoute(
            name: AppRoute.clienteshow.name,
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
                name: AppRoute.clientesalesmes.name,
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
                name: AppRoute.clientesalesarticulo.name,
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
                name: AppRoute.clientependingpayment.name,
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
                  name: AppRoute.clientetoparticulos.name,
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
                      name: AppRoute.clientetoparticulosshow.name,
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
                  ]),
            ],
          ),
        ],
      ),
      GoRoute(
        name: AppRoute.salesorderindex.name,
        path: '/pedidos',
        builder: (context, state) => const PedidoVentaListPage(),
        routes: [
          GoRoute(
            name: AppRoute.salesordernew.name,
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
            name: AppRoute.salesordershow.name,
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
                name: AppRoute.salesorderedit.name,
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
        path: '/login',
        name: AppRoute.login.name,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        name: AppRoute.articuloindex.name,
        path: '/articulos',
        builder: (context, state) => const ArticuloListaPage(),
        routes: [
          GoRoute(
            name: AppRoute.articuloshow.name,
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
                name: AppRoute.articulosalesorder.name,
                path: 'salesorder',
                pageBuilder: (context, state) {
                  final articuloId = state.params['articuloId']!;
                  return MaterialPage(
                    key: state.pageKey,
                    child: ArticuloPedidoVentaPage(articuloId: articuloId),
                  );
                },
              ),
              GoRoute(
                name: AppRoute.articulolastprecio.name,
                path: 'lastprecio',
                pageBuilder: (context, state) {
                  final articuloId = state.params['articuloId']!;
                  return MaterialPage(
                    key: state.pageKey,
                    child: ArticuloUltimosPreciosPage(articuloId: articuloId),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        name: AppRoute.visitaindex.name,
        path: '/visita',
        builder: (context, state) => const VisitaListaPage(),
        routes: [
          GoRoute(
            name: AppRoute.visitashow.name,
            path: ':id',
            pageBuilder: (context, state) {
              final visitaId = state.params['id']!;
              return MaterialPage(
                key: state.pageKey,
                child: VisitaDetallePage(visitaId: visitaId),
              );
            },
          ),
          GoRoute(
            name: AppRoute.visitanew.name,
            path: 'new',
            pageBuilder: (context, state) {
              return MaterialPage(
                key: state.pageKey,
                child: VisitaEditPage(),
              );
            },
          ),
          GoRoute(
            name: AppRoute.visitaedit.name,
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
        name: AppRoute.settings.name,
        path: '/settings',
        builder: (context, state) => const SettingsPage(),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
});
