import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../generated/l10n.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/helpers/formatters.dart';
import '../../../core/presentation/common_widgets/address_text_widget.dart';
import '../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../core/presentation/common_widgets/row_field_text_detail.dart';
import '../../../core/presentation/theme/app_sizes.dart';
import '../../../core/routing/app_auto_router.dart';
import '../domain/cliente_alrededor.dart';
import '../domain/get_cliente_alrededor_arg.dart';
import '../infrastructure/cliente_alrededor_repository.dart';

@RoutePage()
class ClientesAlrededorPage extends ConsumerStatefulWidget {
  const ClientesAlrededorPage({super.key});

  @override
  ConsumerState<ClientesAlrededorPage> createState() =>
      _ClientesAlrededorPageState();
}

class _ClientesAlrededorPageState extends ConsumerState<ClientesAlrededorPage> {
  late double radiusKm;

  late bool showDireccionesEnvio;
  late bool showPotenciales;

  @override
  void initState() {
    super.initState();
    radiusKm = 10000;
    showDireccionesEnvio = false;
    showPotenciales = false;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(ubicacionActualProvider);
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).cliente_alrededor_titulo)),
      body: state.when(
        data: (position) => Stack(
          fit: StackFit.expand,
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            GoogleMapsContainer(
              radiusKm: radiusKm,
              currentLatLng: LatLng(
                position.latitude,
                position.longitude,
              ),
              showDireccionesEnvio: showDireccionesEnvio,
              showPotenciales: showPotenciales,
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _CheckboxDireccionesEnvio(
                    onShowDireccionesEnvioChanged: (_) =>
                        onChangeDireccionesEnvio(),
                    showDireccionesEnvio: showDireccionesEnvio,
                  ),
                  gapH4,
                  _CheckboxPotenciales(
                    onShowPotencialesChanged: (_) => onChangePotenciales(),
                    showPotenciales: showPotenciales,
                  ),
                ],
              ),
            ),
            _SliderKm(
              onSliderChanged: (radiusKm) => onSliderChanged(radiusKm),
              radiusKm: radiusKm,
            )
          ],
        ),
        loading: () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              Text(S.of(context).cliente_alrededor_cargandoMapa),
            ],
          ),
        ),
        error: (e, _) => ErrorMessageWidget(
            (e is AppException) ? e.details.message : e.toString()),
      ),
    );
  }

  void onChangeDireccionesEnvio() {
    setState(() {
      showDireccionesEnvio = !showDireccionesEnvio;
    });
  }

  void onChangePotenciales() {
    setState(() {
      showPotenciales = !showPotenciales;
    });
  }

  void onSliderChanged(double value) {
    setState(() {
      value = (value == 0) ? 1 : value;
      radiusKm = value * 1000;
    });
  }
}

class GoogleMapsContainer extends ConsumerStatefulWidget {
  const GoogleMapsContainer(
      {super.key,
      required this.radiusKm,
      required this.currentLatLng,
      required this.showDireccionesEnvio,
      required this.showPotenciales});

  final double radiusKm;
  final LatLng currentLatLng;
  final bool showDireccionesEnvio;
  final bool showPotenciales;

  @override
  ConsumerState<GoogleMapsContainer> createState() =>
      _GoogleMapsContainerState();
}

class _GoogleMapsContainerState extends ConsumerState<GoogleMapsContainer> {
  GoogleMapController? mapController;
  LatLng? mapLatLng;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    super.initState();
    mapLatLng = widget.currentLatLng;
  }

  @override
  Widget build(BuildContext context) {
    final stateMarkers = ref.watch(
      clientesDireccionesAlrededorListStream(
        GetClienteAlrededorArg(
          latLng: mapLatLng!,
          radiusDistance: widget.radiusKm,
          showDireccionesEnvio: widget.showDireccionesEnvio,
          showPotenciales: widget.showPotenciales,
        ),
      ),
    );
    final circle = createCircleInCurrentPosition(
        context: context, latlng: mapLatLng!, radiusInMeters: widget.radiusKm);

    if (mapController != null) {
      mapController!.animateCamera(
        CameraUpdate.newLatLngZoom(
          mapLatLng!,
          getZoomLevel(circle),
        ),
      );
    }

    return GoogleMap(
      mapType: MapType.normal,
      onMapCreated: _onMapCreated,
      myLocationEnabled: true,
      markers: stateMarkers.maybeWhen(
        orElse: () => const <Marker>{},
        data: (clientesAlrededorList) =>
            setMarkerList(clientesAlrededorList: clientesAlrededorList),
      ),
      circles: <Circle>{circle},
      onLongPress: (newLatLng) => setState(() {
        mapLatLng = newLatLng;
      }),
      onCameraMove: (cameraPosition) => isMyCurrentPosition(cameraPosition),
      initialCameraPosition: CameraPosition(
        target: widget.currentLatLng,
        zoom: getZoomLevel(circle),
      ),
    );
  }

  double getZoomLevel(Circle circle) {
    final radius = (circle.radius + circle.radius) / 2;
    final scale = radius / 500;
    final zoomLevel = (16 - log(scale) / log(2));

    return double.parse(zoomLevel.toStringAsFixed(2));
  }

  Circle createCircleInCurrentPosition(
      {required BuildContext context,
      required LatLng latlng,
      required double radiusInMeters}) {
    return Circle(
      circleId: const CircleId('currentPosition'),
      center: latlng,
      radius: radiusInMeters,
      fillColor: Colors.blue.withOpacity(0.25),
      strokeWidth: 1,
      strokeColor: Theme.of(context).colorScheme.onTertiaryContainer,
    );
  }

  Set<Marker> createMarkerSet(List<ClienteAlrededor> clienteAlrededorList) {
    return clienteAlrededorList
        .map(
          (c) => Marker(
            markerId: MarkerId(c.markerId),
            position: LatLng(c.latitud, c.longitud),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              (c.isClientePotencial ?? false)
                  ? BitmapDescriptor.hueYellow
                  : (c.isDireccionFiscal)
                      ? BitmapDescriptor.hueGreen
                      : BitmapDescriptor.hueCyan,
            ),
            onTap: () => showDialog(
              context: context,
              builder: (ctx) => _ClienteAlrededorDialog(clienteAlrededor: c),
            ),
          ),
        )
        .toSet();
  }

  void isMyCurrentPosition(CameraPosition cameraPosition) {
    if (cameraPosition.target.latitude.toStringAsFixed(4) ==
            widget.currentLatLng.latitude.toStringAsFixed(4) &&
        cameraPosition.target.longitude.toStringAsFixed(4) ==
            widget.currentLatLng.longitude.toStringAsFixed(4)) {
      setState(() {
        mapLatLng = widget.currentLatLng;
      });
    }
  }

  Set<Marker> setMarkerList(
      {required List<ClienteAlrededor> clientesAlrededorList}) {
    final markerList = createMarkerSet(clientesAlrededorList);

    if (mapLatLng!.latitude.toStringAsFixed(4) !=
            widget.currentLatLng.latitude.toStringAsFixed(4) &&
        mapLatLng!.longitude.toStringAsFixed(4) !=
            widget.currentLatLng.longitude.toStringAsFixed(4)) {
      markerList.add(
        Marker(
          markerId: const MarkerId('userPositionSelected'),
          position: mapLatLng!,
        ),
      );
    }
    return markerList;
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
            max: 100,
            onChanged: (value) => onSliderChanged(value),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(width: 0.5),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                '${(radiusKm / 1000).round().toString()} Km',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
            ),
          )
        ],
      ),
    );
  }

  bool _isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}

class _CheckboxDireccionesEnvio extends StatelessWidget {
  const _CheckboxDireccionesEnvio(
      {required this.showDireccionesEnvio,
      required this.onShowDireccionesEnvioChanged});

  final bool showDireccionesEnvio;
  final Function(bool value) onShowDireccionesEnvioChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(width: 0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(S.of(context).cliente_alrededor_direccionesEnvio),
            gapW8,
            Switch(
              value: showDireccionesEnvio,
              onChanged: (value) => onShowDireccionesEnvioChanged(value),
            ),
          ],
        ),
      ),
    );
  }
}

class _CheckboxPotenciales extends StatelessWidget {
  const _CheckboxPotenciales(
      {required this.showPotenciales, required this.onShowPotencialesChanged});

  final bool showPotenciales;
  final Function(bool value) onShowPotencialesChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(width: 0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(S.of(context).cliente_alrededor_potenciales),
            gapW8,
            Switch(
              value: showPotenciales,
              onChanged: (value) => onShowPotencialesChanged(value),
            ),
          ],
        ),
      ),
    );
  }
}

class _ClienteAlrededorDialog extends StatelessWidget {
  const _ClienteAlrededorDialog({required this.clienteAlrededor});

  final ClienteAlrededor clienteAlrededor;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Flexible(
            child: Text(
              clienteAlrededor.nombre,
            ),
          ),
          gapW4,
          IconButton(
            onPressed: () => context.router.push(
                ClienteDetalleRoute(clienteId: clienteAlrededor.clienteId)),
            icon: const Icon(Icons.info),
          )
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('#${clienteAlrededor.clienteId} ${clienteAlrededor.nombre}'),
          gapH2,
          Text(
            clienteAlrededor.direccion ?? '',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).textTheme.bodySmall!.color,
                ),
          ),
          gapH2,
          AddressTextWidget(
              codigoPostal: clienteAlrededor.codigoPostal,
              poblacion: clienteAlrededor.poblacion,
              provincia: clienteAlrededor.provincia,
              pais: clienteAlrededor.pais),
          if (clienteAlrededor.nombreRepresentante1 != null) gapH2,
          if (clienteAlrededor.nombreRepresentante1 != null)
            RowFieldTextDetalle(
                fieldTitleValue:
                    S.of(context).cliente_show_clienteDetalle_comercial1,
                value: clienteAlrededor.nombreRepresentante1!),
          if (clienteAlrededor.nombreRepresentante1 != null) gapH2,
          if (clienteAlrededor.nombreRepresentante2 != null)
            RowFieldTextDetalle(
                fieldTitleValue:
                    S.of(context).cliente_show_clienteDetalle_comercial2,
                value: clienteAlrededor.nombreRepresentante2),
          const Divider(),
          RowFieldTextDetalle(
              fieldTitleValue: S.of(context).cliente_alrededor_ventasAnoActual,
              value: formatPrecios(
                  precio: clienteAlrededor.ventasAnyoActual, tipoPrecio: null)),
          RowFieldTextDetalle(
              fieldTitleValue:
                  S.of(context).cliente_alrededor_ventasAnoAnterior,
              value: formatPrecios(
                  precio: clienteAlrededor.ventasAnyoAnterior,
                  tipoPrecio: null)),
          gapH2,
          RowFieldTextDetalle(
              fieldTitleValue: S.of(context).cliente_alrededor_porcentajeAbonos,
              value:
                  '${numberFormatDecimal(clienteAlrededor.porcentajeAbonos)}%'),
        ],
      ),
    );
  }
}
