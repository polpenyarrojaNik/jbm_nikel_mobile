import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/articulo_precio.dart';
import '../../../../core/helpers/extension.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/common_widgets/sin_resultados_widget.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../../articulos/domain/articulo.dart';
import '../../../articulos/domain/articulo_grupo_neto.dart';
import '../../../articulos/domain/articulo_precio_tarifa.dart';
import '../../../articulos/domain/articulo_sustitutivo.dart';
import '../../../articulos/infrastructure/articulo_repository.dart';
import '../../../cliente/domain/cliente.dart';
import '../../../cliente/infrastructure/cliente_repository.dart';
import '../../../usuario/application/usuario_notifier.dart';
import '../../domain/pedido_venta_linea.dart';
import '../../domain/pedido_venta_linea_ultimos_precios_param.dart';
import '../../domain/precio.dart';
import '../../domain/seleccionar_cantidad_param.dart';
import '../../infrastructure/pedido_venta_repository.dart';
import 'pedido_venta_edit_page_controller.dart';
import 'select_cantidad_controller.dart';

part 'select_quantity_page.g.dart';

@riverpod
class SelectQuantityPageController extends _$SelectQuantityPageController {
  @override
  Future<SelectQuantityInitialData> build({
    required String clienteId,
    required String articuloId,
  }) async {
    final articulo = await ref
        .read(articuloRepositoryProvider)
        .getArticuloById(articuloId: articuloId);
    final cliente = await ref
        .read(clienteRepositoryProvider)
        .getClienteById(clienteId: clienteId);

    return SelectQuantityInitialData(articulo: articulo, cliente: cliente);
  }
}

@RoutePage()
class SeleccionarCantidadPage extends ConsumerStatefulWidget {
  const SeleccionarCantidadPage({
    super.key,
    required this.seleccionarCantidadParam,
  });

  final SeleccionarCantidadParam seleccionarCantidadParam;

  @override
  ConsumerState<SeleccionarCantidadPage> createState() =>
      _SelecionarCantidadPageState();
}

class _SelecionarCantidadPageState
    extends ConsumerState<SeleccionarCantidadPage> {
  late String articuloId;

  @override
  void initState() {
    super.initState();
    articuloId = widget.seleccionarCantidadParam.articuloId;
  }

  @override
  Widget build(BuildContext context) {
    final selectQuantityState = ref.watch(
      selectQuantityPageControllerProvider(
        clienteId: widget.seleccionarCantidadParam.clienteId,
        articuloId: articuloId,
      ),
    );

    return selectQuantityState.when(
      data: (initialData) {
        return SeleccionarCantidadForm(
          seleccionarCantidadParam: widget.seleccionarCantidadParam,
          articulo: initialData.articulo,
          cliente: initialData.cliente,
          setArticuloSustitutivo: (articuloSusititutivoId) =>
              setState(() => articuloId = articuloSusititutivoId),
        );
      },
      error: (error, _) => Scaffold(
        appBar: AppBar(
          title: Text(
            S.of(context).pedido_edit_selectQuantity_seleccionarCantidad,
          ),
        ),
        body: Center(child: ErrorMessageWidget(error.toString())),
      ),
      loading: () => Scaffold(
        appBar: AppBar(
          title: Text(
            S.of(context).pedido_edit_selectQuantity_seleccionarCantidad,
          ),
        ),
        body: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class SeleccionarCantidadForm extends ConsumerStatefulWidget {
  const SeleccionarCantidadForm({
    super.key,
    required this.seleccionarCantidadParam,
    required this.articulo,
    required this.cliente,
    required this.setArticuloSustitutivo,
  });

  final SeleccionarCantidadParam seleccionarCantidadParam;
  final Articulo articulo;
  final Cliente cliente;
  final Function(String articuloSusititutivoId) setArticuloSustitutivo;

  @override
  ConsumerState<SeleccionarCantidadForm> createState() =>
      _SelecionarCantidadFormState();
}

class _SelecionarCantidadFormState
    extends ConsumerState<SeleccionarCantidadForm> {
  final formKeyCantidad = GlobalKey<FormBuilderState>();
  final formKeyArticuloPrecio = GlobalKey<FormBuilderState>();
  final unitsController = TextEditingController();
  final cajaController = TextEditingController();
  final subcajaController = TextEditingController();
  final paletController = TextEditingController();
  final precioController = TextEditingController();
  final descuento1Controller = TextEditingController();
  var totalQuantity = 0;
  var units = 0;
  var unitsCaja = 0;
  var unitsSubcaja = 0;
  var unitsPalet = 0;
  double precio = 0;
  double descuento1 = 0;
  double descuento2 = 0;

  ArticuloPrecio? articuloPrecio;

  var initialLoadingData = true;

  @override
  void initState() {
    super.initState();
    setValoresIniciales();
    precioController.text = numberFormatDecimal(precio);
    unitsController.text = units.toString();

    descuento1Controller.text = numberFormatCantidades(descuento1);
    unitsController.selection = TextSelection(
      baseOffset: 0,
      extentOffset: unitsController.text.length,
    );

    Future.microtask(
      () => ref
          .read(articuloPrecioProvider.notifier)
          .getArticuloPrecio(
            articuloId: widget.articulo.id,
            clienteId: widget.seleccionarCantidadParam.clienteId,
            cantidad: totalQuantity,
          ),
    );
  }

  @override
  void dispose() {
    unitsController.dispose();
    cajaController.dispose();
    subcajaController.dispose();
    paletController.dispose();
    precioController.dispose();
    descuento1Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<ArticuloPrecioControllerState>(articuloPrecioProvider, (
      _,
      state,
    ) {
      state.maybeWhen(
        orElse: () => null,
        data: (newArticuloPrecio) => setArticuloPrecioValue(newArticuloPrecio),
      );
    });

    final stateArticuloPrecio = ref.watch(articuloPrecioProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).pedido_edit_selectQuantity_seleccionarCantidad,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ArticuloInfo(
            articulo: widget.articulo,
            setArticuloSustitutivo: widget.setArticuloSustitutivo,
          ),
          if (articuloPrecio != null)
            TotalQuantityWidget(
              totalQuantity: totalQuantity,
              precio: precio,
              descuento1: descuento1,
              descuento2: descuento2,
              descuento3: articuloPrecio!.descuento3,
              tipoPrecio: articuloPrecio!.precio.tipoPrecio,
              divisaId: articuloPrecio!.divisaId,
            ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: FormBuilder(
                      key: formKeyCantidad,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: _UnitsFormField(
                                formKey: formKeyCantidad,
                                unitsController: unitsController,
                                setUnitsQuantity: (value) {
                                  setState(() {
                                    units = value;
                                  });

                                  setTotalQuantity();
                                },
                                cantidad: units,
                                ventaMinimo: widget.articulo.ventaMinimo,
                                ventaMultiplo: widget.articulo.ventaMultiplo,
                              ),
                            ),
                            if (widget.articulo.unidadesSubcaja > 0) ...[
                              const VerticalDivider(),
                              Expanded(
                                child: _SubcajaUnitsFormField(
                                  formKey: formKeyCantidad,
                                  subcajaController: subcajaController,
                                  setUnitSubcajaQuantity: (value) {
                                    setState(() {
                                      unitsSubcaja = value;
                                    });

                                    setTotalQuantity();
                                  },
                                  cantidad: unitsSubcaja,
                                  unidadesPorSubcaja:
                                      widget.articulo.unidadesSubcaja,
                                  ventaMultiplo: widget.articulo.ventaMultiplo,
                                  ventaMinimo: widget.articulo.ventaMinimo,
                                ),
                              ),
                            ],
                            if (widget.articulo.unidadesCaja > 0) ...[
                              const VerticalDivider(),

                              Expanded(
                                child: _CajaUnitsFormField(
                                  formKey: formKeyCantidad,
                                  cajaController: cajaController,
                                  setUnitCajaQuantity: (value) {
                                    setState(() {
                                      unitsCaja = value;
                                    });

                                    setTotalQuantity();
                                  },
                                  cantidad: unitsCaja,
                                  unidadesPorCaja: widget.articulo.unidadesCaja,
                                  ventaMultiplo: widget.articulo.ventaMultiplo,
                                  ventaMinimo: widget.articulo.ventaMinimo,
                                ),
                              ),
                            ],
                            if ((widget.articulo.unidadesPalet > 0 &&
                                widget.articulo.unidadesPalet != 99999)) ...[
                              const VerticalDivider(),

                              Expanded(
                                child: _PaletUnitsFormField(
                                  formKey: formKeyCantidad,
                                  paletController: paletController,
                                  setUnitPaletQuantity: (value) {
                                    setState(() {
                                      unitsPalet = value;
                                    });

                                    setTotalQuantity();
                                  },
                                  cantidad: unitsPalet,
                                  unidadesPorPalet:
                                      widget.articulo.unidadesPalet,
                                  ventaMultiplo: widget.articulo.ventaMultiplo,
                                  ventaMinimo: widget.articulo.ventaMinimo,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                  stateArticuloPrecio.when(
                    initial: () => Container(),
                    error: (error, _) =>
                        Center(child: ErrorMessageWidget(error.toString())),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    data: (_) => (articuloPrecio != null)
                        ? _ArticuloPrecioContainer(
                            articuloId:
                                widget.seleccionarCantidadParam.articuloId,
                            clienteId:
                                widget.seleccionarCantidadParam.clienteId,
                            formKey: formKeyArticuloPrecio,
                            precio: precio,
                            tipoPrecio: articuloPrecio!.precio.tipoPrecio,
                            precioController: precioController,
                            descuento1Controller: descuento1Controller,
                            descuento2: descuento2,
                            descuento3: articuloPrecio!.descuento3,
                            setPrecio: (value) =>
                                setState(() => precio = value),
                            setDescuento1: (value) =>
                                setState(() => descuento1 = value),
                            setDescuento2: (value) =>
                                setState(() => descuento2 = value),
                          )
                        : Container(),
                  ),
                  const Gap(8),
                  InfoPreciosWidget(articuloId: widget.articulo.id),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: articuloPrecio != null
            ? () => navigateToCrearPedido(
                context,
                articuloPrecio!,
                widget.articulo,
                widget.cliente,
              )
            : null,
        child: const Icon(Icons.check),
      ),
    );
  }

  Future<void> navigateToCrearPedido(
    BuildContext context,
    ArticuloPrecio articuloPrecio,
    Articulo articulo,
    Cliente cliente,
  ) async {
    if (context.mounted &&
        (formKeyCantidad.currentState?.saveAndValidate() ?? false) &&
        (formKeyArticuloPrecio.currentState?.saveAndValidate() ?? false)) {
      final isValidate = validateCantidad(
        formKeyCantidad,
        articulo.ventaMinimo,
        articulo.ventaMultiplo,
        articulo.unidadesSubcaja,
        articulo.unidadesCaja,
        articulo.unidadesPalet,
      );

      if (!isValidate) return;

      final importeLinea = ref
          .read(pedidoVentaRepositoryProvider)
          .getTotalLinea(
            precio: Precio(
              precio: precio.toMoney(currencyId: articuloPrecio.divisaId),
              tipoPrecio: articuloPrecio.precio.tipoPrecio,
            ),
            cantidad: totalQuantity,
            descuento1: descuento1,
            descuento2: articuloPrecio.descuento2,
            descuento3: articuloPrecio.descuento3,
          );

      final minimumPrice = await ref
          .read(pedidoVentaRepositoryProvider)
          .checkMinimumPrice(
            articulo.id,
            importeLinea,
            totalQuantity,
            articuloPrecio.divisaId,
          );
      if (minimumPrice == null) {
        final linea = PedidoVentaLinea(
          empresaId: widget.seleccionarCantidadParam.pedidoVentaParam.empresaId,
          pedidoId: widget.seleccionarCantidadParam.pedidoVentaParam.pedidoId,
          pedidoVentaLineaId:
              (widget.seleccionarCantidadParam.posicionLinea + 1)
                  .toString()
                  .padLeft(3, '0'),
          pedidoVentaAppId:
              widget.seleccionarCantidadParam.pedidoVentaParam.pedidoAppId,
          articuloId: articulo.id,
          articuloDescription: getDescriptionArticuloInLocalLanguage(
            articulo: articulo,
          ),
          cantidad: totalQuantity,
          precioDivisa: precio.toMoney(currencyId: articuloPrecio.divisaId),
          divisaId: articuloPrecio.divisaId,
          tipoPrecio: articuloPrecio.precio.tipoPrecio,
          descuento1: descuento1,
          descuento2: articuloPrecio.descuento2,
          descuento3: articuloPrecio.descuento3,
          descuentoProntoPago: cliente.descuentoProntoPago,
          stockDisponible: articulo.stockDisponible,
          stockDisponibleSN: articulo.stockDisponible > 0,
          iva: articuloPrecio.iva,
          importeLinea: importeLinea,
          cantidadPendiente: totalQuantity,
          aiRecomendado: widget.seleccionarCantidadParam.recomendado,
          lastUpdated: DateTime.now().toUtc(),
          deleted: false,
        );

        if (!widget.seleccionarCantidadParam.addNewLineaDesdeArticulo) {
          if (widget.seleccionarCantidadParam.isUpdatingLinea()) {
            ref
                .read(
                  pedidoVentaEditPageControllerProvider(
                    widget.seleccionarCantidadParam.pedidoVentaParam,
                  ).notifier,
                )
                .updatePedidoVentaLinea(
                  pedidoVentaLinea: linea,
                  posicionActualizar:
                      widget.seleccionarCantidadParam.posicionLinea,
                );
          } else {
            ref
                .read(
                  pedidoVentaEditPageControllerProvider(
                    widget.seleccionarCantidadParam.pedidoVentaParam,
                  ).notifier,
                )
                .addPedidoVentaLinea(newLinea: linea);
          }
        }

        if (context.mounted &&
            widget.seleccionarCantidadParam.addNewLineaDesdeArticulo) {
          await context.router.pushAndPopUntil(
            PedidoVentaEditRoute(
              pedidoAppId: linea.pedidoVentaAppId,
              addLineaDesdeArticulo: linea,
              isLocal: widget.seleccionarCantidadParam.pedidoVentaParam.isLocal,
            ),
            predicate: (route) =>
                route.settings.name ==
                ArticuloListaRoute(isSearchArticuloForForm: false).routeName,
          );
        } else {
          if (context.mounted) {
            await context.router.maybePop(
              widget.seleccionarCantidadParam.recomendado,
            );
          }
        }
      } else {
        if (context.mounted) {
          await context.showErrorBar(
            content: Text(S.of(context).precioNoPuedeSerMenorAlPrecioMinimo),
            duration: const Duration(seconds: 5),
          );
        }
      }
    }
  }

  void setValoresIniciales() {
    if (widget.seleccionarCantidadParam.isUpdatingLinea()) {
      totalQuantity = widget.seleccionarCantidadParam.cantidad!;

      var resto = totalQuantity;

      unitsPalet = _getUnitsPalet(resto, widget.articulo.unidadesPalet);
      resto = resto - unitsPalet;

      unitsCaja = _getUnitsCaja(resto, widget.articulo.unidadesCaja);
      resto = resto - unitsCaja;

      unitsSubcaja = _getUnitsSubcaja(resto, widget.articulo.unidadesSubcaja);
      resto = resto - unitsSubcaja;

      units = resto;
      descuento1 = widget.seleccionarCantidadParam.descuento1!;
      descuento2 = widget.seleccionarCantidadParam.descuento2!;
      precio = widget.seleccionarCantidadParam.precio!;
    } else {
      totalQuantity = widget.articulo.ventaMinimo;
      units = widget.articulo.ventaMinimo;
      unitsController.text = units.toString();
      unitsController.selection = TextSelection(
        baseOffset: 0,
        extentOffset: unitsController.text.length,
      );
    }
  }

  int _getUnitsPalet(int totalQuantity, int unidadesPorPalet) {
    if (unidadesPorPalet <= 0 || unidadesPorPalet == 9999) return 0;
    final numPalets = (totalQuantity ~/ unidadesPorPalet);
    paletController.text = numPalets.toString();
    return numPalets * unidadesPorPalet;
  }

  int _getUnitsCaja(int totalQuantity, int unidadesPorCaja) {
    if (unidadesPorCaja <= 0) return 0;
    final numCajas = (totalQuantity ~/ unidadesPorCaja);
    cajaController.text = numCajas.toString();
    return numCajas * unidadesPorCaja;
  }

  int _getUnitsSubcaja(int totalQuantity, int unidadesPorSubcaja) {
    if (unidadesPorSubcaja <= 0) return 0;
    final numSubcajas = (totalQuantity ~/ unidadesPorSubcaja);
    subcajaController.text = (numSubcajas).toString();
    return numSubcajas * unidadesPorSubcaja;
  }

  void setArticuloPrecioValue(ArticuloPrecio newArticuloPrecio) {
    setState(() {
      articuloPrecio = newArticuloPrecio;

      if (!widget.seleccionarCantidadParam.isUpdatingLinea() ||
          !initialLoadingData) {
        precio = newArticuloPrecio.precio.precio.amount.toDecimal().toDouble();
        precioController.text = numberFormatDecimal(
          newArticuloPrecio.precio.precio.amount.toDecimal().toDouble(),
        );

        descuento1 = newArticuloPrecio.descuento1;
        descuento1Controller.text = numberFormatCantidades(descuento1);

        descuento2 = newArticuloPrecio.descuento2;
      }
      initialLoadingData = false;
    });
  }

  void setTotalQuantity() {
    final quantity = units + unitsCaja + unitsSubcaja + unitsPalet;
    setState(() => totalQuantity = quantity);
    ref
        .read(articuloPrecioProvider.notifier)
        .getArticuloPrecio(
          articuloId: widget.articulo.id,
          clienteId: widget.seleccionarCantidadParam.clienteId,
          cantidad: totalQuantity,
        );
  }

  bool validateCantidad(
    GlobalKey<FormBuilderState> formKey,
    int ventaMinimo,
    int ventaMultiplo,
    int unidadesPorSubcaja,
    int unidadesPorCaja,
    int unidadesPorPalet,
  ) {
    if (totalQuantity < ventaMinimo) {
      validateVentaMinimo(formKey, ventaMinimo);
      return false;
    } else if (totalQuantity % ventaMultiplo != 0) {
      validateMultiplo(
        formKey,
        ventaMultiplo,
        unidadesPorSubcaja,
        unidadesPorCaja,
        unidadesPorPalet,
      );
      return false;
    }
    return true;
  }

  void validateVentaMinimo(
    GlobalKey<FormBuilderState> formKey,
    int ventaMinimo,
  ) {
    if ((getFormValue<String?>(formKey, 'unidades') != null &&
            getFormValue<String?>(formKey, 'unidades')!.isNotEmpty &&
            getFormValue<String?>(formKey, 'unidades') != '0') ||
        ((getFormValue<String?>(formKey, 'unidades_subcaja') == null ||
                (getFormValue<String?>(formKey, 'unidades_subcaja') != null &&
                    getFormValue<String?>(
                      formKey,
                      'unidades_subcaja',
                    )!.isNotEmpty &&
                    getFormValue<String?>(formKey, 'unidades_subcaja') ==
                        '0')) &&
            ((getFormValue<String?>(formKey, 'unidades_caja') == null ||
                    (getFormValue<String?>(formKey, 'unidades_caja') != null &&
                        getFormValue<String?>(
                          formKey,
                          'unidades_caja',
                        )!.isNotEmpty &&
                        getFormValue<String?>(formKey, 'unidades_caja') ==
                            '0')) &&
                (getFormValue<String?>(formKey, 'unidades_palet') == null ||
                    (getFormValue<String?>(formKey, 'unidades_palet') != null &&
                        getFormValue<String?>(
                          formKey,
                          'unidades_palet',
                        )!.isNotEmpty &&
                        getFormValue<String?>(formKey, 'unidades_palet') ==
                            '0'))))) {
      formKey.currentState?.fields['unidades']?.invalidate(
        '${S.of(context).pedido_edit_selectQuantity_minimo} $ventaMinimo ${S.of(context).unidad}',
      );
      formKey.currentState?.patchValue({'unidades': ventaMinimo.toString()});
    }

    if (getFormValue<String?>(formKey, 'unidades_subcaja') != null &&
        getFormValue<String?>(formKey, 'unidades_subcaja')!.isNotEmpty &&
        getFormValue<String?>(formKey, 'unidades_subcaja') != '0') {
      formKey.currentState?.fields['unidades_subcaja']?.invalidate(
        '${S.of(context).pedido_edit_selectQuantity_minimo} $ventaMinimo ${S.of(context).unidad}',
      );
    }

    if (getFormValue<String?>(formKey, 'unidades_caja') != null &&
        getFormValue<String?>(formKey, 'unidades_caja')!.isNotEmpty &&
        getFormValue<String?>(formKey, 'unidades_caja') != '0') {
      formKey.currentState?.fields['unidades_caja']?.invalidate(
        '${S.of(context).pedido_edit_selectQuantity_minimo} $ventaMinimo ${S.of(context).unidad}',
      );
    }

    if (getFormValue<String?>(formKey, 'unidades_palet') != null &&
        getFormValue<String?>(formKey, 'unidades_palet')!.isNotEmpty &&
        getFormValue<String?>(formKey, 'unidades_palet') != '0') {
      formKey.currentState?.fields['unidades_palet']?.invalidate(
        '${S.of(context).pedido_edit_selectQuantity_minimo} $ventaMinimo ${S.of(context).unidad}',
      );
    }
  }

  void validateMultiplo(
    GlobalKey<FormBuilderState> formKey,
    int ventaMultiplo,
    int unidadesPorSubcaja,
    int unidadesPorCaja,
    int unidadesPorPalet,
  ) {
    if (getFormValue<String?>(formKey, 'unidades') != null &&
        getFormValue<String?>(formKey, 'unidades')!.isNotEmpty &&
        getFormValue<String?>(formKey, 'unidades') != '0') {
      final unidades = int.tryParse(getFormValue(formKey, 'unidades')) ?? 0;

      if (unidades % ventaMultiplo != 0) {
        formKey.currentState?.fields['unidades']?.invalidate(
          '${S.of(context).pedido_edit_selectQuantity_tieneQueSerMultiploDe} $ventaMultiplo',
        );
      }
    }

    if (getFormValue<String?>(formKey, 'unidades_subcaja') != null &&
        getFormValue<String?>(formKey, 'unidades_subcaja')!.isNotEmpty &&
        getFormValue<String?>(formKey, 'unidades_subcaja') != '0') {
      if ((unidadesPorSubcaja) *
              int.parse(getFormValue(formKey, 'unidades_subcaja')) %
              ventaMultiplo !=
          0) {
        formKey.currentState?.fields['unidades_subcaja']?.invalidate(
          '${S.of(context).pedido_edit_selectQuantity_tieneQueSerMultiploDe} $ventaMultiplo',
        );
      }
    }

    if (getFormValue<String?>(formKey, 'unidades_caja') != null &&
        getFormValue<String?>(formKey, 'unidades_caja')!.isNotEmpty &&
        getFormValue<String?>(formKey, 'unidades_caja') != '0') {
      if ((unidadesPorCaja) *
              int.parse(getFormValue(formKey, 'unidades_caja')) %
              ventaMultiplo !=
          0) {
        formKey.currentState?.fields['unidades_caja']?.invalidate(
          '${S.of(context).pedido_edit_selectQuantity_tieneQueSerMultiploDe} $ventaMultiplo',
        );
      }
    }

    if (getFormValue<String?>(formKey, 'unidades_palet') != null &&
        getFormValue<String?>(formKey, 'unidades_palet')!.isNotEmpty &&
        getFormValue<String?>(formKey, 'unidades_palet') != '0') {
      if ((unidadesPorPalet) *
              int.parse(getFormValue(formKey, 'unidades_palet')) %
              ventaMultiplo !=
          0) {
        formKey.currentState?.fields['unidades_palet']?.invalidate(
          '${S.of(context).pedido_edit_selectQuantity_tieneQueSerMultiploDe} $ventaMultiplo',
        );
      }
    }
  }

  int setMultiploMasCercano(int quantity, int ventaMultiplo) {
    var nuevaCantidad = 0;
    for (var i = 0; i < ventaMultiplo; i++) {
      if ((quantity + i) % ventaMultiplo == 0) {
        nuevaCantidad = quantity + i;
      }
    }
    return nuevaCantidad;
  }
}

class _ArticuloInfo extends ConsumerWidget {
  const _ArticuloInfo({
    required this.articulo,
    required this.setArticuloSustitutivo,
  });

  final Articulo articulo;
  final Function(String articuloSusititutivoId) setArticuloSustitutivo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      getArticuloSustitutivoListaByIdProvider(articulo.id),
    );

    return Container(
      padding: const EdgeInsets.all(16),
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: Row(
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      articulo.id,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      '${S.of(context).pedido_edit_selectQuantity_stockDisponible} ${numberFormatCantidades(articulo.stockDisponible)} ${S.of(context).unidad}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Text(getDescriptionArticuloInLocalLanguage(articulo: articulo)),
                state.when(
                  data: (articuloSustitutivoList) =>
                      (articuloSustitutivoList.isNotEmpty)
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S
                                  .of(context)
                                  .pedido_edit_selectQuantity_artiuclosSustitutivos,
                            ),
                            const Gap(4),
                            SizedBox(
                              height: 20,
                              child: ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, i) => GestureDetector(
                                  onTap: () => setArticuloSustitutivo(
                                    articuloSustitutivoList[i]
                                        .articuloSustitutivoId,
                                  ),
                                  child: Text(
                                    articuloSustitutivoList[i]
                                        .articuloSustitutivoId,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                  ),
                                ),
                                separatorBuilder: (context, i) =>
                                    const Text(','),
                                itemCount: articuloSustitutivoList.length,
                              ),
                            ),
                          ],
                        )
                      : Container(),
                  error: (error, _) => ErrorMessageWidget(error.toString()),
                  loading: () => const ProgressIndicatorWidget(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String getStringArticulosSusitotutivos(
    List<ArticuloSustitutivo> articuloSustitutivoList,
  ) {
    var sustitutivoStr = '';

    for (var i = 0; i < articuloSustitutivoList.length; i++) {
      if (sustitutivoStr.isNotEmpty) {
        sustitutivoStr += ', ';
      }

      sustitutivoStr += articuloSustitutivoList[i].articuloSustitutivoId;
    }

    return sustitutivoStr;
  }
}

class TotalQuantityWidget extends ConsumerWidget {
  const TotalQuantityWidget({
    super.key,
    required this.totalQuantity,
    required this.precio,
    required this.descuento1,
    required this.descuento2,
    required this.descuento3,
    required this.tipoPrecio,
    required this.divisaId,
  });

  final int totalQuantity;
  final double precio;
  final double descuento1;
  final double descuento2;
  final double descuento3;
  final int tipoPrecio;
  final String divisaId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Card(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      S.of(context).pedido_edit_selectQuantity_cantidad,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                    Text(
                      '${numberFormatCantidades(totalQuantity)} ${S.of(context).unidad}',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Card(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text(
                      S.of(context).pedido_edit_selectQuantity_importe,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                    Text(
                      ref
                          .read(pedidoVentaRepositoryProvider)
                          .getTotalLinea(
                            precio: Precio(
                              precio: precio.toMoney(currencyId: divisaId),
                              tipoPrecio: tipoPrecio,
                            ),
                            cantidad: totalQuantity,
                            descuento1: descuento1,
                            descuento2: descuento2,
                            descuento3: descuento3,
                          )
                          .toString(),
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _UnitsFormField extends StatelessWidget {
  const _UnitsFormField({
    required this.formKey,
    required this.setUnitsQuantity,
    required this.unitsController,
    required this.cantidad,
    required this.ventaMinimo,
    required this.ventaMultiplo,
  });

  final void Function(int value) setUnitsQuantity;
  final GlobalKey<FormBuilderState> formKey;
  final TextEditingController unitsController;
  final int? cantidad;
  final int ventaMinimo;
  final int ventaMultiplo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormBuilderTextField(
          name: 'unidades',
          autofocus: true,
          textAlign: TextAlign.right,
          keyboardType: TextInputType.number,
          controller: unitsController,
          decoration: InputDecoration(
            labelText: S.of(context).pedido_edit_selectQuantity_unidades,
            labelStyle: Theme.of(
              context,
            ).inputDecorationTheme.labelStyle?.copyWith(fontSize: 9),
            errorStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: 9,
              color: Theme.of(context).colorScheme.error,
            ),
          ),
          validator: (value) => validateQuantity(context, value),
          onChanged: (value) {
            if (value != null && value.isNotEmpty) {
              final totalQuantity = int.tryParse(value);
              if (totalQuantity != null) {
                setUnitsQuantity(totalQuantity);
              }
            } else {
              setUnitsQuantity(0);
            }
          },
          onTap: () => unitsController.selection = TextSelection(
            baseOffset: 0,
            extentOffset: unitsController.text.length,
          ),
        ),
        const Gap(4),
        Text(
          'x${numberFormatCantidades(ventaMultiplo)} ${S.of(context).unidad}',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 9),
        ),
      ],
    );
  }

  String? validateQuantity(BuildContext context, String? quantityStr) {
    if (quantityStr != null && quantityStr != '') {
      return null;
    }
    return S.of(context).pedido_edit_selectQuantity_noPuedeEstarVacio;
  }
}

class _CajaUnitsFormField extends StatelessWidget {
  const _CajaUnitsFormField({
    required this.formKey,
    required this.setUnitCajaQuantity,
    required this.cajaController,
    required this.cantidad,
    required this.unidadesPorCaja,
    required this.ventaMultiplo,
    required this.ventaMinimo,
  });

  final void Function(int value) setUnitCajaQuantity;
  final GlobalKey<FormBuilderState> formKey;
  final TextEditingController cajaController;
  final int? cantidad;
  final int unidadesPorCaja;
  final int ventaMultiplo;
  final int ventaMinimo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormBuilderTextField(
          name: 'unidades_caja',
          autofocus: true,
          keyboardType: TextInputType.number,
          controller: cajaController,
          decoration: InputDecoration(
            labelText: S.of(context).pedido_edit_selectQuantity_cajas,
            labelStyle: Theme.of(
              context,
            ).inputDecorationTheme.labelStyle?.copyWith(fontSize: 9),
            errorStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: 9,
              color: Theme.of(context).colorScheme.error,
            ),
          ),
          textAlign: TextAlign.right,
          validator: (value) => null,
          onChanged: (value) {
            if (value != null && value.isNotEmpty) {
              var totalQuantity = int.tryParse(value);
              if (totalQuantity != null) {
                totalQuantity = totalQuantity * unidadesPorCaja;
                setUnitCajaQuantity(totalQuantity);
              }
            } else {
              setUnitCajaQuantity(0);
            }
          },
          onTap: () => cajaController.selection = TextSelection(
            baseOffset: 0,
            extentOffset: cajaController.text.length,
          ),
        ),
        const Gap(4),
        Text(
          'x${numberFormatCantidades(unidadesPorCaja)} ${S.of(context).unidad}',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 9),
        ),
      ],
    );
  }
}

class _SubcajaUnitsFormField extends StatelessWidget {
  const _SubcajaUnitsFormField({
    required this.formKey,
    required this.setUnitSubcajaQuantity,
    required this.subcajaController,
    required this.cantidad,
    required this.unidadesPorSubcaja,
    required this.ventaMultiplo,
    required this.ventaMinimo,
  });

  final void Function(int value) setUnitSubcajaQuantity;
  final GlobalKey<FormBuilderState> formKey;
  final TextEditingController subcajaController;
  final int? cantidad;
  final int unidadesPorSubcaja;
  final int ventaMultiplo;
  final int ventaMinimo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormBuilderTextField(
          name: 'unidades_subcaja',
          autofocus: true,

          keyboardType: TextInputType.number,
          controller: subcajaController,
          decoration: InputDecoration(
            labelText: S.of(context).pedido_edit_selectQuantity_subcajas,
            errorStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: 9,
              color: Theme.of(context).colorScheme.error,
            ),
            labelStyle: Theme.of(
              context,
            ).inputDecorationTheme.labelStyle?.copyWith(fontSize: 9),
          ),
          textAlign: TextAlign.right,
          validator: (value) => null,
          onChanged: (value) {
            if (value != null && value.isNotEmpty) {
              var totalQuantity = int.tryParse(value);
              if (totalQuantity != null) {
                totalQuantity = totalQuantity * unidadesPorSubcaja;
                setUnitSubcajaQuantity(totalQuantity);
              }
            } else {
              setUnitSubcajaQuantity(0);
            }
          },
          onTap: () => subcajaController.selection = TextSelection(
            baseOffset: 0,
            extentOffset: subcajaController.text.length,
          ),
        ),
        const Gap(4),
        Text(
          'x${numberFormatCantidades(unidadesPorSubcaja)} ${S.of(context).unidad}',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 9),
        ),
      ],
    );
  }
}

class _PaletUnitsFormField extends StatelessWidget {
  const _PaletUnitsFormField({
    required this.formKey,
    required this.setUnitPaletQuantity,
    required this.paletController,
    required this.cantidad,
    required this.unidadesPorPalet,
    required this.ventaMultiplo,
    required this.ventaMinimo,
  });

  final void Function(int value) setUnitPaletQuantity;
  final GlobalKey<FormBuilderState> formKey;
  final TextEditingController paletController;
  final int? cantidad;
  final int unidadesPorPalet;
  final int ventaMultiplo;
  final int ventaMinimo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormBuilderTextField(
          name: 'unidades_palet',
          autofocus: true,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.right,
          controller: paletController,
          decoration: InputDecoration(
            labelText: S.of(context).pedido_edit_selectQuantity_pallets,
            labelStyle: Theme.of(
              context,
            ).inputDecorationTheme.labelStyle?.copyWith(fontSize: 9),
          ),
          validator: (value) => null,
          onChanged: (value) {
            if (value != null && value.isNotEmpty) {
              var quantity = int.tryParse(value);
              if (quantity != null) {
                quantity = quantity * unidadesPorPalet;
                setUnitPaletQuantity(quantity);
              }
            } else {
              setUnitPaletQuantity(0);
            }
          },
          onTap: () => paletController.selection = TextSelection(
            baseOffset: 0,
            extentOffset: paletController.text.length,
          ),
        ),
        const Gap(4),
        Text(
          'x${numberFormatCantidades(unidadesPorPalet)} ${S.of(context).unidad}',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 9),
        ),
      ],
    );
  }
}

class _ArticuloPrecioContainer extends ConsumerWidget {
  const _ArticuloPrecioContainer({
    required this.formKey,
    required this.articuloId,
    required this.clienteId,
    required this.precio,
    required this.tipoPrecio,
    required this.precioController,
    required this.descuento1Controller,
    required this.descuento2,
    required this.descuento3,
    required this.setPrecio,
    required this.setDescuento1,
    required this.setDescuento2,
  });

  final String articuloId;
  final String clienteId;
  final double precio;
  final int tipoPrecio;
  final double descuento2;
  final double descuento3;
  final void Function(double value) setPrecio;
  final void Function(double value) setDescuento1;
  final void Function(double value) setDescuento2;
  final TextEditingController precioController;
  final TextEditingController descuento1Controller;
  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articuloPrecioValue = ref.watch(
      getArticuloUltimosPreciosByIdProvider(
        UltimosPreciosParam(clienteId: clienteId, articuloId: articuloId),
      ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: FormBuilder(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: FormBuilderTextField(
                      name: 'precio',
                      controller: precioController,
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        labelText: S
                            .of(context)
                            .pedido_edit_selectQuantity_precio,
                        suffix: Text(
                          'x$tipoPrecio',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                      ]),
                      enabled:
                          ref.watch(usuarioNotifierProvider)?.modificarPedido ??
                          false,
                      onChanged: (value) {
                        if (value != null && value.isNotEmpty) {
                          final precioValue = double.tryParse(
                            value.replaceAll(',', '.'),
                          );

                          if (precioValue != null) {
                            setPrecio(precioValue);
                          }
                        } else {
                          setPrecio(0);
                        }
                      },
                      onTap: () => precioController.selection = TextSelection(
                        baseOffset: 0,
                        extentOffset: precioController.text.length,
                      ),
                    ),
                  ),
                  const Gap(16),
                  const VerticalDivider(),
                  const Gap(16),
                  Expanded(
                    child: FormBuilderTextField(
                      name: 'dto1',
                      keyboardType: TextInputType.number,
                      controller: descuento1Controller,
                      decoration: InputDecoration(
                        labelText: S
                            .of(context)
                            .pedido_edit_selectQuantity_descuneto1,
                        suffix: Text(
                          '%',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      textAlign: TextAlign.right,
                      enabled:
                          ref.watch(usuarioNotifierProvider)?.modificarPedido ??
                          false,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                      ]),
                      onChanged: (value) {
                        if (value != null && value.isNotEmpty) {
                          final dto1Value = double.tryParse(
                            value.replaceAll(',', '.'),
                          );

                          if (dto1Value != null) {
                            setDescuento1(dto1Value);
                          }
                        } else {
                          setDescuento1(0);
                        }
                      },
                      onTap: () =>
                          descuento1Controller.selection = TextSelection(
                            baseOffset: 0,
                            extentOffset: descuento1Controller.text.length,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(4),
            articuloPrecioValue.maybeWhen(
              orElse: () => Container(),
              data: (ultimosPrecios) => ultimosPrecios != null
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${S.of(context).pedido_edit_pedidoEdit_ultimoPrecioDeCompra}: ${formatPrecioYDescuento(precio: ultimosPrecios.precioDivisa, tipoPrecio: ultimosPrecios.tipoPrecio, descuento1: ultimosPrecios.descuento1, descuento2: ultimosPrecios.descuento2, descuento3: ultimosPrecios.descuento3)} (${numberFormatCantidades(ultimosPrecios.cantidad)} ${S.of(context).unidad})',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          '${S.of(context).visitas_edit_visitaEditar_fecha}: ${dateFormatter(ultimosPrecios.fecha.toIso8601String())}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoPreciosWidget extends StatefulWidget {
  const InfoPreciosWidget({super.key, required this.articuloId});

  final String articuloId;

  @override
  State<InfoPreciosWidget> createState() => _InfoPreciosWidgetState();
}

class _InfoPreciosWidgetState extends State<InfoPreciosWidget> {
  var showInfoPrecios = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!showInfoPrecios)
              Text(
                S.of(context).pricesAndNetGroups,
                style: Theme.of(context).textTheme.bodySmall,
              ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (showInfoPrecios) ...[
                  Expanded(
                    child: GruposNetosListWidget(articuloId: widget.articuloId),
                  ),
                  const VerticalDivider(),
                  Expanded(
                    child: PreciosTarifaListWidget(
                      articuloId: widget.articuloId,
                    ),
                  ),
                ],
              ],
            ),

            Center(
              child: IconButton(
                onPressed: () => setState(() {
                  showInfoPrecios = !showInfoPrecios;
                }),
                icon: (showInfoPrecios)
                    ? const Icon(Icons.arrow_drop_up)
                    : const Icon(Icons.arrow_drop_down),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PreciosTarifaListWidget extends ConsumerWidget {
  const PreciosTarifaListWidget({super.key, required this.articuloId});

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statePrecioTarifa = ref.watch(
      getArticuloPrecioTarifaListaByIdProvider(articuloId),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).articulo_show_articuloPreciosTarifa_titulo,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const Gap(2),

        statePrecioTarifa.when(
          data: (preciosTarifaList) => preciosTarifaList.isEmpty
              ? SinResultadosWidget()
              : ListView.separated(
                  padding: const EdgeInsets.only(left: 8),
                  separatorBuilder: (context, index) => const Divider(),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: preciosTarifaList.length,
                  itemBuilder: (context, i) =>
                      _ArticuloPrecioTarifaSelectQuantityTile(
                        articuloPrecioTarifa: preciosTarifaList[i],
                      ),
                ),
          error: (error, _) =>
              Center(child: ErrorMessageWidget(error.toString())),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ],
    );
  }
}

class GruposNetosListWidget extends ConsumerWidget {
  const GruposNetosListWidget({super.key, required this.articuloId});

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateGruposNetos = ref.watch(
      getArticuloGrupoNetoListaByIdProvider(articuloId),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).articulo_show_articuloGruposNetos_titulo,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const Gap(2),

        stateGruposNetos.when(
          data: (gruposNetosList) => gruposNetosList.isEmpty
              ? SinResultadosWidget()
              : ListView.separated(
                  padding: const EdgeInsets.only(left: 8),
                  separatorBuilder: (context, index) => const Divider(),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: gruposNetosList.length,
                  itemBuilder: (context, i) =>
                      _ArticuloGrupoNetoSelectQuantityTile(
                        articuloGrupoNeto: gruposNetosList[i],
                      ),
                ),
          error: (error, _) =>
              Center(child: ErrorMessageWidget(error.toString())),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ],
    );
  }
}

class _ArticuloGrupoNetoSelectQuantityTile extends StatelessWidget {
  const _ArticuloGrupoNetoSelectQuantityTile({required this.articuloGrupoNeto});

  final ArticuloGrupoNeto articuloGrupoNeto;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text(
                articuloGrupoNeto.grupoNetoDescripcion,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(fontSize: 9),
              ),
            ),
            if (articuloGrupoNeto.cantidadDesde != 1) ...[
              const Gap(4),
              Text(
                '≥ ${numberFormatCantidades(articuloGrupoNeto.cantidadDesde)} ${S.of(context).unidad}',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(fontSize: 9),
              ),
            ],
          ],
        ),
        Text(
          formatPrecios(
            precio: articuloGrupoNeto.precio,
            tipoPrecio: articuloGrupoNeto.tipoPrecio,
          ),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12),
        ),
      ],
    );
  }
}

class _ArticuloPrecioTarifaSelectQuantityTile extends StatelessWidget {
  const _ArticuloPrecioTarifaSelectQuantityTile({
    required this.articuloPrecioTarifa,
  });

  final ArticuloPrecioTarifa articuloPrecioTarifa;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (articuloPrecioTarifa.tarifaDescripcion != null)
              Flexible(
                child: Text(
                  articuloPrecioTarifa.tarifaDescripcion!,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(fontSize: 9),
                ),
              ),
            if (articuloPrecioTarifa.cantidadDesde != 1) ...[
              const Gap(4),
              Text(
                '≥ ${numberFormatCantidades(articuloPrecioTarifa.cantidadDesde)} ${S.of(context).unidad}',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(fontSize: 9),
              ),
            ],
          ],
        ),
        Text(
          formatPrecios(
            precio: articuloPrecioTarifa.precio,
            tipoPrecio: articuloPrecioTarifa.tipoPrecio,
          ),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12),
        ),
      ],
    );
  }
}
