import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/features/app_initialization/presentation/splash_page_controller.dart';

import '../../../core/presentation/common_widgets/async_value_widget.dart';
import '../../../core/routing/app_router.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<void>>(splashPageControllerProvider, (_, state) {
      state.whenData((value) {
        context.goNamed(AppRoutes.articuloindex.name);
      });
    });
    final splashPageValue = ref.watch(splashPageControllerProvider);
    return Scaffold(
        body: AsyncValueWidget<void>(
      value: splashPageValue,
      data: (_) => const Center(child: Text('Initialized')),
    ));
  }
}
