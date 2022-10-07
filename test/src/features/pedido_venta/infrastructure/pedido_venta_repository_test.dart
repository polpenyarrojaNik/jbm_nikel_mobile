import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_dto.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/infrastructure/pedido_venta_repository.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/domain/usuario.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const kTestDatabaseFile = 'test/resources/jbm.sqlite';
  final kClienteIVA0 = ClienteDTO(
    id: '7278',
    nombreFiscal: 'FERMEC, S.R.L.',
    empresaId: '01',
    iva: 0,
    tipoCalucloPrecio: 'U',
    descuentoProntoPago: 0,
    riesgoConcedidoInterno: 150000.0,
    riesgoConcedidoCoafe: 150000.0,
    lastUpdated: DateTime(2022),
  );
  final kClienteIVA21 = ClienteDTO(
    id: '22035',
    nombreFiscal: 'ALMACENES CANDUCHO SL',
    empresaId: '01',
    iva: 21,
    tipoCalucloPrecio: 'U',
    descuentoProntoPago: 0,
    riesgoConcedidoInterno: 150000.0,
    riesgoConcedidoCoafe: 150000.0,
    lastUpdated: DateTime(2022),
  );
  const kArticuloIdIVA21 = '22216';
  const kArticuloIdIVA4 = '53907';
  const kUsuario = Usuario(
      id: '071',
      usuario: 'AHG',
      contrasenya: '',
      provisionalToken: '',
      test: true);

  late AppDatabase db;
  late PedidoVentaRepository pedidoVentaRepository;

  setUp(() async {
    final Dio dio = Dio();
    db = AppDatabase(databaseFile: kTestDatabaseFile);
    pedidoVentaRepository = PedidoVentaRepository(
      db,
      dio,
      kUsuario,
    );
  });

  tearDown(() async {
    await db.close();
  });

  group('photoGearRepository', () {
    test('getIvaLinea Cliente IVA 21, Articulo IVA 21 devuelve IVA 21',
        () async {
      final iva = await pedidoVentaRepository.getIvaLinea(
          articuloId: kArticuloIdIVA21,
          clienteDto: kClienteIVA21,
          fecha: DateTime(2022, 09, 30));
      expect(iva, 21);
    });
    test('getIvaLinea Cliente IVA 21, Articulo IVA 4 devuelve IVA 4', () async {
      final iva = await pedidoVentaRepository.getIvaLinea(
          articuloId: kArticuloIdIVA4,
          clienteDto: kClienteIVA21,
          fecha: DateTime(2022, 09, 30));
      expect(iva, 4);
    });
    test('getIvaLinea Cliente IVA 0, Articulo IVA 21 devuelve IVA 0', () async {
      final iva = await pedidoVentaRepository.getIvaLinea(
          articuloId: kArticuloIdIVA21,
          clienteDto: kClienteIVA0,
          fecha: DateTime(2022, 09, 30));
      expect(iva, 0);
    });
  });
}
