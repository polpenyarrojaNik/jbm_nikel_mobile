import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/infrastructure/sales_order_repository.dart';

class CustomSearchAppBar extends StatefulWidget with PreferredSizeWidget {
  const CustomSearchAppBar(
      {Key? key, required this.title, required this.searchTitle})
      : super(key: key);

  final String title;
  final String searchTitle;

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
          ? SearchListTile(searchTitle: widget.searchTitle)
          : Text(widget.title),
      actions: [
        IconButton(
            onPressed: () => changeSearchValue(),
            icon: (isSearching) ? searchIcon : icon),
      ],
    );
  }

  void changeSearchValue() {
    setState(() {
      isSearching = !isSearching;
    });
  }
}

class SearchListTile extends ConsumerWidget {
  const SearchListTile({Key? key, required this.searchTitle}) : super(key: key);

  final String searchTitle;

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
          onSubmitted: (value) => ref
              .read(salesOrderRepositoryProvider)
              .watchSalesOrderList(searchText: value)),
    );
  }
}
