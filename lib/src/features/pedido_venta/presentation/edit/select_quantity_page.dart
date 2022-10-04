import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/presentation/edit/select_cantidad_controller.dart';

import '../../../../core/domain/articulo_precio.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';
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
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isValid = false;
  ArticuloPrecio? articuloPrecio;
  int totalQuantity = 0;

  @override
  void initState() {
    super.initState();
    articuloPrecio = widget.seleccionarCantidadParam.articuloPrecio;
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
  Widget build(BuildContext context) {
    ref.listen<ArticuloPrecioControllerState>(articuloPrecioProvider,
        (_, state) {
      state.maybeWhen(
          orElse: () => null,
          data: (newArticuloPrecio) =>
              setState(() => articuloPrecio = newArticuloPrecio));
    });
    final state = ref.watch(articuloPrecioProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleccionar una cantidad'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ArticuloInfo(
              articuloId: widget.seleccionarCantidadParam.articuloId,
            ),
            _SelectQuantityFrom(
              formKey: formKey,
              setTotalQuantity: (value) {
                setState(() => totalQuantity = value);
                ref.read(articuloPrecioProvider.notifier).getArticuloPrecio(
                    articuloId: widget.seleccionarCantidadParam.articuloId,
                    clienteId: widget.seleccionarCantidadParam.clienteId,
                    divisaId: widget.seleccionarCantidadParam.divisaId,
                    cantidad: totalQuantity);
              },
              articuloPrecio: articuloPrecio,
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
                      formKey: formKey,
                      articuloPrecio: articuloPrecio!,
                    )
                  : Container(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            (articuloPrecio != null) ? navigateToCrearPedido(context) : null,
        child: const Icon(Icons.check),
      ),
    );
  }

  void navigateToCrearPedido(BuildContext context) {
    context.pop();
  }
}

class _ArticuloInfo extends ConsumerWidget {
  const _ArticuloInfo({required this.articuloId});

  final String articuloId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(articuloProvider(articuloId));
    return Container(
      padding: const EdgeInsets.all(16),
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: state.when(
        data: (articulo) => Row(
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
        error: (error, _) => ErrorMessageWidget(error.toString()),
        loading: () => const ProgressIndicatorWidget(),
      ),
    );
  }
}

class _SelectQuantityFrom extends StatelessWidget {
  const _SelectQuantityFrom(
      {required this.formKey,
      required this.setTotalQuantity,
      required this.articuloPrecio});

  final GlobalKey<FormState> formKey;
  final void Function(int value) setTotalQuantity;
  final ArticuloPrecio? articuloPrecio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: FormBuilder(
        key: formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          children: [
            FormBuilderTextField(
              name: 'cantidad',
              keyboardType: TextInputType.number,
              initialValue: articuloPrecio?.cantidad.toString(),
              decoration: const InputDecoration(
                labelText: 'Cantidad',
              ),
              onChanged: (value) => setTotalQuantity(
                  (value != null && value != '') ? int.parse(value) : 0),
            ),
          ],
        ),
      ),
    );
  }
}

class _ArticuloPrecioContainer extends StatelessWidget {
  const _ArticuloPrecioContainer(
      {required this.articuloPrecio, required this.formKey});

  final ArticuloPrecio articuloPrecio;
  final GlobalKey<FormState> formKey;

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
