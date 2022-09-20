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
            title: const Text('Artículos'),
            onTap: () => context.goNamed(AppRoutes.articuloindex.name),
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              size: 30,
            ),
            title: const Text('Clientes'),
            onTap: () => context.goNamed(AppRoutes.clienteindex.name),
          ),
          ListTile(
            leading: const Icon(
              MdiIcons.packageVariantClosed,
              size: 30,
            ),
            title: const Text('Pedidos'),
            onTap: () => context.goNamed(AppRoutes.salesorderindex.name),
          ),
          ListTile(
            enabled: false,
            leading: const Icon(
              MdiIcons.packageVariantClosed,
              size: 30,
            ),
            title: const Text('Visitas'),
            onTap: () => context.goNamed(AppRoutes.visitaindex.name),
          ),
          ListTile(
            enabled: false,
            leading: const Icon(
              MdiIcons.packageVariantClosed,
              size: 30,
            ),
            title: const Text('KPI'),
            onTap: () => context.goNamed(AppRoutes.articuloindex.name),
          ),
          ListTile(
            leading: const Icon(
              Icons.settings_outlined,
              size: 30,
            ),
            title: const Text('Settings'),
            onTap: () => context.goNamed(AppRoutes.settings.name),
          ),
        ],
      ),
    );
  }
}
