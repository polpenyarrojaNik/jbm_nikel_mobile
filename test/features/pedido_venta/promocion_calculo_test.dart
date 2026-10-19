import 'package:flutter_test/flutter_test.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/promocion_calculo.dart';

PromocionCombinada promo(
  String id, {
  DateTime? desde,
  required List<PromocionArticulo> compra,
  List<PromocionRegalo> regalo = const [],
}) => PromocionCombinada(
  empresaId: '01',
  promoId: id,
  fechaDesde: desde ?? DateTime(2026, 1, 1),
  articulosPromo: compra,
  articulosRegalo: regalo,
);

PromocionArticulo art(
  String id,
  int cantidad, {
  double precio = 0,
  int tipoPrecio = 1,
}) => PromocionArticulo(
  articuloId: id,
  cantidad: cantidad,
  precio: precio,
  tipoPrecio: tipoPrecio,
);

LineaPromocionEntrada linea(
  String id,
  int cantidad, {
  double neto = 20,
  bool participa = true,
}) => LineaPromocionEntrada(
  articuloId: id,
  cantidad: cantidad,
  precioNetoUnitario: neto,
  participa: participa,
);

void main() {
  group('calcularPromociones (promocion_pkg.calcular_promocion)', () {
    test('veces = MIN(FLOOR(cantidad / cantidad promo)) y regalos x veces', () {
      final r = calcularPromociones(
        promociones: [
          promo(
            'P1',
            compra: [art('A', 2), art('B', 1)],
            regalo: [const PromocionRegalo(articuloId: 'G', cantidad: 1)],
          ),
        ],
        lineas: [linea('A', 5), linea('B', 3)],
      );

      // A: 5/2 = 2, B: 3/1 = 3 -> 2 veces
      expect(r.regalos, hasLength(1));
      expect(r.regalos.single.articuloId, 'G');
      expect(r.regalos.single.cantidad, 2);
      // A necesita 4: la línea entera queda en la promo con promo_cantidad 4
      expect(r.asignadas[0]!.promoId, 'P1');
      expect(r.asignadas[0]!.promoCantidad, 4);
      expect(r.asignadas[1]!.promoCantidad, 2);
    });

    test('si falta un artículo de la promoción no se aplica', () {
      final r = calcularPromociones(
        promociones: [
          promo('P1', compra: [art('A', 1), art('B', 1)]),
        ],
        lineas: [linea('A', 10)],
      );
      expect(r.asignadas, isEmpty);
      expect(r.regalos, isEmpty);
    });

    test('promoción sin artículos de compra no se aplica (NVL(MIN) = 0)', () {
      final r = calcularPromociones(
        promociones: [
          promo(
            'P1',
            compra: [],
            regalo: [const PromocionRegalo(articuloId: 'G', cantidad: 1)],
          ),
        ],
        lineas: [linea('A', 10)],
      );
      expect(r.regalos, isEmpty);
    });

    test('solo entran líneas con precio neto >= precio unitario de promo', () {
      PromocionCombinada p() => promo(
        'P1',
        compra: [art('A', 1, precio: 1000, tipoPrecio: 100)], // 10 €/u
      );

      expect(
        calcularPromociones(
          promociones: [p()],
          lineas: [linea('A', 1, neto: 9.999999)],
        ).asignadas,
        isEmpty,
      );

      final r = calcularPromociones(
        promociones: [p()],
        lineas: [linea('A', 1, neto: 10)],
      );
      expect(r.asignadas[0]!.precio, 1000);
      expect(r.asignadas[0]!.tipoPrecio, 100);
    });

    test('precio de promo 0: entra cualquier precio y no cambia el precio', () {
      final r = calcularPromociones(
        promociones: [
          promo('P1', compra: [art('A', 1)]),
        ],
        lineas: [linea('A', 1, neto: 0.01)],
      );
      expect(r.asignadas[0]!.precio, 0);
    });

    test('reparte primero en las líneas de mayor cantidad', () {
      final r = calcularPromociones(
        promociones: [
          promo('P1', compra: [art('A', 6)]),
        ],
        lineas: [linea('A', 2), linea('A', 5), linea('A', 6)],
      );
      // 13/6 = 2 veces -> 12 uds: línea 6 (6), línea 5 (5), línea 2 (1)
      expect(r.asignadas[2]!.promoCantidad, 6);
      expect(r.asignadas[1]!.promoCantidad, 5);
      expect(r.asignadas[0]!.promoCantidad, 1);
    });

    test('la línea que ya está en una promoción no cuenta para otra', () {
      final r = calcularPromociones(
        promociones: [
          promo(
            'VIEJA',
            desde: DateTime(2026, 1, 1),
            compra: [art('A', 1)],
            regalo: [const PromocionRegalo(articuloId: 'G1', cantidad: 1)],
          ),
          promo(
            'NUEVA',
            desde: DateTime(2026, 6, 1),
            compra: [art('A', 1)],
            regalo: [const PromocionRegalo(articuloId: 'G2', cantidad: 1)],
          ),
        ],
        lineas: [linea('A', 3)],
      );
      // Se procesa antes la de fecha_desde más reciente.
      expect(r.asignadas[0]!.promoId, 'NUEVA');
      expect(r.regalos.map((g) => g.articuloId), ['G2']);
      expect(r.regalos.single.cantidad, 3);
    });

    test('las líneas que no participan (componentes) se ignoran', () {
      final r = calcularPromociones(
        promociones: [
          promo('P1', compra: [art('A', 1)]),
        ],
        lineas: [linea('A', 5, participa: false)],
      );
      expect(r.asignadas, isEmpty);
    });
  });

  group('precioNetoUnitarioLinea (f_importe_linea_neto)', () {
    test('aplica tipo de precio y descuentos en cascada, 6 decimales', () {
      expect(
        precioNetoUnitarioLinea(
          precio: 1234.5,
          tipoPrecio: 100,
          descuento1: 10,
          descuento2: 5,
        ),
        // 12.345 * 0.9 * 0.95 = 10.554975
        closeTo(10.554975, 1e-9),
      );
      expect(precioNetoUnitarioLinea(precio: 1, tipoPrecio: 3), 0);
    });
  });

  group('promocionActivaPara (incluido / * / excluido)', () {
    test('tabla de verdad del ERP', () {
      expect(
        promocionActivaPara(incluido: true, todosIncluido: false, excluido: true),
        isTrue,
      );
      expect(
        promocionActivaPara(incluido: false, todosIncluido: true, excluido: true),
        isFalse,
      );
      expect(
        promocionActivaPara(incluido: false, todosIncluido: true, excluido: false),
        isTrue,
      );
      expect(
        promocionActivaPara(incluido: false, todosIncluido: false, excluido: false),
        isFalse,
      );
    });
  });
}
