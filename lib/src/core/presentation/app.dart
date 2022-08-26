import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/generated/l10n.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/initial_db_repository.dart';
import 'theme/custom_theme.dart';
import '../routing/app_router.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialDbState = ref.watch(setInitialDbProvider);
    final goRouter = ref.watch(goRouterProvider); // I like this one better

    initialDbState.maybeWhen(
        orElse: () => null,
        data: (_) => print('Initial db copied successfully'),
        error: (_, __) => print('Error copied inital db: $_'));

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
