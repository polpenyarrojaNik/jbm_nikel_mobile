import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_mutations_annotation/riverpod_mutations_annotation.dart';

import '../../../features/cliente/domain/cliente.dart';
import '../../../features/cliente/domain/cliente_imp.dart';
import '../../../features/cliente/infrastructure/cliente_repository.dart';
import '../../domain/sector.dart';
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
  const ClienteSectorPage({super.key, required this.cliente});

  final Cliente cliente;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            state.when(
              data: (sectoresList) => (stateUpdateClienteSector
                      is! UpdateClienteSectorMutationLoading)
                  ? Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, i) => GestureDetector(
                          onTap: () => stateUpdateClienteSector(
                            ClienteImp(
                              clienteId: cliente.id,
                              sector: sectoresList[i],
                            ),
                          ),
                          child: Text(
                            sectoresList[i].descripcion,
                            style: sectoresList[i].isAlta
                                ? Theme.of(context).textTheme.titleSmall
                                : Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                        separatorBuilder: (context, i) => const Divider(),
                        itemCount: sectoresList.length,
                      ),
                    )
                  : const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) =>
                  Center(child: ErrorMessageWidget(error.toString())),
              loading: () => const Center(child: CircularProgressIndicator()),
            )
          ],
        ),
      ),
    );
  }
}
