import 'package:auto_route/auto_route.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/articulo_precio.dart';
import '../../../../core/helpers/extension.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../../core/presentation/theme/app_sizes.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../../articulos/domain/articulo.dart';
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
  final formKeyCantidad = GlobalKey<FormBuilderState>();
  final formKeyArticuloPrecio = GlobalKey<FormBuilderState>();
  final unitsController = TextEditingController();
  final cajaController = TextEditingController();
  final subcajaController = TextEditingController();
  final paletController = TextEditingController();
  final precioController = TextEditingController();
  final descuento1Controller = TextEditingController();
  int totalQuantity = 0;
  int units = 0;
  int unitsCaja = 0;
  int unitsSubcaja = 0;
  int unitsPalet = 0;
  double precio = 0;
  double descuento1 = 0;
  double descuento2 = 0;

  String? articuloId;
  ArticuloPrecio? articuloPrecio;
  Articulo? articulo;
  Cliente? cliente;
  bool initialLoadingData = true;

  @override
  void initState() {
    super.initState();
    setValoresIniciales();
    precioController.text = numberFormatDecimal(precio);
    unitsController.text = units.toString();
    cajaController.text = unitsCaja.toString();
    subcajaController.text = unitsSubcaja.toString();
    paletController.text = unitsPalet.toString();

    descuento1Controller.text = numberFormatCantidades(descuento1);
    // descuento2Controller.text = numberFormatCantidades(descuento2);
    unitsController.selection =
        TextSelection(baseOffset: 0, extentOffset: unitsController.text.length);

    if (widget.seleccionarCantidadParam.addNewLineaDesdeArticulo) {
      Future.microtask(() => ref.invalidate(
          articuloProvider(widget.seleccionarCantidadParam.articuloId)));
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.seleccionarCantidadParam.createdFromCliente ?? false) {
      final clienteState =
          ref.watch(clienteProvider(widget.seleccionarCantidadParam.clienteId));
      clienteState.whenData((value) => setClienteValue(newClienteValue: value));
    } else {
      ref.listen<AsyncValue<Cliente>>(
        clienteProvider(widget.seleccionarCantidadParam.clienteId),
        (_, state) => state.whenData(
          (value) => setClienteValue(newClienteValue: value),
        ),
      );
    }

    ref.listen<AsyncValue<Articulo>>(
      articuloProvider(articuloId!),
      (_, state) => state.whenData(
        (value) => setArtiucloValue(newArticuloValue: value),
      ),
    );

    ref.listen<ArticuloPrecioControllerState>(
      articuloPrecioProvider,
      (_, state) {
        state.maybeWhen(
          orElse: () => null,
          data: (newArticuloPrecio) =>
              setArticuloPrecioValue(newArticuloPrecio),
        );
      },
    );
    final state = ref.watch(articuloPrecioProvider);
    return Scaffold(
      appBar: AppBar(
        title:
            Text(S.of(context).pedido_edit_selectQuantity_seleccionarCantidad),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (articulo != null)
            _ArticuloInfo(
              articulo: articulo!,
              setArticuloSustitutivo: (articuloSusititutivoId) => setState(
                () => articuloId = articuloSusititutivoId,
              ),
            ),
          if (articuloPrecio != null)
            TotalQuantityWidget(
              totalQuantity: totalQuantity,
              precio: precio,
              descuento1: descuento1,
              descuento2: descuento2,
              articuloPrecio: articuloPrecio!,
            ),
          if (articulo != null)
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
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
                                  ventaMinimo: articulo!.ventaMinimo,
                                  ventaMultiplo: articulo!.ventaMultiplo,
                                ),
                              ),
                              if (articulo != null &&
                                  articulo!.unidadesSubcaja > 0)
                                const VerticalDivider(),
                              if (articulo != null &&
                                  articulo!.unidadesSubcaja > 0)
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
                                        articulo!.unidadesSubcaja,
                                    ventaMultiplo: articulo!.ventaMultiplo,
                                    ventaMinimo: articulo!.ventaMinimo,
                                  ),
                                ),
                              if (articulo != null &&
                                  articulo!.unidadesCaja > 0)
                                const VerticalDivider(),
                              if (articulo != null &&
                                  articulo!.unidadesCaja > 0)
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
                                    unidadesPorCaja: articulo!.unidadesCaja,
                                    ventaMultiplo: articulo!.ventaMultiplo,
                                    ventaMinimo: articulo!.ventaMinimo,
                                  ),
                                ),
                              if (articulo != null &&
                                  (articulo!.unidadesPalet > 0 &&
                                      articulo!.unidadesPalet != 99999))
                                const VerticalDivider(),
                              if (articulo != null &&
                                  (articulo!.unidadesPalet > 0 &&
                                      articulo!.unidadesPalet != 99999))
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
                                    unidadesPorPalet: articulo!.unidadesPalet,
                                    ventaMultiplo: articulo!.ventaMultiplo,
                                    ventaMinimo: articulo!.ventaMinimo,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (articuloPrecio != null)
                      state.when(
                        initial: () => Container(),
                        error: (error, _) => Center(
                          child: ErrorMessageWidget(
                            error.toString(),
                          ),
                        ),
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
                  ],
                ),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => (articulo != null && cliente != null)
            ? navigateToCrearPedido(
                context, articuloPrecio!, articulo!, cliente!)
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
        formKeyCantidad.currentState!.saveAndValidate() &&
        formKeyArticuloPrecio.currentState!.saveAndValidate()) {
      final importeLinea =
          ref.read(pedidoVentaRepositoryProvider).getTotalLinea(
                precio: Precio(
                    precio: precio.toMoney(currencyId: articuloPrecio.divisaId),
                    tipoPrecio: articuloPrecio.precio.tipoPrecio),
                cantidad: totalQuantity,
                descuento1: descuento1,
                descuento2: articuloPrecio.descuento2,
                descuento3: articuloPrecio.descuento3,
              );

      final minimumPrice = await ref
          .read(pedidoVentaRepositoryProvider)
          .checkMinimumPrice(articulo.id, importeLinea, totalQuantity,
              articuloPrecio.divisaId);
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
          articuloDescription:
              getDescriptionArticuloInLocalLanguage(articulo: articulo),
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
          lastUpdated: DateTime.now().toUtc(),
          deleted: false,
        );

        if (!widget.seleccionarCantidadParam.addNewLineaDesdeArticulo) {
          if (widget.seleccionarCantidadParam.isUpdatingLinea()) {
            await ref
                .read(pedidoVentaEditPageControllerProvider(
                        widget.seleccionarCantidadParam.pedidoVentaParam)
                    .notifier)
                .updatePedidoVentaLinea(
                  pedidoVentaLinea: linea,
                  posicionActualizar:
                      widget.seleccionarCantidadParam.posicionLinea,
                );
          } else {
            await ref
                .read(pedidoVentaEditPageControllerProvider(
                        widget.seleccionarCantidadParam.pedidoVentaParam)
                    .notifier)
                .addPedidoVentaLinea(
                  newLinea: linea,
                );
          }
        }

        if (context.mounted &&
            widget.seleccionarCantidadParam.addNewLineaDesdeArticulo) {
          await context.router.pushAndPopUntil(
              PedidoVentaEditRoute(
                  pedidoAppId: linea.pedidoVentaAppId,
                  addLineaDesdeArticulo: linea,
                  isLocal:
                      widget.seleccionarCantidadParam.pedidoVentaParam.isLocal),
              predicate: (route) =>
                  route.settings.name ==
                  ArticuloListaRoute(isSearchArticuloForForm: false).routeName);
        } else {
          if (context.mounted) {
            await context.router.maybePop();
          }
        }
      } else {
        if (context.mounted) {
          await context.showErrorBar(
              content: Text(S.of(context).precioNoPuedeSerMenorAlPrecioMinimo),
              duration: const Duration(seconds: 5));
        }
      }
    }
  }

  void setArtiucloValue({Articulo? newArticuloValue}) {
    if (newArticuloValue != null) {
      setState(
        () {
          articulo = newArticuloValue;
          if (!widget.seleccionarCantidadParam.isUpdatingLinea()) {
            totalQuantity = newArticuloValue.ventaMinimo;
            units = newArticuloValue.ventaMinimo;
            unitsController.text = units.toString();
            unitsController.selection = TextSelection(
                baseOffset: 0, extentOffset: unitsController.text.length);
          }
        },
      );

      ref.read(articuloPrecioProvider.notifier).getArticuloPrecio(
            articuloId: articulo!.id,
            clienteId: widget.seleccionarCantidadParam.clienteId,
            cantidad: totalQuantity,
          );
    }
  }

  void setClienteValue({Cliente? newClienteValue}) {
    if (newClienteValue != null) {
      setState(
        () {
          cliente = newClienteValue;
        },
      );
    }
  }

  void setValoresIniciales() {
    articuloId = widget.seleccionarCantidadParam.articuloId;

    if (widget.seleccionarCantidadParam.isUpdatingLinea()) {
      units = widget.seleccionarCantidadParam.cantidad!;
      totalQuantity = widget.seleccionarCantidadParam.cantidad!;
      descuento1 = widget.seleccionarCantidadParam.descuento1!;
      descuento2 = widget.seleccionarCantidadParam.descuento2!;
      precio = widget.seleccionarCantidadParam.precio!;
    }
  }

  void setArticuloPrecioValue(ArticuloPrecio? newArticuloPrecio) {
    if (newArticuloPrecio != null) {
      setState(() {
        articuloPrecio = newArticuloPrecio;

        if (!widget.seleccionarCantidadParam.isUpdatingLinea() ||
            !initialLoadingData) {
          precio =
              newArticuloPrecio.precio.precio.amount.toDecimal().toDouble();
          precioController.text = numberFormatDecimal(
              newArticuloPrecio.precio.precio.amount.toDecimal().toDouble());

          descuento1 = newArticuloPrecio.descuento1;
          descuento1Controller.text = numberFormatCantidades(descuento1);

          descuento2 = newArticuloPrecio.descuento2;
        }
        initialLoadingData = false;
      });
    }
  }

  void setTotalQuantity() {
    final quantity = units + unitsCaja + unitsSubcaja + unitsPalet;
    setState(() => totalQuantity = quantity);
    ref.read(articuloPrecioProvider.notifier).getArticuloPrecio(
          articuloId: articulo!.id,
          clienteId: widget.seleccionarCantidadParam.clienteId,
          cantidad: totalQuantity,
        );
  }
}

class _ArticuloInfo extends ConsumerWidget {
  const _ArticuloInfo(
      {required this.articulo, required this.setArticuloSustitutivo});

  final Articulo articulo;
  final Function(String articuloSusititutivoId) setArticuloSustitutivo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloSustitutivoListProvider(articulo.id));

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
                Text(
                  getDescriptionArticuloInLocalLanguage(articulo: articulo),
                ),
                state.when(
                  data: (articuloSustitutivoList) => (articuloSustitutivoList
                          .isNotEmpty)
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(S
                                .of(context)
                                .pedido_edit_selectQuantity_artiuclosSustitutivos),
                            gapH4,
                            SizedBox(
                              height: 20,
                              child: ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, i) => GestureDetector(
                                  onTap: () => setArticuloSustitutivo(
                                      articuloSustitutivoList[i]
                                          .articuloSustitutivoId),
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  String getStringArticulosSusitotutivos(
      List<ArticuloSustitutivo> articuloSustitutivoList) {
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
    required this.articuloPrecio,
  });

  final int totalQuantity;
  final double precio;
  final double descuento1;
  final double descuento2;
  final ArticuloPrecio articuloPrecio;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Card(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Text(
                      S.of(context).pedido_edit_selectQuantity_cantidad,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer),
                    ),
                    gapH8,
                    Text(
                      '${numberFormatCantidades(totalQuantity)} ${S.of(context).unidad}',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                          ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Card(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Text(
                      S.of(context).pedido_edit_selectQuantity_importe,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                          ),
                    ),
                    gapH8,
                    Text(
                      ref
                          .read(pedidoVentaRepositoryProvider)
                          .getTotalLinea(
                            precio: Precio(
                                precio: precio.toMoney(
                                    currencyId: articuloPrecio.divisaId),
                                tipoPrecio: articuloPrecio.precio.tipoPrecio),
                            cantidad: totalQuantity,
                            descuento1: descuento1,
                            descuento2: descuento2,
                            descuento3: articuloPrecio.descuento3,
                          )
                          .toString(),
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                          ),
                    )
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
            labelStyle: Theme.of(context)
                .inputDecorationTheme
                .labelStyle
                ?.copyWith(fontSize: 9),
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
              baseOffset: 0, extentOffset: unitsController.text.length),
        ),
        gapH4,
        Text(
            'x${numberFormatCantidades(ventaMultiplo)} ${S.of(context).unidad}',
            style:
                Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 9)),
      ],
    );
  }

  String? validateQuantity(BuildContext context, String? quantityStr) {
    if (quantityStr != null && quantityStr != '') {
      final quantity = int.parse(quantityStr);
      if (quantity < ventaMinimo) {
        setUnitsQuantity(ventaMinimo);
        return '${S.of(context).pedido_edit_selectQuantity_minimo} $ventaMinimo ${S.of(context).unidad}';
      } else if (quantity % ventaMultiplo != 0) {
        final multiploMasCercano =
            setMultiploMasCercano(quantity, ventaMultiplo);

        unitsController.text = multiploMasCercano.toString();

        setUnitsQuantity(multiploMasCercano);
        return '${S.of(context).pedido_edit_selectQuantity_tieneQueSerMultiploDe} $ventaMultiplo';
      } else {
        return null;
      }
    } else {
      return S.of(context).pedido_edit_selectQuantity_noPuedeEstarVacio;
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
            labelStyle: Theme.of(context)
                .inputDecorationTheme
                .labelStyle
                ?.copyWith(fontSize: 9),
          ),
          textAlign: TextAlign.right,
          validator: (value) => validateQuantityCaja(context, value),
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
              baseOffset: 0, extentOffset: cajaController.text.length),
        ),
        gapH4,
        Text(
            'x${numberFormatCantidades(unidadesPorCaja)} ${S.of(context).unidad}',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 9))
      ],
    );
  }

  String? validateQuantityCaja(BuildContext context, String? quantityStr) {
    if (quantityStr != null && quantityStr != '' && quantityStr != '0') {
      final quantity = int.parse(quantityStr);
      if (quantity * unidadesPorCaja < ventaMinimo) {
        setUnitCajaQuantity(ventaMinimo % unidadesPorCaja);
        return '${S.of(context).pedido_edit_selectQuantity_minimo} $ventaMinimo ${S.of(context).unidad}';
      } else if ((quantity * unidadesPorCaja) % ventaMultiplo != 0) {
        final multiploMasCercano =
            setMultiploMasCercanoCaja(quantity, ventaMultiplo);
        cajaController.text = multiploMasCercano.toString();

        setUnitCajaQuantity(multiploMasCercano * unidadesPorCaja);
        return '${S.of(context).pedido_edit_selectQuantity_tieneQueSerMultiploDe} $ventaMultiplo';
      }
    }
    return null;
  }

  int setMultiploMasCercanoCaja(int quantity, int ventaMultiplo) {
    var nuevaCantidad = 0;
    for (var i = ventaMultiplo; i > 0; i--) {
      if ((i * unidadesPorCaja) % ventaMultiplo == 0) {
        nuevaCantidad = i;
      }
    }
    return nuevaCantidad;
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
            labelStyle: Theme.of(context)
                .inputDecorationTheme
                .labelStyle
                ?.copyWith(fontSize: 9),
          ),
          textAlign: TextAlign.right,
          validator: (value) => validateQuantitySubcaja(context, value),
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
              baseOffset: 0, extentOffset: subcajaController.text.length),
        ),
        gapH4,
        Text(
          'x${numberFormatCantidades(unidadesPorSubcaja)} ${S.of(context).unidad}',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 9),
        )
      ],
    );
  }

  String? validateQuantitySubcaja(BuildContext context, String? quantityStr) {
    if (quantityStr != null && quantityStr != '' && quantityStr != '0') {
      final quantity = int.parse(quantityStr);
      if (quantity * unidadesPorSubcaja < ventaMinimo) {
        setUnitSubcajaQuantity(ventaMinimo % unidadesPorSubcaja);
        return '${S.of(context).pedido_edit_selectQuantity_minimo} $ventaMinimo ${S.of(context).unidad}';
      } else if ((quantity * unidadesPorSubcaja) % ventaMultiplo != 0) {
        final multiploMasCercano =
            setMultiploMasCercanoSubcaja(quantity, ventaMultiplo);
        subcajaController.text = multiploMasCercano.toString();

        setUnitSubcajaQuantity(multiploMasCercano * unidadesPorSubcaja);
        return '${S.of(context).pedido_edit_selectQuantity_tieneQueSerMultiploDe} $ventaMultiplo';
      }
    }
    return null;
  }

  int setMultiploMasCercanoSubcaja(int quantity, int ventaMultiplo) {
    var nuevaCantidad = 0;
    for (var i = ventaMultiplo; i > 0; i--) {
      if ((i * unidadesPorSubcaja) % ventaMultiplo == 0) {
        nuevaCantidad = i;
      }
    }
    return nuevaCantidad;
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
            labelStyle: Theme.of(context)
                .inputDecorationTheme
                .labelStyle
                ?.copyWith(fontSize: 9),
          ),
          validator: (value) => validateQuantityPalet(context, value),
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
              baseOffset: 0, extentOffset: paletController.text.length),
        ),
        gapH4,
        Text(
          'x${numberFormatCantidades(unidadesPorPalet)} ${S.of(context).unidad}',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 9),
        )
      ],
    );
  }

  String? validateQuantityPalet(BuildContext context, String? quantityStr) {
    if (quantityStr != null && quantityStr != '' && quantityStr != '0') {
      final quantity = int.parse(quantityStr);
      if (quantity * unidadesPorPalet < ventaMinimo) {
        setUnitPaletQuantity(ventaMinimo);
        return '${S.of(context).pedido_edit_selectQuantity_minimo} $ventaMinimo ${S.of(context).unidad}';
      } else if ((quantity * unidadesPorPalet) % ventaMultiplo != 0) {
        final multiploMasCercano =
            setMultiploMasCercanoPalet(quantity, ventaMultiplo);
        paletController.text = multiploMasCercano.toString();

        setUnitPaletQuantity(multiploMasCercano);

        return '${S.of(context).pedido_edit_selectQuantity_tieneQueSerMultiploDe} $ventaMultiplo';
      }
    }
    return null;
  }

  int setMultiploMasCercanoPalet(int quantity, int ventaMultiplo) {
    var nuevaCantidad = 0;
    for (var i = 0; i < ventaMultiplo; i++) {
      if ((quantity + i) % ventaMultiplo == 0) {
        nuevaCantidad = quantity + i;
      }
    }
    return nuevaCantidad;
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
    final articuloPrecioValue = ref.watch(articuloUltimosPreciosProvider(
        UltimosPreciosParam(clienteId: clienteId, articuloId: articuloId)));
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
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        labelText:
                            S.of(context).pedido_edit_selectQuantity_precio,
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
                          final precioValue =
                              double.tryParse(value.replaceAll(',', '.'));

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
                  gapW16,
                  const VerticalDivider(),
                  gapW16,
                  Expanded(
                    child: FormBuilderTextField(
                      name: 'dto1',
                      keyboardType: TextInputType.number,
                      controller: descuento1Controller,
                      decoration: InputDecoration(
                        labelText:
                            S.of(context).pedido_edit_selectQuantity_descuneto1,
                        suffix: Text('%',
                            style: Theme.of(context).textTheme.bodySmall),
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
                          final dto1Value =
                              double.tryParse(value.replaceAll(',', '.'));

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
            gapH4,
            articuloPrecioValue.maybeWhen(
              orElse: () => Container(),
              data: (ultimosPrecios) => ultimosPrecios != null
                  ? Text(
                      '${S.of(context).pedido_edit_pedidoEdit_ultimoPrecioDeCompra}:  ${formatPrecioYDescuento(
                        precio: ultimosPrecios.precioDivisa,
                        tipoPrecio: ultimosPrecios.tipoPrecio,
                        descuento1: ultimosPrecios.descuento1,
                        descuento2: ultimosPrecios.descuento2,
                        descuento3: ultimosPrecios.descuento3,
                      )} (${numberFormatCantidades(ultimosPrecios.cantidad)} ${S.of(context).unidad})',
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
