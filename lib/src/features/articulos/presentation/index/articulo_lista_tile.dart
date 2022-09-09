import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/app_router.dart';
import '../../domain/articulo.dart';

class ArticuloListaTile extends StatelessWidget {
  const ArticuloListaTile(
      {super.key,
      required this.articulo,
      required this.appRoute,
      required this.clienteId});

  final Articulo articulo;
  final AppRoute appRoute;
  final String? clienteId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () =>
            navigateToArticuloDetalPage(context, articulo.id, clienteId),
        child: Card(
          clipBehavior: Clip.hardEdge,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4), // if you need this
            side: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  articulo.id,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text(
                  articulo.descripcion,
                ),
                Text(
                  (articulo.subfamilia != null)
                      ? '${articulo.familia?.descripcion}/${articulo.subfamilia?.descripcion}'
                      : '${articulo.familia?.descripcion}',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ));
  }

  void navigateToArticuloDetalPage(
      BuildContext context, String id, String? clienteId) {
    final params = {'articuloId': articulo.id};

    if (clienteId != null) {
      params.addAll({'clienteId': clienteId});
    }
    context.goNamed(appRoute.name, params: params);
  }
}
