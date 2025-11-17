import 'dart:io';

import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/domain/adjunto_param.dart';
import '../../usuario/infrastructure/usuario_service.dart';
import '../domain/catalogo.dart';
import '../domain/idioma_catalogo.dart';
import '../domain/tipo_catalogo.dart';
import '../domain/tipo_precio_catalogo.dart';
import '../infrastructure/catalogo_repository.dart';

part 'catalogo_search_controller.freezed.dart';
part 'catalogo_search_controller.g.dart';

@freezed
abstract class CatalogoAdjuntoData with _$CatalogoAdjuntoData {
  const factory CatalogoAdjuntoData({
    required File? file,
    required bool descarga,
  }) = _CatalogoAdjuntoData;
}

@riverpod
class CatalogoSearchQueryParamsController
    extends _$CatalogoSearchQueryParamsController {
  @override
  String build() {
    return '';
  }

  void setSearchQuery(String searchQuery) {
    state = searchQuery;
  }
}

@riverpod
class TipoCatalogoQueryParamController
    extends _$TipoCatalogoQueryParamController {
  @override
  TipoCatalogo? build() {
    return null;
  }

  void setTipoCatalogoQuery(TipoCatalogo? tipoCatalogo) {
    state = tipoCatalogo;
  }
}

@riverpod
class TipoPrecioCatalogoQueryParamController
    extends _$TipoPrecioCatalogoQueryParamController {
  @override
  TipoPrecioCatalogo? build() {
    return null;
  }

  void setTipoPrecioCatalogoQuery(TipoPrecioCatalogo? tipoPrecioCatalogo) {
    state = tipoPrecioCatalogo;
  }
}

@riverpod
class IdiomaCatalogoQueryParamController
    extends _$IdiomaCatalogoQueryParamController {
  @override
  IdiomaCatalogo? build() {
    return null;
  }

  void setIdiomaCatalogoQuery(IdiomaCatalogo? idiomaCatalogo) {
    state = idiomaCatalogo;
  }
}

@riverpod
class CatalogoIndexScreenController extends _$CatalogoIndexScreenController {
  CatalogoIndexScreenController();

  @override
  Future<List<Catalogo>> build() {
    return ref
        .read(catalogoRepositoryProvider)
        .getCatalogoList(
          tipoCatalogo: ref.watch(tipoCatalogoQueryParamControllerProvider),
          tipoPrecioCatalogo: ref.watch(
            tipoPrecioCatalogoQueryParamControllerProvider,
          ),
          idiomaCatalogo: ref.watch(idiomaCatalogoQueryParamControllerProvider),
          searchText: ref.watch(catalogoSearchQueryParamsControllerProvider),
        );
  }

  Future<CatalogoAdjuntoData> getAttachmentFile({
    required AdjuntoParam adjuntoParam,
  }) async {
    final user = await ref.read(usuarioServiceProvider).getSignedInUsuario();

    final file = await ref
        .read(catalogoRepositoryProvider)
        .getDocumentFile(
          adjuntoParam: adjuntoParam,
          provisionalToken: user!.provisionalToken,
          test: user.test,
        );
    return CatalogoAdjuntoData(
      file: file,
      descarga: adjuntoParam.descarga ?? false,
    );
  }
}

final catalogoAdjuntoMutation = Mutation<CatalogoAdjuntoData>();
