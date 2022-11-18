import 'package:flutter/material.dart';

class HeaderDatosRelacionados extends StatelessWidget {
  const HeaderDatosRelacionados({
    super.key,
    required this.entityId,
    this.subtitle,
  });

  final String entityId;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(entityId, style: Theme.of(context).textTheme.subtitle2),
              if (subtitle != null)
                Text(subtitle!, style: Theme.of(context).textTheme.bodyText2),
            ],
          ),
        ],
      ),
    );
  }
}
