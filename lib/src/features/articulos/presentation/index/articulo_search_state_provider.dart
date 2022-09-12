import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/articulo.dart';
import '../../infrastructure/articulo_repository.dart';

final articulosSearchQueryStateProvider = StateProvider<String>((ref) {
  return '';
});

final articulosSearchResultsProvider =
    FutureProvider.autoDispose<List<Articulo>>((ref) async {
  final searchQuery = ref.watch(articulosSearchQueryStateProvider);
  return ref.watch(articulosSearchProvider(searchQuery).future);
});
