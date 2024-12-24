import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_extra_fields/form_builder_extra_fields.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_mutations_annotation/riverpod_mutations_annotation.dart';

import '../../../../generated/l10n.dart';
import '../../../features/cliente/domain/cliente.dart';
import '../../../features/cliente/domain/cliente_imp.dart';
import '../../../features/cliente/infrastructure/cliente_repository.dart';
import '../../domain/sector.dart';
import 'app_form_builder_searchable_dropdown.dart';
import 'error_message_widget.dart';

part 'cliente_sector_page.g.dart';

@riverpod
@riverpod
class ClienteSectorPageController extends _$ClienteSectorPageController {
  @override
  Future<List<Sector>> build() async {
    return ref.read(clienteRepositoryProvider).getSectoresList();
  }

  @mutation
  Future<ClienteImp> updateClienteSector(ClienteImp clienteImp) async {
    return ref.read(clienteRepositoryProvider).upsertClienteImp(clienteImp);
  }
}

@RoutePage()
class ClienteSectorPage extends ConsumerWidget {
  ClienteSectorPage({super.key, required this.cliente});

  final Cliente cliente;
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(clienteSectorPageControllerProvider.updateClienteSector,
        (_, state) {
      if (state is UpdateClienteSectorMutationSuccess) {
        context.maybePop();
      } else if (state is UpdateClienteSectorMutationFailure) {
        context.showErrorBar(content: ErrorMessageWidget(state.toString()));
      }
    });

    final stateUpdateClienteSector =
        ref.watch(clienteSectorPageControllerProvider.updateClienteSector);

    final state = ref.watch(clienteSectorPageControllerProvider);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Cliente Sector'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: state.when(
              data: (sectoresList) => (stateUpdateClienteSector
                      is! UpdateClienteSectorMutationLoading)
                  ? Column(
                      children: [
                        AppFormBuilderSearchableDropdown<Sector>(
                          name: 'sector',
                          initialValue: cliente.sector,
                          items: sectoresList,
                          itemAsString: (item) => item.descripcion,
                          compareFn: (i, s) => i.id == s.id,
                          decoration: InputDecoration(
                            labelText: S.of(context).sector,
                            border: const OutlineInputBorder(),
                          ),
                          // dropdownBuilder: (context, sector) =>
                          //     Text(sector!.descripcion, style: sector.,),

                          validator: FormBuilderValidators.compose(
                            [
                              FormBuilderValidators.required(),
                              (sector) => sector != null && sector.isAlta
                                  ? null
                                  : S
                                      .of(context)
                                      .sectorUnsubscribededSectorMessage,
                            ],
                          ),
                          popupProps: PopupProps.menu(
                            showSearchBox: true,
                            fit: FlexFit.loose,
                            searchFieldProps:
                                const TextFieldProps(autofocus: true),
                            disabledItemFn: (item) => !item.isAlta,
                          ),
                        ),
                        const Gap(16),
                        TextButton(
                            onPressed: () =>
                                setNewSector(stateUpdateClienteSector),
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  Theme.of(context).colorScheme.primary),
                              foregroundColor: WidgetStateProperty.all(
                                  Theme.of(context).colorScheme.onPrimary),
                              iconColor: WidgetStateProperty.all(
                                  Theme.of(context).colorScheme.onPrimary),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.save),
                                const Gap(8),
                                Text(S.of(context).save),
                              ],
                            )),
                      ],
                    )
                  : const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ErrorMessageWidget(error.toString()),
                  const Gap(24),
                  IconButton(
                    onPressed: () =>
                        ref.refresh(clienteSectorPageControllerProvider),
                    icon: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.refresh),
                        const Gap(8),
                        Text(S.of(context).retry),
                      ],
                    ),
                  ),
                ],
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
            )),
      ),
    );
  }

  void setNewSector(UpdateClienteSectorMutation stateUpdateClienteSector) {
    if (_formKey.currentState!.saveAndValidate()) {
      final sector = _formKey.currentState!.value['sector'] as Sector;
      stateUpdateClienteSector(
          ClienteImp(clienteId: cliente.id, sector: sector));
    }
  }
}
