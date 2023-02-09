import 'package:auto_route/auto_route.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente_direccion.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../domain/cliente_direccion_edit_page_data.dart';
import '../../domain/cliente_direccion_edit_param.dart';
import '../../infrastructure/cliente_repository.dart';
import 'cliente_direccion_edit_page_controller.dart';

class ClienteDireccionEditPage extends ConsumerWidget {
  ClienteDireccionEditPage(
      {super.key,
      required this.clienteId,
      required this.clienteDireccionEditParam});

  final ClienteDireccionEditParam clienteDireccionEditParam;
  final String clienteId;
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(
        clienteDireccionEditPageControllerProvider(clienteDireccionEditParam));

    ref.listen<AsyncValue>(
      clienteDireccionEditPageControllerProvider(clienteDireccionEditParam),
      (_, state) => state.maybeWhen(
          orElse: () {},
          error: (error, _) {
            final errorMessage = (error is AppException)
                ? error.details.message
                : error.toString();

            context.showErrorBar(content: Text(errorMessage));
          },
          data: (clienteDireccionEditPageData) {
            clienteDireccionEditPageData =
                clienteDireccionEditPageData as ClienteDireccionEditPageData;
            if (clienteDireccionEditPageData.isSent) {
              if (clienteDireccionEditPageData.clienteDireccion != null) {
                context.showSuccessBar(
                  content: Text(S
                      .of(context)
                      .cliente_show_clienteContacto_clienteConatcoEditPage_contactoGuardadoConExito),
                );
                savedDireccionSuccessNavigation(context, ref);
              } else {
                context.showErrorBar(
                  content: Text(
                    S
                        .of(context)
                        .cliente_show_clienteContacto_clienteConatcoEditPage_contactoNoGuardado,
                  ),
                );
              }
            }
          }),
    );

    return Scaffold(
      appBar: CommonAppBar(
          titleText: S
              .of(context)
              .cliente_show_clienteContacto_clienteConatcoEditPage_editarContacto,
          actions: [
            IconButton(
                onPressed: () => saveClienteDireccion(context, ref, formKey),
                icon: const Icon(Icons.save)),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: value.when(
          data: (clienteDireccionEditPageData) => ClienteDireccionEditForm(
            clienteDireccion: clienteDireccionEditPageData.clienteDireccion,
            formKey: formKey,
          ),
          error: (error, _) {
            final clienteDireccionEditPageData =
                error as ClienteDireccionEditPageData;

            return ClienteDireccionEditForm(
              clienteDireccion: clienteDireccionEditPageData.clienteDireccion,
              formKey: formKey,
            );
          },
          loading: () => const Center(
            child: ProgressIndicatorWidget(),
          ),
        ),
      ),
    );
  }

  void savedDireccionSuccessNavigation(BuildContext context, WidgetRef ref) {
    ref.invalidate(clienteDireccionListProvider(clienteId));
    context.router.pop();
  }

  void saveClienteDireccion(BuildContext context, WidgetRef ref,
      GlobalKey<FormBuilderState> formKey) async {
    if (formKey.currentState!.saveAndValidate()) {
      late ClienteDireccion clienteDireccionToUpsert;
      await ref
          .read(clienteDireccionEditPageControllerProvider(
                  clienteDireccionEditParam)
              .notifier)
          .upsertClienteDireccion(clienteDireccionToUpsert);
    }
  }
}

class ClienteDireccionEditForm extends StatelessWidget {
  const ClienteDireccionEditForm(
      {super.key, required this.clienteDireccion, required this.formKey});

  final ClienteDireccion? clienteDireccion;
  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
//TODO Do form

    return SingleChildScrollView(
      child: FormBuilder(
        key: formKey,
        autoFocusOnValidationFailure: true,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
