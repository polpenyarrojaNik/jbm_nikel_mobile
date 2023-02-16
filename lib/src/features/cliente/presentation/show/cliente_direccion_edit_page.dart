import 'package:auto_route/auto_route.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente_direccion.dart';
import 'package:uuid/uuid.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/pais.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/presentation/common_widgets/app_decoration.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../../usuario/application/usuario_notifier.dart';
import '../../domain/cliente_direccion_edit_page_data.dart';
import '../../domain/cliente_direccion_imp.dart';
import '../../domain/cliente_imp_param.dart';
import '../../infrastructure/cliente_repository.dart';
import 'cliente_direccion_edit_page_controller.dart';
import 'cliente_direccion_list_imp_tile.dart';

class ClienteDireccionEditPage extends ConsumerStatefulWidget {
  const ClienteDireccionEditPage({super.key, required this.clienteImpParam});

  final ClienteImpParam clienteImpParam;

  @override
  ConsumerState<ClienteDireccionEditPage> createState() =>
      _ClienteDireccionEditPageState();
}

class _ClienteDireccionEditPageState
    extends ConsumerState<ClienteDireccionEditPage> {
  final formKey = GlobalKey<FormBuilderState>();
  Pais? paisDireccion;

  @override
  void initState() {
    super.initState();
    paisDireccion = widget.clienteImpParam.clientePais!;
  }

  void onPaisChanged(Pais? newPaisValue) {
    setState(() {
      paisDireccion = newPaisValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(
        clienteDireccionEditPageControllerProvider(widget.clienteImpParam));

    ref.listen<AsyncValue>(
      clienteDireccionEditPageControllerProvider(widget.clienteImpParam),
      (_, state) => state.maybeWhen(
          orElse: () {},
          error: (error, _) {
            final errorMessage = (error is AppException)
                ? error.details.message
                : error.toString();

            context.showErrorBar(content: Text(errorMessage));

            ref.invalidate(
                clienteDireccionListProvider(widget.clienteImpParam.clienteId));
            context.router.pop();
          },
          data: (clienteDireccionEditPageData) {
            clienteDireccionEditPageData =
                clienteDireccionEditPageData as ClienteDireccionEditPageData;
            if (clienteDireccionEditPageData.isSent) {
              if (clienteDireccionEditPageData.clienteDireccion != null) {
                context.showSuccessBar(
                  content: Text(S
                      .of(context)
                      .cliente_show_clienteDireccion_clienteDireccionEditPage_direccionGuardadaConExito),
                );
              } else {
                context.showErrorBar(
                  content: Text(
                    S
                        .of(context)
                        .cliente_show_clienteDireccion_clienteDireccionEditPage_direccionNoGuardada,
                  ),
                );
              }
              ref.invalidate(clienteDireccionListProvider(
                  widget.clienteImpParam.clienteId));
              ref.invalidate(clienteDireccionImpListInSyncByClienteProvider(
                  widget.clienteImpParam));
              context.router.pop();
            }
          }),
    );

    return Scaffold(
      appBar: CommonAppBar(
          titleText: S
              .of(context)
              .cliente_show_clienteDireccion_clienteDireccionEditPage_editarDireccion,
          actions: [
            IconButton(
              onPressed: () => saveClienteDireccion(context, ref, formKey),
              icon: const Icon(Icons.save),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: value.when(
          data: (clienteDireccionEditPageData) => Column(
            children: [
              ClienteDireccionEditForm(
                clienteDireccion: clienteDireccionEditPageData.clienteDireccion,
                formKey: formKey,
                paisCliente: widget.clienteImpParam.clientePais,
                onPaisChanged: onPaisChanged,
              ),
              if (widget.clienteImpParam.id != null)
                _CambiosPendientesListView(
                  clienteImpParam: widget.clienteImpParam,
                )
            ],
          ),
          error: (error, _) {
            final clienteDireccionEditPageData =
                error as ClienteDireccionEditPageData;

            return Column(
              children: [
                ClienteDireccionEditForm(
                  clienteDireccion:
                      clienteDireccionEditPageData.clienteDireccion,
                  formKey: formKey,
                  paisCliente: widget.clienteImpParam.clientePais,
                  onPaisChanged: onPaisChanged,
                ),
                _CambiosPendientesListView(
                  clienteImpParam: widget.clienteImpParam,
                )
              ],
            );
          },
          loading: () => const Center(
            child: ProgressIndicatorWidget(),
          ),
        ),
      ),
    );
  }

  void saveClienteDireccion(BuildContext context, WidgetRef ref,
      GlobalKey<FormBuilderState> formKey) async {
    if (formKey.currentState!.saveAndValidate()) {
      final usuario = ref.watch(usuarioNotifierProvider)!;

      final clienteDireccionToUpsert = ClienteDireccionImp(
        id: widget.clienteImpParam.impId ?? const Uuid().v4(),
        fecha: DateTime.now().toUtc(),
        usuarioId: usuario.id,
        clienteId: widget.clienteImpParam.clienteId,
        direccionId: widget.clienteImpParam.id,
        nombre: formKey.currentState!.value['nombre'] as String,
        direccion1: formKey.currentState!.value['direccion1'] as String,
        direccion2: formKey.currentState!.value['direccion2'] as String?,
        codigoPostal: formKey.currentState!.value['codigoPostal'] as String?,
        poblacion: formKey.currentState!.value['poblacion'] as String?,
        provincia: formKey.currentState!.value['provincia'] as String?,
        pais: paisDireccion,
        enviada: false,
        borrar: false,
      );
      await ref
          .read(
              clienteDireccionEditPageControllerProvider(widget.clienteImpParam)
                  .notifier)
          .upsertClienteDireccionImp(clienteDireccionToUpsert);
    }
  }
}

class ClienteDireccionEditForm extends StatefulWidget {
  const ClienteDireccionEditForm(
      {super.key,
      required this.clienteDireccion,
      required this.formKey,
      required this.paisCliente,
      required this.onPaisChanged});

  final ClienteDireccion? clienteDireccion;
  final GlobalKey<FormBuilderState> formKey;
  final Pais? paisCliente;
  final Function(Pais newPaisValue) onPaisChanged;

  @override
  State<ClienteDireccionEditForm> createState() =>
      _ClienteDireccionEditFormState();
}

class _ClienteDireccionEditFormState extends State<ClienteDireccionEditForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FormBuilder(
        key: widget.formKey,
        autoFocusOnValidationFailure: true,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'nombre',
                initialValue: widget.clienteDireccion?.nombre,
                decoration: AppDecoration.defaultFieldDecoration(S
                    .of(context)
                    .cliente_show_clienteDireccion_clienteDireccionEditPage_nombre),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'direccion1',
                initialValue: widget.clienteDireccion?.direccion1,
                keyboardType: TextInputType.streetAddress,
                decoration: AppDecoration.defaultFieldDecoration(S
                    .of(context)
                    .cliente_show_clienteDireccion_clienteDireccionEditPage_direccion1),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'direccion2',
                initialValue: widget.clienteDireccion?.direccion2,
                keyboardType: TextInputType.streetAddress,
                decoration: AppDecoration.defaultFieldDecoration(S
                    .of(context)
                    .cliente_show_clienteDireccion_clienteDireccionEditPage_direccion2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'codigoPostal',
                initialValue: widget.clienteDireccion?.codigoPostal,
                decoration: AppDecoration.defaultFieldDecoration(S
                    .of(context)
                    .cliente_show_clienteDireccion_clienteDireccionEditPage_codigoPostal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'poblacion',
                initialValue: widget.clienteDireccion?.poblacion,
                decoration: AppDecoration.defaultFieldDecoration(S
                    .of(context)
                    .cliente_show_clienteDireccion_clienteDireccionEditPage_poblacion),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'provincia',
                initialValue: widget.clienteDireccion?.provincia,
                decoration: AppDecoration.defaultFieldDecoration(S
                    .of(context)
                    .cliente_show_clienteDireccion_clienteDireccionEditPage_provincia),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderTextField(
                name: 'pais',
                readOnly: true,
                initialValue: widget.clienteDireccion?.pais?.descripcion ??
                    widget.paisCliente?.descripcion,
                decoration: AppDecoration.defaultFieldDecoration(S
                    .of(context)
                    .cliente_show_clienteDireccion_clienteDireccionEditPage_pais),
                onTap: () => navigateToSelectPais(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToSelectPais(BuildContext context) async {
    final newPaisValue = await context.router
        .push(ClienteDireccionSeleccionarPaisRoute()) as Pais?;

    if (newPaisValue != null) {
      widget.onPaisChanged(newPaisValue);
      widget.formKey.currentState?.fields['pais']
          ?.didChange(newPaisValue.descripcion);
    }
  }
}

class _CambiosPendientesListView extends ConsumerWidget {
  const _CambiosPendientesListView({required this.clienteImpParam});

  final ClienteImpParam clienteImpParam;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clienteDireccionImpValue = ref
        .watch(clienteDireccionImpListInSyncByClienteProvider(clienteImpParam));
    return clienteDireccionImpValue.when(
        data: (clienteDireccionImpList) => clienteDireccionImpList.isEmpty
            ? Container()
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        S
                            .of(context)
                            .cliente_show_clienteDireccion_clienteDireccionEditPage_cambiosPendientesDeTramitar,
                        style: Theme.of(context).textTheme.titleSmall),
                    gapH4,
                    ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, i) => ClienteDireccionImpListTile(
                          clienteDireccionImp: clienteDireccionImpList[i]),
                      separatorBuilder: (context, i) => const Divider(),
                      itemCount: clienteDireccionImpList.length,
                    ),
                  ],
                ),
              ),
        error: (error, _) => ErrorMessageWidget(
            (error is AppException) ? error.details.message : error.toString()),
        loading: () => const Center(child: CircularProgressIndicator()));
  }
}
