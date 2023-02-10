import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/header_datos_relacionados.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../domain/cliente_contacto.dart';
import '../../domain/cliente_contacto_edit_param.dart';
import '../../infrastructure/cliente_repository.dart';

class ClienteContactoPage extends ConsumerWidget {
  const ClienteContactoPage(
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
                      itemBuilder: (context, i) => ClienteContactoTile(
                        clienteContacto: clienteContactoList[i],
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
        clienteId: clienteId,
        clienteContactoEditParam:
            ClienteContactoEditParam(clienteId, null, false),
      ),
    );
  }
}

class ClienteContactoTile extends StatelessWidget {
  const ClienteContactoTile({super.key, required this.clienteContacto});

  final ClienteContacto clienteContacto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: listPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (clienteContacto.nombre != null)
                  Text(clienteContacto.getName(clienteContacto.nombre,
                      clienteContacto.apellido1, clienteContacto.apellido2)!),
                if (clienteContacto.email != null)
                  Row(
                    children: [
                      Icon(Icons.email,
                          color: Theme.of(context).textTheme.bodySmall?.color,
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
                      Icon(Icons.phone,
                          color: Theme.of(context).textTheme.bodySmall?.color,
                          size: 14),
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
                      Icon(Icons.phone,
                          color: Theme.of(context).textTheme.bodySmall?.color,
                          size: 14),
                      gapW4,
                      Text(
                        clienteContacto.telefono2!,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color:
                                Theme.of(context).textTheme.bodySmall?.color),
                      ),
                    ],
                  ),
                if (!clienteContacto.tratado)
                  Row(
                    children: [
                      Icon(Icons.error,
                          color: Theme.of(context).colorScheme.error, size: 14),
                      gapW4,
                      Text(
                        S
                            .of(context)
                            .cliente_show_clienteContacto_hayCambiosSinTramitar,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.error,
                            ),
                      ),
                    ],
                  )
              ],
            ),
          ),
          gapW8,
          IconButton(
            onPressed: () => navigateToEditClienteContacto(
                context,
                clienteContacto.clienteId,
                clienteContacto.contactoId,
                clienteContacto.tratado),
            icon: const Icon(Icons.edit),
          ),
          gapW8,
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

  void navigateToEditClienteContacto(
      BuildContext context, String clienteId, String contactoId, bool tratado) {
    context.router.push(
      ClienteContactoEditRoute(
        clienteId: clienteId,
        clienteContactoEditParam:
            ClienteContactoEditParam(clienteId, contactoId, tratado),
      ),
    );
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

// class ClienteContactoTile extends StatelessWidget {
//   const ClienteContactoTile({super.key, required this.clienteContacto});

//   final ClienteContacto clienteContacto;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 4.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Flexible(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     if (clienteContacto.nombre != null)
//                       Row(
//                         children: [
//                           Text(clienteContacto.nombre!),
//                         ],
//                       ),
//                     if (clienteContacto.email != null)
//                       Row(
//                         children: [
//                           Icon(Icons.email,
//                               color: Theme.of(context).textTheme.bodySmall?.color,
//                               size: 14),
//                           gapW4,
//                           Flexible(
//                             child: Text(
//                               clienteContacto.email!,
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .bodyMedium
//                                   ?.copyWith(
//                                       color: Theme.of(context)
//                                           .textTheme
//                                           .bodySmall
//                                           ?.color),
//                             ),
//                           ),
//                         ],
//                       ),
//                     if (clienteContacto.telefono1 != null)
//                       Row(
//                         children: [
//                           Icon(Icons.phone,
//                               color: Theme.of(context).textTheme.bodySmall?.color,
//                               size: 14),
//                           gapW4,
//                           Text(
//                             clienteContacto.telefono1!,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .bodyMedium
//                                 ?.copyWith(
//                                     color: Theme.of(context)
//                                         .textTheme
//                                         .bodySmall
//                                         ?.color),
//                           ),
//                         ],
//                       ),
//                     if (clienteContacto.telefono2 != null)
//                       Row(
//                         children: [
//                           Icon(Icons.phone,
//                               color: Theme.of(context).textTheme.bodySmall?.color,
//                               size: 14),
//                           gapW4,
//                           Text(
//                             clienteContacto.telefono2!,
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .bodyMedium
//                                 ?.copyWith(
//                                     color: Theme.of(context)
//                                         .textTheme
//                                         .bodySmall
//                                         ?.color),
//                           ),
//                         ],
//                       ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         if (clienteContacto.email != null)
//                           ContactButtons(
//                             icon: Icons.email,
//                             onPressFunction: () =>
//                                 navigateToEmailApp(clienteContacto.email!),
//                           ),
//                         if (clienteContacto.telefono1 != null) gapW12,
//                         if (clienteContacto.telefono1 != null)
//                           ContactButtons(
//                             icon: Icons.phone,
//                             onPressFunction: () =>
//                                 openPhoneCall(clienteContacto.telefono1!),
//                           ),
//                         if (clienteContacto.telefono2 != null) gapW12,
//                         if (clienteContacto.telefono2 != null)
//                           ContactButtons(
//                             icon: Icons.phone,
//                             onPressFunction: () =>
//                                 openPhoneCall(clienteContacto.telefono2!),
//                           ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         const Divider(),
//       ],
//     );
//   }

//   void openPhoneCall(String phone) async {
//     final Uri params = Uri(
//       scheme: 'tel',
//       path: phone,
//     );
//     await launchUrl(params, mode: LaunchMode.externalApplication);
//   }

//   void navigateToEmailApp(String contactEmail) async {
//     final Uri params = Uri(
//       scheme: 'mailto',
//       path: contactEmail,
//     );
//     await launchUrl(params, mode: LaunchMode.externalApplication);
//   }
// }
