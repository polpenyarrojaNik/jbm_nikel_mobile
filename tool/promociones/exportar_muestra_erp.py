"""Exporta una muestra de pedidos reales del ERP para validar el cálculo de
promociones de la app (test/features/pedido_venta/promocion_erp_muestra_test.dart).

Solo lectura: usa el inspector Oracle de nikel-ai (`tooling/db/oracle.py query`),
que abre la sesión en modo READ ONLY. Requiere VPN / acceso a la BD del ERP.

Uso:
  python3 tool/promociones/exportar_muestra_erp.py \
      --nikel-ai "/Users/.../nikel-ai-agent" [--python /ruta/venv/bin/python] \
      [--dias 15] [--limite 200]

Genera test/fixtures/promociones_erp_muestra.json (ignorado por git: contiene
datos de clientes).
"""

import argparse
import json
import subprocess
import sys
from pathlib import Path

ACTIVA = (
    "pc.filial = 'GIR' AND pc.activo = 'S' AND TRUNC(SYSDATE) BETWEEN "
    "TRUNC(pc.fecha_desde) AND TRUNC(NVL(pc.fecha_hasta, DATE '9999-12-31'))"
)


def query(args, sql: str, limit: int = 100000) -> list[dict]:
    out = subprocess.run(
        [
            args.python,
            "tooling/db/oracle.py",
            "--json",
            "--timeout",
            "300",
            "--client",
            "clients/jbm",
            "query",
            "--limit",
            str(limit),
            sql,
        ],
        cwd=args.nikel_ai,
        capture_output=True,
        text=True,
    )
    if out.returncode != 0:
        sys.exit(f"Error en la consulta:\n{sql}\n{out.stderr}")
    return json.loads(out.stdout)


def main() -> None:
    p = argparse.ArgumentParser()
    p.add_argument("--nikel-ai", required=True)
    p.add_argument("--python", default=sys.executable)
    p.add_argument("--dias", type=int, default=15)
    p.add_argument("--limite", type=int, default=200)
    p.add_argument(
        "--salida",
        default=str(
            Path(__file__).resolve().parents[2]
            / "test/fixtures/promociones_erp_muestra.json"
        ),
    )
    args = p.parse_args()

    # Pedidos recientes, sin líneas liberadas (el ERP deja de recalcular al
    # liberar), con algún artículo de una promoción activa hoy.
    pedidos = query(
        args,
        f"""
        SELECT c.num_emp, c.num_ped_cli, c.cod_cli, c.cod_divisa, c.cod_fuen_ped,
               cl.cod_pais_fiscal
          FROM jbm.pedido_venta_t c
               JOIN jbm.cliente_t cl ON cl.filial = c.filial AND cl.cod_cli = c.cod_cli
         WHERE c.filial = 'GIR'
           AND NVL(c.cod_fuen_ped, '--') <> 'WE'
           AND EXISTS (SELECT 1 FROM jbm.pedido_venta_linea_t l
                        WHERE l.filial = c.filial AND l.num_emp = c.num_emp
                          AND l.num_ped_cli = c.num_ped_cli
                          AND l.f_alta >= SYSDATE - {args.dias}
                          AND l.cod_art IN (SELECT ap.cod_art
                                              FROM jbm.promocion_art_promo_t ap
                                                   JOIN jbm.promocion_cab_t pc
                                                     ON pc.filial = ap.filial AND pc.num_emp = ap.num_emp
                                                    AND pc.cod_promo = ap.cod_promo
                                             WHERE {ACTIVA}))
           AND NOT EXISTS (SELECT 1 FROM jbm.pedido_venta_linea_t l
                            WHERE l.filial = c.filial AND l.num_emp = c.num_emp
                              AND l.num_ped_cli = c.num_ped_cli AND l.liberado = 'S')
           AND ROWNUM <= {args.limite}
        """,
    )
    if not pedidos:
        sys.exit("No hay pedidos recientes con artículos en promoción.")

    claves = {(r["NUM_EMP"], r["NUM_PED_CLI"]) for r in pedidos}
    lineas: list[dict] = []
    lista = sorted(claves)
    for i in range(0, len(lista), 200):
        trozo = lista[i : i + 200]
        cond = " OR ".join(
            f"(l.num_emp = '{e}' AND l.num_ped_cli = '{n}')" for e, n in trozo
        )
        lineas += query(
            args,
            f"""
            SELECT l.num_emp, l.num_ped_cli, l.lin_ped_cli, l.cod_art, l.cant_art_ped,
                   l.precio_divisa, l.tpreu, l.dto1, l.dto2, l.dto3, l.cod_promo,
                   l.promo_sn, l.promo_cantidad, l.lin_ped_cli_componente,
                   l.codigo_origen_precio
              FROM jbm.pedido_venta_linea_t l
             WHERE l.filial = 'GIR' AND ({cond})
             ORDER BY l.num_emp, l.num_ped_cli, l.lin_ped_cli
            """,
        )

    def tabla(sql_cols: str, tabla: str) -> list[dict]:
        return query(
            args,
            f"""
            SELECT {sql_cols} FROM jbm.{tabla} t
             WHERE t.filial = 'GIR' AND EXISTS (
                   SELECT 1 FROM jbm.promocion_cab_t pc
                    WHERE pc.num_emp = t.num_emp AND pc.cod_promo = t.cod_promo AND {ACTIVA})
            """,
        )

    datos = {
        "pedidos": pedidos,
        "lineas": lineas,
        "promocion_cab": query(
            args,
            f"SELECT pc.num_emp, pc.cod_promo, pc.fecha_desde, pc.cod_divisa "
            f"FROM jbm.promocion_cab_t pc WHERE {ACTIVA}",
        ),
        "promocion_cliente": tabla("t.num_emp, t.cod_promo, t.cod_cli, t.tipo", "promocion_cliente_t"),
        "promocion_pais": tabla("t.num_emp, t.cod_promo, t.cod_pais, t.tipo", "promocion_pais_t"),
        "promocion_art_promo": tabla(
            "t.num_emp, t.cod_promo, t.cod_art, t.cantidad, NVL(t.precio, 0) precio, "
            "CASE NVL(t.tpreu, 'U') WHEN 'U' THEN 1 WHEN 'C' THEN 100 ELSE 1000 END tipo_precio",
            "promocion_art_promo_t",
        ),
        "promocion_art_regalo": tabla("t.num_emp, t.cod_promo, t.cod_art, t.cantidad", "promocion_art_regalo_t"),
    }
    salida = Path(args.salida)
    salida.parent.mkdir(parents=True, exist_ok=True)
    salida.write_text(json.dumps(datos, ensure_ascii=False, indent=1, default=str))
    print(f"{len(pedidos)} pedidos, {len(lineas)} líneas -> {salida}")


if __name__ == "__main__":
    main()
