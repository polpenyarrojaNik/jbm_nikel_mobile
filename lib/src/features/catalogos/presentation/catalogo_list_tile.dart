import 'package:flutter/material.dart';

import '../domain/catalogo.dart';

class CatalogoListTile extends StatelessWidget {
  const CatalogoListTile({super.key, required this.catalogo});

  final Catalogo catalogo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(catalogo.nombre),
      ],
    );
  }
}
