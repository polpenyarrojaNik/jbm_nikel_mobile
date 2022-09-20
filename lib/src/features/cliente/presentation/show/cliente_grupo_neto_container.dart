import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/cliente_grupo_neto.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteGrupoNetoContainer extends ConsumerWidget {
  const ClienteGrupoNetoContainer({super.key, required this.clienteId});

  final String clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteGrupoNetoProvider(clienteId));
    return Padding(
      padding: const EdgeInsets.all(8),
      child: state.maybeWhen(
        orElse: () => const ProgressIndicatorWidget(),
        error: (e, st) => ErrorMessageWidget(e.toString()),
        data: (clienteGrupoNetoList) => (clienteGrupoNetoList.isEmpty)
            ? Center(child: Text(S.of(context).sinResultados))
            : ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) => ClienteGrupoNetoTile(
                  clienteGrupoNeto: clienteGrupoNetoList[i],
                ),
                itemCount: clienteGrupoNetoList.length,
              ),
      ),
    );
  }
}

class ClienteGrupoNetoTile extends StatelessWidget {
  const ClienteGrupoNetoTile({super.key, required this.clienteGrupoNeto});

  final ClienteGrupoNeto clienteGrupoNeto;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              width: 100,
              color: Theme.of(context).colorScheme.surface,
              padding: const EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(clienteGrupoNeto.grupoNetoId),
                ],
              ),
            ),
            Flexible(
              child: Container(
                height: 60,
                padding: const EdgeInsets.all(6.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      clienteGrupoNeto.grupoNetoDescripcion ?? '',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
