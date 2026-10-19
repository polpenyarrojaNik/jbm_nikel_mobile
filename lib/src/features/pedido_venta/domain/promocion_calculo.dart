// Réplica de JBM.PROMOCION_PKG.CALCULAR_PROMOCION (Oracle) tal y como la
// invoca UO_BR_PEDIDO_VENTA.OF_TRATAR_ARTICULOS_PROMO (PowerBuilder) al guardar
// un pedido. Lógica pura, sin base de datos, para poder testearla.
//
// Los importes se comparan en millonésimas (6 decimales) con enteros, igual
// que la tabla temporal del ERP (PRECIO NUMBER(18,6)), para evitar errores de
// coma flotante en la condición "precio de la línea >= precio de promoción".

/// Artículo que hay que comprar para entrar en la promoción
/// (PROMOCION_ART_PROMO).
class PromocionArticulo {
  const PromocionArticulo({
    required this.articuloId,
    required this.cantidad,
    required this.precio,
    required this.tipoPrecio,
  });

  final String articuloId;
  final int cantidad;

  /// Precio de promoción; 0 = la promoción no cambia el precio.
  final double precio;

  /// 1 (U), 100 (C) o 1000 (M).
  final int tipoPrecio;
}

/// Artículo que se regala (PROMOCION_ART_REGALO).
class PromocionRegalo {
  const PromocionRegalo({required this.articuloId, required this.cantidad});

  final String articuloId;
  final int cantidad;
}

/// Promoción activa para el cliente, su país y la divisa del pedido.
class PromocionCombinada {
  const PromocionCombinada({
    required this.empresaId,
    required this.promoId,
    required this.fechaDesde,
    required this.articulosPromo,
    required this.articulosRegalo,
  });

  final String empresaId;
  final String promoId;
  final DateTime fechaDesde;
  final List<PromocionArticulo> articulosPromo;
  final List<PromocionRegalo> articulosRegalo;
}

/// Línea del pedido tal y como entra en PEDIDO_VENTA_LINEA_PROMO_TEMP.
class LineaPromocionEntrada {
  const LineaPromocionEntrada({
    required this.articuloId,
    required this.cantidad,
    required this.precioNetoUnitario,
    this.participa = true,
  });

  final String articuloId;
  final int cantidad;

  /// f_importe_linea_neto(6, 1, precio, tpreu, dto1, dto2, dto3).
  final double precioNetoUnitario;

  /// false para componentes de kit (promo_sn 'C') y precios manuales ('M').
  final bool participa;
}

class LineaPromocionAsignada {
  const LineaPromocionAsignada({
    required this.promoId,
    required this.promoCantidad,
    required this.precio,
    required this.tipoPrecio,
  });

  final String promoId;
  final int promoCantidad;

  /// Precio de la promoción; si es 0 la línea conserva su precio.
  final double precio;
  final int tipoPrecio;
}

class LineaRegalo {
  const LineaRegalo({
    required this.promoId,
    required this.articuloId,
    required this.cantidad,
  });

  final String promoId;
  final String articuloId;
  final int cantidad;
}

class ResultadoPromociones {
  const ResultadoPromociones({required this.asignadas, required this.regalos});

  /// Por índice de la línea de entrada.
  final Map<int, LineaPromocionAsignada> asignadas;
  final List<LineaRegalo> regalos;
}

int _micros(double value) => (value * 1000000).round();

/// Precio neto por unidad redondeado a 6 decimales (f_importe_linea_neto).
double precioNetoUnitarioLinea({
  required double precio,
  required int tipoPrecio,
  double descuento1 = 0,
  double descuento2 = 0,
  double descuento3 = 0,
}) {
  if (tipoPrecio != 1 && tipoPrecio != 100 && tipoPrecio != 1000) return 0;
  final neto =
      (precio / tipoPrecio) *
      (1 - descuento1 / 100) *
      (1 - descuento2 / 100) *
      (1 - descuento3 / 100);
  return _micros(neto) / 1000000;
}

/// Ordena las promociones como el cursor del ERP (fecha_desde DESC). Oracle no
/// garantiza el orden entre promociones con la misma fecha; aquí se desempata
/// por código para que el resultado sea estable.
List<PromocionCombinada> ordenarPromociones(List<PromocionCombinada> promos) {
  return [...promos]..sort((a, b) {
    final porFecha = b.fechaDesde.compareTo(a.fechaDesde);
    return porFecha != 0 ? porFecha : a.promoId.compareTo(b.promoId);
  });
}

ResultadoPromociones calcularPromociones({
  required List<PromocionCombinada> promociones,
  required List<LineaPromocionEntrada> lineas,
}) {
  final asignadas = <int, LineaPromocionAsignada>{};
  final regalos = <LineaRegalo>[];
  final netoMicros = [for (final l in lineas) _micros(l.precioNetoUnitario)];

  // cod_promo IS NULL AND promo_sn = 'N' AND (precio promo = 0 OR
  // precio línea >= precio unitario promo). Comparación exacta:
  // neto >= precio / tipo  <=>  neto * tipo >= precio.
  bool esValida(int i, PromocionArticulo art) {
    final linea = lineas[i];
    if (linea.articuloId != art.articuloId) return false;
    if (!linea.participa || asignadas.containsKey(i)) return false;
    final precioPromo = _micros(art.precio);
    if (precioPromo == 0) return true;
    if (art.tipoPrecio != 1 && art.tipoPrecio != 100 && art.tipoPrecio != 1000) {
      // get_precio_unitario devuelve 0 para un tpreu desconocido.
      return true;
    }
    return netoMicros[i] * art.tipoPrecio >= precioPromo;
  }

  for (final promo in ordenarPromociones(promociones)) {
    // NVL(MIN(FLOOR(cantidad_valida / cantidad_promocion)), 0)
    int? veces;
    for (final art in promo.articulosPromo) {
      var cantidadValida = 0;
      for (var i = 0; i < lineas.length; i++) {
        if (esValida(i, art)) cantidadValida += lineas[i].cantidad;
      }
      final v = art.cantidad > 0 ? cantidadValida ~/ art.cantidad : 0;
      veces = veces == null || v < veces ? v : veces;
    }
    final cantidadPromocion = veces ?? 0;
    if (cantidadPromocion <= 0) continue;

    final articulos = [...promo.articulosPromo]
      ..sort((a, b) => a.articuloId.compareTo(b.articuloId));
    for (final art in articulos) {
      var pendiente = art.cantidad * cantidadPromocion;
      // ORDER BY cant_art_ped DESC (empate: orden de línea).
      final candidatas = [
        for (var i = 0; i < lineas.length; i++)
          if (esValida(i, art)) i,
      ]..sort((a, b) {
          final porCantidad = lineas[b].cantidad.compareTo(lineas[a].cantidad);
          return porCantidad != 0 ? porCantidad : a.compareTo(b);
        });
      for (final i in candidatas) {
        if (pendiente <= 0) break;
        final cantidadLinea = lineas[i].cantidad;
        final promoCantidad =
            cantidadLinea <= pendiente ? cantidadLinea : pendiente;
        asignadas[i] = LineaPromocionAsignada(
          promoId: promo.promoId,
          promoCantidad: promoCantidad,
          precio: art.precio,
          tipoPrecio: art.tipoPrecio,
        );
        pendiente -= promoCantidad;
      }
    }

    for (final regalo in promo.articulosRegalo) {
      regalos.add(
        LineaRegalo(
          promoId: promo.promoId,
          articuloId: regalo.articuloId,
          cantidad: regalo.cantidad * cantidadPromocion,
        ),
      );
    }
  }

  return ResultadoPromociones(asignadas: asignadas, regalos: regalos);
}

/// Regla incluido/excluido de PROMOCION_PKG.GET_PROMOCION_ACTIVA_CLIENTE y
/// GET_PROMOCION_ACTIVA_PAIS (y de get_promo_dto_activa_cliente):
/// incluido explícito gana; si no, '*' incluido y no excluido.
bool promocionActivaPara({
  required bool incluido,
  required bool todosIncluido,
  required bool excluido,
}) {
  if (incluido) return true;
  return todosIncluido && !excluido;
}
