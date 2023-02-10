import 'package:auto_route/auto_route.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/common_app_bar.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente_contacto.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente_contacto_edit_page_data.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente_contacto_edit_param.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_repository.dart';
import 'package:uuid/uuid.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/presentation/common_widgets/app_decoration.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import 'cliente_contacto_edit_page_controller.dart';

class ClienteContactoEditPage extends ConsumerWidget {
  ClienteContactoEditPage(
      {super.key,
      required this.clienteId,
      required this.clienteContactoEditParam});

  final ClienteContactoEditParam clienteContactoEditParam;
  final String clienteId;
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(
        clienteContactoEditPageControllerProvider(clienteContactoEditParam));

    ref.listen<AsyncValue>(
      clienteContactoEditPageControllerProvider(clienteContactoEditParam),
      (_, state) => state.maybeWhen(
          orElse: () {},
          error: (error, _) {
            final errorMessage = (error is AppException)
                ? error.details.message
                : error.toString();

            context.showErrorBar(content: Text(errorMessage));
          },
          data: (clienteContactoEditPageData) {
            clienteContactoEditPageData =
                clienteContactoEditPageData as ClienteContactoEditPageData;
            if (clienteContactoEditPageData.isSent) {
              if (clienteContactoEditPageData.clienteContacto != null) {
                context.showSuccessBar(
                  content: Text(S
                      .of(context)
                      .cliente_show_clienteContacto_clienteContacoEditPage_contactoGuardadoConExito),
                );
                savedContactoSuccessNavigation(context, ref);
              } else {
                context.showErrorBar(
                  content: Text(
                    S
                        .of(context)
                        .cliente_show_clienteContacto_clienteContacoEditPage_contactoNoGuardado,
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
              .cliente_show_clienteContacto_clienteContacoEditPage_editarContacto,
          actions: [
            IconButton(
                onPressed: () => saveClienteContacto(context, ref, formKey),
                icon: const Icon(Icons.save)),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: value.when(
          data: (clienteContactoEditPageData) => ClienteContactoEditForm(
            clienteContacto: clienteContactoEditPageData.clienteContacto,
            formKey: formKey,
          ),
          error: (error, _) {
            final clienteContactoEditPageData =
                error as ClienteContactoEditPageData;

            return ClienteContactoEditForm(
              clienteContacto: clienteContactoEditPageData.clienteContacto,
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

  void savedContactoSuccessNavigation(BuildContext context, WidgetRef ref) {
    ref.invalidate(clienteContactosListProvider(clienteId));
    context.router.pop();
  }

  void saveClienteContacto(BuildContext context, WidgetRef ref,
      GlobalKey<FormBuilderState> formKey) async {
    if (formKey.currentState!.saveAndValidate()) {
      final clienteConatctoToUpsert = ClienteContacto(
        clienteId: clienteId,
        contactoId:
            clienteContactoEditParam.clienteContactoId ?? const Uuid().v1(),
        nombre: formKey.currentState!.value['nombre'] as String,
        apellido1: formKey.currentState!.value['apellido1'] as String?,
        apellido2: formKey.currentState!.value['apellido2'] as String?,
        telefono1: formKey.currentState!.value['telefono1'] as String?,
        telefono2: formKey.currentState!.value['telefono2'] as String?,
        email: formKey.currentState!.value['email'] as String?,
        observaciones: formKey.currentState!.value['observaciones'] as String?,
        lastUpdated: DateTime.now().toUtc(),
        enviado: false,
        tratado: false,
        deleted: false,
      );
      await ref
          .read(clienteContactoEditPageControllerProvider(
                  clienteContactoEditParam)
              .notifier)
          .upsertClienteContacto(clienteConatctoToUpsert);
    }
  }
}

class ClienteContactoEditForm extends StatelessWidget {
  const ClienteContactoEditForm(
      {super.key, required this.clienteContacto, required this.formKey});

  final ClienteContacto? clienteContacto;
  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FormBuilder(
        key: formKey,
        autoFocusOnValidationFailure: true,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'nombre',
                initialValue: clienteContacto?.nombre,
                decoration: AppDecoration.defaultFieldDecoration(S
                    .of(context)
                    .cliente_show_clienteContacto_clienteContacoEditPage_nombre),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'apellido1',
                initialValue: clienteContacto?.apellido1,
                decoration: AppDecoration.defaultFieldDecoration(S
                    .of(context)
                    .cliente_show_clienteContacto_clienteContacoEditPage_apellido),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'apellido2',
                initialValue: clienteContacto?.apellido2,
                decoration: AppDecoration.defaultFieldDecoration(S
                    .of(context)
                    .cliente_show_clienteContacto_clienteContacoEditPage_segundoApellido),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'telefono1',
                initialValue: clienteContacto?.telefono1,
                keyboardType: TextInputType.phone,
                decoration: AppDecoration.defaultFieldDecoration(S
                    .of(context)
                    .cliente_show_clienteContacto_clienteContacoEditPage_telefono1),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.numeric(),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'telefono2',
                initialValue: clienteContacto?.telefono2,
                keyboardType: TextInputType.phone,
                decoration: AppDecoration.defaultFieldDecoration(S
                    .of(context)
                    .cliente_show_clienteContacto_clienteContacoEditPage_telefono2),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.numeric(),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'email',
                initialValue: clienteContacto?.email,
                keyboardType: TextInputType.emailAddress,
                decoration: AppDecoration.defaultFieldDecoration(S
                    .of(context)
                    .cliente_show_clienteContacto_clienteContacoEditPage_email),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.email(),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'observaciones',
                initialValue: clienteContacto?.observaciones,
                minLines: 5,
                maxLines: null,
                decoration: AppDecoration.defaultFieldDecoration(
                  S
                      .of(context)
                      .cliente_show_clienteContacto_clienteContacoEditPage_observaciones,
                  suffixButton: IconButton(
                    onPressed: () =>
                        formKey.currentState?.fields['observaciones']?.reset(),
                    icon: const Icon(Icons.cancel_outlined),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
