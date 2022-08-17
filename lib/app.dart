import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/generated/l10n.dart';
import 'package:jbm_nikel_mobile/src/inital_db/infrastructure/initial_db_repository.dart';
import 'src/core/presentation/theme/custom_theme.dart';
import 'src/core/routing/app_router.dart';
import 'package:go_router/go_router.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider); // I like this one better
    ref.listen<AsyncValue>(
      setInitialDbProvider,
      (_, state) => state.when(
          data: (_) {
            print('Db file get it Succcessfuly');
            context.goNamed(AppRoute.splash.name);
          },
          error: (_, __) => print('Db file get it failed: $_'),
          loading: () {
            print('Loading');
            context.goNamed(AppRoute.splash.name);
          }),
    );
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
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
      routeInformationProvider: goRouter.routeInformationProvider,
    );
  }
}
