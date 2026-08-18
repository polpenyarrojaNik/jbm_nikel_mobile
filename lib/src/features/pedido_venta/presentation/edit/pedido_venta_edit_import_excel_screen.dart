import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/helpers/helpers.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../domain/pedido_import_linea.dart';
import '../../domain/pedido_import_result.dart';
import '../../infrastructure/pedido_venta_repository.dart';

part 'pedido_venta_edit_import_excel_screen.g.dart';

@riverpod
class PedidoVentaEditImportExcelScreenController
    extends _$PedidoVentaEditImportExcelScreenController {
  @override
  void build() {
    return;
  }

  Future<PedidoImportResult> importLines(String clienteId, PlatformFile file) {
    return ref.read(pedidoVentaRepositoryProvider).importLines(clienteId, file);
  }

  Future<String?> downloadTemplate() async {
    const filename = 'plantilla_pedido_rapido.xlsx';
    const mimeType =
        'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet';
    final path = await saveFromAssets(filename, mimeType);
    return path;
  }
}

final downloadProjectTemplateMutation = Mutation<String?>();
final importLinesMutation = Mutation<PedidoImportResult>();

@RoutePage()
class PedidoVentaEditImportExcelPage extends ConsumerWidget {
  const PedidoVentaEditImportExcelPage({super.key, required this.clienteId});

  final String clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(downloadProjectTemplateMutation, (_, state) {
      if (state is MutationSuccess<String?>) {
        final filepath = state.value;
        if (filepath != null) {
          context.showSuccessBar(
            content: Text(S.of(context).templateDownloadedSuccessfully),
          );
        }
      } else if (state is MutationError<String?>) {
        unawaited(
          context.showErrorBar(
            content: ErrorMessageWidget(state.error.toString()),
          ),
        );
      } else if (state is MutationPending<String?>) {
        unawaited(
          context.showInfoBar(content: Text(S.of(context).downloadingTemplate)),
        );
      }
    });

    final stateImportExcel = ref.watch(importLinesMutation);

    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).import)),
      body: SingleChildScrollView(
        child: Center(
          child: HookBuilder(
            builder: (context) {
              final selectedFile = useState<PlatformFile?>(null);

              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    if (selectedFile.value != null)
                      Card(
                        clipBehavior: Clip.antiAlias,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Icon(
                                getIconFromExtension(
                                  getExtension(selectedFile.value!.name),
                                ),
                                color: Theme.of(
                                  context,
                                ).colorScheme.primaryContainer,
                              ),
                              const Gap(8),
                              Text(
                                selectedFile.value!.name,
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                    const Gap(8),
                    Column(
                      children: [
                        DownloadProjectTemplateButton(),

                        Row(
                          children: [
                            Expanded(
                              child: UploadExcelFileButton(
                                clienteId: clienteId,
                                selectedFile: selectedFile,
                              ),
                            ),
                            const Gap(16),
                            Expanded(
                              child: ImportExcelButton(
                                clienteId: clienteId,
                                selectedFile: selectedFile,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Gap(16),

                    if (stateImportExcel.isPending)
                      const Center(child: CircularProgressIndicator())
                    else if (stateImportExcel.hasError)
                      Center(
                        child: ErrorMessageWidget(
                          (stateImportExcel as MutationError<void>).error
                              .toString(),
                        ),
                      )
                    else if (stateImportExcel
                        is MutationSuccess<PedidoImportResult>)
                      ImportExcelResultWidget(
                        importResult: (stateImportExcel).value,
                      )
                    else
                      Container(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class UploadExcelFileButton extends ConsumerWidget {
  const UploadExcelFileButton({
    super.key,
    required this.selectedFile,
    required this.clienteId,
  });

  final ValueNotifier<PlatformFile?> selectedFile;
  final String clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateImportExcel = ref.watch(importLinesMutation);

    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: selectedFile.value == null
            ? WidgetStateProperty.all(Theme.of(context).colorScheme.primary)
            : null,
        foregroundColor: selectedFile.value == null
            ? WidgetStateProperty.all(Theme.of(context).colorScheme.onPrimary)
            : null,
      ),
      onPressed: () =>
          !stateImportExcel.isPending ? pickFile(ref, selectedFile) : null,
      child: Text(S.of(context).uploadExcel),
    );
  }

  Future<void> pickFile(
    WidgetRef ref,
    ValueNotifier<PlatformFile?> selectedFile,
  ) async {
    if (Platform.isAndroid || Platform.isIOS) {
      await FilePicker.clearTemporaryFiles();
    }
    final result = await FilePicker.pickFile(
      allowedExtensions: ['xls', 'xlsx', 'csv', 'ods'],
      type: FileType.custom,
    );
    if (result != null) {
      selectedFile.value = result;

      unawaited(
        runMutationSafe(ref, importLinesMutation, (tsx) async {
          final pedidoVentaEditImportExcelScreenController = tsx.get(
            pedidoVentaEditImportExcelScreenControllerProvider.notifier,
          );
          final result = await pedidoVentaEditImportExcelScreenController
              .importLines(clienteId, selectedFile.value!);
          return result;
        }),
      );
    }
  }
}

class ImportExcelButton extends ConsumerWidget {
  const ImportExcelButton({
    super.key,
    required this.clienteId,
    required this.selectedFile,
  });

  final ValueNotifier<PlatformFile?> selectedFile;
  final String clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateImportExcel = ref.watch(importLinesMutation);

    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            (stateImportExcel is MutationSuccess<PedidoImportResult> &&
                selectedFile.value != null)
            ? WidgetStateProperty.all(Theme.of(context).colorScheme.primary)
            : null,
        foregroundColor:
            (stateImportExcel is MutationSuccess<PedidoImportResult> &&
                selectedFile.value != null)
            ? WidgetStateProperty.all(Theme.of(context).colorScheme.onPrimary)
            : null,
      ),
      onPressed:
          stateImportExcel is MutationSuccess<PedidoImportResult> &&
              selectedFile.value != null
          ? () => context.router.pop(stateImportExcel.value)
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (stateImportExcel.isPending) ...[
            SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
            const Gap(8),
          ],
          Text(S.of(context).import),
        ],
      ),
    );
  }
}

class DownloadProjectTemplateButton extends ConsumerWidget {
  const DownloadProjectTemplateButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateDownloadTemplate = ref.watch(downloadProjectTemplateMutation);

    return TextButton(
      onPressed: () => !stateDownloadTemplate.isPending
          ? downloadProjectTemplate(ref)
          : null,
      child: Text(S.of(context).downloadTemplate),
    );
  }

  void downloadProjectTemplate(WidgetRef ref) {
    runMutationSafe(ref, downloadProjectTemplateMutation, (tsx) async {
      final pedidoVentaEditImportExcelScreenController = tsx.get(
        pedidoVentaEditImportExcelScreenControllerProvider.notifier,
      );
      final result = await pedidoVentaEditImportExcelScreenController
          .downloadTemplate();
      return result;
    });
  }
}

class ImportExcelResultWidget extends StatelessWidget {
  const ImportExcelResultWidget({super.key, required this.importResult});

  final PedidoImportResult importResult;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).results,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const Gap(8),
        ImportExcelResultDetailTile(
          title: S.of(context).sheetName,
          value: importResult.sheetName,
        ),
        const Gap(4),
        ImportExcelResultDetailTile(
          title: S.of(context).totalRows,
          value:
              (importResult.pedidoImportLineas.length +
                      importResult.pedidoImportLineaErrors.length)
                  .toString(),
        ),
        const Gap(4),
        ImportExcelImportedRowsWidget(
          importedRows: importResult.pedidoImportLineas,
        ),

        if (importResult.pedidoImportLineaErrors.isNotEmpty)
          ImportExcelErrorsWidget(errors: importResult.pedidoImportLineaErrors),
      ],
    );
  }
}

class ImportExcelResultDetailTile extends StatelessWidget {
  const ImportExcelResultDetailTile({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        const Gap(8),
        Flexible(
          child: Text(value, style: Theme.of(context).textTheme.bodyMedium),
        ),
      ],
    );
  }
}

class ImportExcelImportedRowsWidget extends StatelessWidget {
  const ImportExcelImportedRowsWidget({super.key, required this.importedRows});

  final List<PedidoImportLinea> importedRows;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        ImportExcelResultDetailTile(
          title: S.of(context).importedRows,
          value: importedRows.length.toString(),
        ),

        const Gap(4),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: importedRows.length,
          separatorBuilder: (context, i) => const Divider(),
          itemBuilder: (context, i) =>
              PedidoImportLineaListTile(pedidoImportLinea: importedRows[i]),
        ),
      ],
    );
  }
}

class PedidoImportLineaListTile extends StatelessWidget {
  const PedidoImportLineaListTile({super.key, required this.pedidoImportLinea});

  final PedidoImportLinea pedidoImportLinea;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: Center(child: Text('${pedidoImportLinea.lineNumber}')),
        ),
        const Gap(8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    pedidoImportLinea.articuloId,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),

                  Text(
                    '${numberFormatCantidades(pedidoImportLinea.cantidad)} ${S.of(context).unidad}',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
              Text(
                pedidoImportLinea.articuloDescription,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ImportExcelErrorsWidget extends StatelessWidget {
  const ImportExcelErrorsWidget({super.key, required this.errors});

  final List<PedidoImportLineaError> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        ImportExcelResultDetailTile(
          title: S.of(context).errors,
          value: errors.length.toString(),
        ),

        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: errors.length,
          itemBuilder: (context, i) =>
              PedidoImportLineaErrorListTile(pedidoImportLineaError: errors[i]),
        ),
      ],
    );
  }
}

class PedidoImportLineaErrorListTile extends StatelessWidget {
  const PedidoImportLineaErrorListTile({
    super.key,
    required this.pedidoImportLineaError,
  });

  final PedidoImportLineaError pedidoImportLineaError;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: Center(child: Text('${pedidoImportLineaError.lineNumber}')),
        ),

        const Gap(8),
        Expanded(
          child: Text(
            pedidoImportLineaError.errorMessage,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ),
      ],
    );
  }
}
