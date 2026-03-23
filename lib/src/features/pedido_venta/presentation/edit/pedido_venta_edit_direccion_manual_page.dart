import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/pais.dart';
import '../../../../core/domain/provincia.dart';
import '../../../../core/domain/suggestion_address.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/helpers/helpers.dart';
import '../../../../core/infrastructure/suggestion_address_repository.dart';
import '../../../../core/presentation/common_widgets/app_form_builder_searchable_dropdown.dart';
import '../../../../core/presentation/common_widgets/confirm_validation_dialog.dart';
import '../../../../core/presentation/common_widgets/default_suggestion_address_dialog.dart';
import '../../../cliente/domain/cliente.dart';
import '../../../cliente/domain/cliente_direccion.dart';
import '../../../visitas/presentation/edit/pais_search_page_controller.dart';
import '../../../visitas/presentation/edit/provincia_search_page_controller.dart';

part 'pedido_venta_edit_direccion_manual_page.freezed.dart';
part 'pedido_venta_edit_direccion_manual_page.g.dart';

@freezed
abstract class DireccionManualScreenData with _$DireccionManualScreenData {
  const DireccionManualScreenData._();
  const factory DireccionManualScreenData({
    required List<Pais> paises,
    required List<Provincia> provincias,
  }) = _DireccionManualScreenData;
}

@riverpod
class DireccionManualScreenController
    extends _$DireccionManualScreenController {
  @override
  Future<DireccionManualScreenData> build() async {
    final provincias = await ref.read(
      provinciaSearchPageControllerProvider(null).future,
    );

    final paises = await ref.read(paisSearchPageControllerProvider.future);

    return DireccionManualScreenData(paises: paises, provincias: provincias);
  }
}

@RoutePage()
class PedidoVentaEditDireccionManualPage extends ConsumerStatefulWidget {
  const PedidoVentaEditDireccionManualPage({
    super.key,
    required this.cliente,
    required this.clienteDireccion,
    required this.isEdit,
  });

  final Cliente cliente;
  final ClienteDireccion? clienteDireccion;
  final bool isEdit;

  @override
  ConsumerState<PedidoVentaEditDireccionManualPage> createState() =>
      _PedidoVentaEditDireccionManualPageState();
}

class _PedidoVentaEditDireccionManualPageState
    extends ConsumerState<PedidoVentaEditDireccionManualPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(direccionManualScreenControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dirección Manual'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () => _submit(widget.isEdit),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: state.when(
          data: (direccionManualData) => FormBuilder(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormBuilderTextField(
                  name: 'nombreDireccion',
                  initialValue: widget.clienteDireccion?.nombre,
                  decoration: InputDecoration(
                    labelText: S
                        .of(context)
                        .cliente_show_clienteDireccion_clienteDireccionEditPage_nombre,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.maxLength(60),
                  ]),
                ),
                const Gap(4),

                FormBuilderTextField(
                  name: 'direccion1',
                  initialValue: widget.clienteDireccion?.direccion1,
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    labelText: S
                        .of(context)
                        .cliente_show_clienteDireccion_clienteDireccionEditPage_direccion1,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.maxLength(60),
                  ]),
                ),
                const Gap(4),

                FormBuilderTextField(
                  name: 'codigoPostal',
                  initialValue: widget.clienteDireccion?.codigoPostal,
                  decoration: InputDecoration(
                    labelText: S
                        .of(context)
                        .cliente_show_clienteDireccion_clienteDireccionEditPage_codigoPostal,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.maxLength(
                      10,
                      checkNullOrEmpty: false,
                    ),
                  ]),
                ),
                const Gap(4),

                FormBuilderTextField(
                  name: 'poblacion',
                  initialValue: widget.clienteDireccion?.poblacion,
                  decoration: InputDecoration(
                    labelText: S
                        .of(context)
                        .cliente_show_clienteDireccion_clienteDireccionEditPage_poblacion,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.maxLength(60),
                  ]),
                ),
                const Gap(4),

                AppFormBuilderSearchableDropdown<Pais>(
                  name: 'pais',
                  initialValue:
                      widget.clienteDireccion?.pais ??
                      widget.cliente.paisFiscal,
                  enabled: true,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  onChanged: (_) => setState(() {}),
                  decoration: InputDecoration(
                    labelText: S.of(context).visitas_edit_visitaEditar_pais,
                  ),
                  items: direccionManualData.paises,
                  itemAsString: (item) => item.descripcion,
                  compareFn: (i, s) => i.id == s.id,
                ),
                const Gap(4),
                AppFormBuilderSearchableDropdown<Provincia>(
                  name: 'provincia',
                  initialValue: direccionManualData.provincias
                      .where(
                        (provincia) =>
                            provincia.provincia ==
                            widget.clienteDireccion?.provincia,
                      )
                      .firstOrNull,
                  decoration: InputDecoration(
                    labelText: S
                        .of(context)
                        .visitas_edit_visitaEditar_provincia,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.maxLength(
                      60,
                      checkNullOrEmpty: false,
                    ),
                  ]),
                  items: direccionManualData.provincias
                      .where(
                        (provincia) =>
                            provincia.paisId ==
                            (getFormInstantValue(_formKey, 'pais')?.id ??
                                widget.cliente.paisFiscal?.id),
                      )
                      .toList(),
                  itemAsString: (item) => item.provincia ?? item.provinciaId,
                  compareFn: (i, s) => i.provinciaId == s.provinciaId,
                ),
              ],
            ),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Center(child: Text('Error: $error')),
        ),
      ),
    );
  }

  void _submit(bool isEdit) async {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      var direccionManual = ClienteDireccion(
        clienteId: widget.cliente.id,
        direccionId: null,
        direccionImpGuid: null,
        nombre: getFormValue(_formKey, 'nombreDireccion') as String,
        direccion1: getFormValue(_formKey, 'direccion1') as String,
        codigoPostal: getFormValue(_formKey, 'codigoPostal') as String,
        poblacion: getFormValue(_formKey, 'poblacion') as String,
        pais: getFormValue(_formKey, 'pais') as Pais?,
        provincia:
            (getFormValue(_formKey, 'provincia') as Provincia?)?.provincia,
        latitud: 0,
        longitud: 0,
        predeterminada: false,
        lastUpdated: DateTime.now(),
        enviada: false,
        tratada: false,
        deleted: false,
        isManual: true,
      );

      if (!isEdit) {
        final updateAddressFiels = await askSuggestionAddress(
          direccionManual,
          context,
        );
        if (updateAddressFiels == null) {
          return;
        }

        if ((_formKey.currentState?.saveAndValidate() ?? false)) {
          direccionManual = ClienteDireccion(
            clienteId: widget.cliente.id,
            direccionId: null,
            direccionImpGuid: null,
            nombre: getFormValue(_formKey, 'nombreDireccion') as String,
            direccion1: getFormValue(_formKey, 'direccion1') as String,
            codigoPostal: getFormValue(_formKey, 'codigoPostal') as String,
            poblacion: getFormValue(_formKey, 'poblacion') as String,
            pais: getFormValue(_formKey, 'pais') as Pais?,
            provincia:
                (getFormValue(_formKey, 'provincia') as Provincia?)?.provincia,
            latitud: 0,
            longitud: 0,
            predeterminada: false,
            lastUpdated: DateTime.now(),
            enviada: false,
            tratada: false,
            deleted: false,
            isManual: true,
          );
        }
      }

      unawaited(context.router.maybePop(direccionManual));
    } else {
      unawaited(
        context.showErrorBar(
          content: Text(
            S.of(context).visitas_edit_visitaEditar_errorValidarFormulario,
          ),
        ),
      );
    }
  }

  Future<bool?> askSuggestionAddress(
    ClienteDireccion clienteDireccion,
    BuildContext context,
  ) async {
    final companyAddressText = getAddressText(
      clienteDireccion.direccion1,
      clienteDireccion.codigoPostal,
      clienteDireccion.poblacion,
      clienteDireccion.provincia,
      clienteDireccion.pais?.descripcion,
    );

    final suggestionAddress = await ref
        .read(suggestionAddressRepositoryProvider)
        .getSuggestionAddressFromAddress(
          address: companyAddressText,
          languageId: clienteDireccion.pais?.isoCode,
        );

    if (suggestionAddress != null) {
      if (context.mounted &&
          suggestionAddress.formattedAddressResult != 'ACCEPT') {
        final continueWithSuggestionAddress = await showDialog<bool?>(
          context: context,
          builder: (ctx) => ConfirmValidationDialog(
            dialogContext: ctx,
            infoText: S.of(ctx).couldntValidateAddressMessage,
          ),
        );

        if (continueWithSuggestionAddress == null ||
            !continueWithSuggestionAddress) {
          return null;
        }
      }

      if (context.mounted &&
          getAddressText(
                suggestionAddress.direccion,
                suggestionAddress.codigoPostal,
                suggestionAddress.poblacion,
                suggestionAddress.provincia?.provincia,
                suggestionAddress.pais?.descripcion,
              ) !=
              companyAddressText) {
        final updateWithSuggestionAddress = await showDialog<bool?>(
          context: context,
          builder: (ctx) => DefaultSuggestionAddressDialog(
            userAddressText: companyAddressText,
            suggestionAddress: suggestionAddress,
            dialogContext: ctx,
          ),
        );

        if (updateWithSuggestionAddress ?? false) {
          updateAddressValues(suggestionAddress);
        }
      }
    }

    return true;
  }

  void updateAddressValues(SuggestionAddress suggestionAddress) {
    _formKey.currentState?.patchValue({
      'direccion1': suggestionAddress.direccion,
      'codigoPostal': suggestionAddress.codigoPostal,
      'poblacion': suggestionAddress.poblacion,
      'provincia': suggestionAddress.provincia,
    });
    if (suggestionAddress.pais != null) {
      _formKey.currentState?.patchValue({'pais': suggestionAddress.pais});
    }
  }

  bool areModifiedAddressFields(GlobalKey<FormBuilderState> formKey) {
    return formKey.currentState?.value['direccion1'] !=
            widget.clienteDireccion?.direccion1 ||
        formKey.currentState?.value['codigoPostal'] !=
            widget.clienteDireccion?.codigoPostal ||
        formKey.currentState?.value['poblacion'] !=
            widget.clienteDireccion?.poblacion ||
        formKey.currentState?.value['provincia'] !=
            widget.clienteDireccion?.provincia ||
        formKey.currentState?.value['pais'] != widget.clienteDireccion?.pais;
  }
}
