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
import '../../domain/cliente_factura.dart';
import '../../infrastructure/cliente_repository.dart';

part 'cliente_factura_page.g.dart';

@riverpod
class ClienteFacturaCountController extends _$ClienteFacturaCountController {
  @override
  Future<int> build(String clienteId) async {
    final count = await ref
        .read(clienteRepositoryProvider)
        .getFacturasCountList(clienteId: clienteId);

    return count;
  }
}

@riverpod
class ClienteFacturaPaginationController
    extends _$ClienteFacturaPaginationController {
  ClienteFacturaPaginationController();

  @override
  Future<List<ClienteFactura>> build({
    required int page,
    required String customerId,
  }) {
    return ref
        .read(clienteRepositoryProvider)
        .getFacturasList(page: page, customerId: customerId);
  }
}

@riverpod
class ClienteFacturaDocumentController
    extends _$ClienteFacturaDocumentController {
  ClienteFacturaDocumentController();

  @override
  void build({required String facturaId}) {
    return;
  }

  Future<File?> getFacturaDocumentFile({
    required AdjuntoParam adjuntoParam,
  }) async {
    final user = await ref.read(usuarioServiceProvider).getSignedInUsuario();

    return ref
        .read(clienteRepositoryProvider)
        .getFacturaDocumentFile(
          adjuntoParam: adjuntoParam,
          provisionalToken: user!.provisionalToken,
          test: user.test,
        );
  }
}

@riverpod
class OpenFacturaDocument extends _$OpenFacturaDocument {
  @override
  MutationState<File?, AdjuntoParam> build() {
    return MutationState.create(
      (newState) => state = newState,
      (adjuntoParam) async => ref
          .read(
            clienteFacturaDocumentControllerProvider(
              facturaId: adjuntoParam.id,
            ).notifier,
          )
          .getFacturaDocumentFile(adjuntoParam: adjuntoParam),
    );
  }
}

@RoutePage()
class ClienteFacturaPage extends ConsumerWidget {
  const ClienteFacturaPage({
    super.key,
    required this.clienteId,
    required this.nombreCliente,
  });

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateCount = ref.watch(
      clienteFacturaCountControllerProvider(clienteId),
    );

    return Scaffold(
      appBar: CommonAppBar(titleText: (S.of(context).PDFinvoices)),
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

                      itemBuilder: (context, i) => ClienteFacturaPaginationList(
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

class ClienteFacturaPaginationList extends ConsumerWidget {
  const ClienteFacturaPaginationList({
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
          clienteFacturaPaginationControllerProvider(
            customerId: customerId,
            page: ((i ~/ ClienteRepository.clienteAuxiliarPageSize) + 1),
          ),
        )
        .maybeWhen(
          orElse: () => Padding(
            padding: const EdgeInsets.all(16.0),
            child: const LinearProgressIndicator(),
          ),
          data: (facturaList) => facturaList.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ClienteFacturaListTile(clienteFactura: facturaList[i]),
                )
              : const SinResultadosWidget(),
        );
  }
}

class ClienteFacturaListTile extends ConsumerWidget {
  const ClienteFacturaListTile({super.key, required this.clienteFactura});

  final ClienteFactura clienteFactura;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(openFacturaDocumentProvider, (_, state) {
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
      onTap: clienteFactura.archivoExiste ? () => _openAttachment(ref) : null,
      behavior: HitTestBehavior.opaque,
      child: Opacity(
        opacity: clienteFactura.archivoExiste
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
                      Text(clienteFactura.facturaId),
                      Text(
                        dateFormatter(
                          clienteFactura.fechaFactura.toIso8601String(),
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
                            getIconFromFileName(clienteFactura.documentoPdf),
                          ),
                          const Gap(8),
                          Flexible(child: Text(clienteFactura.documentoPdf)),
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
                    children: [Text(clienteFactura.importeFactura.toString())],
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
      id: clienteFactura.facturaId,
      nombreArchivo: clienteFactura.documentoPdf,
    );

    ref.read(openFacturaDocumentProvider)(adjuntoParam);
  }
}
