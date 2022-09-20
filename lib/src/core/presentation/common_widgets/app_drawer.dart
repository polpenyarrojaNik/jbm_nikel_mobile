import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../generated/l10n.dart';
import '../../routing/app_router.dart';

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
            onTap: () => context.goNamed(AppRoutes.articuloindex.name),
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              size: 30,
            ),
            title: Text(S.of(context).commonWidgets_appDrawer_clientes),
            onTap: () => context.goNamed(AppRoutes.clienteindex.name),
          ),
          ListTile(
            leading: const Icon(
              MdiIcons.cartOutline,
              size: 30,
            ),
            title: Text(S.of(context).commonWidgets_appDrawer_pedidos),
            onTap: () => context.goNamed(AppRoutes.salesorderindex.name),
          ),
          ListTile(
            leading: const Icon(
              Icons.group,
              size: 30,
            ),
            title: Text(S.of(context).commonWidgets_appDrawer_visitas),
            onTap: () => context.goNamed(AppRoutes.visitaindex.name),
          ),
          ListTile(
            enabled: false,
            leading: const Icon(
              MdiIcons.chartLine,
              size: 30,
            ),
            title: Text(S.of(context).commonWidgets_appDrawer_kpi),
            onTap: () => context.goNamed(AppRoutes.articuloindex.name),
          ),
          ListTile(
            leading: const Icon(
              Icons.settings_outlined,
              size: 30,
            ),
            title: Text(S.of(context).commonWidgets_appDrawer_ajustes),
            onTap: () => context.goNamed(AppRoutes.settings.name),
          ),
        ],
      ),
    );
  }
}
