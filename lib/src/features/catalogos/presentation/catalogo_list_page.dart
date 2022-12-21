import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/catalogos/infrastructure/catalogo_repository.dart';

class CatalogoListaPage extends ConsumerWidget {
  const CatalogoListaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(catalogoListProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalogue'),
      ),
      body: Container(),
    );
  }
}
