import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomSearchAppBar extends StatefulWidget with PreferredSizeWidget {
  const CustomSearchAppBar(
      {super.key,
      required this.title,
      required this.searchTitle,
      required this.onChanged,
      this.addActionButton});

  final String title;
  final String searchTitle;
  final Function(String searchText) onChanged;
  final IconButton? addActionButton;

  @override
  State<CustomSearchAppBar> createState() => _CustomSearchAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomSearchAppBarState extends State<CustomSearchAppBar> {
  bool isSearching = false;
  final Icon icon = const Icon(Icons.search);
  final Icon searchIcon = const Icon(Icons.close);

  final String searchText = '';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: (isSearching)
          ? SearchListTile(
              searchTitle: widget.searchTitle, onChanged: widget.onChanged)
          : Text(widget.title),
      actions: [
        IconButton(
            onPressed: () => changeSearchValue(),
            icon: (isSearching) ? searchIcon : icon),
        if (widget.addActionButton != null) widget.addActionButton!
      ],
    );
  }

  void changeSearchValue() {
    setState(() {
      isSearching = !isSearching;
      widget.onChanged('');
    });
  }
}

class SearchListTile extends ConsumerWidget {
  const SearchListTile(
      {super.key, required this.searchTitle, required this.onChanged});

  final String searchTitle;
  final Function(String searchText) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: const Icon(
        Icons.search,
        color: Colors.white,
        size: 28,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: searchTitle,
          hintStyle: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontStyle: FontStyle.italic,
          ),
          border: InputBorder.none,
        ),
        style: const TextStyle(
          color: Colors.white,
        ),
        onChanged: (value) => onChanged(value),
      ),
    );
  }
}
