import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/generated/l10n.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/router/app_router.gr.dart';
import 'package:jbm_nikel_mobile/src/core/shared/providers.dart';

import 'src/core/presentation/router/app_router.gr.dart';
import 'src/core/presentation/theme/custom_theme.dart';
import 'src/inital_db/infrastructure/initial_db_repository.dart';

final initializationProvider = FutureProvider<void>((ref) async {
  await dotenv.load();

  // final authNotifier = ref.read(authNotifierProvider.notifier);
  // await authNotifier.checkAndUpdateAuthStatus();
  ref.read(dioProvider)
    ..options = BaseOptions(
      validateStatus: (status) =>
          status != null && status >= 200 && status < 400,
    );
  //..interceptors.add(
  //   ref.read(authInterceptorProvider),
  // );
});
final appRouter = AppRouter();

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(initializationProvider, (_, __) {});

    ref.watch(initialDBRepositoryProvider).when(
        data: (_) {
          print('Db file get it Succcessfuly');
          appRouter.pushAndPopUntil(const HomeRoute(),
              predicate: (route) => false);
        },
        error: (_, __) {
          print('Db file get it failed: $_');
          appRouter.pushAndPopUntil(const HomeRoute(),
              predicate: (route) => false);
        },
        loading: () => appRouter.pushAndPopUntil(const SplashRoute(),
            predicate: (route) => false));

    return MaterialApp.router(
      title: 'JBM Mobile',
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
