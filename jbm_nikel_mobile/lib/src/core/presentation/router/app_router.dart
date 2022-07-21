import 'package:auto_route/auto_route.dart';
import 'package:jbm_nikel_mobile/src/sales_order/presentation/sales_order_list_page.dart';
import 'package:jbm_nikel_mobile/src/sync/presentation/sync_page.dart';

import '../../../splash/presentation/splash_page.dart';
import '../home_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(
      page: SplashPage,
      // initial: true
    ),
    MaterialRoute(page: HomePage, path: '/', initial: true),
    MaterialRoute(page: SyncPage, path: '/sync'),
    MaterialRoute(page: SalesOrderListPage, path: '/sales-order-list'),
    // MaterialRoute(page: ProjectHourDetailPage, path: '/project_hour_detail'),
    // MaterialRoute(
    //     page: ProjectHourCreatePage,
    //     path: '/project_hour_create',
    //     fullscreenDialog: true),
    // MaterialRoute(
    //     page: ProjectListPage, path: '/project_list', fullscreenDialog: true),
    // MaterialRoute(page: SignInPage, path: '/sign-in'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
