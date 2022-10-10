import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/error_message_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';

import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente.dart';
import 'package:jbm_nikel_mobile/src/features/cliente_alrededor/domain/get_cliente_alrededor_arg.dart';
import 'package:jbm_nikel_mobile/src/features/cliente_alrededor/infrastructure/cliente_alrededor_repository.dart';

import '../../../../generated/l10n.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/helpers/formatters.dart';
import '../../../core/presentation/common_widgets/address_text_widget.dart';
import '../../../core/presentation/common_widgets/row_field_text_detail.dart';

class ClientesAlrededorPage extends ConsumerStatefulWidget {
  const ClientesAlrededorPage({super.key});

  @override
  ConsumerState<ClientesAlrededorPage> createState() =>
      _ClientesAlrededorPageState();
}

class _ClientesAlrededorPageState extends ConsumerState<ClientesAlrededorPage> {
  double radiusKm = 1000;

  @override
  void initState() {
    super.initState();
    radiusKm = 1000;
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
              currentLatLng: LatLng(position.latitude, position.longitude),
            ),
            SliderKm(
                onSliderChanged: (radiusKm) => onSliderChanged(radiusKm),
                radiusKm: radiusKm)
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

  void onSliderChanged(double value) {
    setState(() {
      value = (value == 0) ? 1 : value;
      radiusKm = value * 1000;
    });
  }
}

class GoogleMapsContainer extends ConsumerStatefulWidget {
  const GoogleMapsContainer(
      {super.key, required this.radiusKm, required this.currentLatLng});

  final double radiusKm;
  final LatLng currentLatLng;

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
    final stateMarkers = ref.watch(clientesAlrededorListStream(
        GetClienteAlrededorArg(
            latLng: mapLatLng!, radiusDistance: widget.radiusKm)));
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
        ));
  }

  double getZoomLevel(Circle circle) {
    double radius = (circle.radius + circle.radius) / 2;
    double scale = radius / 500;
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

  Set<Marker> createMarkerSet(List<Cliente> clientesAlrededorList) {
    return clientesAlrededorList
        .map(
          (c) => Marker(
            markerId: MarkerId(c.id),
            position: LatLng(c.latitudFiscal!, c.longitudFiscal!),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              (c.clientePotencial ?? false)
                  ? BitmapDescriptor.hueYellow
                  : BitmapDescriptor.hueGreen,
            ),
            onTap: () => showDialog(
              context: context,
              builder: (ctx) => ClienteAlrededorDialog(cliente: c),
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

  Set<Marker> setMarkerList({required List<Cliente> clientesAlrededorList}) {
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

class SliderKm extends StatelessWidget {
  const SliderKm(
      {super.key, required this.onSliderChanged, required this.radiusKm});

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
            value: radiusKm / 1000,
            min: 0,
            max: 100,
            onChanged: (value) => onSliderChanged(value),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(width: 0.5),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                '${(radiusKm / 1000).round().toString()} Km',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ClienteAlrededorDialog extends StatelessWidget {
  const ClienteAlrededorDialog({super.key, required this.cliente});

  final Cliente cliente;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Flexible(
            child: Text(
              cliente.nombreCliente ?? '',
            ),
          ),
          gapW4,
          IconButton(
              onPressed: () => context.router
                  .push(ClienteDetalleRoute(clienteId: cliente.id)),
              icon: const Icon(Icons.info))
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('#${cliente.id} ${cliente.nombreFiscal}'),
          const SizedBox(height: 2),
          Text(
            cliente.direccionFiscal1 ?? '',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: Theme.of(context).textTheme.caption!.color,
                ),
          ),
          const SizedBox(height: 2),
          AddressTextWidget(
              codigoPostal: cliente.codigoPostalFiscal,
              poblacion: cliente.poblacionFiscal,
              provincia: cliente.provinciaFiscal,
              pais: cliente.paisFiscal),
          const Divider(),
          RowFieldTextDetalle(
              fieldTitleValue: S.of(context).cliente_alrededor_ventasAnoActual,
              value: (cliente.ventasAnyoActual != null)
                  ? formatPrecios(
                      precio: cliente.ventasAnyoActual!, tipoPrecio: null)
                  : ''),
          const SizedBox(height: 2),
          RowFieldTextDetalle(
              fieldTitleValue: S.of(context).cliente_alrededor_margenAnoActual,
              value: (cliente.margenAnyoActual != null)
                  ? '${numberFormatDecimal(cliente.margenAnyoActual!)}%'
                  : ''),
          const SizedBox(height: 2),
          RowFieldTextDetalle(
              fieldTitleValue: S.of(context).cliente_alrededor_porcentajeAbonos,
              value: (cliente.porcentajeAbonos != null)
                  ? '${numberFormatDecimal(cliente.porcentajeAbonos!)}%'
                  : ''),
        ],
      ),
    );
  }
}
