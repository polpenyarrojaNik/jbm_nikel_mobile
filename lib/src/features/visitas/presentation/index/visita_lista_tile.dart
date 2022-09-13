import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_router.dart';

import '../../../../core/helpers/formatters.dart';
import '../../domain/visita.dart';

class VisitaListaTile extends StatelessWidget {
  const VisitaListaTile({super.key, required this.visita});

  final Visita visita;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          navigateToVisitaDetalle(context: context, visitaId: visita.id),
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dateFormatter(visita.fecha.toLocal().toIso8601String()),
                ),
              ],
            ),
            Text(
              visita.id,
            ),
          ],
        ),
      ),
    );
  }

  void navigateToVisitaDetalle(
      {required BuildContext context, required String visitaId}) {
    context.goNamed(AppRoutes.visitashow.name, params: {'visitaId': visitaId});
  }
}
