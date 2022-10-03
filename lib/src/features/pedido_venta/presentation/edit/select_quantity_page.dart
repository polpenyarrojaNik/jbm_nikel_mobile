import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleccionar una cantidad'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: (isValid) ? () => saveForm() : null,
          ),
        ],
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
                onChanged: _onChanged,
                articuloPrecio: articuloPrecio),
          ],
        ),
      ),
    );
  }

  void saveForm() {}
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
      required this.onChanged,
      required this.articuloPrecio});

  final GlobalKey<FormState> formKey;
  final void Function(dynamic) onChanged;
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
              onChanged: onChanged,
              initialValue: articuloPrecio?.cantidad.toString(),
              decoration: const InputDecoration(
                labelText: 'Cantidad',
              ),
            ),
            FormBuilderTextField(
              name: 'cantidad',
              keyboardType: TextInputType.number,
              onChanged: onChanged,
              initialValue: articuloPrecio?.cantidad.toString(),
              decoration: const InputDecoration(
                labelText: 'Cantidad',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
