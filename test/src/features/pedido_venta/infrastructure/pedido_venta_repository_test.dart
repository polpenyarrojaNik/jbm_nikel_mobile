import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/precio.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/infrastructure/pedido_venta_repository.dart';
import 'package:money2/money2.dart';

import '../../../../resources/test_constants.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

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
    await db.delete(db.clienteTable).go();
    await db.delete(db.articuloTable).go();
    await db.delete(db.articuloEmpresaIvaTable).go();
    await db.delete(db.articuloPrecioTarifaTable).go();
    await db.delete(db.clienteGrupoNetoTable).go();
    await db.delete(db.articuloGrupoNetoTable).go();
    await db.close();
  });

  group('photoGearRepository', () {
    group('getIvaLinea', () {
      test('getIvaLinea Cliente IVA 21, Articulo IVA 21 devuelve IVA 21',
          () async {
        final clienteDTO = kClienteDTO.copyWith(iva: 21);
        await db.into(db.articuloTable).insert(kArticuloDTO);
        await db
            .into(db.articuloEmpresaIvaTable)
            .insert(kArticuloEmpresaIvaDTO.copyWith(iva: 21));
        await db.into(db.clienteTable).insert(clienteDTO);

        final iva = await pedidoVentaRepository.getIvaLinea(
            articuloId: kArticuloId,
            clienteDto: clienteDTO,
            fecha: DateTime(2022, 09, 30));
        expect(iva, 21);
      });
      test('getIvaLinea Cliente IVA 21, Articulo IVA 4 devuelve IVA 4',
          () async {
        final clienteDTO = kClienteDTO.copyWith(iva: 21);

        await db.into(db.articuloTable).insert(kArticuloDTO);
        await db
            .into(db.articuloEmpresaIvaTable)
            .insert(kArticuloEmpresaIvaDTO.copyWith(iva: 4));
        await db.into(db.clienteTable).insert(clienteDTO);

        final iva = await pedidoVentaRepository.getIvaLinea(
          articuloId: kArticuloId,
          clienteDto: clienteDTO,
          fecha: kDateTime,
        );
        expect(iva, 4);
      });
      test('getIvaLinea Cliente IVA 0, Articulo IVA 21 devuelve IVA 0',
          () async {
        final clienteDTO = kClienteDTO.copyWith(iva: 0);

        await db.into(db.articuloTable).insert(kArticuloDTO);
        await db
            .into(db.articuloEmpresaIvaTable)
            .insert(kArticuloEmpresaIvaDTO.copyWith(iva: 21));
        await db.into(db.clienteTable).insert(clienteDTO);

        final iva = await pedidoVentaRepository.getIvaLinea(
          articuloId: kArticuloId,
          clienteDto: clienteDTO,
          fecha: kDateTime,
        );
        expect(iva, 0);
      });
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
      await db
          .into(db.articuloPrecioTarifaTable)
          .insert(kArticuloPrecioTarifaDTO.copyWith(
            cantidadDesde: 1,
            precio: 5,
          ));
      await db
          .into(db.articuloPrecioTarifaTable)
          .insert(kArticuloPrecioTarifaDTO.copyWith(
            cantidadDesde: 10,
            precio: 15,
          ));

      expect(
          await pedidoVentaRepository.getPrecioTarifa(
            articuloID: kArticuloId,
            tarifaId: kTarifaId,
            cantidad: 2,
          ),
          Precio(
            precio: Money.parse('5', code: 'EU'),
            tipoPrecio: 1,
          ),
          reason: 'Precio para 2 unidades debe ser 5€');

      expect(
          await pedidoVentaRepository.getPrecioTarifa(
            articuloID: kArticuloId,
            tarifaId: kTarifaId,
            cantidad: 10,
          ),
          Precio(
            precio: Money.parse('15', code: 'EU'),
            tipoPrecio: 1,
          ),
          reason: 'Precio para 10 unidades debe ser 15€');

      expect(
          await pedidoVentaRepository.getPrecioTarifa(
            articuloID: kArticuloId,
            tarifaId: kTarifaId,
            cantidad: 0,
          ),
          Precio(
            precio: Money.parse('0', code: 'EU'),
            tipoPrecio: 1,
          ),
          reason: 'Precio para 0 unidades debe ser 0€');
    });

    test('getPrecioGrupoNeto devuelve el precio neto escalado precio',
        () async {
      await db.into(db.clienteTable).insert(kClienteDTO);
      await db.into(db.clienteGrupoNetoTable).insert(kClienteGrupoNetoDTO);
      await db
          .into(db.clienteGrupoNetoTable)
          .insert(kClienteGrupoNetoDTO.copyWith(grupoNetoId: 'GN02'));
      await db
          .into(db.articuloGrupoNetoTable)
          .insert(kArticuloGrupoNetoDTO.copyWith(
            cantidadDesde: 1,
            precio: 5,
          ));
      await db
          .into(db.articuloGrupoNetoTable)
          .insert(kArticuloGrupoNetoDTO.copyWith(
            cantidadDesde: 10,
            precio: 15,
          ));

      final precioGrupoNeto = await pedidoVentaRepository.getPrecioGrupoNeto(
        clienteId: kClienteId,
        aticuloId: kArticuloId,
        cantidad: 1,
      );

      expect(
          precioGrupoNeto,
          Precio(
            precio: Money.parse('5', code: 'EU'),
            tipoPrecio: 1,
          ),
          reason: 'Precio para 1 unidads debe ser 5€');
    });

    test(
        'getPrecioGrupoNeto devuelve el precio neto más bajo de todas las tarifas',
        () async {
      await db.into(db.clienteTable).insert(kClienteDTO);
      await db.into(db.clienteGrupoNetoTable).insert(kClienteGrupoNetoDTO);
      await db
          .into(db.clienteGrupoNetoTable)
          .insert(kClienteGrupoNetoDTO.copyWith(grupoNetoId: 'GN02'));
      await db
          .into(db.articuloGrupoNetoTable)
          .insert(kArticuloGrupoNetoDTO.copyWith(
            cantidadDesde: 1,
            precio: 5,
          ));
      await db
          .into(db.articuloGrupoNetoTable)
          .insert(kArticuloGrupoNetoDTO.copyWith(
            cantidadDesde: 10,
            precio: 15,
          ));

      await db
          .into(db.articuloGrupoNetoTable)
          .insert(kArticuloGrupoNetoDTO.copyWith(
            grupoNetoId: 'GN02',
            cantidadDesde: 1,
            precio: 3,
          ));

      final precioGrupoNeto = await pedidoVentaRepository.getPrecioGrupoNeto(
        clienteId: kClienteId,
        aticuloId: kArticuloId,
        cantidad: 1,
      );

      expect(
          precioGrupoNeto,
          Precio(
            precio: Money.parse('3', code: 'EU'),
            tipoPrecio: 1,
          ),
          reason: 'Precio para 1 unidads debe ser 5€');
    });
  });
}
