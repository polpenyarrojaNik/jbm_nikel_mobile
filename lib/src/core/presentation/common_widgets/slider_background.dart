import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class SliderBackround extends StatelessWidget {
  const SliderBackround({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      color: Colors.red[700],
      child: Align(
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Icon(
              Icons.delete,
              color: Colors.white,
            ),
            Text(
              S.of(context).commonWidgets_sliderBackground_borrar,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
