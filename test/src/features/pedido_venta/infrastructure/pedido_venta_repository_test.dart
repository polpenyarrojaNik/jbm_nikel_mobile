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
    db = AppDatabase(test: true);
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
    group('getIvaLinea', () {
      test('getIvaLinea Cliente IVA 21, Articulo IVA 21 devuelve IVA 21',
          () async {
        final clienteDTO = kClienteDTO.copyWith(iva: 21);
        await db.into(db.articuloTable).insert(kArticuloDTO);
        await db
            .into(db.articuloEmpresaIvaTable)
            .insert(kArticuloEmpresaIvaDTO.copyWith(iva: 21));
        await db.into(db.clienteTable).insert(clienteDTO);

        final iva = await pedidoVentaRepository.getIvaClienteArticulo(
          articuloId: kArticuloId,
          clienteDto: clienteDTO,
        );
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

        final iva = await pedidoVentaRepository.getIvaClienteArticulo(
          articuloId: kArticuloId,
          clienteDto: clienteDTO,
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

        final iva = await pedidoVentaRepository.getIvaClienteArticulo(
          articuloId: kArticuloId,
          clienteDto: clienteDTO,
        );
        expect(iva, 0);
      });
    });

    test('getPrecioUnitario devuelve el precio unitario', () {
      expect(
          pedidoVentaRepository.getPrecioUnitario(
              precio: '1000'.toMoney(), tipoPrecio: 1),
          '1000'.toMoney());
      expect(
          pedidoVentaRepository.getPrecioUnitario(
              precio: '1000'.toMoney(), tipoPrecio: 100),
          '10'.toMoney());
      expect(
          pedidoVentaRepository.getPrecioUnitario(
              precio: '1000'.toMoney(), tipoPrecio: 1000),
          '1'.toMoney());
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
            articuloId: kArticuloId,
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
            articuloId: kArticuloId,
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
            articuloId: kArticuloId,
            tarifaId: kTarifaId,
            cantidad: 0,
          ),
          Precio(
            precio: Money.parse('0', code: 'EU'),
            tipoPrecio: 1,
          ),
          reason: 'Precio para 0 unidades debe ser 0€');
    });

    group('getPrecioGrupoNeto', () {
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
          articuloId: kArticuloId,
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
              precio: 300,
              tipoPrecio: 100,
            ));

        final precioGrupoNeto = await pedidoVentaRepository.getPrecioGrupoNeto(
          clienteId: kClienteId,
          articuloId: kArticuloId,
          cantidad: 20,
        );

        expect(
            precioGrupoNeto,
            Precio(
              precio: Money.parse('300', code: 'EU'),
              tipoPrecio: 100,
            ),
            reason: 'Precio para 20 unidads debe ser 3€');
      });
    });

    test('getPrecioClienteNeto devuelve el precio neto del cliente más bajo',
        () async {
      await db.into(db.clienteTable).insert(kClienteDTO);
      await db
          .into(db.clientePrecioNetoTable)
          .insert(kClientePrecioNetoDTO.copyWith(
            cantidadDesde: 1,
            precio: 15,
          ));
      await db
          .into(db.clientePrecioNetoTable)
          .insert(kClientePrecioNetoDTO.copyWith(
            cantidadDesde: 10,
            precio: 5,
          ));

      final precioGrupoNeto20 =
          await pedidoVentaRepository.getPrecioClienteNeto(
        clienteId: kClienteId,
        articuloId: kArticuloId,
        cantidad: 20,
      );

      expect(
          precioGrupoNeto20,
          Precio(
            precio: Money.parse('5', code: 'EU'),
            tipoPrecio: 1,
          ),
          reason: 'Precio para 20 unidads debe ser 5€');

      final precioGrupoNeto7 = await pedidoVentaRepository.getPrecioClienteNeto(
        clienteId: kClienteId,
        articuloId: kArticuloId,
        cantidad: 7,
      );

      expect(
          precioGrupoNeto7,
          Precio(
            precio: Money.parse('15', code: 'EU'),
            tipoPrecio: 1,
          ),
          reason: 'Precio para 7 unidades debe ser 15€');
    });
    group('getDescuentoGeneral', () {
      setUp(() async {
        await db
            .into(db.descuentoGeneralTable)
            .insert(kDescuentoGeneralDTO.copyWith(
              articuloId: kArticuloId,
              familiaId: kFamiliaId,
              subfamiliaId: kSubfamiliaId,
              cantidadDesde: 1,
              descuento: 1,
            ));

        await db
            .into(db.descuentoGeneralTable)
            .insert(kDescuentoGeneralDTO.copyWith(
              articuloId: kArticuloId,
              familiaId: kFamiliaId,
              subfamiliaId: '*',
              cantidadDesde: 1,
              descuento: 2,
            ));

        await db
            .into(db.descuentoGeneralTable)
            .insert(kDescuentoGeneralDTO.copyWith(
              articuloId: '*',
              familiaId: kFamiliaId,
              subfamiliaId: kSubfamiliaId,
              cantidadDesde: 1,
              descuento: 3,
            ));

        await db
            .into(db.descuentoGeneralTable)
            .insert(kDescuentoGeneralDTO.copyWith(
              articuloId: kArticuloId,
              familiaId: '*',
              subfamiliaId: kSubfamiliaId,
              cantidadDesde: 1,
              descuento: 4,
            ));

        await db
            .into(db.descuentoGeneralTable)
            .insert(kDescuentoGeneralDTO.copyWith(
              articuloId: kArticuloId,
              familiaId: '*',
              subfamiliaId: '*',
              cantidadDesde: 1,
              descuento: 5,
            ));

        await db
            .into(db.descuentoGeneralTable)
            .insert(kDescuentoGeneralDTO.copyWith(
              articuloId: '*',
              familiaId: '*',
              subfamiliaId: kSubfamiliaId,
              cantidadDesde: 1,
              descuento: 6,
            ));

        await db
            .into(db.descuentoGeneralTable)
            .insert(kDescuentoGeneralDTO.copyWith(
              articuloId: '*',
              familiaId: kFamiliaId,
              subfamiliaId: '*',
              cantidadDesde: 1,
              descuento: 7,
            ));

        await db
            .into(db.descuentoGeneralTable)
            .insert(kDescuentoGeneralDTO.copyWith(
              articuloId: '*',
              familiaId: '*',
              subfamiliaId: '*',
              cantidadDesde: 1,
              descuento: 8,
            ));
      });

      test(
          'getDescuentoGeneral PARAM: codigoDescuento, articulo; DATOS: articulo X, familia X, subfamilia X',
          () async {
        await db.into(db.articuloTable).insert(kArticuloDTO.copyWith(
              id: kArticuloId,
              familiaId: kFamiliaId,
              subfamiliaId: kSubfamiliaId,
            ));

        final descuento = await pedidoVentaRepository.getDescuentoGeneral(
          articuloId: kArticuloId,
          descuentoGeneralId: kDescuentoGeneralId,
          cantidad: 1,
        );

        expect(descuento, 1.0);
      });
      test(
          'getDescuentoGeneral PARAM: codigoDescuento, articulo; DATOS: articulo X, familia X, subfamilia *',
          () async {
        await db.into(db.articuloTable).insert(kArticuloDTO.copyWith(
              id: kArticuloId,
              familiaId: kFamiliaId,
              subfamiliaId: '-',
            ));

        final descuento = await pedidoVentaRepository.getDescuentoGeneral(
          articuloId: kArticuloId,
          descuentoGeneralId: kDescuentoGeneralId,
          cantidad: 1,
        );

        expect(descuento, 2.0);
      });

      test(
          'getDescuentoGeneral PARAM: codigoDescuento, articulo; DATOS: articulo X, familia *, subfamilia *',
          () async {
        await db.into(db.articuloTable).insert(kArticuloDTO.copyWith(
              id: '-',
              familiaId: kFamiliaId,
              subfamiliaId: kSubfamiliaId,
            ));

        final descuento = await pedidoVentaRepository.getDescuentoGeneral(
          articuloId: '-',
          descuentoGeneralId: kDescuentoGeneralId,
          cantidad: 1,
        );

        expect(descuento, 3.0);
      });
      test(
          'getDescuentoGeneral PARAM: codigoDescuento, articulo; DATOS: articulo X, familia *, subfamilia X',
          () async {
        await db.into(db.articuloTable).insert(kArticuloDTO.copyWith(
              id: kArticuloId,
              familiaId: '-',
              subfamiliaId: kSubfamiliaId,
            ));

        final descuento = await pedidoVentaRepository.getDescuentoGeneral(
          articuloId: kArticuloId,
          descuentoGeneralId: kDescuentoGeneralId,
          cantidad: 1,
        );

        expect(descuento, 4.0);
      });
      test(
          'getDescuentoGeneral PARAM: codigoDescuento, articulo; DATOS: articulo X, familia *, subfamilia *',
          () async {
        await db.into(db.articuloTable).insert(kArticuloDTO.copyWith(
              id: kArticuloId,
              familiaId: '-',
              subfamiliaId: '-',
            ));

        final descuento = await pedidoVentaRepository.getDescuentoGeneral(
          articuloId: kArticuloId,
          descuentoGeneralId: kDescuentoGeneralId,
          cantidad: 1,
        );

        expect(descuento, 5.0);
      });
      test(
          'getDescuentoGeneral PARAM: codigoDescuento, articulo; DATOS: articulo *, familia *, subfamilia X',
          () async {
        await db.into(db.articuloTable).insert(kArticuloDTO.copyWith(
              id: '-',
              familiaId: '-',
              subfamiliaId: kSubfamiliaId,
            ));

        final descuento = await pedidoVentaRepository.getDescuentoGeneral(
          articuloId: '-',
          descuentoGeneralId: kDescuentoGeneralId,
          cantidad: 1,
        );

        expect(descuento, 6.0);
      });
      test(
          'getDescuentoGeneral PARAM: codigoDescuento, articulo; DATOS: articulo *, familia X, subfamilia *',
          () async {
        await db.into(db.articuloTable).insert(kArticuloDTO.copyWith(
              id: '-',
              familiaId: kFamiliaId,
              subfamiliaId: '-',
            ));

        final descuento = await pedidoVentaRepository.getDescuentoGeneral(
          articuloId: '-',
          descuentoGeneralId: kDescuentoGeneralId,
          cantidad: 1,
        );

        expect(descuento, 7.0);
      });
      test(
          'getDescuentoGeneral PARAM: codigoDescuento; DATOS: articulo *, familia *, subfamilia *',
          () async {
        await db.into(db.articuloTable).insert(kArticuloDTO.copyWith(
              id: '-',
              familiaId: '-',
              subfamiliaId: '-',
            ));

        final descuento = await pedidoVentaRepository.getDescuentoGeneral(
          articuloId: kArticuloId,
          descuentoGeneralId: kDescuentoGeneralId,
          cantidad: 1,
        );

        expect(descuento, 8.0);
      });
    });

    group('getDescuentoCliente', () {
      setUp(() async {
        await db.into(db.clienteTable).insert(kClienteDTO);

        await db
            .into(db.clienteDescuentoTable)
            .insert(kClienteDescuentoDTO.copyWith(
              articuloId: kArticuloId,
              familiaId: kFamiliaId,
              subfamiliaId: kSubfamiliaId,
              descuento: 1,
            ));
        await db
            .into(db.clienteDescuentoTable)
            .insert(kClienteDescuentoDTO.copyWith(
              articuloId: kArticuloId,
              familiaId: kFamiliaId,
              subfamiliaId: '*',
              descuento: 2,
            ));
        await db
            .into(db.clienteDescuentoTable)
            .insert(kClienteDescuentoDTO.copyWith(
              articuloId: '*',
              familiaId: kFamiliaId,
              subfamiliaId: kSubfamiliaId,
              descuento: 3,
            ));
        await db
            .into(db.clienteDescuentoTable)
            .insert(kClienteDescuentoDTO.copyWith(
              articuloId: kArticuloId,
              familiaId: '*',
              subfamiliaId: kSubfamiliaId,
              descuento: 4,
            ));
        await db
            .into(db.clienteDescuentoTable)
            .insert(kClienteDescuentoDTO.copyWith(
              articuloId: kArticuloId,
              familiaId: '*',
              subfamiliaId: '*',
              descuento: 5,
            ));
        await db
            .into(db.clienteDescuentoTable)
            .insert(kClienteDescuentoDTO.copyWith(
              articuloId: '*',
              familiaId: '*',
              subfamiliaId: kSubfamiliaId,
              descuento: 6,
            ));
        await db
            .into(db.clienteDescuentoTable)
            .insert(kClienteDescuentoDTO.copyWith(
              articuloId: '*',
              familiaId: kFamiliaId,
              subfamiliaId: '*',
              descuento: 7,
            ));
        await db
            .into(db.clienteDescuentoTable)
            .insert(kClienteDescuentoDTO.copyWith(
              articuloId: '*',
              familiaId: '*',
              subfamiliaId: '*',
              descuento: 8,
            ));
      });
      test(
          'getDescuentoCliente 1 PARAM: clienteId, articuloId; DATOS: articulo X, familia X, subfamilia X',
          () async {
        await db.into(db.articuloTable).insert(kArticuloDTO.copyWith(
              id: kArticuloId,
              familiaId: kFamiliaId,
              subfamiliaId: kSubfamiliaId,
            ));
        final descuento = await pedidoVentaRepository.getDescuentoCliente(
          articuloId: kArticuloId,
          clienteId: kClienteId,
          cantidad: 1,
        );

        expect(descuento, 1.0);
      });
      test(
          'getDescuentoCliente 2 PARAM: clienteId, articuloId; DATOS: articulo X, familia X, subfamilia *',
          () async {
        await db.into(db.articuloTable).insert(kArticuloDTO.copyWith(
              id: kArticuloId,
              familiaId: kFamiliaId,
              subfamiliaId: '-',
            ));

        final descuento = await pedidoVentaRepository.getDescuentoCliente(
          articuloId: kArticuloId,
          clienteId: kClienteId,
          cantidad: 1,
        );

        expect(descuento, 2.0);
      });
      test(
          'getDescuentoCliente 3 PARAM: clienteId, articuloId; DATOS: articulo *, familia X, subfamilia X',
          () async {
        await db.into(db.articuloTable).insert(kArticuloDTO.copyWith(
              id: '-',
              familiaId: kFamiliaId,
              subfamiliaId: kSubfamiliaId,
            ));

        final descuento = await pedidoVentaRepository.getDescuentoCliente(
          articuloId: '-',
          clienteId: kClienteId,
          cantidad: 1,
        );

        expect(descuento, 3.0);
      });
      test(
          'getDescuentoCliente 4 PARAM: clienteId, articuloId; DATOS: articulo X, familia *, subfamilia X',
          () async {
        await db.into(db.articuloTable).insert(kArticuloDTO.copyWith(
              id: kArticuloId,
              familiaId: '-',
              subfamiliaId: kSubfamiliaId,
            ));

        final descuento = await pedidoVentaRepository.getDescuentoCliente(
          articuloId: kArticuloId,
          clienteId: kClienteId,
          cantidad: 1,
        );

        expect(descuento, 4.0);
      });
      test(
          'getDescuentoCliente 5 PARAM: clienteId, articuloId; DATOS: articulo X, familia *, subfamilia *',
          () async {
        await db.into(db.articuloTable).insert(kArticuloDTO.copyWith(
              id: kArticuloId,
              familiaId: '-',
              subfamiliaId: '-',
            ));

        final descuento = await pedidoVentaRepository.getDescuentoCliente(
          articuloId: kArticuloId,
          clienteId: kClienteId,
          cantidad: 1,
        );

        expect(descuento, 5.0);
      });
      test(
          'getDescuentoCliente 6 PARAM: clienteId, articuloId; DATOS: articulo *, familia *, subfamilia X',
          () async {
        await db.into(db.articuloTable).insert(kArticuloDTO.copyWith(
              id: '-',
              familiaId: '-',
              subfamiliaId: kSubfamiliaId,
            ));

        final descuento = await pedidoVentaRepository.getDescuentoCliente(
          articuloId: '-',
          clienteId: kClienteId,
          cantidad: 1,
        );

        expect(descuento, 6.0);
      });
      test(
          'getDescuentoCliente 7 PARAM: clienteId, articuloId; DATOS: articulo *, familia X, subfamilia *',
          () async {
        await db.into(db.articuloTable).insert(kArticuloDTO.copyWith(
              id: '-',
              familiaId: kFamiliaId,
              subfamiliaId: '-',
            ));

        final descuento = await pedidoVentaRepository.getDescuentoCliente(
          articuloId: '-',
          clienteId: kClienteId,
          cantidad: 1,
        );

        expect(descuento, 7.0);
      });
      test(
          'getDescuentoCliente 8 PARAM: clienteId, articuloId; DATOS: articulo *, familia *, subfamilia *',
          () async {
        await db.into(db.articuloTable).insert(kArticuloDTO.copyWith(
              id: '-',
              familiaId: '-',
              subfamiliaId: '-',
            ));

        final descuento = await pedidoVentaRepository.getDescuentoCliente(
          articuloId: '-',
          clienteId: kClienteId,
          cantidad: 1,
        );

        expect(descuento, 8.0);
      });
    });
  });
}
