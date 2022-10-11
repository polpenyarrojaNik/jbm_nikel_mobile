import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_dto.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_empresa_iva_dto.dart';
import 'package:jbm_nikel_mobile/src/features/articulos/infrastructure/articulo_precio_tarifa_dto.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/infrastructure/cliente_dto.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/precio.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/infrastructure/pedido_venta_repository.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/domain/usuario.dart';
import 'package:money2/money2.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const kTestDatabaseFile = 'test/resources/jbm.sqlite';
  const kEmpresaId = 'EMPRESA01';
  final kClienteIVA0 = ClienteDTO(
    id: 'CLIENTEIVA0',
    nombreFiscal: 'CLIENTE TEST IVA0',
    nombreCliente: 'CLIENTE TEST IVA0',
    empresaId: kEmpresaId,
    iva: 0,
    tipoCalucloPrecio: 'M',
    descuentoProntoPago: 0,
    riesgoConcedidoInterno: 150000.0,
    riesgoConcedidoCoafe: 0.0,
    lastUpdated: DateTime(2022),
    latitudFiscal: 0,
    longitudFiscal: 0,
    margenAnyoActual: 0,
    margenAnyoAnterior: 0,
    margenHaceDosAnyos: 0,
    porcentajeAbonos: 0,
    porcentajeGarantias: 0,
    ventasAnyoActual: 0,
    ventasAnyoAnterior: 0,
    ventasHaceDosAnyos: 0,
  );
  final kClienteIVA21 = ClienteDTO(
    id: 'CLIENTEIVA21',
    nombreFiscal: 'CLIENTE TEST IVA21',
    nombreCliente: 'CLIENTE TEST IVA21',
    empresaId: kEmpresaId,
    iva: 21,
    tipoCalucloPrecio: 'M',
    descuentoProntoPago: 0,
    riesgoConcedidoInterno: 150000.0,
    riesgoConcedidoCoafe: 0.0,
    lastUpdated: DateTime(2022),
    latitudFiscal: 0,
    longitudFiscal: 0,
    margenAnyoActual: 0,
    margenAnyoAnterior: 0,
    margenHaceDosAnyos: 0,
    porcentajeAbonos: 0,
    porcentajeGarantias: 0,
    ventasAnyoActual: 0,
    ventasAnyoAnterior: 0,
    ventasHaceDosAnyos: 0,
  );
  final kArticulo1 = ArticuloDTO(
    id: 'ARTICULO1',
    descripcionES: 'Articulo 1',
    ventaMinimo: 1,
    ventaMultiplo: 1,
    unidadesSubcaja: 5,
    unidadesCaja: 10,
    unidadesPalet: 100,
    activoWeb: 'S',
    activoApp: 'S',
    enCatalogo: 'S',
    descatalogado: 'N',
    pesoKg: 1,
    largoCm: 10,
    anchoCm: 10,
    altoCm: 10,
    ventasActual: 0,
    ventasAnterior: 0,
    stockDisponible: 0,
    lastUpdated: DateTime(2022),
    comprasEntregaCantidad1: 0,
    comprasEntregaCantidad2: 0,
    comprasEntregaCantidad3: 0,
    comprasEntregaCantidadMas3: 0,
  );
  final kArticulo2 = ArticuloDTO(
    id: 'ARTICULO2',
    descripcionES: 'Articulo 2',
    ventaMinimo: 1,
    ventaMultiplo: 1,
    unidadesSubcaja: 5,
    unidadesCaja: 10,
    unidadesPalet: 100,
    activoWeb: 'S',
    activoApp: 'S',
    enCatalogo: 'S',
    descatalogado: 'N',
    pesoKg: 1,
    largoCm: 10,
    anchoCm: 10,
    altoCm: 10,
    stockDisponible: 0,
    ventasActual: 0,
    ventasAnterior: 0,
    lastUpdated: DateTime(2022),
    comprasEntregaCantidad1: 0,
    comprasEntregaCantidad2: 0,
    comprasEntregaCantidad3: 0,
    comprasEntregaCantidadMas3: 0,
  );

  final kArticuloEmpresaIVA4 = ArticuloEmpresaIvaDTO(
      articuloId: kArticulo1.id,
      empresaId: kEmpresaId,
      iva: 4,
      lastUpdated: DateTime(2022));
  final kArticuloEmpresaIVA21 = ArticuloEmpresaIvaDTO(
      articuloId: kArticulo2.id,
      empresaId: kEmpresaId,
      iva: 21,
      lastUpdated: DateTime(2022));

  final kTarifaArticulo1 = ArticuloPrecioTarifaDTO(
      articuloId: kArticulo1.id,
      cantidadDesde: 1,
      divisaId: 'EU',
      precio: 5,
      tarifaId: 'TAR1',
      tarifaDescripcion: 'Tarifa 1',
      tipoPrecio: 1,
      lastUpdated: DateTime(2022));

  final kTarifaArticulo10 = ArticuloPrecioTarifaDTO(
      articuloId: kArticulo1.id,
      cantidadDesde: 10,
      divisaId: 'EU',
      precio: 3,
      tarifaId: 'TAR1',
      tarifaDescripcion: 'Tarifa 1',
      tipoPrecio: 1,
      lastUpdated: DateTime(2022));

  const kUsuario = Usuario(
      id: 'TEST',
      usuario: 'TEST',
      contrasenya: '',
      provisionalToken: '',
      test: true);

  late AppDatabase db;
  late PedidoVentaRepository pedidoVentaRepository;

  setUp(() async {
    final Dio dio = Dio();
    db = AppDatabase(databaseFile: kTestDatabaseFile);
    // Setup test data
    await db.delete(db.clienteTable).go();
    await db.delete(db.articuloTable).go();
    await db.delete(db.articuloEmpresaIvaTable).go();
    await db.delete(db.articuloPrecioTarifaTable).go();

    await db.into(db.clienteTable).insert(kClienteIVA0);
    await db.into(db.clienteTable).insert(kClienteIVA21);
    await db.into(db.articuloTable).insert(kArticulo1);
    await db.into(db.articuloTable).insert(kArticulo2);
    await db.into(db.articuloEmpresaIvaTable).insert(kArticuloEmpresaIVA4);
    await db.into(db.articuloEmpresaIvaTable).insert(kArticuloEmpresaIVA21);
    await db.into(db.articuloPrecioTarifaTable).insert(kTarifaArticulo1);
    await db.into(db.articuloPrecioTarifaTable).insert(kTarifaArticulo10);
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
          articuloId: kArticuloEmpresaIVA21.articuloId,
          clienteDto: kClienteIVA21,
          fecha: DateTime(2022, 09, 30));
      expect(iva, 21);
    });
    test('getIvaLinea Cliente IVA 21, Articulo IVA 4 devuelve IVA 4', () async {
      final iva = await pedidoVentaRepository.getIvaLinea(
          articuloId: kArticuloEmpresaIVA4.articuloId,
          clienteDto: kClienteIVA21,
          fecha: DateTime(2022, 09, 30));
      expect(iva, 4);
    });
    test('getIvaLinea Cliente IVA 0, Articulo IVA 21 devuelve IVA 0', () async {
      final iva = await pedidoVentaRepository.getIvaLinea(
          articuloId: kArticuloEmpresaIVA21.articuloId,
          clienteDto: kClienteIVA0,
          fecha: DateTime(2022, 09, 30));
      expect(iva, 0);
    });

    test('getPrecioUnitario devuelve el precio unitario', () {
      expect(
          pedidoVentaRepository.getPrecioUnitario(
              precio: '1000'.parseMoney(), tipoPrecio: 1),
          '1000'.parseMoney());
      expect(
          pedidoVentaRepository.getPrecioUnitario(
              precio: '1000'.parseMoney(), tipoPrecio: 100),
          '10'.parseMoney());
      expect(
          pedidoVentaRepository.getPrecioUnitario(
              precio: '1000'.parseMoney(), tipoPrecio: 1000),
          '1'.parseMoney());
    });

    test('getPrecioTarifa devuelve el precio de la tarifa', () async {
      expect(
          await pedidoVentaRepository.getPrecioTarifa(
            articuloID: kArticulo1.id,
            tarifaId: 'TAR1',
            cantidad: 2,
          ),
          Precio(
            precio: Money.parse('5', code: 'EU'),
            tipoPrecio: 1,
          ),
          reason: 'Precio para 2 unidades incorrecto');

      expect(
          await pedidoVentaRepository.getPrecioTarifa(
            articuloID: kArticulo1.id,
            tarifaId: 'TAR1',
            cantidad: 15,
          ),
          Precio(
            precio: Money.parse('3', code: 'EU'),
            tipoPrecio: 1,
          ),
          reason: 'Precio para 15 unidades incorrecto');
    });
  });
}
