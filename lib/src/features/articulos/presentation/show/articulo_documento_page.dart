import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:better_open_file/better_open_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/adjunto_param.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../../core/presentation/toasts.dart';
import '../../../usuario/infrastructure/usuario_service.dart';
import '../../domain/articulo_documento.dart';
import '../../infrastructure/articulo_repository.dart';

part 'articulo_documento_page.g.dart';

@riverpod
class GetArticuloDocumentoListaById extends _$GetArticuloDocumentoListaById {
  @override
  Future<List<ArticuloDocumento>> build(String articuloId) async {
    final articuloRepository = ref.watch(articuloRepositoryProvider);
    final usuario = await ref
        .watch(usuarioServiceProvider)
        .getSignedInUsuario();
    return articuloRepository.getArticuloDocumentoListById(
      articuloId: articuloId,
      provisionalToken: usuario!.provisionalToken,
      test: usuario.test,
    );
  }

  Future<File?> getDocumentFile(AdjuntoParam adjuntoParam) async {
    final articuloRepository = ref.watch(articuloRepositoryProvider);
    final usuario = await ref
        .watch(usuarioServiceProvider)
        .getSignedInUsuario();
    return articuloRepository.getArticuloDocumentFile(
      adjuntoParam: adjuntoParam,
      provisionalToken: usuario!.provisionalToken,
      test: usuario.test,
    );
  }
}

final getArticuloDocumentFileMutation = Mutation<File?>();

@RoutePage()
class ArticuloDocumentoPage extends ConsumerWidget {
  const ArticuloDocumentoPage({
    super.key,
    required this.articuloId,
    required this.description,
  });

  final String articuloId;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(getArticuloDocumentFileMutation, (_, state) {
      if (state is MutationSuccess<File?>) {
        final file = state.value;
        if (file != null) {
          OpenFile.open(file.path);
        }
      } else if (state is MutationError<File?>) {
        final error = state.error;
        showToast(error.toString(), context);
      } else if (state is MutationPending<File?>) {
        showToast(
          S.of(context).cliente_show_clienteAdjunto_abriendoArchivo,
          context,
        );
      }
    });
    final state = ref.watch(getArticuloDocumentoListaByIdProvider(articuloId));

    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).articulo_show_articuloDocumentos_titulo),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(entityId: articuloId, subtitle: description),
          const Gap(8),
          state.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            error: (e, st) {
              if (e is AppException) {
                return e.maybeWhen(
                  orElse: () => ErrorMessageWidget(e.toString()),
                  notConnection: () =>
                      Center(child: Text(S.of(context).sincConexion)),
                );
              }
              return ErrorMessageWidget(e.toString());
            },
            data: (articuloDocumentoList) => (articuloDocumentoList.isNotEmpty)
                ? Expanded(
                    child: ListView.builder(
                      itemCount: articuloDocumentoList.length,
                      itemBuilder: (context, i) => ArticuloDocumentoTile(
                        articuloDocumento: articuloDocumentoList[i],
                      ),
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(S.of(context).sinResultados)],
                  ),
          ),
        ],
      ),
    );
  }
}

class ArticuloDocumentoTile extends ConsumerWidget {
  const ArticuloDocumentoTile({super.key, required this.articuloDocumento});

  final ArticuloDocumento articuloDocumento;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: kPaddingList,
      child: GestureDetector(
        onTap: () => openFile(
          articuloId: articuloDocumento.articuloId,
          nombreArchivo: articuloDocumento.nombreArchivo,
          ref: ref,
        ),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(
              color: Colors.grey.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  getIconoFromExtension(articuloDocumento.nombreArchivo ?? ''),
                  color: Theme.of(context).textTheme.bodySmall!.color,
                ),
                const Gap(8),
                Flexible(child: Text(articuloDocumento.nombreArchivo ?? '')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void openFile({
    required String articuloId,
    required String? nombreArchivo,
    required WidgetRef ref,
  }) {
    getArticuloDocumentFileMutation.run(ref, (tsx) async {
      final getArticuloDocumentoListaByIdStateNotifier = tsx.get(
        getArticuloDocumentoListaByIdProvider(articuloId).notifier,
      );
      final result = await getArticuloDocumentoListaByIdStateNotifier
          .getDocumentFile(
            AdjuntoParam(id: articuloId, nombreArchivo: nombreArchivo),
          );
      return result;
    });
  }
}
