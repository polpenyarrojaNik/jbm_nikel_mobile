import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jbm_nikel_mobile/src/core/domain/articulo_precio.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/precio.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/infrastructure/pedido_venta_repository.dart';

import '../../../../resources/test_constants.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late AppDatabase db;
  late PedidoVentaRepository pedidoVentaRepository;

  setUp(() async {
    final Dio dio = Dio();
    db = AppDatabase.test();
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
    group('getArticuloPrecio', () {
      setUp(() async {
        // Clientes
        await db.into(db.clienteTable).insert(kClienteDTO.copyWith(
              id: 'CLI-MEJOR',
              tipoCalculoPrecio: 'M',
              tarifaId: kTarifaId,
              descuentoGeneralId: kDescuentoGeneralId,
            ));
        await db.into(db.clienteTable).insert(kClienteDTO.copyWith(
              id: 'CLI-NETO',
              tipoCalculoPrecio: 'N',
              tarifaId: kTarifaId,
              descuentoGeneralId: kDescuentoGeneralId,
            ));
        // Articulos
        await db.into(db.articuloTable).insert(kArticuloDTO);
        // IVA
        await db
            .into(db.articuloEmpresaIvaTable)
            .insert(kArticuloEmpresaIvaDTO);
      });
      test('Precio 0 si no existe cliente', () async {
        expect(
          await pedidoVentaRepository.getArticuloPrecio(
            articuloId: kArticuloId,
            clienteId: 'NOEXISTE',
            cantidad: 1,
          ),
          kArticuloPrecio0,
        );
      });

      test('Tarifa con descuento general', () async {
        // Precio Tarifa 100€
        await db
            .into(db.articuloPrecioTarifaTable)
            .insert(kArticuloPrecioTarifaDTO.copyWith(
              cantidadDesde: 1,
              precio: 100,
            ));

        // Descuento general 10% todos los articulos
        await db
            .into(db.descuentoGeneralTable)
            .insert(kDescuentoGeneralDTO.copyWith(
              descuentoGeneralId: kDescuentoGeneralId,
              articuloId: '*',
              familiaId: '*',
              subfamiliaId: '*',
              cantidadDesde: 1,
              descuento: 10,
            ));

        // Descuento general 5% articulo concreto. Debe aplicar este
        await db
            .into(db.descuentoGeneralTable)
            .insert(kDescuentoGeneralDTO.copyWith(
              articuloId: kArticuloId,
              familiaId: '*',
              subfamiliaId: '*',
              cantidadDesde: 1,
              descuento: 5,
            ));

        expect(
          await pedidoVentaRepository.getArticuloPrecio(
            articuloId: kArticuloId,
            clienteId: 'CLI-MEJOR',
            cantidad: 1,
          ),
          ArticuloPrecio(
            precio: Precio(
              precio: 100.toMoney(),
              tipoPrecio: 1,
            ),
            divisaId: kDivisaId,
            descuento1: 5,
            descuento2: 0,
            descuento3: 0,
            iva: 21,
          ),
        );
      });

      test('Tarifa con descuento cliente', () async {
        // Precio Tarifa 100€
        await db
            .into(db.articuloPrecioTarifaTable)
            .insert(kArticuloPrecioTarifaDTO.copyWith(
              cantidadDesde: 1,
              precio: 100,
            ));

        // Descuento general 10% todos los articulos
        await db
            .into(db.clienteDescuentoTable)
            .insert(kClienteDescuentoDTO.copyWith(
              clienteId: 'CLI-MEJOR',
              articuloId: '*',
              familiaId: '*',
              subfamiliaId: '*',
              cantidadDesde: 1,
              descuento: 10,
            ));

        // Descuento general 5% articulo concreto. Debe aplicar este
        await db
            .into(db.clienteDescuentoTable)
            .insert(kClienteDescuentoDTO.copyWith(
              clienteId: 'CLI-MEJOR',
              articuloId: kArticuloId,
              familiaId: '*',
              subfamiliaId: '*',
              cantidadDesde: 1,
              descuento: 5,
            ));

        expect(
          await pedidoVentaRepository.getArticuloPrecio(
            articuloId: kArticuloId,
            clienteId: 'CLI-MEJOR',
            cantidad: 1,
          ),
          ArticuloPrecio(
            precio: Precio(
              precio: 100.toMoney(),
              tipoPrecio: 1,
            ),
            divisaId: kDivisaId,
            descuento1: 5,
            descuento2: 0,
            descuento3: 0,
            iva: 21,
          ),
        );
      });

      test('Precio Neto', () async {
        await db
            .into(db.clientePrecioNetoTable)
            .insert(kClientePrecioNetoDTO.copyWith(
              clienteId: 'CLI-MEJOR',
              cantidadDesde: 1,
              precio: 100,
            ));

        expect(
          await pedidoVentaRepository.getArticuloPrecio(
            articuloId: kArticuloId,
            clienteId: 'CLI-MEJOR',
            cantidad: 1,
          ),
          ArticuloPrecio(
            precio: Precio(
              precio: 100.toMoney(),
              tipoPrecio: 1,
            ),
            divisaId: kDivisaId,
            descuento1: 0,
            descuento2: 0,
            descuento3: 0,
            iva: 21,
          ),
        );
      });

      test('Precio Grupo Neto', () async {
        await db
            .into(db.articuloGrupoNetoTable)
            .insert(kArticuloGrupoNetoDTO.copyWith(
              cantidadDesde: 1,
              precio: 100,
            ));

        await db
            .into(db.clienteGrupoNetoTable)
            .insert(kClienteGrupoNetoDTO.copyWith(
              clienteId: 'CLI-MEJOR',
            ));

        expect(
          await pedidoVentaRepository.getArticuloPrecio(
            articuloId: kArticuloId,
            clienteId: 'CLI-MEJOR',
            cantidad: 1,
          ),
          ArticuloPrecio(
            precio: Precio(
              precio: 100.toMoney(),
              tipoPrecio: 1,
            ),
            divisaId: kDivisaId,
            descuento1: 0,
            descuento2: 0,
            descuento3: 0,
            iva: 21,
          ),
        );
      });

      test('Mejor Precio', () async {
        // Precio Tarifa 100€
        await db
            .into(db.articuloPrecioTarifaTable)
            .insert(kArticuloPrecioTarifaDTO.copyWith(
              cantidadDesde: 1,
              precio: 100,
            ));

        // Descuento cliente 50% todos los articulos
        await db
            .into(db.clienteDescuentoTable)
            .insert(kClienteDescuentoDTO.copyWith(
              clienteId: 'CLI-MEJOR',
              articuloId: '*',
              familiaId: '*',
              subfamiliaId: '*',
              cantidadDesde: 1,
              descuento: 50,
            ));

        // Descuento general 10% todos los articulos
        await db
            .into(db.descuentoGeneralTable)
            .insert(kDescuentoGeneralDTO.copyWith(
              descuentoGeneralId: kDescuentoGeneralId,
              articuloId: '*',
              familiaId: '*',
              subfamiliaId: '*',
              cantidadDesde: 1,
              descuento: 20,
            ));

        // Grupo Neto 100€
        await db
            .into(db.articuloGrupoNetoTable)
            .insert(kArticuloGrupoNetoDTO.copyWith(
              cantidadDesde: 1,
              precio: 90,
            ));

        await db
            .into(db.clienteGrupoNetoTable)
            .insert(kClienteGrupoNetoDTO.copyWith(
              clienteId: 'CLI-MEJOR',
            ));

        // Precio Neto 50€
        await db
            .into(db.clientePrecioNetoTable)
            .insert(kClientePrecioNetoDTO.copyWith(
              clienteId: 'CLI-MEJOR',
              cantidadDesde: 1,
              precio: 75,
            ));

        expect(
          await pedidoVentaRepository.getArticuloPrecio(
            articuloId: kArticuloId,
            clienteId: 'CLI-MEJOR',
            cantidad: 1,
          ),
          ArticuloPrecio(
            precio: Precio(
              precio: 100.toMoney(),
              tipoPrecio: 1,
            ),
            divisaId: kDivisaId,
            descuento1: 50,
            descuento2: 0,
            descuento3: 0,
            iva: 21,
          ),
        );
      });

      test('Mejor Neto Precio', () async {
        // Precio Tarifa 100€
        await db
            .into(db.articuloPrecioTarifaTable)
            .insert(kArticuloPrecioTarifaDTO.copyWith(
              cantidadDesde: 1,
              precio: 100,
            ));

        // Descuento cliente 50% todos los articulos
        await db
            .into(db.clienteDescuentoTable)
            .insert(kClienteDescuentoDTO.copyWith(
              clienteId: 'CLI-NETO',
              articuloId: '*',
              familiaId: '*',
              subfamiliaId: '*',
              cantidadDesde: 1,
              descuento: 50,
            ));

        // Descuento general 10% todos los articulos
        await db
            .into(db.descuentoGeneralTable)
            .insert(kDescuentoGeneralDTO.copyWith(
              descuentoGeneralId: kDescuentoGeneralId,
              articuloId: '*',
              familiaId: '*',
              subfamiliaId: '*',
              cantidadDesde: 1,
              descuento: 20,
            ));

        // Grupo Neto 100€
        await db
            .into(db.articuloGrupoNetoTable)
            .insert(kArticuloGrupoNetoDTO.copyWith(
              cantidadDesde: 1,
              precio: 90,
            ));

        await db
            .into(db.clienteGrupoNetoTable)
            .insert(kClienteGrupoNetoDTO.copyWith(
              clienteId: 'CLI-NETO',
            ));

        // Precio Neto 50€
        await db
            .into(db.clientePrecioNetoTable)
            .insert(kClientePrecioNetoDTO.copyWith(
              clienteId: 'CLI-NETO',
              cantidadDesde: 1,
              precio: 75,
            ));

        expect(
          await pedidoVentaRepository.getArticuloPrecio(
            articuloId: kArticuloId,
            clienteId: 'CLI-NETO',
            cantidad: 1,
          ),
          ArticuloPrecio(
            precio: Precio(
              precio: 75.toMoney(),
              tipoPrecio: 1,
            ),
            divisaId: kDivisaId,
            descuento1: 0,
            descuento2: 0,
            descuento3: 0,
            iva: 21,
          ),
        );
      });
    });

    test('getTotalLinea', () {
      expect(
          pedidoVentaRepository.getTotalLinea(
            cantidad: 10,
            precio: Precio(
              precio: 1.toMoney(),
              tipoPrecio: 1,
            ),
            descuento1: 0,
            descuento2: 0,
            descuento3: 0,
          ),
          10.toMoney(),
          reason: 'Q: 10 Precio: 1€ x1 = 10€');

      expect(
          pedidoVentaRepository.getTotalLinea(
            cantidad: 10,
            precio: Precio(
              precio: 100.toMoney(),
              tipoPrecio: 100,
            ),
            descuento1: 0,
            descuento2: 0,
            descuento3: 0,
          ),
          10.toMoney(),
          reason: 'Q: 10 Precio: 100€ x100 = 10€');

      expect(
          pedidoVentaRepository.getTotalLinea(
            cantidad: 1,
            precio: Precio(
              precio: 10.toMoney(),
              tipoPrecio: 1,
            ),
            descuento1: 50,
            descuento2: 0,
            descuento3: 0,
          ),
          5.toMoney(),
          reason: 'Q: 1 Precio: 10€ x1 - 50% = 5€');

      expect(
          pedidoVentaRepository.getTotalLinea(
            cantidad: 1,
            precio: Precio(
              precio: 100.toMoney(),
              tipoPrecio: 1,
            ),
            descuento1: 50,
            descuento2: 50,
            descuento3: 0,
          ),
          25.toMoney(),
          reason: 'Q: 1 Precio: 100€ x1 +50% +50% = 25€');
    });

    test('getTotalLinea Redondeo', () {
      expect(
          pedidoVentaRepository.getTotalLinea(
            cantidad: 1,
            precio: Precio(
              precio: 170.toMoney(),
              tipoPrecio: 1,
            ),
            descuento1: 4.6,
            descuento2: 0,
            descuento3: 0,
          ),
          (162.18).toMoney(),
          reason: 'Q: 1 Precio: 170€ x1 - 4,6% = 162,18€');
    });
  });
}
