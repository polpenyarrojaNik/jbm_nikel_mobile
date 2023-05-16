import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';

import '../../../features/settings/infrastructure/settings_repository.dart';
import '../theme/app_sizes.dart';

class CommonAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CommonAppBar({super.key, required this.titleText, this.actions});

  final String titleText;

  final List<Widget>? actions;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(packageInfoProvider);

    return AppBar(
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
                data: (packageInfo) => Text(
                  packageInfo.version,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              gapW8,
              Text(
                ref.watch(usuarioNotifierProvider)?.id ?? '',
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          )
        ],
      ),
      actions: actions,
    );
  }
}
