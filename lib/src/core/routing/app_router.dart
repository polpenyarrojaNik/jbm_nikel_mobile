import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/auth/presentation/auth_controller.dart';
import 'package:jbm_nikel_mobile/src/features/customer/presentation/customer_page.dart';
import 'package:jbm_nikel_mobile/src/core/routing/not_found_screen.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/presentation/sales_order_list_page.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/login_page.dart';
import '../../features/settings/presentation/sync_page.dart';
import '../../features/splash/presentation/splash_page.dart';
import '../infrastructure/initial_db_repository.dart';

enum AppRoute {
  home,
  login,
  customerindex,
  articleindex,
  salesorderindex,
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
          // GoRoute(
          //   name: AppRoute.photogearshow.name,
          //   path: ':guid',
          //   pageBuilder: (context, state) {
          //     final photoGearGuid = state.params['guid']!;

          //     return MaterialPage(
          //       key: state.pageKey,
          //       child: PhotoGearShowScreen(photoGearGuid: photoGearGuid),
          //     );
          //   },
          //   routes: [
          //     GoRoute(
          //       name: AppRoute.photogearedit.name,
          //       path: 'edit',
          //       pageBuilder: (context, state) {
          //         final photoGearGuid = state.params['guid']!;

          //         return MaterialPage(
          //           key: state.pageKey,
          //           fullscreenDialog: true,
          //           child: PhotoGearEditScreen(photoGearGuid: photoGearGuid),
          //         );
          //       },
          //     ),
          //   ],
          // ),
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
        builder: (context, state) => const CustomerPage(),
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
