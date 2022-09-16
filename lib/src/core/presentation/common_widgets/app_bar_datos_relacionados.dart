import 'package:flutter/material.dart';

class AppBarDatosRelacionados extends StatelessWidget {
  const AppBarDatosRelacionados(
      {super.key, required this.title, required this.entityId, this.subtitle});

  final String title;
  final String entityId;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 125,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        expandedTitleScale: 1,
        titlePadding: const EdgeInsets.all(16),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(entityId, style: Theme.of(context).textTheme.subtitle2),
            if (subtitle != null)
              Text(subtitle!, style: Theme.of(context).textTheme.bodyText2),
          ],
        ),
      ),
      title: Text(title),
    );
  }
}
