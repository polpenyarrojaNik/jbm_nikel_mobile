import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/pedido_venta_edit_page_controller.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/select_cantidad_controller.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/domain/articulo_precio.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../articulos/domain/articulo.dart';
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
  int totalQuantity = 1;
  ArticuloPrecio? articuloPrecio;
  Articulo? articulo;

  @override
  void initState() {
    super.initState();

    if (widget.seleccionarCantidadParam.posicionLineaActualizar != null) {
      setValoresInicialesActualizarLinea();
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<Articulo>>(
      articuloProvider(widget.seleccionarCantidadParam.articuloId),
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
              setState(() => articuloPrecio = newArticuloPrecio),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (articulo != null)
              _ArticuloInfo(
                articulo: articulo!,
              ),
            _SelectQuantityFrom(
              setTotalQuantity: (value) {
                setState(() => totalQuantity = value);
                ref.read(articuloPrecioProvider.notifier).getArticuloPrecio(
                      articuloId: articulo!.id,
                      clienteId: widget.seleccionarCantidadParam.clienteId,
                      cantidad: totalQuantity,
                    );
              },
              cantidad: totalQuantity,
            ),
            const Divider(),
            state.when(
              initial: () => Container(),
              error: (error, _) => Center(
                child: ErrorMessageWidget(
                  error.toString(),
                ),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (_) => (articuloPrecio != null)
                  ? _ArticuloPrecioContainer(
                      articuloPrecio: articuloPrecio!,
                    )
                  : Container(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => (articulo != null && articuloPrecio != null)
            ? navigateToCrearPedido(context, articuloPrecio!, articulo!)
            : null,
        child: const Icon(Icons.check),
      ),
    );
  }

  void navigateToCrearPedido(
    BuildContext context,
    ArticuloPrecio articuloPrecio,
    Articulo articulo,
  ) {
    if (widget.seleccionarCantidadParam.posicionLineaActualizar != null) {
      ref
          .read(pedidoVentaEditPageControllerProvider(
                  widget.seleccionarCantidadParam.pedidoVentaIdIsLocalParam)
              .notifier)
          .updatePedidoVentaLinea(
            pedidoVentaAppId:
                widget.seleccionarCantidadParam.pedidoVentaIdIsLocalParam.id,
            articuloPrecio: articuloPrecio,
            articuloDescripcion:
                getDescriptionArticuloInLocalLanguage(articulo: articulo),
            stockDisponibleSN: articulo.stockDisponible > 0,
            posicionActualizar:
                widget.seleccionarCantidadParam.posicionLineaActualizar!,
          );
    } else {
      ref
          .read(pedidoVentaEditPageControllerProvider(
                  widget.seleccionarCantidadParam.pedidoVentaIdIsLocalParam)
              .notifier)
          .addPedidoVentaLinea(
              pedidoVentaAppId:
                  widget.seleccionarCantidadParam.pedidoVentaIdIsLocalParam.id,
              articuloPrecio: articuloPrecio,
              articuloDescripcion:
                  getDescriptionArticuloInLocalLanguage(articulo: articulo),
              stockDisponibleSN: articulo.stockDisponible > 0);
    }
    context.router.pop();
  }

  void setArtiucloValue({Articulo? newArticuloValue}) {
    if (newArticuloValue != null) {
      setState(
        () {
          articulo = newArticuloValue;
        },
      );

      ref.read(articuloPrecioProvider.notifier).getArticuloPrecio(
            articuloId: articulo!.id,
            clienteId: widget.seleccionarCantidadParam.clienteId,
            cantidad: totalQuantity,
          );
    }
  }

  void setValoresInicialesActualizarLinea() {
    if (widget.seleccionarCantidadParam.cantidad != null) {
      totalQuantity = widget.seleccionarCantidadParam.cantidad!;
    }

    Future.microtask(
      () => ref.read(
        articuloProvider(widget.seleccionarCantidadParam.articuloId),
      ),
    );
  }
}

class _ArticuloInfo extends StatelessWidget {
  const _ArticuloInfo({required this.articulo});

  final Articulo articulo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                articulo.id,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                getDescriptionArticuloInLocalLanguage(articulo: articulo),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SelectQuantityFrom extends StatelessWidget {
  const _SelectQuantityFrom(
      {required this.setTotalQuantity, required this.cantidad});

  final void Function(int value) setTotalQuantity;
  final int? cantidad;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: FormBuilder(
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          children: [
            FormBuilderTextField(
              name: 'cantidad',
              autofocus: true,
              keyboardType: TextInputType.name,
              initialValue: cantidad.toString(),
              decoration: InputDecoration(
                labelText: S.of(context).pedido_edit_selectQuantity_cantidad,
              ),
              onChanged: (value) => setTotalQuantity(
                (value != null && value != '') ? int.parse(value) : 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ArticuloPrecioContainer extends StatelessWidget {
  const _ArticuloPrecioContainer({required this.articuloPrecio});

  final ArticuloPrecio articuloPrecio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormBuilderTextField(
            name: 'precio',
            keyboardType: TextInputType.number,
            initialValue: articuloPrecio.precio.amount.toString(),
            decoration: InputDecoration(
              labelText: S.of(context).pedido_edit_selectQuantity_precio,
            ),
          ),
          FormBuilderTextField(
            name: 'dto1',
            keyboardType: TextInputType.number,
            initialValue: articuloPrecio.descuento1.toString(),
            decoration: InputDecoration(
              labelText: S.of(context).pedido_edit_selectQuantity_descuneto1,
            ),
          ),
          FormBuilderTextField(
            name: 'dto2',
            keyboardType: TextInputType.number,
            initialValue: articuloPrecio.descuento2.toString(),
            decoration: InputDecoration(
              labelText: S.of(context).pedido_edit_selectQuantity_descuneto2,
            ),
          ),
          FormBuilderTextField(
            name: 'dto3',
            keyboardType: TextInputType.number,
            initialValue: articuloPrecio.descuento3.toString(),
            decoration: InputDecoration(
              labelText: S.of(context).pedido_edit_selectQuantity_descuneto3,
            ),
          ),
        ],
      ),
    );
  }
}
