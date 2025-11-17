import 'dart:math';
import 'dart:ui' as ui;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../generated/l10n.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/helpers/formatters.dart';
import '../../../core/presentation/common_widgets/address_text_widget.dart';
import '../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../core/presentation/common_widgets/row_field_text_detail.dart';
import '../../../core/routing/app_auto_router.dart';
import '../../cliente/domain/cliente.dart';
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

  late final BitmapDescriptor badgeUp;
  late final BitmapDescriptor badgeDown;

  @override
  void initState() {
    super.initState();
    radiusKm = 50000;
    showDireccionesEnvio = false;
    showPotenciales = false;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(ubicacionActualProvider);
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).cliente_alrededor_titulo)),
      body: state.when(
        data: (position) => FutureBuilder<void>(
          future: precacheBadges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const Center(child: CircularProgressIndicator());
            }
            return Stack(
              fit: StackFit.expand,
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                GoogleMapsContainer(
                  radiusKm: radiusKm,
                  currentLatLng: LatLng(position.latitude, position.longitude),
                  showDireccionesEnvio: showDireccionesEnvio,
                  showPotenciales: showPotenciales,
                  badgeUp: badgeUp,
                  badgeDown: badgeDown,
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
                      const Gap(4),
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
                ),
              ],
            );
          },
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
          (e is AppException) ? e.details.message : e.toString(),
        ),
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

  Future<void> precacheBadges() async {
    badgeUp = await buildTrendBadge(TendenciaCliente.up); // una sola vez
    badgeDown = await buildTrendBadge(TendenciaCliente.down); // una sola vez
  }

  Future<BitmapDescriptor> buildTrendBadge(
    TendenciaCliente tendenciaCliente,
  ) async {
    const double size = 78; // tamaño total del canvas (pequeño)
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);

    // Fondo transparente
    final paintClear = Paint()..blendMode = ui.BlendMode.clear;
    canvas.drawRect(Rect.fromLTWH(0, 0, size, size), paintClear);

    final icon = tendenciaCliente == TendenciaCliente.up
        ? MdiIcons.chevronUpCircleOutline
        : MdiIcons.chevronDownCircleOutline;

    final color = tendenciaCliente == TendenciaCliente.up
        ? Colors.green
        : Colors.red;

    // ===== FONDO BLANCO =====
    final double circleRadius = 8;
    const double offsetRight = 10; // más a la derecha
    const offsetUp = 5; // más arriba

    final cx = (size / 2) + offsetRight;
    final cy = (size / 2) + offsetUp;

    final circlePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..isAntiAlias = true;

    // Círculo blanco detrás del icono
    canvas.drawCircle(Offset(cx, cy), circleRadius, circlePaint);

    final painter = TextPainter(
      textDirection: TextDirection.ltr,
      text: TextSpan(
        text: String.fromCharCode(icon.codePoint),
        style: TextStyle(
          fontSize: 16, // más pequeño
          fontFamily: icon.fontFamily,
          package: icon.fontPackage,
          color: color,
        ),
      ),
    )..layout();
    painter.paint(
      canvas,
      Offset(
        ((size - painter.width) / 2) + offsetRight,
        ((size - painter.height) / 2) + offsetUp,
      ),
    );

    final image = await recorder.endRecording().toImage(
      size.toInt(),
      size.toInt(),
    );
    final data = await image.toByteData(format: ui.ImageByteFormat.png);
    return BitmapDescriptor.bytes(Uint8List.view(data!.buffer));
  }
}

class GoogleMapsContainer extends ConsumerStatefulWidget {
  const GoogleMapsContainer({
    super.key,
    required this.radiusKm,
    required this.currentLatLng,
    required this.showDireccionesEnvio,
    required this.showPotenciales,
    required this.badgeUp,
    required this.badgeDown,
  });

  final double radiusKm;
  final LatLng currentLatLng;
  final bool showDireccionesEnvio;
  final bool showPotenciales;
  final BitmapDescriptor badgeUp;
  final BitmapDescriptor badgeDown;

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
  void dispose() {
    mapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final stateMarkers = ref.watch(
      clientesDireccionesAlrededorListStreamProvider(
        GetClienteAlrededorArg(
          latLng: mapLatLng!,
          radiusDistance: widget.radiusKm,
          showDireccionesEnvio: widget.showDireccionesEnvio,
          showPotenciales: widget.showPotenciales,
        ),
      ),
    );
    final circle = createCircleInCurrentPosition(
      context: context,
      latlng: mapLatLng!,
      radiusInMeters: widget.radiusKm,
    );

    if (mapController != null) {
      mapController!.animateCamera(
        CameraUpdate.newLatLngZoom(mapLatLng!, getZoomLevel(circle)),
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
      circles: {circle},
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

  Circle createCircleInCurrentPosition({
    required BuildContext context,
    required LatLng latlng,
    required double radiusInMeters,
  }) {
    return Circle(
      circleId: const CircleId('currentPosition'),
      center: latlng,
      radius: radiusInMeters,
      fillColor: Colors.blue.withValues(alpha: 0.25),
      strokeWidth: 1,
      strokeColor: Theme.of(context).colorScheme.onTertiaryContainer,
    );
  }

  Set<Marker> createMarkerSet(List<ClienteAlrededor> clienteAlrededorList) {
    final markers = <Marker>{};

    for (final cliente in clienteAlrededorList) {
      markers.add(
        Marker(
          markerId: MarkerId(cliente.markerId),
          position: LatLng(cliente.latitud, cliente.longitud),
          icon: BitmapDescriptor.defaultMarkerWithHue(
            _getMarkerIcon(
              cliente.isDireccionFiscal,
              cliente.isClientePotencial,
            ),
          ),
          anchor: const Offset(0.5, 1.0),
          zIndexInt: 1,
          onTap: () => showDialog(
            context: context,
            builder: (ctx) =>
                _ClienteAlrededorDialog(clienteAlrededor: cliente),
          ),
        ),
      );

      if (cliente.tendenciaVentas != TendenciaCliente.equal) {
        markers.add(
          Marker(
            markerId: MarkerId('${cliente.markerId}_badge'),
            position: LatLng(cliente.latitud, cliente.longitud),
            icon: cliente.tendenciaVentas == TendenciaCliente.up
                ? widget.badgeUp
                : widget.badgeDown,
            anchor: const Offset(0.5, 1.0),
            zIndexInt: 2,
            consumeTapEvents: false,
          ),
        );
      }
    }
    return markers;
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

  Set<Marker> setMarkerList({
    required List<ClienteAlrededor> clientesAlrededorList,
  }) {
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

  double _getMarkerIcon(bool isDireccionFiscal, bool? isClientePotencial) {
    if (isClientePotencial ?? false) {
      return BitmapDescriptor.hueYellow;
    } else if ((isDireccionFiscal)) {
      return BitmapDescriptor.hueGreen;
    }
    return BitmapDescriptor.hueCyan;
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
            onChanged: (value) => onSliderChanged(value),
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
                '${(radiusKm / 1000).round().toString()} Km',
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

class _CheckboxDireccionesEnvio extends StatelessWidget {
  const _CheckboxDireccionesEnvio({
    required this.showDireccionesEnvio,
    required this.onShowDireccionesEnvioChanged,
  });

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
            const Gap(8),
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
  const _CheckboxPotenciales({
    required this.showPotenciales,
    required this.onShowPotencialesChanged,
  });

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
            const Gap(8),
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
          Flexible(child: Text(clienteAlrededor.nombre)),
          const Gap(4),
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
    );
  }
}
