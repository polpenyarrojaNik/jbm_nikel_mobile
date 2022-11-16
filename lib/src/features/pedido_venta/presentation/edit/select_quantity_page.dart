import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/domain/articulo_sustitutivo.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/infrastructure/pedido_venta_repository.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/pedido_venta_edit_page_controller.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/select_cantidad_controller.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/articulo_precio.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../articulos/domain/articulo.dart';
import '../../../cliente/infrastructure/cliente_repository.dart';
import '../../domain/pedido_venta_linea.dart';
import '../../domain/precio.dart';
import '../../domain/seleccionar_cantidad_param.dart';

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
  final quanitityController = TextEditingController();
  final precioController = TextEditingController();
  final descuento1Controller = TextEditingController();
  int totalQuantity = 1;
  double precio = 0;
  double descuento1 = 0;
  double descuento2 = 0;

  String? articuloId;
  ArticuloPrecio? articuloPrecio;
  Articulo? articulo;
  Cliente? cliente;

  @override
  void initState() {
    super.initState();
    setValoresIniciales();
    precioController.text = numberFormatDecimal(precio);
    quanitityController.text = totalQuantity.toString();
    descuento1Controller.text = numberFormatCantidades(descuento1);
    // descuento2Controller.text = numberFormatCantidades(descuento2);
    quanitityController.selection = TextSelection(
        baseOffset: 0, extentOffset: quanitityController.text.length);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<Articulo>>(
      articuloProvider(articuloId!),
      (_, state) => state.whenData(
        (value) => setArtiucloValue(newArticuloValue: value),
      ),
    );
    ref.listen<AsyncValue<Cliente>>(
      clienteProvider(widget.seleccionarCantidadParam.clienteId),
      (_, state) => state.whenData(
        (value) => setClienteValue(newClienteValue: value),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (articulo != null)
                  _ArticuloInfo(
                    articulo: articulo!,
                    setArticuloSustitutivo: (articuloSusititutivoId) =>
                        setState(
                      () => articuloId = articuloSusititutivoId,
                    ),
                  ),
                if (articulo != null)
                  _SelectQuantityFrom(
                    formKey: formKeyCantidad,
                    quanitityController: quanitityController,
                    setTotalQuantity: (value) {
                      setState(() => totalQuantity = value);
                      ref
                          .read(articuloPrecioProvider.notifier)
                          .getArticuloPrecio(
                            articuloId: articulo!.id,
                            clienteId:
                                widget.seleccionarCantidadParam.clienteId,
                            cantidad: totalQuantity,
                          );
                    },
                    cantidad: totalQuantity,
                    ventaMinimo: articulo!.ventaMinimo,
                    ventaMultiplo: articulo!.ventaMultiplo,
                  ),
                const Divider(),
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
                          precio: precio,
                          tipoPrecio: articuloPrecio!.precio.tipoPrecio,
                          precioController: precioController,
                          descuento1Controller: descuento1Controller,
                          descuento2: descuento2,
                          descuento3: articuloPrecio!.descuento3,
                          setPrecio: (value) => setState(() => precio = value),
                          setDescuento1: (value) =>
                              setState(() => descuento1 = value),
                          setDescuento2: (value) =>
                              setState(() => descuento2 = value),
                        )
                      : Container(),
                ),
                if (articuloPrecio != null) const Divider(),
                if (articuloPrecio != null)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).pedido_edit_selectQuantity_importeLinea,
                        ),
                        Text(
                          ref
                              .read(pedidoVentaRepositoryProvider)
                              .getTotalLinea(
                                  precio: Precio(
                                      precio: precio.toMoney(
                                          currencyId: articuloPrecio!.divisaId),
                                      tipoPrecio:
                                          articuloPrecio!.precio.tipoPrecio),
                                  cantidad: totalQuantity,
                                  descuento1: descuento1,
                                  descuento2: descuento2,
                                  descuento3: articuloPrecio!.descuento3)
                              .toString(),
                          style: Theme.of(context).textTheme.subtitle2,
                        )
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            (articulo != null && articuloPrecio != null && cliente != null)
                ? navigateToCrearPedido(
                    context, articuloPrecio!, articulo!, cliente!)
                : null,
        child: const Icon(Icons.check),
      ),
    );
  }

  void navigateToCrearPedido(
    BuildContext context,
    ArticuloPrecio articuloPrecio,
    Articulo articulo,
    Cliente cliente,
  ) {
    if (formKeyCantidad.currentState!.saveAndValidate()) {
      final linea = PedidoVentaLinea(
        empresaId: null,
        pedidoVentaId: null,
        pedidoVentaLineaId: null,
        pedidoVentaAppId:
            widget.seleccionarCantidadParam.pedidoVentaIdIsLocalParam.id,
        pedidoVentaLineaAppId:
            (widget.seleccionarCantidadParam.posicionLinea + 1)
                .toString()
                .padLeft(3, '0'),
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
        importeLinea: ref.read(pedidoVentaRepositoryProvider).getTotalLinea(
              precio: Precio(
                  precio: precio.toMoney(currencyId: articuloPrecio.divisaId),
                  tipoPrecio: articuloPrecio.precio.tipoPrecio),
              cantidad: totalQuantity,
              descuento1: descuento1,
              descuento2: articuloPrecio.descuento2,
              descuento3: articuloPrecio.descuento3,
            ),
        cantidadPendiente: totalQuantity,
        lastUpdated: DateTime.now().toUtc(),
        deleted: false,
      );

      if (widget.seleccionarCantidadParam.isUpdatingLinea()) {
        ref
            .read(pedidoVentaEditPageControllerProvider(
                    widget.seleccionarCantidadParam.pedidoVentaIdIsLocalParam)
                .notifier)
            .updatePedidoVentaLinea(
              pedidoVentaLinea: linea,
              posicionActualizar: widget.seleccionarCantidadParam.posicionLinea,
            );
      } else {
        ref
            .read(pedidoVentaEditPageControllerProvider(
                    widget.seleccionarCantidadParam.pedidoVentaIdIsLocalParam)
                .notifier)
            .addPedidoVentaLinea(
              newLinea: linea,
            );
      }
      context.router.pop();
    }
  }

  void setArtiucloValue({Articulo? newArticuloValue}) {
    if (newArticuloValue != null) {
      setState(
        () {
          articulo = newArticuloValue;
          if (!widget.seleccionarCantidadParam.isUpdatingLinea()) {
            totalQuantity = newArticuloValue.ventaMinimo;
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
      totalQuantity = widget.seleccionarCantidadParam.cantidad!;
      descuento1 = widget.seleccionarCantidadParam.descuento1!;
      descuento2 = widget.seleccionarCantidadParam.descuento2!;
    }
  }

  setArticuloPrecioValue(ArticuloPrecio? newArticuloPrecio) {
    if (newArticuloPrecio != null) {
      setState(() {
        articuloPrecio = newArticuloPrecio;

        precio = newArticuloPrecio.precio.precio.amount.toDecimal().toDouble();
        precioController.text = numberFormatDecimal(
            newArticuloPrecio.precio.precio.amount.toDecimal().toDouble());

        descuento1 = newArticuloPrecio.descuento1;
        descuento1Controller.text = numberFormatCantidades(descuento1);

        descuento2 = newArticuloPrecio.descuento2;
        // descuento2Controller.text = numberFormatCantidades(descuento2);
      });
    }
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
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Text(
                      '${S.of(context).pedido_edit_selectQuantity_stockDisponible} ${articulo.stockDisponible} ${S.of(context).unidad}',
                      style: Theme.of(context).textTheme.caption,
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
                                        .bodyText2
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
    String sustitutivoStr = '';

    for (var i = 0; i < articuloSustitutivoList.length; i++) {
      if (sustitutivoStr.isNotEmpty) {
        sustitutivoStr += ', ';
      }

      sustitutivoStr += articuloSustitutivoList[i].articuloSustitutivoId;
    }

    return sustitutivoStr;
  }
}

class _SelectQuantityFrom extends StatelessWidget {
  const _SelectQuantityFrom(
      {required this.formKey,
      required this.setTotalQuantity,
      required this.quanitityController,
      required this.cantidad,
      required this.ventaMinimo,
      required this.ventaMultiplo});

  final void Function(int value) setTotalQuantity;
  final GlobalKey<FormBuilderState> formKey;
  final TextEditingController quanitityController;
  final int? cantidad;
  final int ventaMinimo;
  final int ventaMultiplo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: FormBuilder(
        key: formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormBuilderTextField(
              name: 'cantidad',
              autofocus: true,
              keyboardType: TextInputType.number,
              controller: quanitityController,
              decoration: InputDecoration(
                labelText: S.of(context).pedido_edit_selectQuantity_cantidad,
              ),
              validator: (value) => validateQuantity(context, value),
              onChanged: (value) {
                if (value != null && value.isNotEmpty) {
                  final totalQuantity = int.tryParse(value);
                  if (totalQuantity != null) {
                    setTotalQuantity(totalQuantity);
                  }
                } else {
                  setTotalQuantity(0);
                }
              },
              onTap: () => quanitityController.selection = TextSelection(
                baseOffset: 0,
                extentOffset: quanitityController.text.length,
              ),
            ),
            gapH4,
            Text(
                '${S.of(context).pedido_edit_selectQuantity_multiplo} x$ventaMultiplo ${S.of(context).unidad}',
                style: Theme.of(context).textTheme.caption),
          ],
        ),
      ),
    );
  }

  String? validateQuantity(BuildContext context, String? quantityStr) {
    if (quantityStr != null && quantityStr != '') {
      final quantity = int.parse(quantityStr);
      if (quantity < ventaMinimo) {
        setTotalQuantity(ventaMinimo);
        return '${S.of(context).pedido_edit_selectQuantity_minimo} $ventaMinimo ${S.of(context).unidad}';
      } else if (quantity % ventaMultiplo != 0) {
        setTotalQuantity(setMultiploMasCercano(quantity, ventaMultiplo));
        return '${S.of(context).pedido_edit_selectQuantity_tieneQueSerMultiploDe} $ventaMultiplo';
      } else {
        return null;
      }
    } else {
      return S.of(context).pedido_edit_selectQuantity_noPuedeEstarVacio;
    }
  }

  int setMultiploMasCercano(int quantity, int ventaMultiplo) {
    int nuevaCantidad = 0;
    for (int i = 0; i < ventaMultiplo; i++) {
      if ((quantity + i) % ventaMultiplo == 0) {
        nuevaCantidad = quantity + i;
      }
    }
    return nuevaCantidad;
  }
}

class _ArticuloPrecioContainer extends StatelessWidget {
  const _ArticuloPrecioContainer({
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

  final double precio;
  final int tipoPrecio;
  final double descuento2;
  final double descuento3;
  final void Function(double value) setPrecio;
  final void Function(double value) setDescuento1;
  final void Function(double value) setDescuento2;
  final TextEditingController precioController;
  final TextEditingController descuento1Controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormBuilderTextField(
            name: 'precio',
            controller: precioController,
            decoration: InputDecoration(
              labelText: S.of(context).pedido_edit_selectQuantity_precio,
              suffix: Text(
                'x$tipoPrecio',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            onChanged: (value) {
              if (value != null && value.isNotEmpty) {
                final precioValue = double.tryParse(value.replaceAll(',', '.'));
                print(precioValue);
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
          FormBuilderTextField(
            name: 'dto1',
            keyboardType: TextInputType.number,
            controller: descuento1Controller,
            decoration: InputDecoration(
              labelText: S.of(context).pedido_edit_selectQuantity_descuneto1,
              suffix: Text('%', style: Theme.of(context).textTheme.caption),
            ),
            onChanged: (value) {
              if (value != null && value.isNotEmpty) {
                final dto1Value = double.tryParse(value.replaceAll(',', '.'));
                print(dto1Value);
                if (dto1Value != null) {
                  setDescuento1(dto1Value);
                }
              } else {
                setDescuento1(0);
              }
            },
            onTap: () => descuento1Controller.selection = TextSelection(
              baseOffset: 0,
              extentOffset: descuento1Controller.text.length,
            ),
          ),
          // FormBuilderTextField(
          //   name: 'dto2',
          //   keyboardType: TextInputType.number,
          //   controller: descuento2Controller,
          //   decoration: InputDecoration(
          //     labelText: S.of(context).pedido_edit_selectQuantity_descuneto2,
          // suffix: Text('%', style: Theme.of(context).textTheme.caption)

          //   ),
          //   onChanged: (value) {
          //     if (value != null && value.isNotEmpty) {
          //       final dto2Value = double.tryParse(value.replaceAll(',', '.'));
          //       print(dto2Value);
          //       if (dto2Value != null) {
          //         setDescuento2(dto2Value);
          //       }
          //     } else {
          //       setDescuento2(0);
          //     }
          //   },
          //   validator: FormBuilderValidators.compose([
          //     FormBuilderValidators.required(),
          //   ]),
          //   onTap: () => descuento1Controller.selection = TextSelection(
          //     baseOffset: 0,
          //     extentOffset: descuento1Controller.text.length,
          //   ),
          // ),
          // FormBuilderTextField(
          //   name: 'dto3',
          //   readOnly: true,
          //   keyboardType: TextInputType.number,
          //   initialValue: descuento3.toString(),
          //   decoration: InputDecoration(
          //     labelText: S.of(context).pedido_edit_selectQuantity_descuneto3,
          // suffix: Text('%', style: Theme.of(context).textTheme.caption)

          //   ),
          // ),
        ],
      ),
    );
  }
}
