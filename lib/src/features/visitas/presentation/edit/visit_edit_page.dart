import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/domain/provincia.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';

import 'package:jbm_nikel_mobile/src/features/cliente/presentation/index/cliente_search_controller.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/domain/visita.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/presentation/edit/pais_search_page.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/presentation/edit/provincia_search_page.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/presentation/edit/visita_edit_page_controller.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/pais.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/presentation/common_widgets/alert_dialogs.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../cliente/domain/cliente.dart';
import '../../../usuario/application/usuario_notifier.dart';
import '../../domain/visita_id_param.dart';
import '../../infrastructure/visita_repository.dart';
import '../index/visita_search_controller.dart';

@RoutePage()
class VisitaEditPage extends ConsumerStatefulWidget {
  VisitaEditPage(
      {super.key, String? id, bool? isNew, this.createVisitaFromClienteId})
      : id = id ?? const Uuid().v4(),
        isNew = id == null ? true : false;

  final String id;
  final bool isNew;
  final String? createVisitaFromClienteId;

  @override
  ConsumerState<VisitaEditPage> createState() => _VisitaEditPageState();
}

class _VisitaEditPageState extends ConsumerState<VisitaEditPage> {
  VisitaIdIsLocalParam? visitaIdLocalParam;

  final formKey = GlobalKey<FormBuilderState>();
  String? clienteId;
  Pais? pais;
  Provincia? provincia;
  bool isClientePotencial = false;

  void onSelectedCliente(String selectedClienteId) {
    setState(() {
      clienteId = selectedClienteId;
    });
  }

  void onSelectedPais(Pais selectedPais) {
    setState(() {
      pais = selectedPais;
    });
  }

  void onSelectedProvincia(Provincia selectedProvincia) {
    setState(() {
      provincia = selectedProvincia;
    });
  }

  void onChangeClientePotencial(bool newVale) {
    setState(() {
      isClientePotencial = newVale;
    });
  }

  @override
  void initState() {
    super.initState();
    visitaIdLocalParam = VisitaIdIsLocalParam(
      id: widget.id,
      isLocal: true,
      isNew: widget.isNew,
      createVisitaFromClienteId: widget.createVisitaFromClienteId,
    );
  }

  @override
  Widget build(BuildContext context) {
    final state =
        ref.watch(visitaEditPageControllerProvider(visitaIdLocalParam!));

    ref.listen<VisitaEditPageControllerState>(
        visitaEditPageControllerProvider(visitaIdLocalParam!), (__, state) {
      state.maybeWhen(
        data: (visita) =>
            isClientePotencial = visita?.isClienteProvisional ?? false,
        saved: (visita) {
          ref.invalidate(visitaProvider(visitaIdLocalParam!));
          ref.invalidate(visitaIndexScreenControllerProvider);
          ref.invalidate(visitaIndexScreenPaginatedControllerProvider);
          context.showSuccessBar(
              content: Text(S.of(context).visitas_edit_visitaEditar_saved));

          context.router.maybePop();
        },
        deleted: () => context.router.popUntilRouteWithName('/visita'),
        savedError: (_, error, __) => context.showErrorBar(
            duration: const Duration(seconds: 5),
            content: Text((error is AppException)
                ? error.details.message
                : error.toString())),
        orElse: () => null,
      );
    });
    return Scaffold(
      appBar: CommonAppBar(
        titleText: ((widget.isNew)
            ? S.of(context).visitas_edit_visitaEditar_titleNueva
            : S.of(context).visitas_edit_visitaEditar_titleEditar),
        actions: [
          state.maybeWhen(
            saving: (_) => const ProgressIndicatorWidget(),
            orElse: () => IconButton(
              icon: const Icon(Icons.save),
              onPressed: () => saveForm(),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: state.when(
            loading: () => const ProgressIndicatorWidget(),
            data: (visita) {
              return _VisitaForm(
                  formKey: formKey,
                  visita: visita,
                  onSelectedCliente: onSelectedCliente,
                  onSelectedProvincia: onSelectedProvincia,
                  onSelectedPais: onSelectedPais,
                  onChangeClientePotencial: onChangeClientePotencial,
                  isClienteProvisional: isClientePotencial,
                  readOnly: false,
                  isNew: widget.isNew,
                  paisId: pais?.id);
            },
            error: (Object error, StackTrace? _) => ErrorMessageWidget(
              (error is AppException)
                  ? error.details.message
                  : error.toString(),
            ),
            saved: (visita) => _VisitaForm(
              formKey: formKey,
              visita: visita,
              onSelectedCliente: onSelectedCliente,
              onSelectedProvincia: onSelectedProvincia,
              onSelectedPais: onSelectedPais,
              onChangeClientePotencial: onChangeClientePotencial,
              isClienteProvisional: isClientePotencial,
              readOnly: false,
              isNew: widget.isNew,
              paisId: pais?.id,
            ),
            saving: (visita) => _VisitaForm(
              formKey: formKey,
              visita: visita,
              onSelectedCliente: onSelectedCliente,
              onSelectedProvincia: onSelectedProvincia,
              onSelectedPais: onSelectedPais,
              onChangeClientePotencial: onChangeClientePotencial,
              isClienteProvisional: isClientePotencial,
              readOnly: true,
              isNew: widget.isNew,
              paisId: pais?.id,
            ),
            savedError: (Visita visita, Object error, StackTrace? stackTrace) =>
                _VisitaForm(
              formKey: formKey,
              visita: visita,
              onSelectedCliente: onSelectedCliente,
              onSelectedProvincia: onSelectedProvincia,
              onSelectedPais: onSelectedPais,
              onChangeClientePotencial: onChangeClientePotencial,
              isClienteProvisional: isClientePotencial,
              readOnly: false,
              isNew: widget.isNew,
              paisId: pais?.id,
            ),
            deleted: () => const ProgressIndicatorWidget(),
          ),
        ),
      ),
    );
  }

  void saveForm() async {
    if (formKey.currentState!.saveAndValidate()) {
      if (isClientePotencial) {
        final contiueToSavingVisit = await _checkClientePotencialValues(
            formKey.currentState!.value['direccion1'] as String?,
            formKey.currentState!.value['telefono'] as String?,
            formKey.currentState!.value['email'] as String?);
        if (!contiueToSavingVisit) {
          return;
        }
      }

      ref
          .read(visitaEditPageControllerProvider(visitaIdLocalParam!).notifier)
          .upsertVisita(
            visitaLocal: Visita(
              id: null,
              fecha: (formKey.currentState!.value['fecha'] as DateTime).toUtc(),
              clienteId: clienteId,
              isClienteProvisional: isClientePotencial,
              clienteProvisionalNombre: isClientePotencial
                  ? formKey.currentState!.value['nombre'] as String
                  : null,
              clienteProvisionalEmail: isClientePotencial
                  ? formKey.currentState!.value['email'] as String?
                  : null,
              clienteProvisionalTelefono: isClientePotencial
                  ? formKey.currentState!.value['telefono'] as String?
                  : null,
              clienteProvisionalDireccion1: isClientePotencial
                  ? formKey.currentState!.value['direccion1'] as String?
                  : null,
              clienteProvisionalDireccion2: isClientePotencial
                  ? formKey.currentState!.value['direccion2'] as String?
                  : null,
              clienteProvisionalCodigoPostal: isClientePotencial
                  ? formKey.currentState!.value['codigo_postal'] as String?
                  : null,
              clienteProvisionalPoblacion: isClientePotencial
                  ? formKey.currentState!.value['poblacion'] as String
                  : null,
              clienteProvisionalProvincia: provincia,
              clienteProvisionalRegionId: provincia?.regionId,
              clienteProvisionalPais: pais,
              numEmpl: ref.read(usuarioNotifierProvider)!.id,
              resumen: formKey.currentState!.value['resumen'] as String,
              contacto: formKey.currentState!.value['contacto'] as String,
              atendidoPor:
                  formKey.currentState!.value['atendidoPor'] as String?,
              marcasCompetencia:
                  formKey.currentState!.value['marcasCompetencia'] as String?,
              latitud: 0,
              longitud: 0,
              visitaAppId: widget.id,
              lastUpdated: DateTime.now().toUtc(),
              deleted: false,
              enviada: false,
              tratada: false,
            ),
          );
    } else {
      context.showErrorBar(
        content: Text(
            S.of(context).visitas_edit_visitaEditar_errorValidarFormulario),
      );
    }
  }

  Future<bool> _checkClientePotencialValues(
      String? direccion1, String? telefono, String? email) async {
    if (telefono != null) {
      final existTelefono = await ref
          .read(visitaRepositoryProvider)
          .existClientePotencialPhone(telefono);
      if (existTelefono && mounted) {
        final dialogPhoneResult = await showDialogSaveVisitAnyway(context,
            S.current.visitas_edit_visitaEditar_validatorExistPhoneMessage);

        if (dialogPhoneResult == null || !dialogPhoneResult) {
          return false;
        }
      }
    }

    if (email != null) {
      final existEmail = await ref
          .read(visitaRepositoryProvider)
          .existClientePotencialEmail(email);

      if (existEmail && mounted) {
        final dialogEmailResult = await showDialogSaveVisitAnyway(context,
            S.current.visitas_edit_visitaEditar_validatorExistEmailMessage);

        if (dialogEmailResult == null || !dialogEmailResult) {
          return false;
        }
      }
    }

    if (direccion1 == null) {}

    return true;
  }
}

class _VisitaForm extends StatelessWidget {
  const _VisitaForm({
    required this.formKey,
    required this.onSelectedCliente,
    required this.onSelectedPais,
    required this.onSelectedProvincia,
    required this.onChangeClientePotencial,
    required this.isClienteProvisional,
    required this.visita,
    required this.readOnly,
    required this.isNew,
    required this.paisId,
  });
  final GlobalKey<FormBuilderState> formKey;
  final void Function(String clienteId) onSelectedCliente;
  final void Function(Pais pais) onSelectedPais;
  final void Function(Provincia provincia) onSelectedProvincia;

  final void Function(bool newValue) onChangeClientePotencial;
  final bool isClienteProvisional;
  final Visita? visita;
  final bool readOnly;
  final bool isNew;
  final String? paisId;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Column(
        children: [
          FormBuilderSwitch(
            name: 'cliente_provisional',
            title: Text(
                S.of(context).visitas_edit_visitaEditar_clienteProvisional),
            onChanged: (newValue) => onChangeClientePotencial(newValue!),
            initialValue: visita?.isClienteProvisional ?? isClienteProvisional,
          ),
          if (isClienteProvisional)
            _ClienteProvisionalContainer(
              formKey: formKey,
              visita: visita,
              readOnly: readOnly,
              onChangeClientePotencial: onChangeClientePotencial,
              onSelectedPais: onSelectedPais,
              onSelectedProvincia: onSelectedProvincia,
            ),
          if (isClienteProvisional) const Divider(),
          if (!isClienteProvisional)
            _SelectClienteWidget(
              visita: visita,
              readOnly: readOnly,
              onSelectedCliente: onSelectedCliente,
            ),
          FormBuilderDateTimePicker(
            name: 'fecha',
            inputType: InputType.date,
            initialValue: visita?.fecha.toLocal() ?? DateTime.now().toLocal(),
            enabled: !readOnly,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ]),
            decoration: InputDecoration(
              labelText: '${S.of(context).visitas_edit_visitaEditar_fecha} *',
            ),
          ),
          FormBuilderTextField(
            name: 'contacto',
            initialValue: visita?.contacto,
            enabled: !readOnly,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.maxLength(255),
            ]),
            decoration: InputDecoration(
              labelText:
                  '${S.of(context).visitas_edit_visitaEditar_contacto} *',
            ),
          ),
          FormBuilderTextField(
            name: 'atendidoPor',
            initialValue: visita?.atendidoPor,
            enabled: !readOnly,
            decoration: InputDecoration(
              labelText: S.of(context).visitas_edit_visitaEditar_atendidoPor,
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.maxLength(255),
            ]),
          ),
          FormBuilderTextField(
            name: 'resumen',
            initialValue: visita?.resumen,
            maxLines: null,
            minLines: 4,
            enabled: !readOnly,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.maxLength(4000),
            ]),
            decoration: InputDecoration(
              labelText: '${S.of(context).visitas_edit_visitaEditar_resumen} *',
            ),
          ),
          FormBuilderTextField(
            name: 'marcasCompetencia',
            initialValue: visita?.marcasCompetencia,
            maxLines: null,
            minLines: 4,
            enabled: !readOnly,
            decoration: InputDecoration(
              labelText:
                  S.of(context).visitas_edit_visitaEditar_marcasCompetencia,
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.maxLength(255),
            ]),
          ),
        ],
      ),
    );
  }
}

class _ClienteProvisionalContainer extends ConsumerStatefulWidget {
  const _ClienteProvisionalContainer({
    required this.formKey,
    required this.onChangeClientePotencial,
    required this.onSelectedProvincia,
    required this.onSelectedPais,
    required this.visita,
    required this.readOnly,
  });

  final GlobalKey<FormBuilderState> formKey;
  final void Function(Provincia provincia) onSelectedProvincia;
  final void Function(Pais pais) onSelectedPais;
  final void Function(bool newValue) onChangeClientePotencial;

  final Visita? visita;
  final bool readOnly;

  @override
  ConsumerState<_ClienteProvisionalContainer> createState() =>
      _ClienteProvisionalContainerState();
}

class _ClienteProvisionalContainerState
    extends ConsumerState<_ClienteProvisionalContainer> {
  final paisController = TextEditingController();
  final provinciaController = TextEditingController();

  String? paisId;

  @override
  void initState() {
    super.initState();
    if (widget.visita != null &&
        widget.visita?.clienteProvisionalProvincia != null) {
      provinciaController.text =
          widget.visita!.clienteProvisionalProvincia!.provincia ??
              widget.visita!.clienteProvisionalProvincia!.provinciaId;
      Future.microtask(() => widget
          .onSelectedProvincia(widget.visita!.clienteProvisionalProvincia!));
    }
    if (widget.visita != null &&
        widget.visita?.clienteProvisionalPais != null) {
      paisController.text = widget.visita!.clienteProvisionalPais!.descripcion;
      paisId = widget.visita!.clienteProvisionalPais!.id;
      Future.microtask(
          () => widget.onSelectedPais(widget.visita!.clienteProvisionalPais!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            FormBuilderTextField(
              name: 'nombre',
              // onChanged: widget.olnChanged,
              initialValue: widget.visita?.clienteProvisionalNombre,
              enabled: !widget.readOnly,
              decoration: InputDecoration(
                labelText:
                    '${S.of(context).visitas_edit_visitaEditar_nombre} *',
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.maxLength(500),
              ]),
            ),
            FormBuilderTextField(
              name: 'email',
              initialValue: widget.visita?.clienteProvisionalEmail,
              enabled: !widget.readOnly,
              keyboardType: TextInputType.emailAddress,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.email(),
                FormBuilderValidators.maxLength(500),
              ]),
              decoration: InputDecoration(
                labelText: S.of(context).visitas_edit_visitaEditar_email,
              ),
            ),
            FormBuilderTextField(
              name: 'telefono',
              initialValue: widget.visita?.clienteProvisionalTelefono,
              enabled: !widget.readOnly,
              keyboardType: TextInputType.phone,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.numeric(),
                FormBuilderValidators.maxLength(50),
              ]),
              decoration: InputDecoration(
                labelText: S.of(context).visitas_edit_visitaEditar_telefono,
              ),
            ),
            FormBuilderTextField(
              name: 'direccion1',
              initialValue: widget.visita?.clienteProvisionalDireccion1,
              enabled: !widget.readOnly,
              decoration: InputDecoration(
                labelText:
                    '${S.of(context).visitas_edit_visitaEditar_direccion1} *',
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.maxLength(60),
              ]),
            ),
            FormBuilderTextField(
              name: 'direccion2',
              initialValue: widget.visita?.clienteProvisionalDireccion2,
              enabled: !widget.readOnly,
              decoration: InputDecoration(
                labelText: S.of(context).visitas_edit_visitaEditar_direccion2,
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.maxLength(60),
              ]),
            ),
            FormBuilderTextField(
              name: 'codigo_postal',
              initialValue: widget.visita?.clienteProvisionalCodigoPostal,
              enabled: !widget.readOnly,
              decoration: InputDecoration(
                labelText: S.of(context).visitas_edit_visitaEditar_codigoPostal,
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.maxLength(10),
              ]),
            ),
            FormBuilderTextField(
              name: 'poblacion',
              initialValue: widget.visita?.clienteProvisionalPoblacion,
              enabled: !widget.readOnly,
              decoration: InputDecoration(
                labelText:
                    '${S.of(context).visitas_edit_visitaEditar_poblacion} *',
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.maxLength(60),
              ]),
            ),
            FormBuilderTextField(
              name: 'pais',
              controller: paisController,
              enabled: !widget.readOnly,
              readOnly: true,
              decoration: InputDecoration(
                labelText: '${S.of(context).visitas_edit_visitaEditar_pais} *',
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.maxLength(60),
              ]),
              onTap: () => showPaisSearchDialog(context),
            ),
            FormBuilderTextField(
              name: 'provincia',
              controller: provinciaController,
              enabled: !widget.readOnly,
              readOnly: true,
              decoration: InputDecoration(
                labelText: S.of(context).visitas_edit_visitaEditar_provincia,
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.maxLength(60),
              ]),
              onTap: () => showProvinciasSearchDialog(
                context,
                paisId,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> showPaisSearchDialog(BuildContext context) async {
    final pais = await showDialog(
        context: context, builder: (context) => PaisSearchDialog()) as Pais?;

    if (pais != null) {
      widget.onSelectedPais(pais);
      paisController.text = pais.descripcion;
      paisId = pais.id;
    }
  }

  Future<void> showProvinciasSearchDialog(
      BuildContext context, String? paisId) async {
    final provincia = await showDialog(
        context: context,
        builder: (context) => ProvinciaSearchDialog(
              paisId: paisId,
            )) as Provincia?;

    if (provincia != null) {
      widget.onSelectedProvincia(provincia);
      provinciaController.text = provincia.provincia ?? provincia.provinciaId;
    }
  }
}

class _SelectClienteWidget extends ConsumerStatefulWidget {
  const _SelectClienteWidget({
    required this.visita,
    required this.readOnly,
    required this.onSelectedCliente,
  });

  final Visita? visita;
  final bool readOnly;
  final void Function(String clienteId) onSelectedCliente;

  @override
  ConsumerState<_SelectClienteWidget> createState() =>
      _SelectClienteWidgetState();
}

class _SelectClienteWidgetState extends ConsumerState<_SelectClienteWidget> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.visita != null && widget.visita!.clienteId != null) {
      controller.text = setClienteValue(
          widget.visita!.clienteId!, widget.visita?.nombreCliente);
      Future.microtask(
          () => widget.onSelectedCliente(widget.visita!.clienteId!));
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<Cliente?>(clienteForFromStateProvider, (_, state) {
      if (state != null) {
        controller.text = setClienteValue(state.id, state.nombreCliente);
        widget.onSelectedCliente(state.id);
      }
    });
    return FormBuilderTextField(
      name: 'clienteId',
      controller: controller,
      onTap: () => navigateToSearchClientes(context),
      readOnly: true,
      maxLines: null,
      enabled: !widget.readOnly,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
      decoration: InputDecoration(
        labelText: '${S.of(context).visitas_edit_visitaEditar_cliente} *',
      ),
    );
  }

  void navigateToSearchClientes(BuildContext context) async {
    context.router.push(ClienteListaRoute(isSearchClienteForFrom: true));
  }

  String setClienteValue(String clienteId, String? nombreCliente) {
    return (nombreCliente != null)
        ? '#$clienteId $nombreCliente'
        : '#$clienteId';
  }
}
