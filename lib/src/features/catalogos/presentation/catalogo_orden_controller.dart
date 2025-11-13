import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/exceptions/app_exception.dart';
import '../infrastructure/catalogo_repository.dart';
import 'catalogo_search_controller.dart';

part 'catalogo_orden_controller.g.dart';

@riverpod
class CatalogoOrdenController extends _$CatalogoOrdenController {
  CatalogoOrdenController();

  @override
  void build() async {
    return;
  }

  Future<Either<AppException, Unit>> saveCatalogoAbierto(int catalogoId) async {
    final result = await ref
        .read(catalogoRepositoryProvider)
        .saveCatalogoAbierto(catalogoId);
    ref.invalidate(catalogoIndexScreenControllerProvider);
    return result;
  }
}

final saveCatalogoAbiertoMutation = Mutation<Either<AppException, Unit>>();
