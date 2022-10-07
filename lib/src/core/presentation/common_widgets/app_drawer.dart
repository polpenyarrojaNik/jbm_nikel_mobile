import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../generated/l10n.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceVariant,
            ),
            child: Text(
              'JBM Nikel Mobile',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: const Icon(
              MdiIcons.packageVariantClosed,
              size: 30,
            ),
            title: Text(S.of(context).commonWidgets_appDrawer_articulos),
            onTap: () => context.router.pushAndPopUntil(
                ArticuloListaRoute(isSearchArticuloForForm: false),
                predicate: (route) => false),
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              size: 30,
            ),
            title: Text(S.of(context).commonWidgets_appDrawer_clientes),
            onTap: () => context.router.pushAndPopUntil(
                ClienteListaRoute(isSearchClienteForFrom: false),
                predicate: (route) => false),
          ),
          ListTile(
            leading: const Icon(
              MdiIcons.cartOutline,
              size: 30,
            ),
            title: Text(S.of(context).commonWidgets_appDrawer_pedidos),
            onTap: () => context.router.pushAndPopUntil(
                const PedidoVentaListRoute(),
                predicate: (route) => false),
          ),
          ListTile(
            leading: const Icon(
              Icons.group,
              size: 30,
            ),
            title: Text(S.of(context).commonWidgets_appDrawer_visitas),
            onTap: () => context.router.pushAndPopUntil(
                const VisitaListaRoute(),
                predicate: (route) => false),
          ),
          // ListTile(
          //   enabled: false,
          //   leading: const Icon(
          //     MdiIcons.chartLine,
          //     size: 30,
          //   ),
          //   title: Text(S.of(context).commonWidgets_appDrawer_kpi),
          // onTap: () => context.goNamed(AppRoutes.articuloindex.name),
          // ),
          ListTile(
            leading: const Icon(
              Icons.settings_outlined,
              size: 30,
            ),
            title: Text(S.of(context).commonWidgets_appDrawer_ajustes),
            onTap: () => context.router.pushAndPopUntil(const SettingsRoute(),
                predicate: (route) => false),
          ),
        ],
      ),
    );
  }
}
