import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/formatters.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_repository.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class SelecionarCantidadPage extends ConsumerStatefulWidget {
  SelecionarCantidadPage(
      {super.key,
      required this.articuloId,
      required this.clienteId,
      String? id,
      bool? isNew})
      : id = id ?? const Uuid().v4(),
        isNew = id == null ? true : false;

  final String id;
  final bool isNew;
  final String articuloId;
  final String clienteId;

  @override
  ConsumerState<SelecionarCantidadPage> createState() =>
      _SelecionarCantidadPageState();
}

class _SelecionarCantidadPageState
    extends ConsumerState<SelecionarCantidadPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isValid = false;

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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ArticuloInfo(
                articuloId: widget.articuloId,
              ),
              _SelectQuantityFrom(formKey: formKey, onChanged: _onChanged),
            ],
          ),
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
      padding: const EdgeInsets.all(8),
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: state.when(
        data: (articulo) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              articulo.id,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              getDescriptionInLocalLanguage(articulo: articulo),
              style: Theme.of(context).textTheme.subtitle2,
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
  const _SelectQuantityFrom({required this.formKey, required this.onChanged});

  final GlobalKey<FormState> formKey;
  final void Function(dynamic) onChanged;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Column(
        children: [
          FormBuilderTextField(
            name: 'cantidad',
            onChanged: onChanged,
            // initialValue: visita?.contacto,
            decoration: const InputDecoration(
              labelText: 'Cantidad',
            ),
          ),
        ],
      ),
    );
  }
}
