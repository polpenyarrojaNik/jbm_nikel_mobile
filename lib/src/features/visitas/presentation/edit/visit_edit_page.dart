import 'package:auto_route/auto_route.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';

import 'package:jbm_nikel_mobile/src/features/cliente/presentation/index/cliente_search_state.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/domain/visita.dart';
import 'package:jbm_nikel_mobile/src/core/domain/entity_id_is_local_param.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/presentation/edit/visita_edit_page_controller.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/presentation/index/visita_search_state.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../cliente/domain/cliente.dart';
import '../../../usuario/application/usuario_notifier.dart';
import '../../infrastructure/visita_repository.dart';

class VisitaEditPage extends ConsumerStatefulWidget {
  VisitaEditPage({super.key, String? id, bool? isNew})
      : id = id ?? const Uuid().v4(),
        isNew = id == null ? true : false;

  final String id;
  final bool isNew;

  @override
  ConsumerState<VisitaEditPage> createState() => _VisitaEditPageState();
}

class _VisitaEditPageState extends ConsumerState<VisitaEditPage> {
  EntityIdIsLocalParam? visitaIdLocalParam;

  final formKey = GlobalKey<FormBuilderState>();
  bool isValid = false;
  String? clienteId;

  void onSelectedCliente(String selectedClienteId) {
    setState(() {
      clienteId = selectedClienteId;
    });
  }

  void _onChanged(dynamic val) {
    if (formKey.currentState!.validate()) {
      if (!isValid) {
        setState(() => isValid = true);
      }
    } else {
      if (isValid) {
        setState(() => isValid = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    visitaIdLocalParam =
        EntityIdIsLocalParam(id: widget.id, isLocal: true, isNew: widget.isNew);
  }

  @override
  Widget build(BuildContext context) {
    final state =
        ref.watch(visitaEditPageControllerProvider(visitaIdLocalParam!));

    ref.listen<VisitaEditPageControllerState>(
        visitaEditPageControllerProvider(visitaIdLocalParam!), (__, state) {
      state.maybeWhen(
        saved: (visita) {
          ref.invalidate(visitaProvider(visitaIdLocalParam!));
          ref.invalidate(visitasSearchResultsProvider);
          context.showSuccessBar(
              content: Text(S.of(context).visitas_edit_visitaEditar_saved));

          context.router.pop();
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
      appBar: AppBar(
        title: Text(
          (widget.isNew)
              ? S.of(context).visitas_edit_visitaEditar_titleNueva
              : S.of(context).visitas_edit_visitaEditar_titleEditar,
        ),
        actions: [
          state.maybeWhen(
            saving: (_) => const ProgressIndicatorWidget(),
            orElse: () => IconButton(
              icon: const Icon(Icons.save),
              onPressed: (isValid) ? () => saveForm() : null,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: state.when(
          loading: () => const ProgressIndicatorWidget(),
          data: (visita) => _VisitaForm(
            formKey: formKey,
            visita: visita,
            onChanged: _onChanged,
            onSelectedCliente: onSelectedCliente,
            readOnly: false,
            isNew: widget.isNew,
          ),
          error: (Object error, StackTrace? _) => ErrorMessageWidget(
            (error is AppException) ? error.details.message : error.toString(),
          ),
          saved: (visita) => _VisitaForm(
            formKey: formKey,
            visita: visita,
            onChanged: _onChanged,
            onSelectedCliente: onSelectedCliente,
            readOnly: false,
            isNew: widget.isNew,
          ),
          saving: (visita) => _VisitaForm(
            formKey: formKey,
            visita: visita,
            onChanged: _onChanged,
            onSelectedCliente: onSelectedCliente,
            readOnly: true,
            isNew: widget.isNew,
          ),
          savedError: (Visita visita, Object error, StackTrace? stackTrace) =>
              _VisitaForm(
            formKey: formKey,
            visita: visita,
            onChanged: _onChanged,
            onSelectedCliente: onSelectedCliente,
            readOnly: false,
            isNew: widget.isNew,
          ),
          deleted: () => const ProgressIndicatorWidget(),
        ),
      ),
    );
  }

  void saveForm() async {
    if (formKey.currentState!.saveAndValidate()) {
      ref
          .read(visitaEditPageControllerProvider(visitaIdLocalParam!).notifier)
          .upsertVisita(
            visitaLocal: Visita(
              id: null,
              clienteId: clienteId!,
              fecha: (formKey.currentState!.value['fecha'] as DateTime).toUtc(),
              numEmpl: ref.read(usuarioNotifierProvider)!.id,
              resumen: formKey.currentState!.value['resumen'] as String,
              contacto: formKey.currentState!.value['contacto'] as String?,
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
              S.of(context).visitas_edit_visitaEditar_errorValidarFormulario));
    }
  }
}

class _VisitaForm extends StatelessWidget {
  const _VisitaForm({
    required this.formKey,
    required this.onChanged,
    required this.onSelectedCliente,
    required this.visita,
    required this.readOnly,
    required this.isNew,
  });
  final GlobalKey<FormBuilderState> formKey;
  final void Function(dynamic) onChanged;
  final void Function(String clienteId) onSelectedCliente;
  final Visita? visita;
  final bool readOnly;
  final bool isNew;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Column(
        children: [
          _SelectClienteWidget(
            onChanged: onChanged,
            visita: visita,
            readOnly: readOnly,
            onSelectedCliente: onSelectedCliente,
          ),
          FormBuilderDateTimePicker(
            name: 'fecha',
            onChanged: onChanged,
            inputType: InputType.date,
            initialValue: visita?.fecha.toLocal() ?? DateTime.now().toLocal(),
            enabled: !readOnly,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ]),
            decoration: InputDecoration(
              labelText: S.of(context).visitas_edit_visitaEditar_fecha,
            ),
          ),
          FormBuilderTextField(
            name: 'contacto',
            onChanged: onChanged,
            initialValue: visita?.contacto,
            enabled: !readOnly,
            decoration: InputDecoration(
              labelText: S.of(context).visitas_edit_visitaEditar_contacto,
            ),
          ),
          FormBuilderTextField(
            name: 'resumen',
            onChanged: onChanged,
            initialValue: visita?.resumen,
            maxLines: null,
            minLines: 4,
            enabled: !readOnly,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ]),
            decoration: InputDecoration(
                labelText: S.of(context).visitas_edit_visitaEditar_resumen),
          ),
        ],
      ),
    );
  }
}

class _SelectClienteWidget extends ConsumerStatefulWidget {
  const _SelectClienteWidget({
    required this.onChanged,
    required this.visita,
    required this.readOnly,
    required this.onSelectedCliente,
  });

  final void Function(dynamic p1) onChanged;
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
    if (widget.visita != null) {
      controller.text = setClienteValue(
          widget.visita!.clienteId, widget.visita?.nombreCliente);
      Future.microtask(
          () => widget.onSelectedCliente(widget.visita!.clienteId));
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
      onChanged: widget.onChanged,
      controller: controller,
      onTap: () => navigateToSearchClientes(context),
      readOnly: true,
      maxLines: null,
      enabled: !widget.readOnly,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
      decoration: InputDecoration(
        labelText: S.of(context).visitas_edit_visitaEditar_cliente,
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
