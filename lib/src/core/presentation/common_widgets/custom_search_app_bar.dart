import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomSearchAppBar extends StatefulWidget with PreferredSizeWidget {
  const CustomSearchAppBar(
      {super.key,
      required this.title,
      required this.searchTitle,
      required this.isSearchingFirst,
      required this.onChanged,
      this.actionButtons});

  final String title;
  final String searchTitle;
  final bool isSearchingFirst;
  final Function(String searchText) onChanged;
  final List<IconButton>? actionButtons;

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

  final focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    isSearching = widget.isSearchingFirst;
    if (isSearching) {
      focusNode.requestFocus();
    }
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: (isSearching)
          ? SearchListTile(
              searchTitle: widget.searchTitle,
              onChanged: widget.onChanged,
              focusNode: focusNode,
            )
          : Text(widget.title),
      actions: getListActionButtons(widget.actionButtons),
    );
  }

  void changeSearchValue() {
    setState(() {
      isSearching = !isSearching;
      widget.onChanged('');
    });
    if (isSearching) {
      focusNode.requestFocus();
    }
  }

  List<IconButton> getListActionButtons(List<IconButton>? actionButtons) {
    final searchIconButton = IconButton(
        onPressed: () => changeSearchValue(),
        icon: (isSearching) ? searchIcon : icon);

    if (actionButtons != null) {
      List<IconButton> buttons = [searchIconButton];

      for (var i = 0; i < actionButtons.length; i++) {
        buttons.add(actionButtons[i]);
      }
      return buttons;
    }
    return [searchIconButton];
  }
}

class SearchListTile extends ConsumerWidget {
  const SearchListTile(
      {super.key,
      required this.searchTitle,
      required this.onChanged,
      required this.focusNode});

  final String searchTitle;
  final Function(String searchText) onChanged;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      visualDensity: const VisualDensity(horizontal: -4),
      title: TextField(
        focusNode: focusNode,
        decoration: InputDecoration(
          hintText: searchTitle,
          hintStyle: const TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.italic,
          ),
          border: InputBorder.none,
        ),
        onChanged: (value) => onChanged(value),
      ),
    );
  }
}
