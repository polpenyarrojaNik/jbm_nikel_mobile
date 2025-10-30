import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:better_open_file/better_open_file.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_mutations/riverpod_mutations.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/adjunto_param.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/helpers/helpers.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/sin_resultados_widget.dart';
import '../../../usuario/infrastructure/usuario_service.dart';
import '../../domain/cliente_albaran.dart';
import '../../infrastructure/cliente_repository.dart';

part 'cliente_albaran_page.g.dart';

@riverpod
class ClienteAlbaranCountController extends _$ClienteAlbaranCountController {
  @override
  Future<int> build(String clienteId) async {
    final count = await ref
        .read(clienteRepositoryProvider)
        .getAlbaranesCountList(clienteId: clienteId);

    return count;
  }
}

@riverpod
class ClienteAlbaranPaginationController
    extends _$ClienteAlbaranPaginationController {
  ClienteAlbaranPaginationController();

  @override
  Future<List<ClienteAlbaran>> build({
    required int page,
    required String customerId,
  }) {
    return ref
        .read(clienteRepositoryProvider)
        .getAlbaranesList(page: page, customerId: customerId);
  }
}

@riverpod
class ClienteAlbaranDocumentController
    extends _$ClienteAlbaranDocumentController {
  ClienteAlbaranDocumentController();

  @override
  void build({required String albaranId}) {
    return;
  }

  Future<File?> getAlbaranDocumentFile({
    required AdjuntoParam adjuntoParam,
  }) async {
    final user = await ref.read(usuarioServiceProvider).getSignedInUsuario();

    return ref
        .read(clienteRepositoryProvider)
        .getAlbaranDocumentFile(
          adjuntoParam: adjuntoParam,
          provisionalToken: user!.provisionalToken,
          test: user.test,
        );
  }
}

@riverpod
class OpenDeliveryNoteDocument extends _$OpenDeliveryNoteDocument {
  @override
  MutationState<File?, AdjuntoParam> build() {
    return MutationState.create(
      (newState) => state = newState,
      (adjuntoParam) async => ref
          .read(
            clienteAlbaranDocumentControllerProvider(
              albaranId: adjuntoParam.id,
            ).notifier,
          )
          .getAlbaranDocumentFile(adjuntoParam: adjuntoParam),
    );
  }
}

@RoutePage()
class ClienteAlbaranPage extends ConsumerWidget {
  const ClienteAlbaranPage({
    super.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateCount = ref.watch(
      clienteAlbaranCountControllerProvider(clienteId),
    );

    return Scaffold(
      appBar: CommonAppBar(titleText: (S.of(context).PDFdeliveryNotes)),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: '#$clienteId ${nombreCliente ?? ''}',
            subtitle: null,
          ),
          const Gap(8),

          Expanded(
            child: stateCount.when(
              data: (count) => count > 0
                  ? ListView.separated(
                      shrinkWrap: true,

                      itemBuilder: (context, i) => ClienteAlbaranPaginationList(
                        customerId: clienteId,
                        i: i,
                      ),
                      separatorBuilder: (context, i) => const Divider(),
                      itemCount: count,
                    )
                  : const SinResultadosWidget(),

              error: (error, _) =>
                  Center(child: ErrorMessageWidget(error.toString())),
              loading: () => Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClienteAlbaranPaginationList extends ConsumerWidget {
  const ClienteAlbaranPaginationList({
    super.key,
    required this.customerId,
    required this.i,
  });

  final String customerId;
  final int i;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(
          clienteAlbaranPaginationControllerProvider(
            customerId: customerId,
            page: ((i ~/ ClienteRepository.clienteAuxiliarPageSize) + 1),
          ),
        )
        .maybeWhen(
          orElse: () => Padding(
            padding: const EdgeInsets.all(16.0),
            child: const LinearProgressIndicator(),
          ),
          data: (albaranList) => albaranList.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ClienteAlbaranListTile(clienteAlbaran: albaranList[i]),
                )
              : const SinResultadosWidget(),
        );
  }
}

class ClienteAlbaranListTile extends ConsumerWidget {
  const ClienteAlbaranListTile({super.key, required this.clienteAlbaran});

  final ClienteAlbaran clienteAlbaran;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(openDeliveryNoteDocumentProvider, (_, state) {
      state.when(
        initial: () {},
        data: (file) {
          if (file != null) {
            OpenFile.open(file.path);
          }
        },
        error: (error, _) =>
            context.showErrorBar(content: ErrorMessageWidget(error.toString())),
        loading: () => context.showInfoBar(
          content: Text(
            S.of(context).catalogos_index_catalogoAdjunto_abriendoArchivo,
          ),
        ),
      );
    });

    return GestureDetector(
      onTap: clienteAlbaran.archivoExiste ? () => _openAttachment(ref) : null,
      behavior: HitTestBehavior.opaque,
      child: Opacity(
        opacity: clienteAlbaran.archivoExiste
            ? 1.0
            : 0.5, // 🔹 Menos opaco si está deshabilitado
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(clienteAlbaran.albaranId),
                      Text(
                        dateFormatter(
                          clienteAlbaran.fechaAlbaran.toIso8601String(),
                        ),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            getIconFromFileName(clienteAlbaran.documentoPdf),
                          ),
                          const Gap(8),
                          Flexible(child: Text(clienteAlbaran.documentoPdf)),
                        ],
                      ),
                      const Gap(16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            formatCodigoPostalAndPoblacion(
                              codigoPostal: clienteAlbaran.zipCode,
                              poblacion: clienteAlbaran.poblacion,
                            ),
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall?.copyWith(fontSize: 10),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            formatProvinciaAndPais(
                              province: clienteAlbaran.provincia,
                              pais: clienteAlbaran.pais,
                            ),
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall?.copyWith(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [Text(clienteAlbaran.baseImponible.toString())],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openAttachment(WidgetRef ref) {
    final adjuntoParam = AdjuntoParam(
      id: clienteAlbaran.albaranId,
      nombreArchivo: clienteAlbaran.documentoPdf,
    );

    ref.read(openDeliveryNoteDocumentProvider)(adjuntoParam);
  }
}
