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
      color: Theme.of(context).colorScheme.secondaryContainer,
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            entityId,
            style: Theme.of(context).textTheme.titleSmall,
            overflow: TextOverflow.ellipsis,
          ),
          if (subtitle != null)
            Text(
              subtitle!,
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            ),
        ],
      ),
    );
  }
}
