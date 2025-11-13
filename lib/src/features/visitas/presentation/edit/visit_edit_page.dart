import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/pais.dart';
import '../../../../core/domain/provincia.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/alert_dialogs.dart';
import '../../../../core/presentation/common_widgets/app_form_builder_searchable_dropdown.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../../cliente/domain/cliente.dart';
import '../../../cliente/domain/cliente_contacto.dart';
import '../../../usuario/application/usuario_notifier.dart';
import '../../domain/image_form_data.dart';
import '../../domain/visita.dart';
import '../../domain/visita_competidor.dart';
import '../../domain/visita_motivos_no_venta.dart';
import '../../domain/visita_sector.dart';
import '../../infrastructure/visita_repository.dart';
import '../index/visita_search_controller.dart';
import '../show/visita_detalle_page.dart';
import 'pais_search_page_controller.dart';
import 'provincia_search_page_controller.dart';
import 'visita_edit_page_controller.dart';

part 'visit_edit_page.freezed.dart';
part 'visit_edit_page.g.dart';

@freezed
abstract class VisitEditScreenData with _$VisitEditScreenData {
  const VisitEditScreenData._();
  const factory VisitEditScreenData({
    Visita? visita,
    required List<Pais> paises,
    required List<Provincia> provincias,
  }) = _VisitEditScreenData;

  bool get isNew => visita == null;
}

@riverpod
class VisitEditPageController extends _$VisitEditPageController {
  VisitEditPageController();

  @override
  Future<VisitEditScreenData> build(
    String visitaId,
    bool isLocal,
    bool isNew,
  ) async {
    Visita? visit;

    if (!isNew) {
      visit = isLocal
          ? await ref
                .read(visitaRepositoryProvider)
                .getVisitaLocal(visitaAppId: visitaId)
          : await ref
                .read(visitaRepositoryProvider)
                .getVisita(visitaId: visitaId);
    }

    final provincias = await ref.read(
      provinciaSearchPageControllerProvider(null).future,
    );

    final paises = await ref.read(paisSearchPageControllerProvider.future);

    return VisitEditScreenData(
      visita: visit,
      paises: paises,
      provincias: provincias,
    );
  }

  Future<Either<AppException, Visita>> saveForm(Visita vistia) async {
    try {
      await ref.read(visitaRepositoryProvider).upsertVisita(vistia);

      ref.invalidateSelf();

      return right(vistia);
    } catch (e) {
      if (e is AppException) {
        return left(e);
      }
      return left(AppException.unexpectedError());
    }
  }
}

final visitaSaveFormMutation = Mutation<Either<AppException, Visita>>();

@RoutePage()
class VisitaEditPage extends ConsumerWidget {
  VisitaEditPage({
    super.key,
    String? id,
    bool? isNew,
    bool? isLocal,
    this.createVisitaFromClienteId,
  }) : id = id ?? const Uuid().v4(),
       isNew = id == null,
       isLocal = isLocal ?? false;

  final String id;
  final bool isLocal;
  final bool isNew;
  final String? createVisitaFromClienteId;
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      visitEditPageControllerProvider(id, isLocal, isNew),
    );

    final stateSaveForm = ref.watch(visitaSaveFormMutation);

    ref.listen(visitaSaveFormMutation, (_, state) {
      if (state is MutationSuccess<Either<AppException, Visita>>) {
        state.value.fold(
          (l) => context.showErrorBar(
            duration: const Duration(seconds: 5),
            content: ErrorMessageWidget(l.details.message),
          ),
          (r) {
            context.showSuccessBar(
              content: Text(S.of(context).visitas_edit_visitaEditar_saved),
            );

            ref.invalidate(
              visitaDetalleControllerProvider(
                id,
                isLocal,
                createVisitaFromClienteId,
              ),
            );
            ref.invalidate(visitaIndexScreenControllerProvider);
            ref.invalidate(visitaIndexScreenPaginatedControllerProvider);

            context.router.maybePop();
          },
        );
      } else if (state is MutationError<Either<AppException, Visita>>) {
        context.showErrorBar(
          duration: const Duration(seconds: 5),
          content: Text(state.error.toString()),
        );
      }
    });
    return Scaffold(
      appBar: CommonAppBar(
        titleText: (isNew
            ? S.of(context).visitas_edit_visitaEditar_titleNueva
            : S.of(context).visitas_edit_visitaEditar_titleEditar),
        actions: [
          stateSaveForm.isPending
              ? Container()
              : IconButton(
                  icon: const Icon(Icons.save),
                  onPressed: () => saveForm(context, ref),
                ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: state.when(
            loading: () => const ProgressIndicatorWidget(),
            data: (visitaEditScreenData) {
              return _VisitaForm(
                formKey: formKey,
                visitaEditScreenData: visitaEditScreenData,
                readOnly: false,
                isNew: isNew,
              );
            },
            error: (Object error, StackTrace? _) => ErrorMessageWidget(
              (error is AppException)
                  ? error.details.message
                  : error.toString(),
            ),
          ),
        ),
      ),
    );
  }

  void saveForm(BuildContext context, WidgetRef ref) async {
    if (formKey.currentState!.saveAndValidate()) {
      final isClientePotencial =
          formKey.currentState!.value['cliente_provisional'] as bool;
      if (isClientePotencial) {
        final contiueToSavingVisit = await checkClientePotencialValues(
          context,
          ref,
          formKey.currentState!.value['telefono'] as String?,
          formKey.currentState!.value['email'] as String?,
        );
        if (!contiueToSavingVisit) {
          return;
        }
      }

      final visita = Visita(
        id: null,
        fecha: (formKey.currentState!.value['fecha'] as DateTime).toUtc(),
        cliente: (formKey.currentState!.value['cliente'] as Cliente?),
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
        clienteProvisionalProvincia:
            formKey.currentState!.value['provincia'] as Provincia?,
        clienteProvisionalRegionId:
            (formKey.currentState!.value['provincia'] as Provincia?)?.regionId,
        clienteProvisionalPais: (formKey.currentState!.value['pais'] as Pais?),
        numEmpl: ref.read(usuarioNotifierProvider)!.id,
        resumen: formKey.currentState!.value['resumen'] as String,
        contacto: formKey.currentState!.value['contacto'] as String,
        atendidoPor: formKey.currentState!.value['atendidoPor'] as String?,
        marcasCompetencia:
            formKey.currentState!.value['marcasCompetencia'] as String?,
        ofertaRealizada: getFormValue(formKey, 'ofertaRealizada'),
        interesCliente: getFormValue(formKey, 'interesCliente'),
        pedidoRealizado: getFormValue(formKey, 'pedidoRealizado'),
        sector: getFormValue(formKey, 'sector'),
        competenciaList: getFormValue(formKey, 'competencia') ?? [],
        motivoNoInteres: getFormValue(formKey, 'motivoNoInteres'),
        motivoNoPedido: getFormValue(formKey, 'motivoNoPedido'),
        almacenPropio: getFormValue(formKey, 'almacenPropio'),
        capacidad: getFormValue(formKey, 'capacidad'),
        frecuenciaPedido: getFormValue(formKey, 'frecuenciaPedido'),
        latitud: 0,
        longitud: 0,
        visitaAppId: id,
        lastUpdated: DateTime.now().toUtc(),
        deleted: false,
        enviada: false,
        tratada: false,
      );

      unawaited(
        visitaSaveFormMutation.run(ref, (tsx) async {
          final controller = tsx.get(
            visitEditPageControllerProvider(id, isLocal, isNew).notifier,
          );
          final result = await controller.saveForm(visita);

          return result;
        }),
      );
    } else {
      await context.showErrorBar(
        content: Text(
          S.of(context).visitas_edit_visitaEditar_errorValidarFormulario,
        ),
      );
    }
  }

  Future<bool> checkClientePotencialValues(
    BuildContext context,
    WidgetRef ref,
    String? telefono,
    String? email,
  ) async {
    if (telefono != null) {
      final existTelefono = await ref
          .read(visitaRepositoryProvider)
          .existClientePotencialPhone(telefono);
      if (existTelefono && context.mounted) {
        final dialogPhoneResult = await showDialogSaveVisitAnyway(
          context,
          S.current.visitas_edit_visitaEditar_validatorExistPhoneMessage,
        );

        if (dialogPhoneResult == null || !dialogPhoneResult) {
          return false;
        }
      }
    }

    if (email != null) {
      final existEmail = await ref
          .read(visitaRepositoryProvider)
          .existClientePotencialEmail(email);

      if (existEmail && context.mounted) {
        final dialogEmailResult = await showDialogSaveVisitAnyway(
          context,
          S.current.visitas_edit_visitaEditar_validatorExistEmailMessage,
        );

        if (dialogEmailResult == null || !dialogEmailResult) {
          return false;
        }
      }
    }

    return true;
  }
}

class _VisitaForm extends ConsumerStatefulWidget {
  const _VisitaForm({
    required this.formKey,
    required this.visitaEditScreenData,
    required this.readOnly,
    required this.isNew,
  });
  final GlobalKey<FormBuilderState> formKey;

  final VisitEditScreenData visitaEditScreenData;
  final bool readOnly;
  final bool isNew;

  @override
  ConsumerState<_VisitaForm> createState() => _VisitaFormState();
}

class _VisitaFormState extends ConsumerState<_VisitaForm> {
  final competenciaFilterList = <VisitaCompetidor>[];
  late bool isClienteProvisional;
  late bool isClienteLinked;

  @override
  void initState() {
    super.initState();
    competenciaFilterList.addAll(
      widget.visitaEditScreenData.visita?.competenciaList ?? [],
    );
    isClienteProvisional =
        widget.visitaEditScreenData.visita?.isClienteProvisional ?? false;

    isClienteLinked = widget.visitaEditScreenData.visita?.cliente != null;
  }

  @override
  Widget build(BuildContext context) {
    final stateCompetencia = ref.watch(
      visitaCompetidorListFormDropdownControllerProvider,
    );
    return FormBuilder(
      key: widget.formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Column(
        children: [
          FormBuilderSwitch(
            name: 'cliente_provisional',
            title: Text(
              S.of(context).visitas_edit_visitaEditar_clienteProvisional,
            ),
            initialValue:
                widget.visitaEditScreenData.visita?.isClienteProvisional ??
                false,
            onChanged: (value) => setState(() {
              isClienteProvisional = !isClienteProvisional;
            }),
          ),
          if (isClienteProvisional)
            _ClienteProvisionalContainer(
              formKey: widget.formKey,
              visitaEditScreenData: widget.visitaEditScreenData,
              readOnly: widget.readOnly,
            ),
          if (isClienteProvisional) const Divider(),
          if (!isClienteProvisional)
            SelectClienteWidget(
              visita: widget.visitaEditScreenData.visita,
              readOnly: widget.readOnly,
              formKey: widget.formKey,
              onSelectedCliente: (newCliente) => setState(() {
                widget.formKey.currentState?.patchValue({
                  'cliente': newCliente,
                });
                isClienteLinked = newCliente != null;
              }),
            ),
          FormBuilderDateTimePicker(
            name: 'fecha',
            inputType: InputType.date,
            initialValue:
                widget.visitaEditScreenData.visita?.fecha.toLocal() ??
                DateTime.now().toLocal(),
            enabled: !widget.readOnly,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ]),
            decoration: InputDecoration(
              labelText: '${S.of(context).visitas_edit_visitaEditar_fecha} *',
            ),
          ),
          FormBuilderTextField(
            name: 'contacto',
            initialValue: widget.visitaEditScreenData.visita?.contacto,
            enabled: !widget.readOnly,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.maxLength(255, checkNullOrEmpty: false),
            ]),
            decoration: InputDecoration(
              labelText:
                  '${S.of(context).visitas_edit_visitaEditar_contacto} *',
              suffixIcon:
                  !isClienteProvisional &&
                      (getFormInstantValue<Cliente?>(
                                widget.formKey,
                                'cliente',
                              ) !=
                              null ||
                          widget.visitaEditScreenData.visita?.cliente != null)
                  ? IconButton(
                      onPressed: () => onSearch(context),
                      icon: const Icon(Icons.search),
                    )
                  : null,
            ),
          ),
          FormBuilderTextField(
            name: 'atendidoPor',
            initialValue: widget.visitaEditScreenData.visita?.atendidoPor,
            enabled: !widget.readOnly,
            decoration: InputDecoration(
              labelText: S.of(context).visitas_edit_visitaEditar_atendidoPor,
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.maxLength(255, checkNullOrEmpty: false),
            ]),
          ),
          FormBuilderTextField(
            name: 'resumen',
            initialValue: widget.visitaEditScreenData.visita?.resumen,
            maxLines: null,
            minLines: 4,
            enabled: !widget.readOnly,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.maxLength(4000),
            ]),
            decoration: InputDecoration(
              labelText: '${S.of(context).visitas_edit_visitaEditar_resumen} *',
            ),
          ),
          FormBuilderSwitch(
            name: 'ofertaRealizada',
            title: Text(S.of(context).ofertaRealziada),
            initialValue:
                widget.visitaEditScreenData.visita?.ofertaRealizada ?? false,
            onChanged: (_) => setState(() {}),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ]),
          ),
          FormBuilderSwitch(
            name: 'pedidoRealizado',
            title: Text(S.of(context).pedidoRealizado),
            initialValue:
                widget.visitaEditScreenData.visita?.pedidoRealizado ?? false,
            onChanged: (_) => setState(() {}),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ]),
          ),
          if (isClienteProvisional) ...[
            FormBuilderSwitch(
              name: 'almacenPropio',
              title: Text(S.of(context).almacenPropio),
              initialValue:
                  widget.visitaEditScreenData.visita?.almacenPropio ?? false,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            VisitaSectorFormDropdown(
              name: 'sector',
              initialValue: widget.visitaEditScreenData.visita?.sector,
            ),
            stateCompetencia.maybeWhen(
              data: (competenciaList) =>
                  FormBuilderField<List<VisitaCompetidor>>(
                    name: 'competencia',
                    builder: (competenciaListField) => InputDecorator(
                      decoration: InputDecoration(
                        labelText: S.of(context).competencia,
                        suffixIcon: IconButton(
                          onPressed: () => showVisitaCompetidorListDialog(
                            context,
                            competenciaFilterList,
                            competenciaList,
                          ),
                          icon: const Icon(Icons.arrow_drop_down),
                        ),
                      ),
                      child:
                          competenciaListField.value != null &&
                              competenciaListField.value!.isNotEmpty
                          ? Text(
                              competenciaListField.value!
                                  .map((e) => e.descripcion)
                                  .join(', '),
                            )
                          : const Text(''),
                    ),
                    initialValue:
                        widget.visitaEditScreenData.visita?.competenciaList,
                  ),
              orElse: () => const Center(child: ProgressIndicatorWidget()),
            ),
            FormBuilderTextField(
              name: 'marcasCompetencia',
              initialValue:
                  widget.visitaEditScreenData.visita?.marcasCompetencia,
              maxLines: null,
              minLines: 4,
              enabled: !widget.readOnly,
              decoration: InputDecoration(
                labelText: S
                    .of(context)
                    .visitas_edit_visitaEditar_marcasCompetencia,
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.maxLength(255, checkNullOrEmpty: false),
              ]),
            ),
            AppFormBuilderSearchableDropdown<InteresCliente>(
              name: 'interesCliente',
              decoration: InputDecoration(
                labelText: S.of(context).interesCliente,
                border: InputBorder.none,
                suffixIcon: IconButton(
                  onPressed: () => widget.formKey.currentState?.patchValue({
                    'interesCliente': null,
                  }),
                  icon: const Icon(Icons.close),
                ),
              ),
              initialValue: widget.visitaEditScreenData.visita?.interesCliente,
              items: const [
                InteresCliente.alto,
                InteresCliente.medio,
                InteresCliente.bajo,
              ],
              itemAsString: (item) => getNameFromInteresCliente(item),
              compareFn: (i, s) => i.index == s.index,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            VisitaMotivoNoVentaFormDropdown(
              name: 'motivoNoInteres',
              initialValue: widget.visitaEditScreenData.visita?.motivoNoInteres,
              labelText: S.of(context).motivoNoInteres,
              formKey: widget.formKey,
              enabled:
                  !(getFormInstantValue<bool?>(
                        widget.formKey,
                        'cliente_provisional',
                      ) ??
                      false) &&
                  !(getFormInstantValue<bool?>(
                        widget.formKey,
                        'pedidoRealizado',
                      ) ??
                      false) &&
                  !(getFormInstantValue<bool?>(
                        widget.formKey,
                        'ofertaRealizada',
                      ) ??
                      false),
            ),
            VisitaMotivoNoVentaFormDropdown(
              name: 'motivoNoPedido',
              initialValue: widget.visitaEditScreenData.visita?.motivoNoPedido,
              labelText: S.of(context).motivoNoPedido,
              formKey: widget.formKey,
              enabled:
                  !(getFormInstantValue<bool?>(
                        widget.formKey,
                        'cliente_provisional',
                      ) ??
                      false) &&
                  !(getFormInstantValue<bool?>(
                        widget.formKey,
                        'pedidoRealizado',
                      ) ??
                      false) &&
                  !(getFormInstantValue<bool?>(
                        widget.formKey,
                        'ofertaRealizada',
                      ) ??
                      false),
            ),
            AppFormBuilderSearchableDropdown<Capacidad>(
              name: 'capacidad',
              decoration: InputDecoration(
                labelText: S.of(context).capacidad,
                border: InputBorder.none,
                suffixIcon: IconButton(
                  onPressed: () => widget.formKey.currentState?.patchValue({
                    'capacidad': null,
                  }),
                  icon: const Icon(Icons.close),
                ),
              ),
              initialValue: widget.visitaEditScreenData.visita?.capacidad,
              items: const [
                Capacidad.grande,
                Capacidad.media,
                Capacidad.pequena,
              ],
              itemAsString: (item) => getNameFromCapacidad(item),
              compareFn: (i, s) => i.index == s.index,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            AppFormBuilderSearchableDropdown<FrecuenciaPedido>(
              name: 'frecuenciaPedido',
              decoration: InputDecoration(
                labelText: S.of(context).frecuenciaPedido,
                border: InputBorder.none,
                suffixIcon: IconButton(
                  onPressed: () => widget.formKey.currentState?.patchValue({
                    'frecuenciaPedido': null,
                  }),
                  icon: const Icon(Icons.close),
                ),
              ),
              initialValue:
                  widget.visitaEditScreenData.visita?.frecuenciaPedido,
              items: const [
                FrecuenciaPedido.semanal,
                FrecuenciaPedido.mensual,
                FrecuenciaPedido.trimestral,
              ],
              itemAsString: (item) => getNameFromFrecuenciaPedido(item),
              compareFn: (i, s) => i.index == s.index,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
          ],
        ],
      ),
    );
  }

  Future<void> showVisitaCompetidorListDialog(
    BuildContext context,
    List<VisitaCompetidor> competenciaFilterList,
    List<VisitaCompetidor> competenciaList,
  ) async {
    final newCompetenciaFilterList = await showDialog<List<VisitaCompetidor>?>(
      context: context,
      builder: (context) => VisitaCompetidorListFilterDialog(
        visitCompetitorList: competenciaList,
        currentVisitCompetitorList: competenciaFilterList,
      ),
    );

    if (newCompetenciaFilterList != null) {
      widget.formKey.currentState?.patchValue({
        'competencia': newCompetenciaFilterList,
      });
    }
  }

  void onSearch(BuildContext context) async {
    final clienteContacto = await context.router.push<ClienteContacto?>(
      VisitaEditSelectContactRoute(
        cliente:
            getFormInstantValue(widget.formKey, 'cliente') ??
            widget.visitaEditScreenData.visita!.cliente!,
      ),
    );

    if (clienteContacto != null) {
      widget.formKey.currentState?.patchValue({
        'contacto': clienteContacto.getName(
          clienteContacto.nombre,
          clienteContacto.apellido1,
          clienteContacto.apellido2,
        ),
      });
    }
  }
}

class _ClienteProvisionalContainer extends ConsumerStatefulWidget {
  const _ClienteProvisionalContainer({
    required this.formKey,
    required this.visitaEditScreenData,
    required this.readOnly,
  });

  final GlobalKey<FormBuilderState> formKey;

  final VisitEditScreenData visitaEditScreenData;
  final bool readOnly;

  @override
  ConsumerState<_ClienteProvisionalContainer> createState() =>
      _ClienteProvisionalContainerState();
}

class _ClienteProvisionalContainerState
    extends ConsumerState<_ClienteProvisionalContainer> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: BorderSide(color: Colors.grey.withValues(alpha: 0.2), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () => scanBussinessCard(context),
                icon: const Icon(Icons.qr_code_scanner),
              ),
            ),
            FormBuilderTextField(
              name: 'nombre',
              initialValue:
                  widget.visitaEditScreenData.visita?.clienteProvisionalNombre,
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
              initialValue:
                  widget.visitaEditScreenData.visita?.clienteProvisionalEmail,
              enabled: !widget.readOnly,
              keyboardType: TextInputType.emailAddress,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.email(checkNullOrEmpty: false),
                FormBuilderValidators.maxLength(500, checkNullOrEmpty: false),
              ]),
              decoration: InputDecoration(
                labelText: S.of(context).visitas_edit_visitaEditar_email,
              ),
            ),
            FormBuilderTextField(
              name: 'telefono',
              initialValue: widget
                  .visitaEditScreenData
                  .visita
                  ?.clienteProvisionalTelefono,
              enabled: !widget.readOnly,
              keyboardType: TextInputType.phone,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.numeric(checkNullOrEmpty: false),
                FormBuilderValidators.maxLength(50, checkNullOrEmpty: false),
              ]),
              decoration: InputDecoration(
                labelText: S.of(context).visitas_edit_visitaEditar_telefono,
              ),
            ),
            FormBuilderTextField(
              name: 'direccion1',
              initialValue: widget
                  .visitaEditScreenData
                  .visita
                  ?.clienteProvisionalDireccion1,
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
              initialValue: widget
                  .visitaEditScreenData
                  .visita
                  ?.clienteProvisionalDireccion2,
              enabled: !widget.readOnly,
              decoration: InputDecoration(
                labelText: S.of(context).visitas_edit_visitaEditar_direccion2,
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.maxLength(60, checkNullOrEmpty: false),
              ]),
            ),
            FormBuilderTextField(
              name: 'codigo_postal',
              initialValue: widget
                  .visitaEditScreenData
                  .visita
                  ?.clienteProvisionalCodigoPostal,
              enabled: !widget.readOnly,
              decoration: InputDecoration(
                labelText: S.of(context).visitas_edit_visitaEditar_codigoPostal,
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.maxLength(10, checkNullOrEmpty: false),
              ]),
            ),
            FormBuilderTextField(
              name: 'poblacion',
              initialValue: widget
                  .visitaEditScreenData
                  .visita
                  ?.clienteProvisionalPoblacion,
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
            AppFormBuilderSearchableDropdown<Pais>(
              name: 'pais',
              initialValue:
                  widget.visitaEditScreenData.visita?.clienteProvisionalPais,
              enabled: true,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                labelText: S.of(context).visitas_edit_visitaEditar_pais,
              ),
              items: widget.visitaEditScreenData.paises,
              itemAsString: (item) => item.descripcion,
              compareFn: (i, s) => i.id == s.id,
            ),
            AppFormBuilderSearchableDropdown<Provincia>(
              name: 'provincia',
              initialValue: widget
                  .visitaEditScreenData
                  .visita
                  ?.clienteProvisionalProvincia,
              enabled: !widget.readOnly,
              decoration: InputDecoration(
                labelText: S.of(context).visitas_edit_visitaEditar_provincia,
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.maxLength(60, checkNullOrEmpty: false),
              ]),
              items: widget.visitaEditScreenData.provincias
                  .where(
                    (provincia) =>
                        provincia.paisId ==
                        widget.formKey.currentState?.instantValue['pais']?.id,
                  )
                  .toList(),
              itemAsString: (item) => item.provincia ?? item.provinciaId,
              compareFn: (i, s) => i.provinciaId == s.provinciaId,
            ),
          ],
        ),
      ),
    );
  }

  void setPotentialValues(ImageFormData imageFormData) {
    widget.formKey.currentState?.patchValue({
      'nombre': imageFormData.company,
      'email': imageFormData.email,
      'telefono': imageFormData.phoneList[0],
      'direccion1': imageFormData.streetAddress1,
      'codigo_postal': imageFormData.zipCode,
      'poblacion': imageFormData.city,
      'pais': imageFormData.country?.descripcion,
      'provincia': imageFormData.state?.provincia,
      'contacto': imageFormData.name,
    });
  }

  void scanBussinessCard(BuildContext context) async {
    final imageFile = await context.router.push<File?>(const CameraRoute());

    if (imageFile != null && context.mounted) {
      final imageFormData = await context.router.push<ImageFormData?>(
        ImageFormRoute(imageFile: imageFile, isFromCliente: true),
      );

      if (imageFormData != null) {
        setPotentialValues(imageFormData);
      }
    }
  }
}

class SelectClienteWidget extends StatelessWidget {
  const SelectClienteWidget({
    super.key,
    required this.visita,
    required this.readOnly,
    required this.formKey,
    required this.onSelectedCliente,
  });

  final Visita? visita;
  final bool readOnly;
  final GlobalKey<FormBuilderState> formKey;
  final Function(Cliente? cliente) onSelectedCliente;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateToSearchClientes(context),
      child: FormBuilderField<Cliente>(
        name: 'cliente',
        builder: (clienteField) => InputDecorator(
          decoration: InputDecoration(
            labelText: S.of(context).visitas_edit_visitaEditar_cliente,
            suffixIcon: IconButton(
              onPressed: () => onSelectedCliente(null),
              icon: const Icon(Icons.close),
            ),
          ),
          child: clienteField.value != null
              ? Text(
                  '#${clienteField.value?.id ?? 'UN'} ${clienteField.value?.nombreCliente ?? S.of(context).unknownCustomer}',
                )
              : Container(),
        ),
        initialValue: visita?.cliente,
      ),
    );
  }

  void navigateToSearchClientes(BuildContext context) async {
    final customer = await context.router.push<Cliente?>(
      ClienteListaRoute(isSearchClienteForFrom: true),
    );
    if (customer != null && context.mounted) {
      if (customer.sector == null ||
          (customer.sector != null && !customer.sector!.isAlta)) {
        await context.router.push(ClienteSectorRoute(cliente: customer));
      }

      onSelectedCliente(customer);
    }
  }

  String setClienteValue(String clienteId, String? nombreCliente) {
    return (nombreCliente != null)
        ? '#$clienteId $nombreCliente'
        : '#$clienteId';
  }
}

class VisitaSectorFormDropdown extends ConsumerWidget {
  const VisitaSectorFormDropdown({
    super.key,
    required this.initialValue,
    required this.name,
  });

  final VisitaSector? initialValue;
  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(visitaSectorListFormDropdownControllerProvider);

    return AppFormBuilderSearchableDropdown<VisitaSector>(
      name: name,
      decoration: InputDecoration(
        labelText: S.of(context).sector,
        border: InputBorder.none,
      ),
      initialValue: initialValue,
      items: state.maybeWhen(
        orElse: () => [],
        data: (sectoresList) => sectoresList,
      ),
      itemAsString: (item) => item.descripcion,
      compareFn: (i, s) => i.id == s.id,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
    );
  }
}

class VisitaCompetidorFormDropdown extends ConsumerWidget {
  const VisitaCompetidorFormDropdown({
    super.key,
    required this.initialValue,
    required this.name,
  });

  final VisitaCompetidor? initialValue;
  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(visitaCompetidorListFormDropdownControllerProvider);

    return AppFormBuilderSearchableDropdown<VisitaCompetidor>(
      name: name,
      decoration: InputDecoration(
        labelText: S.of(context).competencia,
        border: InputBorder.none,
      ),
      initialValue: initialValue,
      items: state.maybeWhen(
        orElse: () => [],
        data: (competidoresList) => competidoresList,
      ),
      itemAsString: (item) => item.descripcion,
      compareFn: (i, s) => i.id == s.id,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
    );
  }
}

class VisitaMotivoNoVentaFormDropdown extends ConsumerWidget {
  const VisitaMotivoNoVentaFormDropdown({
    super.key,
    required this.initialValue,
    required this.name,
    required this.labelText,
    required this.formKey,
    required this.enabled,
  });

  final VisitaMotivoNoVenta? initialValue;
  final GlobalKey<FormBuilderState> formKey;
  final String name;
  final String labelText;
  final bool enabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      visitaMotivosNoVentaListFormDropdownControllerProvider,
    );

    return AppFormBuilderSearchableDropdown<VisitaMotivoNoVenta>(
      name: name,
      decoration: InputDecoration(
        labelText: labelText,
        border: InputBorder.none,
      ),
      enabled: enabled,
      initialValue: initialValue,
      items: state.maybeWhen(
        orElse: () => [],
        data: (motivosNoVentaList) => motivosNoVentaList,
      ),
      itemAsString: (item) => item.descripcion,
      compareFn: (i, s) => i.id == s.id,
      validator:
          !(getFormInstantValue<bool?>(formKey, 'cliente_provisional') ??
                  false) &&
              !(getFormInstantValue<bool?>(formKey, 'pedidoRealizado') ??
                  false) &&
              !(getFormInstantValue<bool?>(formKey, 'ofertaRealizada') ?? false)
          ? FormBuilderValidators.compose([FormBuilderValidators.required()])
          : null,
    );
  }
}

class VisitaCompetidorListFilterDialog extends ConsumerStatefulWidget {
  VisitaCompetidorListFilterDialog({
    super.key,
    required this.visitCompetitorList,
    required this.currentVisitCompetitorList,
  });

  final List<VisitaCompetidor> currentVisitCompetitorList;
  final List<VisitaCompetidor> visitCompetitorList;

  final formKey = GlobalKey<FormBuilderState>();

  @override
  ConsumerState<VisitaCompetidorListFilterDialog> createState() =>
      _UserAuxListFilterDialogState();
}

class _UserAuxListFilterDialogState
    extends ConsumerState<VisitaCompetidorListFilterDialog> {
  final competitorFilterList = <VisitaCompetidor>[];
  var searchFilterList = <VisitaCompetidor>[];

  @override
  void initState() {
    super.initState();
    competitorFilterList.addAll(widget.currentVisitCompetitorList);
    searchFilterList.addAll(widget.visitCompetitorList);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(context).competencia),
      content: SizedBox(
        height: 500,
        width: 300.0,
        child: FormBuilder(
          key: widget.formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FormBuilderTextField(
                name: 'search_text',
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: S.of(context).search,
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () => widget.formKey.currentState?.patchValue({
                      'search_text': null,
                    }),
                  ),
                ),
                onChanged: (value) => setState(() {
                  searchFilterList = widget.visitCompetitorList
                      .where(
                        (e) => e.descripcion.toLowerCase().contains(
                          value?.toLowerCase() ?? '',
                        ),
                      )
                      .toList();
                }),
              ),
              const Gap(8),
              if (searchFilterList.isNotEmpty)
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, i) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(searchFilterList[i].descripcion),
                        Checkbox(
                          value: competitorFilterList.contains(
                            searchFilterList[i],
                          ),
                          onChanged: (value) {
                            setState(() {
                              if (value != null &&
                                  value &&
                                  searchFilterList.isNotEmpty) {
                                competitorFilterList.add(searchFilterList[i]);
                              } else {
                                competitorFilterList.remove(
                                  searchFilterList[i],
                                );
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    separatorBuilder: (context, i) => const Divider(),
                    itemCount: searchFilterList.length,
                  ),
                ),
            ],
          ),
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(S.of(context).cancel),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, competitorFilterList),
              child: Text(S.of(context).accept),
            ),
          ],
        ),
      ],
    );
  }
}
