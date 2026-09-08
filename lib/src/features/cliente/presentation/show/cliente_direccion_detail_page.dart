import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:map_launcher/map_launcher.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/helpers/formatters.dart';
import '../../../../core/presentation/common_widgets/datos_extra_row.dart';
import '../../../../core/presentation/common_widgets/mobile_custom_separatos.dart';
import '../../../../core/routing/app_auto_router.dart';
import '../../domain/cliente_direccion.dart';

@RoutePage()
class ClienteDireccionDetailPage extends ConsumerWidget {
  const ClienteDireccionDetailPage({
    super.key,
    required this.clienteDireccion,
    required this.nombreCliente,
  });

  final ClienteDireccion clienteDireccion;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).shippingAddress)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Header(
            clienteDireccion: clienteDireccion,
            nombreCliente: nombreCliente,
          ),
          const Gap(8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (clienteDireccion.direccion1 != null ||
                    clienteDireccion.codigoPostal != null ||
                    clienteDireccion.poblacion != null ||
                    clienteDireccion.provincia != null ||
                    clienteDireccion.pais != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: SelectableText(
                          selectionControls: MaterialTextSelectionControls(),
                          formatCustomerAddress(
                            clienteDireccion.direccion1,
                            clienteDireccion.codigoPostal,
                            clienteDireccion.poblacion,
                            clienteDireccion.provincia,
                            clienteDireccion.pais,
                          ),
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.color,
                              ),
                        ),
                      ),
                      IconButton(
                        onPressed: () => navigateToGoogleMapsAddress(
                          clienteDireccion.nombre ??
                              S.of(context).unknownCustomer,
                          clienteDireccion.latitud,
                          clienteDireccion.longitud,
                        ),
                        icon: Icon(MdiIcons.googleMaps),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          const Gap(8),

          _Consultas(
            clienteDireccion: clienteDireccion,
            nombreCliente: nombreCliente,
          ),
        ],
      ),
    );
  }

  void navigateToGoogleMapsAddress(
    String nombre,
    double? latitude,
    double? longitude,
  ) async {
    if (latitude != null && longitude != null) {
      final marker = MapLauncher.marker(
        Location.coords(latitude, longitude, title: nombre),
      );
      final availableMaps = await marker.getSupportedMaps([.google, .apple]);
      if (availableMaps.isNotEmpty) {
        await availableMaps.first.show();
      }
    }
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.clienteDireccion, required this.nombreCliente});

  final ClienteDireccion clienteDireccion;
  final String? nombreCliente;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            clienteDireccion.nombre ?? S.of(context).unknownCustomer,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            '#${clienteDireccion.clienteId} ${nombreCliente ?? S.of(context).unknownCustomer}',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}

class _Consultas extends StatelessWidget {
  const _Consultas({
    required this.clienteDireccion,
    required this.nombreCliente,
  });

  final ClienteDireccion clienteDireccion;
  final String? nombreCliente;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MobileCustomSeparators(
          separatorTitle: S.of(context).cliente_show_clienteDetalle_consultas,
        ),
        const Gap(8),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteVentasMes_titulo,
          navigationTo: () => context.router.push(
            ClienteVentasMesRoute(
              clienteId: clienteDireccion.clienteId,
              nombreCliente: nombreCliente,
              direccionId: clienteDireccion.direccionId,
              applyDireccionFilter: true,
              nombreDireccion: clienteDireccion.nombre,
              addressText: formatCustomerAddress(
                clienteDireccion.direccion1,
                clienteDireccion.codigoPostal,
                clienteDireccion.poblacion,
                clienteDireccion.provincia,
                clienteDireccion.pais,
              ),
            ),
          ),
        ),
        const Divider(),
        DatosExtraRow(
          title: S.of(context).cliente_show_clienteVentasArticulo_titulo,
          navigationTo: () => context.router.push(
            ClienteVentasArticuloRoute(
              clienteId: clienteDireccion.clienteId,
              nombreCliente: nombreCliente,
              applyDireccionFilter: true,
              direccionId: clienteDireccion.direccionId,
              nombreDireccion: clienteDireccion.nombre,
              addressText: formatCustomerAddress(
                clienteDireccion.direccion1,
                clienteDireccion.codigoPostal,
                clienteDireccion.poblacion,
                clienteDireccion.provincia,
                clienteDireccion.pais,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
