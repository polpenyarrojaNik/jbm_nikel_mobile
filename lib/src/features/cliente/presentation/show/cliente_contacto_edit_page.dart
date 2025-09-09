import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:uuid/uuid.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/presentation/common_widgets/app_decoration.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/phone_text_form_field.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../../usuario/application/usuario_notifier.dart';
import '../../../visitas/domain/image_form_data.dart';
import '../../domain/cliente_contacto.dart';
import '../../domain/cliente_contacto_imp.dart';
import '../../domain/cliente_contacto_imp_edit_page_data.dart';
import '../../domain/cliente_imp_param.dart';
import '../../infrastructure/cliente_repository.dart';
import 'cliente_contacto_edit_page_controller.dart';
import 'cliente_contacto_imp_list_tile.dart';

@RoutePage()
class ClienteContactoEditPage extends ConsumerWidget {
  ClienteContactoEditPage({
    super.key,
    required this.clienteImpParam,
    bool? popItemCreated,
  }) : popItemCreated = popItemCreated ?? false;

  final ClienteImpParam clienteImpParam;
  final formKey = GlobalKey<FormBuilderState>();
  final bool popItemCreated;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(
      clienteContactoEditPageControllerProvider(clienteImpParam),
    );

    ref.listen<AsyncValue<ClienteContactoImpEditPageData>>(
      clienteContactoEditPageControllerProvider(clienteImpParam),
      (_, state) => state.whenOrNull(
        error: (error, _) {
          final errorMessage = (error is AppException)
              ? error.details.message
              : error.toString();

          context.showErrorBar(
            content: Text(errorMessage),
            duration: const Duration(seconds: 5),
          );
          ref.invalidate(
            clienteContactosListProvider(clienteImpParam.clienteId),
          );
          context.router.maybePop();
        },
        data: (contactoModificacionEditPageData) {
          if (contactoModificacionEditPageData.isSent) {
            if (contactoModificacionEditPageData.clienteContacto != null) {
              context.showSuccessBar(
                content: Text(
                  S
                      .of(context)
                      .cliente_show_clienteContacto_clienteContactoEditPage_contactoGuardadoConExito,
                ),
              );
            } else {
              context.showErrorBar(
                content: Text(
                  S
                      .of(context)
                      .cliente_show_clienteContacto_clienteContactoEditPage_contactoNoGuardado,
                ),
              );
            }
            ref.invalidate(
              clienteContactosListProvider(clienteImpParam.clienteId),
            );
            ref.invalidate(
              clienteContactoImpListInSyncByClienteProvider(clienteImpParam),
            );
            if (popItemCreated) {
              context.router.maybePop(
                contactoModificacionEditPageData.clienteContacto,
              );
            } else {
              context.router.maybePop();
            }
          }
        },
      ),
    );

    return Scaffold(
      appBar: CommonAppBar(
        titleText: S
            .of(context)
            .cliente_show_clienteContacto_clienteContactoEditPage_editarContacto,
        actions: [
          IconButton(
            onPressed: () => _saveClienteContactoImp(ref, formKey),
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: value.when(
          data: (clienteContactoEditPageData) => Column(
            children: [
              Expanded(
                child: _ClienteContactoImpEditForm(
                  clienteContacto: clienteContactoEditPageData.clienteContacto,
                  formKey: formKey,
                ),
              ),
              if (clienteImpParam.id != null)
                _CambiosPendientesListView(clienteImpParam: clienteImpParam),
            ],
          ),
          error: (error, _) {
            final clienteContactoEditPageData =
                error as ClienteContactoImpEditPageData;

            return Column(
              children: [
                Expanded(
                  child: _ClienteContactoImpEditForm(
                    clienteContacto:
                        clienteContactoEditPageData.clienteContacto,
                    formKey: formKey,
                  ),
                ),
                if (clienteImpParam.id != null)
                  _CambiosPendientesListView(clienteImpParam: clienteImpParam),
              ],
            );
          },
          loading: () => const Center(child: ProgressIndicatorWidget()),
        ),
      ),
    );
  }

  void _saveClienteContactoImp(
    WidgetRef ref,
    GlobalKey<FormBuilderState> formKey,
  ) async {
    if (formKey.currentState!.saveAndValidate()) {
      final usuario = ref.watch(usuarioNotifierProvider)!;
      final clienteContactoImp = ClienteContactoImp(
        id: clienteImpParam.impId ?? const Uuid().v4(),
        fecha: DateTime.now().toUtc(),
        usuarioId: usuario.id,
        clienteId: clienteImpParam.clienteId,
        contactoId: clienteImpParam.id,
        nombre: formKey.currentState!.value['nombre'] as String,
        apellido1: formKey.currentState!.value['apellido1'] as String?,
        apellido2: formKey.currentState!.value['apellido2'] as String?,
        telefono1: formKey.currentState!.value['telefono1'] as String?,
        telefono2: formKey.currentState!.value['telefono2'] as String?,
        email: formKey.currentState!.value['email'] as String?,
        observaciones: formKey.currentState!.value['observaciones'] as String?,
        enviado: false,
        borrar: false,
      );
      await ref
          .read(
            clienteContactoEditPageControllerProvider(clienteImpParam).notifier,
          )
          .upsertClienteContactoImp(clienteContactoImp);
    }
  }
}

class _ClienteContactoImpEditForm extends StatelessWidget {
  const _ClienteContactoImpEditForm({
    required this.clienteContacto,
    required this.formKey,
  });

  final ClienteContacto? clienteContacto;
  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FormBuilder(
        key: formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () => scanBusinessCard(context),
                icon: const Icon(Icons.qr_code_scanner),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'nombre',
                initialValue: clienteContacto?.nombre,
                decoration: AppDecoration.defaultFieldDecoration(
                  S
                      .of(context)
                      .cliente_show_clienteContacto_clienteContactoEditPage_nombre,
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.maxLength(60),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'apellido1',
                initialValue: clienteContacto?.apellido1,
                decoration: AppDecoration.defaultFieldDecoration(
                  S
                      .of(context)
                      .cliente_show_clienteContacto_clienteContactoEditPage_apellido,
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.maxLength(60, checkNullOrEmpty: false),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'apellido2',
                initialValue: clienteContacto?.apellido2,
                decoration: AppDecoration.defaultFieldDecoration(
                  S
                      .of(context)
                      .cliente_show_clienteContacto_clienteContactoEditPage_segundoApellido,
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.maxLength(60, checkNullOrEmpty: false),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PhoneTextFormField(
                name: 'telefono1',
                initialValue: clienteContacto?.telefono1,
                labelText: S
                    .of(context)
                    .cliente_show_clienteContacto_clienteContactoEditPage_telefono1,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.phoneNumber(checkNullOrEmpty: false),
                  FormBuilderValidators.maxLength(25, checkNullOrEmpty: false),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PhoneTextFormField(
                name: 'telefono2',
                initialValue: clienteContacto?.telefono2,
                labelText: S
                    .of(context)
                    .cliente_show_clienteContacto_clienteContactoEditPage_telefono2,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.phoneNumber(checkNullOrEmpty: false),
                  FormBuilderValidators.maxLength(25, checkNullOrEmpty: false),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'email',
                initialValue: clienteContacto?.email,
                keyboardType: TextInputType.emailAddress,
                decoration: AppDecoration.defaultFieldDecoration(
                  S
                      .of(context)
                      .cliente_show_clienteContacto_clienteContactoEditPage_email,
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.email(checkNullOrEmpty: false),
                  FormBuilderValidators.maxLength(255, checkNullOrEmpty: false),
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
                      .cliente_show_clienteContacto_clienteContactoEditPage_observaciones,
                  suffixButton: IconButton(
                    onPressed: () =>
                        formKey.currentState?.fields['observaciones']?.reset(),
                    icon: const Icon(Icons.cancel_outlined),
                  ),
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.maxLength(
                    4000,
                    checkNullOrEmpty: false,
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setContactValues(ImageFormData imageFormData) {
    formKey.currentState?.patchValue({
      'nombre': imageFormData.name,
      'telefono': imageFormData.phoneList[0],
      'telefono2': imageFormData.phoneList[1],
      'email': imageFormData.email,
    });
  }

  void scanBusinessCard(BuildContext context) async {
    final imageFile = await context.router.push<File?>(CameraRoute());

    if (imageFile != null && context.mounted) {
      final imageFormData = await context.router.push<ImageFormData?>(
        ImageFormRoute(imageFile: imageFile, isFromCliente: true),
      );

      if (imageFormData != null) {
        setContactValues(imageFormData);
      }
    }
  }
}

class _CambiosPendientesListView extends ConsumerWidget {
  const _CambiosPendientesListView({required this.clienteImpParam});

  final ClienteImpParam clienteImpParam;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clienteConatctoImpValue = ref.watch(
      clienteContactoImpListInSyncByClienteProvider(clienteImpParam),
    );
    return clienteConatctoImpValue.when(
      data: (clienteContactoImpList) => clienteContactoImpList.isEmpty
          ? Container()
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S
                        .of(context)
                        .cliente_show_clienteContacto_clienteContactoEditPage_cambiosPendientesDeTramitar,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Gap(4),
                  ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, i) => ClienteContactoImpListTile(
                      clienteContactoImp: clienteContactoImpList[i],
                    ),
                    separatorBuilder: (context, i) => const Divider(),
                    itemCount: clienteContactoImpList.length,
                  ),
                ],
              ),
            ),
      error: (error, _) => ErrorMessageWidget(
        (error is AppException) ? error.details.message : error.toString(),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
