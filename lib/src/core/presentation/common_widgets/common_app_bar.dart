import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../features/settings/infrastructure/settings_repository.dart';
import '../../../features/usuario/application/usuario_notifier.dart';
import 'icon_menu_badge.dart';

class CommonAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    required this.titleText,
    this.scaffoldKey,
    this.actions,
  });

  final String titleText;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  final List<Widget>? actions;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(packageInfoProvider);

    return AppBar(
      leading: scaffoldKey != null ? IconMenuBadge(scaffoldKey!) : null,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(titleText),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              state.maybeWhen(
                orElse: () => Container(),
                data:
                    (packageInfo) => Text(
                      packageInfo.version,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
              ),
              const Gap(8),
              Text(
                ref.watch(usuarioNotifierProvider)?.id ?? '',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
      actions: actions,
    );
  }
}
