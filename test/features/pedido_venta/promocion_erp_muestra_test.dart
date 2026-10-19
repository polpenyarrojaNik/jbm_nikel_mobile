// Compara el cálculo de promociones de la app con pedidos reales del ERP.
// La muestra se genera con tool/promociones/exportar_muestra_erp.py (requiere
// acceso a la BD); sin el fichero el test se omite.
//
// Para cada pedido se rehace la entrada de promocion_pkg.calcular_promocion a
// partir de las líneas guardadas (sin regalos) y se compara con lo que el ERP
// grabó: cod_promo / promo_cantidad por línea y las líneas de regalo.
// Las líneas con codigo_origen_precio 'PR' tienen ya el precio de la promoción
// (el original se perdió); se usa ese precio, que cumple la condición >=.

import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/promocion_calculo.dart';

const _fixture = 'test/fixtures/promociones_erp_muestra.json';

double _num(Object? v) => v == null || v == '' ? 0 : double.parse('$v');
int _tipo(Object? tpreu) => switch (tpreu) {
  'C' => 100,
  'M' => 1000,
  _ => 1,
};

void main() {
  final file = File(_fixture);

  test(
    'promociones de la app == promociones grabadas por el ERP',
    () {
      final datos = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
      List<Map<String, dynamic>> t(String k) =>
          (datos[k] as List).cast<Map<String, dynamic>>();

      final clientes = t('promocion_cliente');
      final paises = t('promocion_pais');
      final artPromo = t('promocion_art_promo');
      final artRegalo = t('promocion_art_regalo');

      final diferencias = <String>[];
      var pedidosOk = 0;

      for (final pedido in t('pedidos')) {
        final emp = pedido['NUM_EMP'], num = pedido['NUM_PED_CLI'];
        final cli = pedido['COD_CLI'] as String;
        final pais = (pedido['COD_PAIS_FISCAL'] ?? '') as String;

        bool activa(List<Map<String, dynamic>> filas, String col, String v) =>
            promocionActivaPara(
              incluido: filas.any((r) => r[col] == v && r['TIPO'] == 'I'),
              todosIncluido: filas.any((r) => r[col] == '*' && r['TIPO'] == 'I'),
              excluido: filas.any((r) => r[col] == v && r['TIPO'] == 'E'),
            );

        final promociones = <PromocionCombinada>[
          for (final cab in t('promocion_cab'))
            if (cab['COD_DIVISA'] == pedido['COD_DIVISA'])
              if (activa(
                [
                  for (final r in clientes)
                    if (r['NUM_EMP'] == cab['NUM_EMP'] &&
                        r['COD_PROMO'] == cab['COD_PROMO'])
                      r,
                ],
                'COD_CLI',
                cli,
              ))
                if (activa(
                  [
                    for (final r in paises)
                      if (r['NUM_EMP'] == cab['NUM_EMP'] &&
                          r['COD_PROMO'] == cab['COD_PROMO'])
                        r,
                  ],
                  'COD_PAIS',
                  pais,
                ))
                  PromocionCombinada(
                    empresaId: cab['NUM_EMP'] as String,
                    promoId: cab['COD_PROMO'] as String,
                    fechaDesde: DateTime.parse(cab['FECHA_DESDE'] as String),
                    articulosPromo: [
                      for (final a in artPromo)
                        if (a['NUM_EMP'] == cab['NUM_EMP'] &&
                            a['COD_PROMO'] == cab['COD_PROMO'])
                          PromocionArticulo(
                            articuloId: a['COD_ART'] as String,
                            cantidad: _num(a['CANTIDAD']).toInt(),
                            precio: _num(a['PRECIO']),
                            tipoPrecio: _num(a['TIPO_PRECIO']).toInt(),
                          ),
                    ],
                    articulosRegalo: [
                      for (final r in artRegalo)
                        if (r['NUM_EMP'] == cab['NUM_EMP'] &&
                            r['COD_PROMO'] == cab['COD_PROMO'])
                          PromocionRegalo(
                            articuloId: r['COD_ART'] as String,
                            cantidad: _num(r['CANTIDAD']).toInt(),
                          ),
                    ],
                  ),
        ];

        final lineas = [
          for (final l in t('lineas'))
            if (l['NUM_EMP'] == emp && l['NUM_PED_CLI'] == num) l,
        ];
        final compradas = [
          for (final l in lineas)
            if (l['PROMO_SN'] != 'S') l,
        ];
        final r = calcularPromociones(
          promociones: promociones,
          lineas: [
            for (final l in compradas)
              LineaPromocionEntrada(
                articuloId: l['COD_ART'] as String,
                cantidad: _num(l['CANT_ART_PED']).toInt(),
                precioNetoUnitario: precioNetoUnitarioLinea(
                  precio: _num(l['PRECIO_DIVISA']),
                  tipoPrecio: _tipo(l['TPREU']),
                  descuento1: _num(l['DTO1']),
                  descuento2: _num(l['DTO2']),
                  descuento3: _num(l['DTO3']),
                ),
                participa:
                    (l['LIN_PED_CLI_COMPONENTE'] ?? '') == '' &&
                    l['CODIGO_ORIGEN_PRECIO'] != 'MN',
              ),
          ],
        );

        final errores = <String>[];
        for (var i = 0; i < compradas.length; i++) {
          final l = compradas[i];
          final erpPromo = (l['COD_PROMO'] ?? '') == '' ? null : l['COD_PROMO'];
          final erpCant = erpPromo == null ? 0 : _num(l['PROMO_CANTIDAD']).toInt();
          final app = r.asignadas[i];
          if (app?.promoId != erpPromo || (app?.promoCantidad ?? 0) != erpCant) {
            errores.add(
              'lin ${l['LIN_PED_CLI']} ${l['COD_ART']}: '
              'ERP $erpPromo/$erpCant  APP ${app?.promoId}/${app?.promoCantidad ?? 0}',
            );
          }
        }
        String clave(String p, String a, int c) => '$p|$a|$c';
        final regalosErp = [
          for (final l in lineas)
            if (l['PROMO_SN'] == 'S')
              clave(
                '${l['COD_PROMO']}',
                l['COD_ART'] as String,
                _num(l['CANT_ART_PED']).toInt(),
              ),
        ]..sort();
        final regalosApp = [
          for (final g in r.regalos)
            if (g.cantidad > 0) clave(g.promoId, g.articuloId, g.cantidad),
        ]..sort();
        if (regalosErp.join(',') != regalosApp.join(',')) {
          errores.add('regalos ERP $regalosErp  APP $regalosApp');
        }

        if (errores.isEmpty) {
          pedidosOk++;
        } else {
          diferencias.add('$emp/$num ($cli): ${errores.join('; ')}');
        }
      }

      final total = t('pedidos').length;
      // ignore: avoid_print
      print('Pedidos coincidentes: $pedidosOk / $total');
      for (final d in diferencias) {
        // ignore: avoid_print
        print('  DIFERENCIA $d');
      }
      expect(diferencias, isEmpty);
    },
    skip: file.existsSync()
        ? false
        : 'Sin muestra ERP: ejecutar tool/promociones/exportar_muestra_erp.py',
  );
}
