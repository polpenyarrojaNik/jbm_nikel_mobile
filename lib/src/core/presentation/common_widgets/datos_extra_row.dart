import 'package:flutter/material.dart';

class DatosExtraRow extends StatelessWidget {
  const DatosExtraRow({
    super.key,
    required this.title,
    required this.navigationTo,
  });
  final String title;

  final Function() navigationTo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigationTo(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(title)],
            ),
            IconButton(
              icon: const Icon(Icons.navigate_next),
              onPressed: () => navigationTo(),
            ),
          ],
        ),
      ),
    );
  }
}
