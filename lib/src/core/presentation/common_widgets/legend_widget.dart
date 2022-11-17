import 'package:flutter/material.dart';

import '../theme/app_sizes.dart';
import 'app_decoration.dart';

class LeyendaWidget extends StatelessWidget {
  const LeyendaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 4,
                    width: 15,
                    decoration: AppDecoration.kpiLegend(
                        Theme.of(context).colorScheme.primary),
                  ),
                  gapW4,
                  Text(
                    (DateTime.now().year).toString(),
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 4,
                    width: 15,
                    decoration: AppDecoration.kpiLegend(
                        Theme.of(context).colorScheme.outline),
                  ),
                  gapW4,
                  Text(
                    (DateTime.now().year - 1).toString(),
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
