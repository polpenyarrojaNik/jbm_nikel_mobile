// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../../sales_order/presentation/sales_order_list_page.dart' as _i4;
import '../../../splash/presentation/splash_page.dart' as _i1;
import '../../../sync/presentation/sync_page.dart' as _i3;
import '../home_page.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    SyncRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SyncPage());
    },
    SalesOrderListRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SalesOrderListPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashRoute.name, path: '/splash-page'),
        _i5.RouteConfig(HomeRoute.name, path: '/'),
        _i5.RouteConfig(SyncRoute.name, path: '/sync'),
        _i5.RouteConfig(SalesOrderListRoute.name, path: '/sales-order-list')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash-page');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.SyncPage]
class SyncRoute extends _i5.PageRouteInfo<void> {
  const SyncRoute() : super(SyncRoute.name, path: '/sync');

  static const String name = 'SyncRoute';
}

/// generated route for
/// [_i4.SalesOrderListPage]
class SalesOrderListRoute extends _i5.PageRouteInfo<void> {
  const SalesOrderListRoute()
      : super(SalesOrderListRoute.name, path: '/sales-order-list');

  static const String name = 'SalesOrderListRoute';
}
