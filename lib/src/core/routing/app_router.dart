import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/articles/presentation/show/article_last_price_page.dart';
import 'package:jbm_nikel_mobile/src/features/auth/presentation/auth_controller.dart';
import 'package:jbm_nikel_mobile/src/core/routing/not_found_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/features/customer/presentation/show/customer_top_articles_list_page.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/presentation/show/sales_order_detail_page.dart';

import '../../features/articles/presentation/index/article_list_page.dart';
import '../../features/articles/presentation/show/article_detail_page.dart';
import '../../features/articles/presentation/show/article_sales_order_page.dart';
import '../../features/auth/presentation/login_page.dart';
import '../../features/customer/presentation/index/customer_list_page.dart';
import '../../features/customer/presentation/show/customer_detail_page.dart';
import '../../features/customer/presentation/show/customer_pending_payment_page.dart';
import '../../features/customer/presentation/show/customer_sales_article_page.dart';
import '../../features/customer/presentation/show/customer_sales_month_page.dart';
import '../../features/customer/presentation/show/customer_stock_b2b_page.dart';
import '../../features/sales_order/presentation/edit/sales_order_edit_page.dart';
import '../../features/sales_order/presentation/index/sales_order_list_page.dart';
import '../../features/settings/presentation/sync_page.dart';
import '../../features/splash/presentation/splash_page.dart';
import '../../features/visits/presentation/edit/visit_edit_page.dart';
import '../../features/visits/presentation/index/visit_list_page.dart';
import '../../features/visits/presentation/show/visit_detail_page.dart';
import '../infrastructure/initial_db_repository.dart';

enum AppRoute {
  home,
  login,
  customerindex,
  customershow,
  customerpendingpayment,
  customersalesmonth,
  customersalesarticle,
  customerstockb2b,
  customertoparticles,
  customertoparticlesshow,
  articleindex,
  articleshow,
  articlesalesorder,
  articlereturns,
  articlelastprice,
  articlestats,
  salesorderindex,
  salesordershow,
  salesorderedit,
  salesordernew,
  visitindex,
  visitshow,
  visitedit,
  visitnew,
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
          GoRoute(
            name: AppRoute.salesordernew.name,
            path: 'new',
            pageBuilder: (context, state) {
              return MaterialPage(
                key: state.pageKey,
                fullscreenDialog: true,
                child: SalesOrderEditPage(),
              );
            },
          ),
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
        routes: [
          GoRoute(
            name: AppRoute.customershow.name,
            path: ':customerId',
            pageBuilder: (context, state) {
              final customerId = state.params['customerId']!;
              return MaterialPage(
                key: state.pageKey,
                child: CustomerDetailPage(customerId: customerId),
              );
            },
            routes: [
              GoRoute(
                name: AppRoute.customersalesmonth.name,
                path: 'sales-month',
                pageBuilder: (context, state) {
                  final customerId = state.params['customerId']!;
                  return MaterialPage(
                    key: state.pageKey,
                    child: CustomerSalesMonthPage(customerId: customerId),
                  );
                },
              ),
              GoRoute(
                name: AppRoute.customersalesarticle.name,
                path: 'sales-article',
                pageBuilder: (context, state) {
                  final customerId = state.params['customerId']!;
                  return MaterialPage(
                    key: state.pageKey,
                    child: CustomerSalesArticlePage(customerId: customerId),
                  );
                },
              ),
              GoRoute(
                name: AppRoute.customerpendingpayment.name,
                path: 'pending-payments',
                pageBuilder: (context, state) {
                  final customerId = state.params['customerId']!;
                  return MaterialPage(
                    key: state.pageKey,
                    child: CustomerPendingPaymentPage(customerId: customerId),
                  );
                },
              ),
              GoRoute(
                name: AppRoute.customerstockb2b.name,
                path: 'stockb2b',
                pageBuilder: (context, state) {
                  final customerId = state.params['customerId']!;
                  return MaterialPage(
                    key: state.pageKey,
                    child: CustomerStockB2BPage(customerId: customerId),
                  );
                },
              ),
              GoRoute(
                  name: AppRoute.customertoparticles.name,
                  path: 'top-articles',
                  pageBuilder: (context, state) {
                    final customerId = state.params['customerId']!;
                    return MaterialPage(
                      key: state.pageKey,
                      child:
                          CustomerTopArticlesListPage(customerId: customerId),
                    );
                  },
                  routes: [
                    GoRoute(
                      name: AppRoute.customertoparticlesshow.name,
                      path: ':articleId',
                      pageBuilder: (context, state) {
                        final articleId = state.params['articleId']!;

                        return MaterialPage(
                          key: state.pageKey,
                          child: ArticleDetailPage(
                            articleId: articleId,
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
        name: AppRoute.articleindex.name,
        path: '/article',
        builder: (context, state) => const ArticleListPage(),
        routes: [
          GoRoute(
            name: AppRoute.articleshow.name,
            path: ':articleId',
            pageBuilder: (context, state) {
              final articleId = state.params['articleId']!;
              return MaterialPage(
                key: state.pageKey,
                child: ArticleDetailPage(articleId: articleId),
              );
            },
            routes: [
              GoRoute(
                name: AppRoute.articlesalesorder.name,
                path: 'salesorder',
                pageBuilder: (context, state) {
                  final articleId = state.params['articleId']!;
                  return MaterialPage(
                    key: state.pageKey,
                    child: ArticleSalesOrderPage(articleId: articleId),
                  );
                },
              ),
              GoRoute(
                name: AppRoute.articlelastprice.name,
                path: 'lastprice',
                pageBuilder: (context, state) {
                  final articleId = state.params['articleId']!;
                  return MaterialPage(
                    key: state.pageKey,
                    child: ArticleLastPricePage(articleId: articleId),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        name: AppRoute.visitindex.name,
        path: '/visit',
        builder: (context, state) => const VisitListPage(),
        routes: [
          GoRoute(
            name: AppRoute.visitshow.name,
            path: ':id',
            pageBuilder: (context, state) {
              final visitId = state.params['id']!;
              return MaterialPage(
                key: state.pageKey,
                child: VisitDetailPage(visitId: visitId),
              );
            },
          ),
          GoRoute(
            name: AppRoute.visitnew.name,
            path: 'new',
            pageBuilder: (context, state) {
              return MaterialPage(
                key: state.pageKey,
                child: VisitEditPage(),
              );
            },
          ),
          GoRoute(
            name: AppRoute.visitedit.name,
            path: 'edit',
            pageBuilder: (context, state) {
              final visitId = state.params['id']!;
              return MaterialPage(
                key: state.pageKey,
                child: VisitEditPage(visitId: visitId),
              );
            },
          ),
        ],
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
          authenticating: () => (state.location != '/login') ? '/login' : null,
          checkingStatus: () =>
              (state.location != '/loading') ? '/loading' : null,
          failure: (e) => (state.location != '/login') ? '/login' : null,
          unauthenticated: () =>
              (state.location != '/login') ? '/login' : null),
      loading: () => (state.location != '/loading') ? '/loading' : null);
}
