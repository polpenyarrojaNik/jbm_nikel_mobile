// ignore_for_file: avoid-commented-out-code

import 'package:dio/dio.dart';
import 'package:flutter/material.dart' as legacy_material;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:material_ui/material_ui.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../../../generated/l10n.dart';
import '../../features/usuario/infrastructure/usuario_dio_interceptor.dart';
import '../routing/app_auto_router.dart';
import 'theme/app_theme.dart';

final dioProvider = Provider((ref) => Dio());
final dioForAuthProvider = Provider((ref) => Dio());
final flutterSecureStorage = Provider((ref) => const FlutterSecureStorage());
const kArticuloFechaUltimaSyncKey = 'ARTICULO_ULTIMA_SYNC';
const kClienteFechaUltimaSyncKey = 'CLIENTE_ULTIMA_SYNC';
const kPedidoVentaFechaUltimaSyncKey = 'PEDIDO_ULTIMA_SYNC';
const kVisitaFechaUltimaSyncKey = 'VISITA_ULTIMA_SYNC';
const kDbSchemaVersionKey = 'DB_SCHEMA_VERSION';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);

    ref.read(dioProvider)
      ..options = BaseOptions(
        validateStatus: (status) =>
            status != null && status >= 200 && status < 400,
      )
      ..interceptors.add(ref.read(usuarioDioInterceptorProvider));

    return MaterialApp.router(
      title: 'JBM Nikel Mobile',
      localizationsDelegates: [
        S.delegate,
        ...GlobalMaterialLocalizations.delegates,
        FormBuilderLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme(Brightness.light),
      darkTheme: AppTheme.theme(Brightness.dark),
      themeMode: ThemeMode.system,
      // Several dependencies (dropdown_search, flutter_typeahead,
      // flutter_colorpicker, signature, syncfusion_flutter_*, mobile_scanner,
      // ...) still build widgets against package:flutter/material.dart. This
      // bridges ThemeData/MaterialLocalizations so those legacy widgets keep
      // resolving our material_ui theme correctly. MaterialUiCompatibilityBridge
      // is intentionally marked deprecated by the Flutter team to discourage
      // permanent reliance on it, but it remains the only bridge available
      // until the dependencies above ship a material_ui-based implementation.
      //
      // The bridge only covers Theme/Localizations, not an actual Material
      // ancestor: any of the above packages' own widgets (e.g. InkWell,
      // ListTile) that assume one already exists above them (rather than
      // creating their own, as buttons/dialogs typically do) will still
      // crash with "No Material widget found" — we hit this with
      // dropdown_search's field and flutter_typeahead's suggestion chips.
      // A transparent legacy Material here is a blanket safety net for any
      // such widget embedded directly in the tree (e.g. SfDataGrid cells);
      // it does NOT cover our own material_ui widgets rendered inside one
      // of these packages' own overlays/popups (a different subtree) — those
      // still need a local fix, as done in
      // app_form_builder_searchable_dropdown.dart and
      // custom_form_builder_type_ahead.dart.
      // ignore: deprecated_member_use
      builder: (context, child) => MaterialUiCompatibilityBridge(
        // El bridge tampoco mapea inputDecorationTheme, asi que los campos de
        // esos paquetes (dropdown_search, flutter_typeahead, ...) se pintaban
        // con los defaults legacy — sin relleno y con borde underline — en vez
        // de con el fondo del resto de campos del formulario.
        child: Builder(
          builder: (context) => legacy_material.Theme(
            data: legacy_material.Theme.of(context).copyWith(
              inputDecorationTheme: AppTheme.legacyInputDecorationTheme(
                legacy_material.Theme.of(context).colorScheme,
              ),
            ),
            child: legacy_material.Material(
              type: legacy_material.MaterialType.transparency,
              child: child!,
            ),
          ),
        ),
      ),
      routerConfig: appRouter.config(
        navigatorObservers: () => [
          AutoRouteLogObserver(),
          SentryNavigatorObserver(),
        ],
      ),
    );
  }
}
