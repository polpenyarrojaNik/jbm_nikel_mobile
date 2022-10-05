import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_router.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/presentation/index/articulo_search_state_provider.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/pedido_venta_edit_page_controller.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/select_cantidad_controller.dart';

import '../../../../core/domain/articulo_precio.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../articulos/domain/articulo.dart';
import '../../domain/seleccionar_cantidad_param.dart';

class SelecionarCantidadPage extends ConsumerStatefulWidget {
  const SelecionarCantidadPage({
    super.key,
    required this.seleccionarCantidadParam,
  });

  final SeleccionarCantidadParam seleccionarCantidadParam;

  @override
  ConsumerState<SelecionarCantidadPage> createState() =>
      _SelecionarCantidadPageState();
}

class _SelecionarCantidadPageState
    extends ConsumerState<SelecionarCantidadPage> {
  int totalQuantity = 1;
  ArticuloPrecio? articuloPrecio;
  Articulo? articulo;

  @override
  void initState() {
    super.initState();
    if (widget.seleccionarCantidadParam.posicionLineaActualizar != null) {
      setValoresInicialesActualizarLinea();
    } else {
      Future.microtask(
        () => context.goNamed(
          AppRoutes.pedidoventanewsearcharticulo.name,
          extra: widget.seleccionarCantidadParam,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.seleccionarCantidadParam.articuloId != null) {
      ref.listen<AsyncValue<Articulo>>(
          articuloProvider(widget.seleccionarCantidadParam.articuloId!),
          (_, state) => state
              .whenData((value) => setArtiucloValue(newArticuloValue: value)));
    } else {
      ref.listen<Articulo?>(
        articuloForFromStateProvider,
        (_, state) => setArtiucloValue(newArticuloValue: state),
      );
    }

    ref.listen<ArticuloPrecioControllerState>(
      articuloPrecioProvider,
      (_, state) {
        state.maybeWhen(
            orElse: () => null,
            data: (newArticuloPrecio) =>
                setState(() => articuloPrecio = newArticuloPrecio));
      },
    );
    final state = ref.watch(articuloPrecioProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleccionar una cantidad'),
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
            ? navigateToCrearPedido(context, widget.seleccionarCantidadParam,
                articuloPrecio!, articulo!)
            : null,
        child: const Icon(Icons.check),
      ),
    );
  }

  void navigateToCrearPedido(
    BuildContext context,
    SeleccionarCantidadParam seleccionarCantidadParam,
    ArticuloPrecio articuloPrecio,
    Articulo articulo,
  ) {
    if (seleccionarCantidadParam.posicionLineaActualizar != null) {
      ref
          .read(pedidoVentaEditPageControllerProvider(
                  seleccionarCantidadParam.pedidoVentaIdIsLocalParam)
              .notifier)
          .updatePedidoVentaLinea(
            pedidoVentaAppId:
                seleccionarCantidadParam.pedidoVentaIdIsLocalParam.id,
            articuloPrecio: articuloPrecio,
            articuloDescripcion:
                getDescriptionInLocalLanguage(articulo: articulo),
            stockDisponibleSN: articulo.stockDisponible != null &&
                articulo.stockDisponible! > 0,
            posicionActualizar:
                seleccionarCantidadParam.posicionLineaActualizar!,
          );
    } else {
      ref
          .read(pedidoVentaEditPageControllerProvider(
                  seleccionarCantidadParam.pedidoVentaIdIsLocalParam)
              .notifier)
          .addPedidoVentaLinea(
              pedidoVentaAppId:
                  seleccionarCantidadParam.pedidoVentaIdIsLocalParam.id,
              articuloPrecio: articuloPrecio,
              articuloDescripcion:
                  getDescriptionInLocalLanguage(articulo: articulo),
              stockDisponibleSN: articulo.stockDisponible != null &&
                  articulo.stockDisponible! > 0);
    }
    context.pop();
  }

  void setArtiucloValue({Articulo? newArticuloValue}) {
    if (newArticuloValue != null) {
      setState(
        () {
          articulo = newArticuloValue;
        },
      );
    }
  }

  void setValoresInicialesActualizarLinea() {
    totalQuantity = widget.seleccionarCantidadParam.cantidad!;

    Future.microtask(
      () => ref.read(
        articuloProvider(widget.seleccionarCantidadParam.articuloId!),
      ),
    );

    Future.microtask(
      () => ref.read(articuloPrecioProvider.notifier).getArticuloPrecio(
            articuloId: widget.seleccionarCantidadParam.articuloId!,
            clienteId: widget.seleccionarCantidadParam.clienteId,
            cantidad: totalQuantity,
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
                getDescriptionInLocalLanguage(articulo: articulo),
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
              keyboardType: TextInputType.number,
              initialValue: cantidad.toString(),
              decoration: const InputDecoration(
                labelText: 'Cantidad',
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
            decoration: const InputDecoration(
              labelText: 'Precio',
            ),
            onChanged: (value) {},
          ),
          FormBuilderTextField(
            name: 'dto1',
            keyboardType: TextInputType.number,
            initialValue: articuloPrecio.descuento1.toString(),
            decoration: const InputDecoration(
              labelText: 'Descuento 1',
            ),
            onChanged: (value) {},
          ),
          FormBuilderTextField(
            name: 'dto2',
            keyboardType: TextInputType.number,
            initialValue: articuloPrecio.descuento2.toString(),
            decoration: const InputDecoration(
              labelText: 'Descuento 2',
            ),
            onChanged: (value) {},
          ),
          FormBuilderTextField(
            name: 'dto3',
            keyboardType: TextInputType.number,
            initialValue: articuloPrecio.descuento3.toString(),
            decoration: const InputDecoration(
              labelText: 'Descuento 3',
            ),
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
