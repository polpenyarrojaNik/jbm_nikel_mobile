import 'package:flutter/material.dart';

import 'custom_search_app_bar.dart';

class AppBarDatosRelacionados extends StatefulWidget {
  const AppBarDatosRelacionados(
      {super.key,
      required this.title,
      required this.entityId,
      this.subtitle,
      this.onChanged,
      this.searchTitle});

  final String title;
  final String? searchTitle;

  final String entityId;
  final String? subtitle;
  final Function(String searchText)? onChanged;

  @override
  State<AppBarDatosRelacionados> createState() =>
      _AppBarDatosRelacionadosState();
}

class _AppBarDatosRelacionadosState extends State<AppBarDatosRelacionados> {
  bool isSearching = false;
  final Icon icon = const Icon(Icons.search);
  final Icon searchIcon = const Icon(Icons.close);
  final focusNode = FocusNode();
  final String searchText = '';

  @override
  void dispose() {
    super.dispose();
    focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      stretch: true,
      expandedHeight: 125,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        expandedTitleScale: 1,
        titlePadding: const EdgeInsets.all(16),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.entityId, style: Theme.of(context).textTheme.subtitle2),
            if (widget.subtitle != null)
              Text(widget.subtitle!,
                  style: Theme.of(context).textTheme.bodyText2),
          ],
        ),
      ),
      actions: [
        if (widget.onChanged != null)
          IconButton(
              onPressed: () => changeSearchValue(),
              icon: (isSearching) ? searchIcon : icon),
      ],
      title: (isSearching)
          ? SearchListTile(
              focusNode: focusNode,
              onChanged: widget.onChanged!,
              searchTitle: widget.searchTitle!,
            )
          : Text(widget.title),
    );
  }

  void changeSearchValue() {
    setState(() {
      isSearching = !isSearching;
      widget.onChanged!('');
    });
  }
}
