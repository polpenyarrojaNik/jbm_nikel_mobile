import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';

import '../../../../core/presentation/common_widgets/app_drawer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Settings'),
        actions: [
          Consumer(
            builder: (context, ref, child) => IconButton(
                onPressed: () =>
                    ref.read(usuarioNotifierProvider.notifier).signOut(),
                icon: const Icon(
                  Icons.logout,
                )),
          )
        ],
      ),
      body: const Center(
        child: Text('Settings Page'),
      ),
    );
  }
}
