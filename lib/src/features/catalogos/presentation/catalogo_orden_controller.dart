import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_mutations/riverpod_mutations.dart';

import '../../../core/exceptions/app_exception.dart';
import '../infrastructure/catalogo_repository.dart';
import 'catalogo_search_controller.dart';

part 'catalogo_orden_controller.g.dart';

@riverpod
class CatalogoOrdenController extends _$CatalogoOrdenController {
  CatalogoOrdenController();

  @override
  void build() async {}

  Future<Either<AppException, Unit>> saveCatalogoAbierto(int catalogoId) async {
    final result = await ref
        .read(catalogoRepositoryProvider)
        .saveCatalogoAbierto(catalogoId);
    ref.invalidate(catalogoIndexScreenControllerProvider);
    return result;
  }
}

@riverpod
class SaveCatalogoAbierto extends _$SaveCatalogoAbierto {
  @override
  MutationState<Either<AppException, Unit>, int> build() {
    return MutationState.create(
      (newState) => state = newState,
      (catalogoId) async => ref
          .read(catalogoOrdenControllerProvider.notifier)
          .saveCatalogoAbierto(catalogoId),
    );
  }
}
