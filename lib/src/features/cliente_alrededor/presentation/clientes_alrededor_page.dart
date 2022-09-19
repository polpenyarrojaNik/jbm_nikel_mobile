import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/error_message_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_router.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente.dart';
import 'package:jbm_nikel_mobile/src/features/cliente_alrededor/domain/get_cliente_alrededor_arg.dart';
import 'package:jbm_nikel_mobile/src/features/cliente_alrededor/infrastructure/cliente_alrededor_repository.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/helpers/formatters.dart';
import '../../../core/presentation/common_widgets/address_text_widget.dart';
import '../../../core/presentation/common_widgets/row_field_text_detail.dart';

class ClientesAlrededorPage extends StatefulWidget {
  const ClientesAlrededorPage({super.key});

  @override
  State<ClientesAlrededorPage> createState() => _ClientesAlrededorPageState();
}

class _ClientesAlrededorPageState extends State<ClientesAlrededorPage> {
  double radiusKm = 1000;

  @override
  void initState() {
    super.initState();
    radiusKm = 1000;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clientes alrededor')),
      body: Stack(
        fit: StackFit.expand,
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          GoogleMapsContainer(radiusKm: radiusKm),
          SliderKm(
              onSliderChanged: (radiusKm) => onSliderChanged(radiusKm),
              radiusKm: radiusKm)
        ],
      ),
    );
  }

  void onSliderChanged(double value) {
    setState(() {
      radiusKm = value * 1000;
    });
  }
}

class GoogleMapsContainer extends ConsumerStatefulWidget {
  const GoogleMapsContainer({super.key, required this.radiusKm});

  final double radiusKm;

  @override
  ConsumerState<GoogleMapsContainer> createState() =>
      _GoogleMapsContainerState();
}

class _GoogleMapsContainerState extends ConsumerState<GoogleMapsContainer> {
  GoogleMapController? mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(ubicacionActualProvider);
    return state.when(
      data: (position) {
        final stateMarkers = ref.watch(clientesAlrededorListStream(
            GetClienteAlrededorArg(
                position: position, radiusDistance: widget.radiusKm)));
        final circle = createCircleInCurrentPosition(
            context: context,
            position: position,
            radiusInMeters: widget.radiusKm);

        if (mapController != null) {
          mapController!.animateCamera(
            CameraUpdate.newLatLngZoom(
              LatLng(position.latitude, position.longitude),
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
              data: (clienteList) => createMarkerSet(clienteList)),
          circles: <Circle>{circle},
          initialCameraPosition: CameraPosition(
            target: LatLng(position.latitude, position.longitude),
            zoom: getZoomLevel(circle),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => ErrorMessageWidget(
          (e is AppException) ? e.details.message : e.toString()),
    );
  }

  double getZoomLevel(Circle circle) {
    double radius = (circle.radius + circle.radius) / 2;
    double scale = radius / 500;
    final zoomLevel = (16 - log(scale) / log(2));

    return double.parse(zoomLevel.toStringAsFixed(2));
  }

  Circle createCircleInCurrentPosition(
      {required BuildContext context,
      required Position position,
      required double radiusInMeters}) {
    return Circle(
      circleId: const CircleId('currentPosition'),
      center: LatLng(position.latitude, position.longitude),
      radius: radiusInMeters,
      fillColor: Theme.of(context).primaryColor.withOpacity(0.25),
      strokeWidth: 1,
      strokeColor: Theme.of(context).primaryColorDark,
    );
  }

  Set<Marker> createMarkerSet(List<Cliente> clienteList) {
    return clienteList
        .map(
          (c) => Marker(
            markerId: MarkerId(c.id),
            position: LatLng(c.latitudFiscal!, c.longitudFiscal!),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueGreen,
            ),
            onTap: () => showDialog(
              context: context,
              builder: (ctx) => ClienteAlrededorDialog(cliente: c),
            ),
          ),
        )
        .toSet();
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
            min: 1,
            max: 10,
            divisions: 9,
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
              onPressed: () => context.goNamed(AppRoutes.clienteshow.name,
                  params: {'clienteId': cliente.id}),
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
              fieldTitleValue: 'Venta Año Actual',
              value: (cliente.ventasAnyoActual != null)
                  ? numberFormatDecimal(cliente.ventasAnyoActual!)
                  : ''),
          const SizedBox(height: 2),
          RowFieldTextDetalle(
              fieldTitleValue: 'Margen Año Actual',
              value: (cliente.margenAnyoActual != null)
                  ? '${numberFormatDecimal(cliente.margenAnyoActual!)}%'
                  : ''),
          const SizedBox(height: 2),
          RowFieldTextDetalle(
              fieldTitleValue: 'Porcentaje Abonos',
              value: (cliente.porcentajeAbonos != null)
                  ? '${numberFormatDecimal(cliente.porcentajeAbonos!)}%'
                  : ''),
        ],
      ),
    );
  }
}
