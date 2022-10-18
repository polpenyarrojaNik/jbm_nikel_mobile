import 'package:dio/dio.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:jbm_nikel_mobile/generated/l10n.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/infrastructure/usuario_dio_interceptor.dart';

import '../../features/usuario/application/usuario_notifier.dart';
import '../../features/usuario/domain/usuario.dart';
import '../routing/app_auto_router.dart';
import 'theme/custom_theme.dart';

final dioProvider = Provider((ref) => Dio());
final dioForAuthProvider = Provider((ref) => Dio());
final flutterSecureStorage = Provider((ref) => const FlutterSecureStorage());
const articuloFechaUltimaSyncKey = 'ARTICULO_ULTIMA_SYNC';
const clienteFechaUltimaSyncKey = 'CLIENTE_ULTIMA_SYNC';
const pedidoVentaFechaUltimaSyncKey = 'PEDIDO_ULTIMA_SYNC';
const visitaFechaUltimaSyncKey = 'VISITA_ULTIMA_SYNC';

class App extends ConsumerWidget {
  App({super.key});

  final settings = ThemeSettings(
    sourceColor: const Color(0xFF0D6E00),
    themeMode: ThemeMode.system,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = AppRouter();

    ref.read(dioProvider)
      ..options = BaseOptions(
        validateStatus: (status) =>
            status != null && status >= 200 && status < 400,
      )
      ..interceptors.add(
        ref.read(usuarioDioInterceptorProvider),
      );

    ref.listen<Usuario?>(usuarioNotifierProvider, (_, state) {
      if (state == null) {
        appRouter.pushAndPopUntil(const LoginRoute(),
            predicate: (route) => false);
      } else {
        appRouter.pushAndPopUntil(const SplashRoute(),
            predicate: (route) => false);
      }
    });

    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        CustomTheme theme = CustomTheme(
          lightDynamic: lightDynamic,
          darkDynamic: darkDynamic,
          settings: settings,
        );

        return MaterialApp.router(
          title: 'JBM Nikel Mobile',
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            FormBuilderLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          theme: theme.light(settings.sourceColor),
          darkTheme: theme.dark(settings.sourceColor),
          themeMode: theme.themeMode(),
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
        );
      },
    );
  }
}
