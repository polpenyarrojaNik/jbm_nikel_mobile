import 'package:flutter/material.dart';

import '../../../../core/helpers/formatters.dart';
import '../../domain/visita.dart';

class VisitaListaTile extends StatelessWidget {
  const VisitaListaTile({super.key, required this.visita});

  final Visita visita;

  @override
  Widget build(BuildContext context) {
    return Card(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dateFormatter(visita.fecha.toIso8601String()),
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
}
