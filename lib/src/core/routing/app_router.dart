import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/customer/presentation/customer_page.dart';
import 'package:jbm_nikel_mobile/src/core/routing/not_found_screen.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/presentation/sales_order_list_page.dart';
import 'package:jbm_nikel_mobile/src/splash/presentation/splash_page.dart';
import 'package:jbm_nikel_mobile/src/sync/presentation/sync_page.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
  homeindex,
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
    // refreshListenable: ref
    //     .watch(setInitialDbProvider)
    //     .when(data: (_) {}, error: (_, __) {}, loading: () {}),
    // redirect: (state) => redirectLogic(state, ref),
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
        path: '/sync',
        builder: (context, state) => const SettingsPage(),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
});

String? redirectLogic(GoRouterState state, ProviderRef<GoRouter> ref) {
  //  ref.watch(setInitialDbProvider).when(
  //     data: (_) => '/',
  //     error: (_, __) => '/',
  //     loading: () => (state.location == '/loading') ? '/loading' : null);
}
