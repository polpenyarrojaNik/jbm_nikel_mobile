import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/auth/presentation/auth_controller.dart';
import 'package:jbm_nikel_mobile/src/features/customer/presentation/customer_list_page.dart';
import 'package:jbm_nikel_mobile/src/core/routing/not_found_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/presentation/show/sales_order_detail_page.dart';

import '../../features/articles/presentation/index/article_list_page.dart';
import '../../features/articles/presentation/show/article_detail_page.dart';
import '../../features/auth/presentation/login_page.dart';
import '../../features/sales_order/presentation/edit/sales_order_edit_page.dart';
import '../../features/sales_order/presentation/index/sales_order_list_page.dart';
import '../../features/settings/presentation/sync_page.dart';
import '../../features/splash/presentation/splash_page.dart';
import '../../features/visits/presentation/visit_list_page.dart';
import '../infrastructure/initial_db_repository.dart';

enum AppRoute {
  home,
  login,
  customerindex,
  articleindex,
  articleshow,
  salesorderindex,
  salesordershow,
  salesorderedit,
  salesordernew,
  visitindex,
  kpisindex,
  settings,
  splash,
}

final goRouterProvider = Provider((ref) {
  return GoRouter(
    debugLogDiagnostics: false,
    redirect: (state) => redirectLogic(state, ref),
    routes: [
      GoRoute(
        path: '/',
        name: AppRoute.home.name,
        redirect: (_) => '/home',
      ),
      GoRoute(
        name: AppRoute.salesorderindex.name,
        path: '/salesorder',
        builder: (context, state) => const SalesOrderListPage(),
        routes: [
          // GoRoute(
          //   name: AppRoute.photogearnew.name,
          //   path: 'new',
          //   pageBuilder: (context, state) {
          //     return MaterialPage(
          //       key: state.pageKey,
          //       fullscreenDialog: true,
          //       child: PhotoGearEditScreen(),
          //     );
          //   },
          // ),
          GoRoute(
            name: AppRoute.salesordershow.name,
            path: ':id',
            pageBuilder: (context, state) {
              final salesOrderId = state.params['id']!;
              return MaterialPage(
                key: state.pageKey,
                child: SalesOrderDetailPage(salesOrderId: salesOrderId),
              );
            },
            routes: [
              GoRoute(
                name: AppRoute.salesorderedit.name,
                path: 'edit',
                pageBuilder: (context, state) {
                  final salesOrderId = state.params['id']!;

                  return MaterialPage(
                    key: state.pageKey,
                    fullscreenDialog: true,
                    child: SalesOrderEditPage(salesOrderId: salesOrderId),
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
        name: AppRoute.customerindex.name,
        path: '/home',
        builder: (context, state) => const CustomerListPage(),
      ),
      GoRoute(
        name: AppRoute.articleindex.name,
        path: '/article',
        builder: (context, state) => const ArticleListPage(),
        routes: [
          GoRoute(
            name: AppRoute.articleshow.name,
            path: ':id',
            pageBuilder: (context, state) {
              final articleId = state.params['id']!;
              return MaterialPage(
                key: state.pageKey,
                child: ArticleDetailPage(articleId: articleId),
              );
            },
          ),
        ],
      ),
      GoRoute(
        name: AppRoute.visitindex.name,
        path: '/visit',
        builder: (context, state) => const VisitListPage(),
      ),
      GoRoute(
        name: AppRoute.splash.name,
        path: '/loading',
        builder: (context, state) => const SplashPage(),
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

String? redirectLogic(GoRouterState state, ProviderRef<GoRouter> ref) {
  final initalDbState = ref.watch(setInitialDbProvider);
  final authControllerState = ref.watch(authControllerProvider);

  return initalDbState.maybeWhen(
      orElse: () => authControllerState.maybeWhen(
          orElse: () => null,
          authenticating: () =>
              (state.location != '/loading') ? '/loading' : null,
          unauthenticated: () =>
              (state.location != '/login') ? '/login' : null),
      loading: () => (state.location != '/loading') ? '/loading' : null);
}
