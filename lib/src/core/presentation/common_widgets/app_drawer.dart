import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../routing/app_router.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Text('JBM Nikel'),
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              size: 30,
            ),
            title: const Text('Clientes'),
            onTap: () => context.goNamed(AppRoute.customerindex.name),
          ),
          ListTile(
            leading: const Icon(
              MdiIcons.packageVariantClosed,
              size: 30,
            ),
            title: const Text('Artículos'),
            onTap: () => context.goNamed(AppRoute.articleindex.name),
          ),
          ListTile(
            leading: const Icon(
              MdiIcons.packageVariantClosed,
              size: 30,
            ),
            title: const Text('Pedidos'),
            onTap: () => context.goNamed(AppRoute.salesorderindex.name),
          ),
          ListTile(
            leading: const Icon(
              MdiIcons.packageVariantClosed,
              size: 30,
            ),
            title: const Text('Visitas'),
            onTap: () => context.goNamed(AppRoute.visitindex.name),
          ),
          ListTile(
            leading: const Icon(
              MdiIcons.packageVariantClosed,
              size: 30,
            ),
            title: const Text('KPI'),
            onTap: () => context.goNamed(AppRoute.articleindex.name),
          ),
          ListTile(
            leading: const Icon(
              Icons.settings_outlined,
              size: 30,
            ),
            title: const Text('Settings'),
            onTap: () => context.goNamed(AppRoute.settings.name),
          ),
        ],
      ),
    );
  }
}
