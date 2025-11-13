import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../generated/l10n.dart';
import '../../../features/usuario/application/usuario_notifier.dart';
import '../../routing/app_auto_router.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'JBM Nikel Mobile',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(4),
                Consumer(
                  builder: (context, ref, _) {
                    final state = ref.watch(usuarioNotifierProvider);
                    return Text(state?.nombreUsuario ?? '');
                  },
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(MdiIcons.packageVariantClosed, size: 30),
            title: Text(S.of(context).commonWidgets_appDrawer_articulos),
            onTap: () => context.router.pushAndPopUntil(
              ArticuloListaRoute(isSearchArticuloForForm: false),
              predicate: (route) => false,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person, size: 30),
            title: Text(S.of(context).commonWidgets_appDrawer_clientes),
            onTap: () => context.router.pushAndPopUntil(
              ClienteListaRoute(isSearchClienteForFrom: false),
              predicate: (route) => false,
            ),
          ),
          ListTile(
            leading: Icon(MdiIcons.cartOutline, size: 30),
            title: Text(S.of(context).commonWidgets_appDrawer_pedidos),
            onTap: () => context.router.pushAndPopUntil(
              const PedidoVentaListRoute(),
              predicate: (route) => false,
            ),
          ),
          ListTile(
            leading: Icon(MdiIcons.truckFastOutline, size: 30),
            title: Text(S.of(context).commonWidgets_appDrawer_expediciones),
            onTap: () => context.router.pushAndPopUntil(
              const ExpedicionListRoute(),
              predicate: (route) => false,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.group, size: 30),
            title: Text(S.of(context).commonWidgets_appDrawer_visitas),
            onTap: () => context.router.pushAndPopUntil(
              const VisitaListaRoute(),
              predicate: (route) => false,
            ),
          ),

          ListTile(
            leading: const Icon(Icons.list, size: 30),
            title: Text(S.of(context).commonWidgets_appDrawer_catalogos),
            onTap: () => context.router.pushAndPopUntil(
              const CatalogoListaRoute(),
              predicate: (route) => false,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.notifications, size: 30),
            title: Text(S.of(context).notifications),
            onTap: () => context.router.pushAndPopUntil(
              NotificationIndexRoute(),
              predicate: (route) => false,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined, size: 30),
            title: Text(S.of(context).commonWidgets_appDrawer_ajustes),
            onTap: () => context.router.pushAndPopUntil(
              SettingsRoute(),
              predicate: (route) => false,
            ),
          ),
        ],
      ),
    );
  }
}
