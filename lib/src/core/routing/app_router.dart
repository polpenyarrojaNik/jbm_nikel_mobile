// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// 
// import 'package:jbm_nikel_mobile/src/features/cliente/presentation/show/cliente_adjunto_page.dart';
// import 'package:jbm_nikel_mobile/src/features/cliente/presentation/show/cliente_contacto_page.dart';
// import 'package:jbm_nikel_mobile/src/features/cliente/presentation/show/cliente_descuento_page.dart';
// import 'package:jbm_nikel_mobile/src/features/cliente/presentation/show/cliente_direccion_page.dart';
// import 'package:jbm_nikel_mobile/src/features/cliente/presentation/show/cliente_precio_neto_page.dart';
// import 'package:jbm_nikel_mobile/src/features/cliente_alrededor/presentation/clientes_alrededor_page.dart';

// import '../../features/app_initialization/presentation/splash_page.dart';
// import '../../features/articulos/presentation/index/articulo_lista_page.dart';
// import '../../features/articulos/presentation/show/articulo_componente_page.dart';
// import '../../features/articulos/presentation/show/articulo_detalle_page.dart';
// import '../../features/articulos/presentation/show/articulo_documento_page.dart';
// import '../../features/articulos/presentation/show/articulo_grupos_netos_page.dart';
// import '../../features/articulos/presentation/show/articulo_pedido_venta_page.dart';
// import '../../features/articulos/presentation/show/articulo_recambio_page.dart';
// import '../../features/articulos/presentation/show/articulo_sustitutivo_page.dart';
// import '../../features/articulos/presentation/show/articulo_precio_tarifa_page.dart';
// import '../../features/articulos/presentation/show/ultimos_precios/articulo_ultimos_precios_page.dart';
// import '../../features/cliente/presentation/index/cliente_lista_page.dart';
// import '../../features/cliente/presentation/show/cliente_articulo_top_lista_page.dart';
// import '../../features/cliente/presentation/show/cliente_detalle_page.dart';
// import '../../features/cliente/presentation/show/cliente_grupo_neto_page.dart';
// import '../../features/cliente/presentation/show/cliente_factura_pendiente_page.dart';
// import '../../features/cliente/presentation/show/cliente_rappel_page.dart';
// import '../../features/cliente/presentation/show/cliente_ventas_articulo_page.dart';
// import '../../features/cliente/presentation/show/cliente_ventas_mes_page.dart';
// import '../../features/pedido_venta/domain/seleccionar_cantidad_param.dart';
// import '../../features/pedido_venta/presentation/edit/pedido_venta_edit_page.dart';
// import '../../features/pedido_venta/presentation/edit/select_quantity_page.dart';
// import '../../features/pedido_venta/presentation/index/pedido_venta_lista_page.dart';
// import '../../features/pedido_venta/presentation/show/pedido_venta_detalle_page.dart';
// import '../../features/settings/presentation/settings_page.dart';
// import '../../features/usuario/application/usuario_notifier.dart';
// import '../../features/usuario/domain/usuario.dart';
// import '../../features/usuario/presentation/login/login_page.dart';
// import '../domain/entity_id_is_local_param.dart';
// import '../../features/visitas/presentation/edit/visit_edit_page.dart';
// import '../../features/visitas/presentation/index/visita_lista_page.dart';
// import '../../features/visitas/presentation/show/visita_detalle_page.dart';
// import 'not_found_screen.dart';

// enum AppRoutes {
//   splash,
//   login,
//   clienteindex,
//   clienteshow,
//   clientefactpendientes,
//   clienteventasmes,
//   clienteventasarticulo,
//   clientetoparticulos,
//   clienteadjuntos,
//   clientecontactos,
//   clientedescuentos,
//   clientedirecciones,
//   clientegruposnetos,
//   clientepreciosnetos,
//   clienterappels,
//   clientealrededor,
//   clientealrededorshow,
//   articuloindex,
//   articuloshow,
//   articulopedidoventa,
//   articuloultimoprecio,
//   articulocomponente,
//   articulogruponeto,
//   articulopreciotarifa,
//   articulorecambio,
//   articulosustitutivo,
//   articulodocumento,
//   pedidoventaindex,
//   pedidoventashow,
//   pedidoventaedit,
//   pedidoventanewsearchcliente,
//   pedidoventaeditsearchcliente,
//   pedidoventanewsearcharticulo,
//   pedidoventaeditsearcharticulo,
//   pedidoventanew,
//   pedidoventanewseleccionarcantidad,
//   pedidoventaeditseleccionarcantidad,

//   visitaindex,
//   visitashow,
//   visitaedit,
//   visitanewsearchcliente,
//   visitaeditsearchcliente,
//   visitanew,
//   kpisindex,
//   settings,
// }

// final routerNotifierProvider = Provider<GoRouter>((ref) {
//   final router = RouterNotifier(ref);

//   return GoRouter(
//     debugLogDiagnostics: true,
//     refreshListenable: router,
//     redirect: router._redirectLogic,
//     routes: router._routes,
//     errorBuilder: (context, state) => const NotFoundScreen(),
//   );
// });

// class RouterNotifier extends ChangeNotifier {
//   final Ref _ref;

//   RouterNotifier(this._ref) {
//     _ref.listen<Usuario?>(
//       usuarioNotifierProvider,
//       (_, __) => notifyListeners(),
//     );
//   }

//   String? _redirectLogic(BuildContext context, GoRouterState state) {
//     final usuario = _ref.read(usuarioNotifierProvider);

//     final areWeInLoginPage = state.location == '/login';
//     if (usuario == null) {
//       return areWeInLoginPage ? null : '/login';
//     }
//     if (areWeInLoginPage) return '/';

//     return null;
//   }

//   List<GoRoute> get _routes => [
//         GoRoute(
//           name: AppRoutes.splash.name,
//           path: '/',
//           builder: (context, state) => const SplashPage(),
//         ),
//         GoRoute(
//           path: '/login',
//           name: AppRoutes.login.name,
//           builder: (context, state) => const LoginPage(),
//         ),
//         GoRoute(
//           name: AppRoutes.clienteindex.name,
//           path: '/clientes',
//           builder: (context, state) =>
//               const ClienteListaPage(isSearchClienteForFrom: false),
//           routes: [
//             GoRoute(
//               path: 'alrededor',
//               name: AppRoutes.clientealrededor.name,
//               builder: (context, state) => const ClientesAlrededorPage(),
//               // routes: clienteShowRoutes,
//             ),
//             GoRoute(
//               name: AppRoutes.clienteshow.name,
//               path: ':clienteId',
//               pageBuilder: (context, state) {
//                 final clienteId = state.params['clienteId']!;
//                 return MaterialPage(
//                   key: state.pageKey,
//                   child: ClienteDetallePage(clienteId: clienteId),
//                 );
//               },
//               routes: clienteShowRoutes,
//             ),
//           ],
//         ),
//         GoRoute(
//           name: AppRoutes.pedidoventaindex.name,
//           path: '/pedidos',
//           builder: (context, state) => const PedidoVentaListPage(),
//           routes: [
//             GoRoute(
//               name: AppRoutes.pedidoventanew.name,
//               path: 'new',
//               pageBuilder: (context, state) {
//                 return MaterialPage(
//                   key: state.pageKey,
//                   fullscreenDialog: true,
//                   child: PedidoVentaEditPage(),
//                 );
//               },
//               routes: [
//                 GoRoute(
//                   name: AppRoutes.pedidoventanewsearchcliente.name,
//                   path: 'search_clientes_pedidos',
//                   builder: (context, state) =>
//                       const ClienteListaPage(isSearchClienteForFrom: true),
//                 ),
//                 GoRoute(
//                   name: AppRoutes.pedidoventanewseleccionarcantidad.name,
//                   path: 'seleccionar_cantidad',
//                   pageBuilder: (context, state) {
//                     final seleccionarCantidadParam =
//                         state.extra as SeleccionarCantidadParam;
//                     return MaterialPage(
//                       key: state.pageKey,
//                       child: SelecionarCantidadPage(
//                           seleccionarCantidadParam: seleccionarCantidadParam),
//                     );
//                   },
//                   routes: [
//                     GoRoute(
//                       name: AppRoutes.pedidoventanewsearcharticulo.name,
//                       path: 'search_articulo',
//                       builder: (context, state) => const ArticuloListaPage(
//                           isSearchArticuloForForm: true),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             GoRoute(
//               name: AppRoutes.pedidoventashow.name,
//               path: ':id',
//               pageBuilder: (context, state) {
//                 final id = state.params['id']!;
//                 final isLocal = state.extra as bool;

//                 return MaterialPage(
//                   key: state.pageKey,
//                   child: PedidoVentaDetallePage(
//                     pedidoVentaIdIsLocalParam: EntityIdIsLocalParam(
//                         id: id, isLocal: isLocal, isNew: false),
//                   ),
//                 );
//               },
//               routes: [
//                 GoRoute(
//                   name: AppRoutes.pedidoventaedit.name,
//                   path: 'edit',
//                   pageBuilder: (context, state) {
//                     final pedidoVentaId = state.params['id']!;

//                     return MaterialPage(
//                       key: state.pageKey,
//                       fullscreenDialog: true,
//                       child: PedidoVentaEditPage(id: pedidoVentaId),
//                     );
//                   },
//                   routes: [
//                     GoRoute(
//                       name: AppRoutes.pedidoventaeditseleccionarcantidad.name,
//                       path: 'seleccionar_cantidad',
//                       pageBuilder: (context, state) {
//                         final seleccionarCantidadParam =
//                             state.extra as SeleccionarCantidadParam;
//                         return MaterialPage(
//                           key: state.pageKey,
//                           child: SelecionarCantidadPage(
//                               seleccionarCantidadParam:
//                                   seleccionarCantidadParam),
//                         );
//                       },
//                       routes: [
//                         GoRoute(
//                           name: AppRoutes.pedidoventaeditsearcharticulo.name,
//                           path: 'search_articulo',
//                           builder: (context, state) => const ArticuloListaPage(
//                               isSearchArticuloForForm: true),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//         GoRoute(
//           name: AppRoutes.articuloindex.name,
//           path: '/articulos',
//           builder: (context, state) => const ArticuloListaPage(
//             isSearchArticuloForForm: false,
//           ),
//           routes: [
//             GoRoute(
//               name: AppRoutes.articuloshow.name,
//               path: ':articuloId',
//               pageBuilder: (context, state) {
//                 final articuloId = state.params['articuloId']!;
//                 return MaterialPage(
//                   key: state.pageKey,
//                   child: ArticuloDetallePage(articuloId: articuloId),
//                 );
//               },
//               routes: [
//                 GoRoute(
//                   name: AppRoutes.articulopedidoventa.name,
//                   path: 'pedidosventa',
//                   pageBuilder: (context, state) {
//                     final articuloId = state.params['articuloId']!;
//                     final description = state.extra as String;
//                     return MaterialPage(
//                       key: state.pageKey,
//                       child: ArticuloPedidoVentaPage(
//                           articuloId: articuloId, description: description),
//                     );
//                   },
//                 ),
//                 GoRoute(
//                   name: AppRoutes.articuloultimoprecio.name,
//                   path: 'ultimosprecios',
//                   pageBuilder: (context, state) {
//                     final articuloId = state.params['articuloId']!;
//                     final description = state.extra as String;

//                     return MaterialPage(
//                       key: state.pageKey,
//                       child: ArticuloUltimosPreciosPage(
//                           articuloId: articuloId, description: description),
//                     );
//                   },
//                 ),
//                 GoRoute(
//                   name: AppRoutes.articulocomponente.name,
//                   path: 'componentes',
//                   pageBuilder: (context, state) {
//                     final articuloId = state.params['articuloId']!;
//                     final description = state.extra as String;

//                     return MaterialPage(
//                       key: state.pageKey,
//                       child: ArticuloComponentePage(
//                           articuloId: articuloId, description: description),
//                     );
//                   },
//                 ),
//                 GoRoute(
//                   name: AppRoutes.articulogruponeto.name,
//                   path: 'gruposnetos',
//                   pageBuilder: (context, state) {
//                     final articuloId = state.params['articuloId']!;
//                     final description = state.extra as String;

//                     return MaterialPage(
//                       key: state.pageKey,
//                       child: ArticuloGrupoNetoPage(
//                           articuloId: articuloId, description: description),
//                     );
//                   },
//                 ),
//                 GoRoute(
//                   name: AppRoutes.articulopreciotarifa.name,
//                   path: 'preciotarifa',
//                   pageBuilder: (context, state) {
//                     final articuloId = state.params['articuloId']!;
//                     final description = state.extra as String;

//                     return MaterialPage(
//                       key: state.pageKey,
//                       child: ArticuloPrecioTarifaPage(
//                           articuloId: articuloId, description: description),
//                     );
//                   },
//                 ),
//                 GoRoute(
//                   name: AppRoutes.articulorecambio.name,
//                   path: 'recambios',
//                   pageBuilder: (context, state) {
//                     final articuloId = state.params['articuloId']!;
//                     final description = state.extra as String;

//                     return MaterialPage(
//                       key: state.pageKey,
//                       child: ArticuloRecambioPage(
//                           articuloId: articuloId, description: description),
//                     );
//                   },
//                 ),
//                 GoRoute(
//                   name: AppRoutes.articulosustitutivo.name,
//                   path: 'sustitutivos',
//                   pageBuilder: (context, state) {
//                     final articuloId = state.params['articuloId']!;
//                     final description = state.extra as String;

//                     return MaterialPage(
//                       key: state.pageKey,
//                       child: ArticuloSustitutivoPage(
//                           articuloId: articuloId, description: description),
//                     );
//                   },
//                 ),
//                 GoRoute(
//                   name: AppRoutes.articulodocumento.name,
//                   path: 'documentos',
//                   pageBuilder: (context, state) {
//                     final articuloId = state.params['articuloId']!;
//                     final description = state.extra as String;

//                     return MaterialPage(
//                       key: state.pageKey,
//                       child: ArticuloDocumentoPage(
//                           articuloId: articuloId, description: description),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ],
//         ),
//         GoRoute(
//           name: AppRoutes.visitaindex.name,
//           path: '/visita',
//           builder: (context, state) => const VisitaListaPage(),
//           routes: [
//             GoRoute(
//               name: AppRoutes.visitanew.name,
//               path: 'new',
//               pageBuilder: (context, state) => MaterialPage(
//                 key: state.pageKey,
//                 fullscreenDialog: true,
//                 child: VisitaEditPage(id: null),
//               ),
//               routes: [
//                 GoRoute(
//                   name: AppRoutes.visitanewsearchcliente.name,
//                   path: 'search_clientes_visitas',
//                   builder: (context, state) =>
//                       const ClienteListaPage(isSearchClienteForFrom: true),
//                 ),
//               ],
//             ),
//             GoRoute(
//               name: AppRoutes.visitashow.name,
//               path: ':id',
//               pageBuilder: (context, state) {
//                 final id = state.params['id']!;
//                 final isLocal = state.extra as bool;
//                 return MaterialPage(
//                   key: state.pageKey,
//                   child: VisitaDetallePage(
//                     visitaIdIsLocalParam: EntityIdIsLocalParam(
//                         id: id, isLocal: isLocal, isNew: false),
//                   ),
//                 );
//               },
//             ),
//             GoRoute(
//               name: AppRoutes.visitaedit.name,
//               path: ':id/edit',
//               pageBuilder: (context, state) {
//                 final id = state.params['id']!;

//                 return MaterialPage(
//                   fullscreenDialog: true,
//                   key: state.pageKey,
//                   child: VisitaEditPage(id: id),
//                 );
//               },
//               routes: [
//                 GoRoute(
//                   name: AppRoutes.visitaeditsearchcliente.name,
//                   path: 'search_clientes_visitas',
//                   builder: (context, state) =>
//                       const ClienteListaPage(isSearchClienteForFrom: true),
//                 ),
//               ],
//             ),
//           ],
//         ),
//         GoRoute(
//           name: AppRoutes.settings.name,
//           path: '/settings',
//           builder: (context, state) => const SettingsPage(),
//         ),
//       ];
// }

// final clienteShowRoutes = [
//   GoRoute(
//     name: AppRoutes.clienteventasmes.name,
//     path: 'ventas-mes',
//     pageBuilder: (context, state) {
//       final clienteId = state.params['clienteId']!;
//       final nombreCliente = state.extra as String?;

//       return MaterialPage(
//         key: state.pageKey,
//         child: ClienteVentasMesPage(
//             clienteId: clienteId, nombreCliente: nombreCliente),
//       );
//     },
//   ),
//   GoRoute(
//     name: AppRoutes.clienteventasarticulo.name,
//     path: 'ventas-articulo',
//     pageBuilder: (context, state) {
//       final clienteId = state.params['clienteId']!;
//       final nombreCliente = state.extra as String?;

//       return MaterialPage(
//         key: state.pageKey,
//         child: ClienteVentasArticuloPage(
//             clienteId: clienteId, nombreCliente: nombreCliente),
//       );
//     },
//   ),
//   GoRoute(
//     name: AppRoutes.clientefactpendientes.name,
//     path: 'facturas-pendientes',
//     pageBuilder: (context, state) {
//       final clienteId = state.params['clienteId']!;
//       final nombreCliente = state.extra as String?;

//       return MaterialPage(
//         key: state.pageKey,
//         child: ClientePagoPendientePage(
//             clienteId: clienteId, nombreCliente: nombreCliente),
//       );
//     },
//   ),
//   GoRoute(
//     name: AppRoutes.clientetoparticulos.name,
//     path: 'top-articulos',
//     pageBuilder: (context, state) {
//       final clienteId = state.params['clienteId']!;
//       final nombreCliente = state.extra as String?;

//       return MaterialPage(
//         key: state.pageKey,
//         child: ClienteArticulosTopListPage(
//             clienteId: clienteId, nombreCliente: nombreCliente),
//       );
//     },
//   ),
//   GoRoute(
//     name: AppRoutes.clienteadjuntos.name,
//     path: 'adjuntos',
//     pageBuilder: (context, state) {
//       final clienteId = state.params['clienteId']!;
//       final nombreCliente = state.extra as String?;

//       return MaterialPage(
//         key: state.pageKey,
//         child: ClienteAdjuntoPage(
//             clienteId: clienteId, nombreCliente: nombreCliente),
//       );
//     },
//   ),
//   GoRoute(
//     name: AppRoutes.clientecontactos.name,
//     path: 'contactos',
//     pageBuilder: (context, state) {
//       final clienteId = state.params['clienteId']!;
//       final nombreCliente = state.extra as String?;

//       return MaterialPage(
//         key: state.pageKey,
//         child: ClienteContactoPage(
//             clienteId: clienteId, nombreCliente: nombreCliente),
//       );
//     },
//   ),
//   GoRoute(
//     name: AppRoutes.clientedescuentos.name,
//     path: 'descuentos',
//     pageBuilder: (context, state) {
//       final clienteId = state.params['clienteId']!;
//       final nombreCliente = state.extra as String?;

//       return MaterialPage(
//         key: state.pageKey,
//         child: ClienteDescuentoPage(
//             clienteId: clienteId, nombreCliente: nombreCliente),
//       );
//     },
//   ),
//   GoRoute(
//     name: AppRoutes.clientedirecciones.name,
//     path: 'direcciones',
//     pageBuilder: (context, state) {
//       final clienteId = state.params['clienteId']!;
//       final nombreCliente = state.extra as String?;

//       return MaterialPage(
//         key: state.pageKey,
//         child: ClienteDireccionesPage(
//             clienteId: clienteId, nombreCliente: nombreCliente),
//       );
//     },
//   ),
//   GoRoute(
//     name: AppRoutes.clientepreciosnetos.name,
//     path: 'precios-netos',
//     pageBuilder: (context, state) {
//       final clienteId = state.params['clienteId']!;
//       final nombreCliente = state.extra as String?;

//       return MaterialPage(
//         key: state.pageKey,
//         child: ClientePrecioNetoPage(
//             clienteId: clienteId, nombreCliente: nombreCliente),
//       );
//     },
//   ),
//   GoRoute(
//     name: AppRoutes.clientegruposnetos.name,
//     path: 'grupos-netos',
//     pageBuilder: (context, state) {
//       final clienteId = state.params['clienteId']!;
//       final nombreCliente = state.extra as String?;

//       return MaterialPage(
//         key: state.pageKey,
//         child: ClienteGrupoNetoPage(
//             clienteId: clienteId, nombreCliente: nombreCliente),
//       );
//     },
//   ),
//   GoRoute(
//     name: AppRoutes.clienterappels.name,
//     path: 'rappels',
//     pageBuilder: (context, state) {
//       final clienteId = state.params['clienteId']!;
//       final nombreCliente = state.extra as String?;

//       return MaterialPage(
//         key: state.pageKey,
//         child: ClienteRappelPage(
//             clienteId: clienteId, nombreCliente: nombreCliente),
//       );
//     },
//   ),
// ];
