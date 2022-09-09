import 'package:flutter/material.dart';

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget(
      {super.key,
      required this.headlineTitle,
      required this.icon,
      required this.onTap});

  final String headlineTitle;
  final Icon icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icon,
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(headlineTitle),
              ],
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.navigate_next),
              onPressed: () => onTap(),
            )
          ],
        ),
      ),
    );
  }
}
