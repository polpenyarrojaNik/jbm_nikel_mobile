import 'dart:async';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:latlong2/latlong.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../generated/l10n.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/helpers/formatters.dart';
import '../../../core/presentation/common_widgets/address_text_widget.dart';
import '../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../core/presentation/common_widgets/row_field_text_detail.dart';
import '../../../core/routing/app_auto_router.dart';
import '../../cliente/domain/cliente.dart';
import '../../cliente/domain/cliente_estado.dart';
import '../../cliente/presentation/common_widgets/cliente_status_chip.dart';
import '../../cliente/presentation/index/cliente_search_controller.dart';
import '../domain/cliente_alrededor.dart';
import '../domain/get_cliente_alrededor_arg.dart';
import '../infrastructure/cliente_alrededor_repository.dart';

part 'clientes_alrededor_page.g.dart';

@riverpod
class ClientesAlrededorEstadoController
    extends _$ClientesAlrededorEstadoController {
  @override
  ClienteEstado build() {
    return ref.read(clientesEstadoFilterControllerProvider) ==
            ClienteEstado.todos
        ? ClienteEstado.activo
        : ref.read(clientesEstadoFilterControllerProvider);
  }

  void setFilter(ClienteEstado clienteEstado) {
    state = clienteEstado;
  }
}

@riverpod
class ClientesAlrededorShowDireccionesEnvioController
    extends _$ClientesAlrededorShowDireccionesEnvioController {
  @override
  bool build() {
    return false;
  }

  void setFilter(bool showDireccionesEnvio) {
    state = showDireccionesEnvio;
  }
}

@RoutePage()
class ClientesAlrededorPage extends ConsumerStatefulWidget {
  const ClientesAlrededorPage({super.key});

  @override
  ConsumerState<ClientesAlrededorPage> createState() =>
      _ClientesAlrededorPageState();
}

class _ClientesAlrededorPageState extends ConsumerState<ClientesAlrededorPage> {
  late double radiusKm;

  final formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
    radiusKm = 50000;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(ubicacionActualProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).cliente_alrededor_titulo),
        actions: [
          IconButton(
            onPressed: () => _openFilter(context),
            icon: Icon(Icons.filter_list),
          ),
        ],
      ),
      body: state.when(
        data: (position) {
          return Stack(
            fit: StackFit.expand,
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              FlutterMapContainer(
                radiusKm: radiusKm,
                currentLatLng: LatLng(position.latitude, position.longitude),
              ),

              _SliderKm(onSliderChanged: onSliderChanged, radiusKm: radiusKm),
            ],
          );
        },
        loading: () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              Text(S.of(context).cliente_alrededor_cargandoMapa),
            ],
          ),
        ),
        error: (e, _) => ErrorMessageWidget(
          (e is AppException) ? e.details.message : e.toString(),
        ),
      ),
    );
  }

  void onSliderChanged(double value) {
    setState(() {
      value = (value == 0) ? 1 : value;
      radiusKm = value * 1000;
    });
  }

  void _openFilter(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => ClienteAlrededorAlertDialog(formKey: formKey),
    );
  }
}

class FlutterMapContainer extends ConsumerStatefulWidget {
  const FlutterMapContainer({
    super.key,
    required this.radiusKm,
    required this.currentLatLng,
  });

  final double radiusKm;
  final LatLng currentLatLng;

  @override
  ConsumerState<FlutterMapContainer> createState() =>
      _FlutterMapContainerState();
}

class _FlutterMapContainerState extends ConsumerState<FlutterMapContainer> {
  final MapController mapController = MapController();
  late LatLng mapLatLng;
  late AlignOnUpdate _alignPositionOnUpdate;
  late StreamController<double?> _alignPositionStreamController;
  late bool isMyCurrentPosition;

  @override
  void initState() {
    super.initState();
    mapLatLng = widget.currentLatLng;
    _alignPositionOnUpdate = AlignOnUpdate.always;
    _alignPositionStreamController = StreamController<double?>();
    isMyCurrentPosition = false;
  }

  @override
  void dispose() {
    mapController.dispose();
    _alignPositionStreamController.close();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant FlutterMapContainer oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.radiusKm != widget.radiusKm) {
      mapController.move(mapLatLng, getZoomLevel(widget.radiusKm));
    }
  }

  @override
  Widget build(BuildContext context) {
    final stateMarkers = ref.watch(
      clientesDireccionesAlrededorListStreamProvider(
        GetClienteAlrededorArg(
          latLng: mapLatLng,
          radiusDistance: widget.radiusKm,
        ),
      ),
    );

    final markers = stateMarkers.maybeWhen(
      orElse: () => <Marker>[],
      data: (clientesAlrededorList) =>
          setMarkerList(clientesAlrededorList: clientesAlrededorList),
    );

    return FlutterMap(
      mapController: mapController,
      options: MapOptions(
        initialCenter: mapLatLng,
        initialZoom: getZoomLevel(widget.radiusKm),
        onLongPress: (_, newLatLng) {
          setState(() {
            mapLatLng = newLatLng;
            isMyCurrentPosition = mapLatLng == widget.currentLatLng;
          });
          mapController.move(newLatLng, getZoomLevel(widget.radiusKm));
        },

        onPositionChanged: (position, hasGesture) {
          if (hasGesture && _alignPositionOnUpdate != AlignOnUpdate.never) {
            setState(() {
              _alignPositionOnUpdate = AlignOnUpdate.never;
              isMyCurrentPosition = false;
            });
          }
        },
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'es.nikel.jbm.jbm_nikel_mobile',
          maxNativeZoom: 19,
        ),
        RichAttributionWidget(
          attributions: [TextSourceAttribution('© OpenStreetMap contributors')],
        ),

        CurrentLocationLayer(
          alignPositionOnUpdate: _alignPositionOnUpdate,
          alignPositionStream: _alignPositionStreamController.stream,
          style: const LocationMarkerStyle(
            marker: DefaultLocationMarker(),
            markerSize: Size(18, 18),
            markerDirection: MarkerDirection.heading,
          ),
        ),

        CircleLayer(
          circles: [
            CircleMarker(
              point: mapLatLng,
              radius: widget.radiusKm,
              useRadiusInMeter: true,
              color: Colors.blue.withValues(alpha: 0.25),
              borderStrokeWidth: 1,
              borderColor: Theme.of(context).colorScheme.onTertiaryContainer,
            ),
          ],
        ),

        MarkerLayer(markers: markers),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FloatingActionButton.small(
              onPressed: () {
                setState(() {
                  _alignPositionOnUpdate = AlignOnUpdate.always;
                  mapLatLng = widget.currentLatLng;
                  mapController.move(mapLatLng, getZoomLevel(widget.radiusKm));

                  isMyCurrentPosition = true;
                });
              },
              child: Icon(
                isMyCurrentPosition
                    ? Icons.my_location
                    : Icons.location_searching,
              ),
            ),
          ),
        ),
      ],
    );
  }

  double getZoomLevel(double radiusInMeters) {
    final scale = radiusInMeters / 500;
    final zoomLevel = 16 - log(scale) / log(2);
    return double.parse(zoomLevel.toStringAsFixed(2));
  }

  List<Marker> createMarkerList(List<ClienteAlrededor> clienteAlrededorList) {
    final markers = <Marker>[];

    for (final cliente in clienteAlrededorList) {
      markers.add(
        Marker(
          point: LatLng(cliente.latitud, cliente.longitud),
          width: 48,
          height: 48,
          child: GestureDetector(
            onTap: () => showDialog(
              context: context,
              barrierDismissible: false,
              builder: (ctx) => _ClienteAlrededorDialog(
                clienteAlrededor: cliente,
                dialogContext: ctx,
              ),
            ),
            child: _ClienteMarker(
              color: _getMarkerColor(
                cliente.isDireccionFiscal,
                cliente.isClientePotencial,
              ),
              tendencia: cliente.tendenciaVentas,
            ),
          ),
        ),
      );
    }

    return markers;
  }

  List<Marker> setMarkerList({
    required List<ClienteAlrededor> clientesAlrededorList,
  }) {
    final markerList = createMarkerList(clientesAlrededorList);

    if (mapLatLng.latitude.toStringAsFixed(4) !=
            widget.currentLatLng.latitude.toStringAsFixed(4) ||
        mapLatLng.longitude.toStringAsFixed(4) !=
            widget.currentLatLng.longitude.toStringAsFixed(4)) {
      markerList.add(
        Marker(
          point: mapLatLng,
          width: 24,
          height: 24,
          child: const Icon(Icons.location_on, color: Colors.red, size: 24),
        ),
      );
    }

    return markerList;
  }

  Color _getMarkerColor(bool isDireccionFiscal, bool? isClientePotencial) {
    if (isClientePotencial ?? false) {
      return Colors.yellowAccent.shade700;
    } else if (isDireccionFiscal) {
      return Colors.green;
    }
    return Colors.cyan;
  }
}

class _ClienteMarker extends StatelessWidget {
  const _ClienteMarker({required this.color, required this.tendencia});

  final Color color;
  final TendenciaCliente tendencia;

  @override
  Widget build(BuildContext context) {
    final badgeIcon = switch (tendencia) {
      TendenciaCliente.up => MdiIcons.chevronUpCircleOutline,
      TendenciaCliente.down => MdiIcons.chevronDownCircleOutline,
      (_) => null,
    };

    final badgeColor = switch (tendencia) {
      TendenciaCliente.up => Colors.green,
      TendenciaCliente.down => Colors.red,
      (_) => null,
    };

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Align(child: Icon(Icons.location_pin, size: 40, color: color)),
        if (badgeIcon != null)
          Positioned(
            top: 4,
            right: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(badgeIcon, size: 16, color: badgeColor),
            ),
          ),
      ],
    );
  }
}

class _SliderKm extends StatelessWidget {
  const _SliderKm({required this.onSliderChanged, required this.radiusKm});

  final Function(double value) onSliderChanged;
  final double radiusKm;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: 110,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Slider(
            activeColor: _isDark(context)
                ? Theme.of(context).colorScheme.primaryContainer
                : Theme.of(context).colorScheme.primary,
            value: radiusKm / 1000,
            min: 0,
            max: 500,
            onChanged: onSliderChanged,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(width: 0.5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Text(
                '${(radiusKm / 1000).round()} Km',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}

class _ClienteAlrededorDialog extends StatelessWidget {
  const _ClienteAlrededorDialog({
    required this.clienteAlrededor,
    required this.dialogContext,
  });

  final ClienteAlrededor clienteAlrededor;
  final BuildContext dialogContext;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Flexible(child: Text(clienteAlrededor.nombre)),
          const Gap(2),
          IconButton(
            onPressed: () => context.router.push(
              PedidoVentaEditRoute(
                createPedidoFromClienteId: clienteAlrededor.clienteId,
                isLocal: true,
              ),
            ),
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
          IconButton(
            onPressed: () => context.router.push(
              ClienteDetalleRoute(clienteId: clienteAlrededor.clienteId),
            ),
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if ((clienteAlrededor.isClientePotencial ?? false) ||
              clienteAlrededor.bloqueoOper ||
              clienteAlrededor.obsoleto) ...[
            _getClienteStatusChip(context, clienteAlrededor),
            const Gap(8),
          ],
          Text('#${clienteAlrededor.clienteId} ${clienteAlrededor.nombre}'),
          const Gap(2),
          Text(
            clienteAlrededor.direccion ?? '',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).textTheme.bodySmall!.color,
            ),
          ),
          const Gap(2),
          AddressTextWidget(
            codigoPostal: clienteAlrededor.codigoPostal,
            poblacion: clienteAlrededor.poblacion,
            provincia: clienteAlrededor.provincia,
            pais: clienteAlrededor.pais,
          ),
          if (clienteAlrededor.nombreRepresentante1 != null) const Gap(2),
          if (clienteAlrededor.nombreRepresentante1 != null)
            RowFieldTextDetalle(
              fieldTitleValue: S
                  .of(context)
                  .cliente_show_clienteDetalle_comercial1,
              value: clienteAlrededor.nombreRepresentante1!,
            ),
          if (clienteAlrededor.nombreRepresentante1 != null) const Gap(2),
          if (clienteAlrededor.nombreRepresentante2 != null)
            RowFieldTextDetalle(
              fieldTitleValue: S
                  .of(context)
                  .cliente_show_clienteDetalle_comercial2,
              value: clienteAlrededor.nombreRepresentante2,
            ),
          const Divider(),
          RowFieldTextDetalle(
            fieldTitleValue: S.of(context).cliente_alrededor_ventasAnoActual,
            value: formatPrecios(
              precio: clienteAlrededor.ventasAnyoActual,
              tipoPrecio: null,
            ),
          ),
          RowFieldTextDetalle(
            fieldTitleValue: S.of(context).cliente_alrededor_ventasAnoAnterior,
            value: formatPrecios(
              precio: clienteAlrededor.ventasAnyoAnterior,
              tipoPrecio: null,
            ),
          ),
          const Gap(2),
          RowFieldTextDetalle(
            fieldTitleValue: S.of(context).cliente_alrededor_porcentajeAbonos,
            value: '${numberFormatDecimal(clienteAlrededor.porcentajeAbonos)}%',
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(dialogContext),
          child: Text(S.of(context).close),
        ),
      ],
    );
  }

  Widget _getClienteStatusChip(
    BuildContext context,
    ClienteAlrededor clienteAlrededor,
  ) {
    final colorScheme = Theme.of(context).colorScheme;

    if (clienteAlrededor.isClientePotencial ?? false) {
      return ClienteStatusChip(
        icon: MdiIcons.rocketLaunchOutline,
        text: S.of(context).potential,
        backgroundColor: Colors.yellowAccent.shade700.withValues(alpha: 0.16),
        foregroundColor: Colors.yellow.shade800,
      );
    } else if (!clienteAlrededor.obsoleto && clienteAlrededor.bloqueoOper) {
      return ClienteStatusChip(
        icon: Icons.lock_outline,
        text: S.of(context).cliente_index_operacionesBloqueadas,
        backgroundColor: colorScheme.errorContainer,
        foregroundColor: colorScheme.onErrorContainer,
      );
    } else if (clienteAlrededor.obsoleto) {
      return ClienteStatusChip(
        icon: Icons.history,
        text: S.of(context).inactive,
        backgroundColor: Colors.blueGrey.withValues(alpha: 0.16),
        foregroundColor: colorScheme.onSurface,
      );
    }
    return const SizedBox.shrink();
  }
}

class ClienteAlrededorAlertDialog extends ConsumerWidget {
  const ClienteAlrededorAlertDialog({super.key, required this.formKey});

  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: Text(S.of(context).filter),
      content: FormBuilder(
        key: formKey,
        clearValueOnUnregister: false,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FormBuilderDropdown<ClienteEstado>(
              name: 'estado',
              initialValue: ref.watch(
                clientesAlrededorEstadoControllerProvider,
              ),
              items: ClienteEstado.values
                  .map(
                    (estado) => DropdownMenuItem(
                      value: estado,
                      child: Text(estado.displayName),
                    ),
                  )
                  .toList(),
              validator: FormBuilderValidators.required(),
            ),
            const Gap(16),
            FormBuilderRadioGroup(
              name: 'show_direcciones',
              initialValue: ref.watch(
                clientesAlrededorShowDireccionesEnvioControllerProvider,
              ),
              decoration: InputDecoration(
                labelText: S
                    .of(context)
                    .pedido_edit_pedidoEdit_direccionesEnvio,
              ),
              options: [
                FormBuilderFieldOption(value: true, child: Text('Mostrar')),

                FormBuilderFieldOption(
                  value: false,
                  child: Text('NO mostrar '),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(S.of(context).close),
        ),
        FilledButton(
          onPressed: () => applyFilter(context, ref),
          child: Text(S.of(context).apply),
        ),
      ],
    );
  }

  void applyFilter(BuildContext context, WidgetRef ref) {
    if (formKey.currentState!.saveAndValidate()) {
      ref
          .read(clientesAlrededorEstadoControllerProvider.notifier)
          .setFilter(getFormValue(formKey, 'estado'));

      ref
          .read(
            clientesAlrededorShowDireccionesEnvioControllerProvider.notifier,
          )
          .setFilter(getFormValue(formKey, 'show_direcciones'));

      Navigator.of(context).pop();
    }
  }
}
