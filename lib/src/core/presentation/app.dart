import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jbm_nikel_mobile/generated/l10n.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/infrastructure/usuario_dio_interceptor.dart';

import '../routing/app_router.dart';
import 'theme/custom_theme.dart';

final dioProvider = Provider((ref) => Dio());
final dioForAuthProvider = Provider((ref) => Dio());
final flutterSecureStorage = Provider((ref) => const FlutterSecureStorage());

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(dioProvider)
      ..options = BaseOptions(
        validateStatus: (status) =>
            status != null && status >= 200 && status < 400,
      )
      ..interceptors.add(
        ref.read(usuarioDioInterceptorProvider),
      );

    final router = ref.watch(routerNotifierProvider); // I like this one better

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
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
