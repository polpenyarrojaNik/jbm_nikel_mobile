import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:jbm_nikel_mobile/src/core/presentation/toasts.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/app_initialization/presentation/splash_page_controller.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';

import '../../../core/presentation/common_widgets/async_value_widget.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(splashPageControllerProvider, (_, state) {
      state.maybeWhen(
        orElse: () {},
        data: (value) => context.router.replace(
          ArticuloListaRoute(isSearchArticuloForForm: false),
        ),
        error: (e, _) {
          showToast(e.toString(), context);
          ref.read(usuarioNotifierProvider.notifier).signOut();
        },
      );
    });
    final splashPageValue = ref.watch(splashPageControllerProvider);
    return Scaffold(
        body: AsyncValueWidget<void>(
      value: splashPageValue,
      data: (_) => Container(),
    ));
  }
}
