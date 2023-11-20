import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../domain/cliente_contacto.dart';
import '../../domain/cliente_contacto_imp.dart';
import '../../domain/cliente_imp_param.dart';
import '../../infrastructure/cliente_repository.dart';
import 'cliente_contacto_delete_controller.dart';
import 'cliente_contacto_imp_list_tile.dart';

@RoutePage()
class ClienteContactoListPage extends ConsumerWidget {
  const ClienteContactoListPage(
      {super.key, required this.clienteId, required this.nombreCliente});

  final String clienteId;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(clienteContactosListProvider(clienteId));

    return Scaffold(
      appBar: CommonAppBar(
        titleText: (S.of(context).cliente_show_clienteContacto_titulo),
      ),
      body: Column(
        children: [
          HeaderDatosRelacionados(
            entityId: '#$clienteId ${nombreCliente ?? ''}',
          ),
          gapH8,
          state.maybeWhen(
            orElse: () => const ProgressIndicatorWidget(),
            error: (e, st) => ErrorMessageWidget(e.toString()),
            data: (clienteContactoList) => (clienteContactoList.isNotEmpty)
                ? Expanded(
                    child: ListView.separated(
                      itemCount: clienteContactoList.length,
                      itemBuilder: (context, i) => _ClienteContactoTile(
                        clienteContacto: clienteContactoList[i],
                        clienteImpParam: ClienteImpParam(
                          clienteId,
                          id: clienteContactoList[i].contactoId,
                          impId: clienteContactoList[i].contactoImpGuid,
                        ),
                      ),
                      separatorBuilder: (context, i) => const Divider(),
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(S.of(context).sinResultados),
                    ],
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigateToCreateClienteContacto(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  void navigateToCreateClienteContacto(BuildContext context) {
    context.router.push(
      ClienteContactoEditRoute(
        clienteImpParam: ClienteImpParam(clienteId),
      ),
    );
  }
}

class _ClienteContactoTile extends StatelessWidget {
  const _ClienteContactoTile(
      {required this.clienteContacto, required this.clienteImpParam});

  final ClienteContacto clienteContacto;
  final ClienteImpParam clienteImpParam;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: listPadding,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (clienteContacto.nombre != null)
                      Text(clienteContacto.getName(
                          clienteContacto.nombre,
                          clienteContacto.apellido1,
                          clienteContacto.apellido2)!),
                    if (clienteContacto.email != null)
                      Row(
                        children: [
                          Icon(Icons.email,
                              color:
                                  Theme.of(context).textTheme.bodySmall?.color,
                              size: 14),
                          gapW4,
                          Flexible(
                            child: Text(
                              clienteContacto.email!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.color),
                            ),
                          ),
                        ],
                      ),
                    if (clienteContacto.telefono1 != null)
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Theme.of(context).textTheme.bodySmall?.color,
                            size: 14,
                          ),
                          gapW4,
                          Flexible(
                            child: Text(
                              clienteContacto.telefono1!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.color),
                            ),
                          ),
                        ],
                      ),
                    if (clienteContacto.telefono2 != null)
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Theme.of(context).textTheme.bodySmall?.color,
                            size: 14,
                          ),
                          gapW4,
                          Text(
                            clienteContacto.telefono2!,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.color),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              if (!(clienteContacto.enviado && !clienteContacto.tratado))
                _ClienteContactoActionButtons(clienteImpParam),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (clienteContacto.email != null)
                    ContactButtons(
                      icon: Icons.email,
                      onPressFunction: () =>
                          navigateToEmailApp(clienteContacto.email!),
                    ),
                  if (clienteContacto.telefono1 != null) gapW12,
                  if (clienteContacto.telefono1 != null)
                    ContactButtons(
                      icon: Icons.phone,
                      onPressFunction: () =>
                          openPhoneCall(clienteContacto.telefono1!),
                    ),
                  if (clienteContacto.telefono2 != null) gapW12,
                  if (clienteContacto.telefono2 != null)
                    ContactButtons(
                      icon: Icons.phone,
                      onPressFunction: () =>
                          openPhoneCall(clienteContacto.telefono2!),
                    ),
                ],
              ),
            ],
          ),
          if (!clienteContacto.enviado ||
              (!clienteContacto.enviado && clienteContacto.deleted))
            GestureDetector(
              child: Row(
                children: [
                  Icon(
                    Icons.error,
                    color: Theme.of(context).colorScheme.error,
                    size: 14,
                  ),
                  gapW4,
                  Flexible(
                    child: Text(
                      S
                          .of(context)
                          .cliente_show_clienteContacto_hayCambiosDeEnviar,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.error,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          if (clienteContacto.tratado)
            _CambiosPendientesDeTramitarListView(
              clienteImpParam,
            ),
        ],
      ),
    );
  }

  void openPhoneCall(String phone) async {
    final Uri params = Uri(
      scheme: 'tel',
      path: phone,
    );
    await launchUrl(params, mode: LaunchMode.externalApplication);
  }

  void navigateToEmailApp(String contactEmail) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: contactEmail,
    );
    await launchUrl(params, mode: LaunchMode.externalApplication);
  }
}

class _ClienteContactoActionButtons extends ConsumerWidget {
  const _ClienteContactoActionButtons(this.clienteImpParam);

  final ClienteImpParam clienteImpParam;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<bool>>(
        clienteContactoDeleteControllerProvider(clienteImpParam), (_, state) {
      state.maybeWhen(
        orElse: () {},
        error: (error, _) {
          final errorMessage = (error is AppException)
              ? error.details.message
              : error.toString();

          context.showErrorBar(
              content: Text(errorMessage),
              duration: const Duration(seconds: 5));
        },
        data: (isDeleted) {
          if (isDeleted) {
            ref.invalidate(
              clienteContactosListProvider(clienteImpParam.clienteId),
            );
            ref.invalidate(
                clienteContactoImpListInSyncByClienteProvider(clienteImpParam));
          }
        },
      );
    });

    final deleteContactoValue =
        ref.watch(clienteContactoDeleteControllerProvider(clienteImpParam));
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            onPressed: () => navigateToEditClienteContacto(
              context,
              clienteImpParam,
            ),
            icon: const Icon(Icons.edit),
          ),
          gapW4,
          deleteContactoValue.maybeWhen(
            loading: () => const CircularProgressIndicator(
              strokeWidth: 2.5,
            ),
            orElse: () => IconButton(
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
              onPressed: () => navigateToDeleteClienteContacto(
                ref,
                clienteImpParam,
              ),
              icon: const Icon(Icons.delete_outline),
            ),
          ),
        ],
      ),
    );
  }

  void navigateToEditClienteContacto(
      BuildContext context, ClienteImpParam clienteImpParam) {
    context.router.push(
      ClienteContactoEditRoute(
        clienteImpParam: clienteImpParam,
      ),
    );
  }

  void navigateToDeleteClienteContacto(
      WidgetRef ref, ClienteImpParam clienteImpEditParam) {
    ref
        .read(
          clienteContactoDeleteControllerProvider(clienteImpEditParam).notifier,
        )
        .deleteClienteContacto();
  }
}

class ContactButtons extends StatelessWidget {
  const ContactButtons({
    super.key,
    required this.icon,
    required this.onPressFunction,
  });

  final IconData icon;
  final Function() onPressFunction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: ElevatedButton(
        onPressed: () => onPressFunction(),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).colorScheme.primaryContainer)),
        child: Column(
          children: [
            Icon(
              icon,
              color: Theme.of(context).colorScheme.secondary,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}

class _CambiosPendientesDeTramitarListView extends ConsumerWidget {
  const _CambiosPendientesDeTramitarListView(this.clienteImpParam);

  final ClienteImpParam clienteImpParam;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cambiosPendientesDeTramitarValue = ref
        .watch(clienteContactoImpListInSyncByClienteProvider(clienteImpParam));
    return cambiosPendientesDeTramitarValue.when(
      data: (contactoImpList) => contactoImpList.isEmpty
          ? Container()
          : GestureDetector(
              onTap: () => showCambiosPendietesDeTramitarAlertDialog(
                  context, contactoImpList),
              child: Row(
                children: [
                  Icon(
                    Icons.error,
                    color: Theme.of(context).colorScheme.error,
                    size: 14,
                  ),
                  gapW4,
                  Flexible(
                    child: Text(
                      S
                          .of(context)
                          .cliente_show_clienteContacto_hayCambiosSinTramitar,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.error,
                          ),
                    ),
                  ),
                ],
              ),
            ),
      error: (error, _) => Text(
        (error is AppException) ? error.details.message : error.toString(),
      ),
      loading: () => const SizedBox(
        height: 16,
        width: 16,
        child: CircularProgressIndicator(
          strokeWidth: 2.5,
        ),
      ),
    );
  }

  void showCambiosPendietesDeTramitarAlertDialog(
      BuildContext context, List<ClienteContactoImp> clienteContactoImpList) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(S
            .of(context)
            .cliente_show_clienteContacto_clienteContactoListPage_cambiosPendientesDeTramitar),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, i) => ClienteContactoImpListTile(
              clienteContactoImp: clienteContactoImpList[i],
            ),
            separatorBuilder: (context, i) => const Divider(),
            itemCount: clienteContactoImpList.length,
          ),
        ),
      ),
    );
  }
}
