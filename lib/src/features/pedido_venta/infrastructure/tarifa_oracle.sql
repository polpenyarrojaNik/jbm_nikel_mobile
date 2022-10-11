CREATE OR REPLACE PACKAGE BODY tarifa_venta_pkg AS
  FUNCTION get_precio_unitario (i_precio IN NUMBER
                               ,i_tpreu  IN VARCHAR2)
    RETURN NUMBER AS
    l_precio_unitario NUMBER (18, 6);
  BEGIN
    CASE i_tpreu
      WHEN 'U' THEN
        l_precio_unitario := i_precio;
      WHEN 'C' THEN
        l_precio_unitario := i_precio / 100;
      WHEN 'M' THEN
        l_precio_unitario := i_precio / 1000;
      ELSE
        l_precio_unitario := 0;
    END CASE;

    RETURN NVL (l_precio_unitario, 0);
  END get_precio_unitario;

  FUNCTION get_tarifa_derivada_precio (i_operacion       IN VARCHAR2
                                      ,i_tipo_redondeo   IN VARCHAR2
                                      ,i_decimales       IN NUMBER
                                      ,i_factor          IN VARCHAR2
                                      ,i_precio_articulo IN NUMBER)
    RETURN NUMBER AS
    l_precio_articulo            tarifa_articulo.precio%TYPE;
    l_precio_con_tarifa_derivada tarifa_articulo.precio%TYPE;
    l_operacion                  tarifa.operacion%TYPE;
    l_tipo_redondeo              tarifa.tipo_redondeo%TYPE;
    l_decimales                  tarifa.decimales%TYPE;
    l_factor                     tarifa.factor%TYPE;
  BEGIN
    l_precio_articulo := i_precio_articulo;

    l_operacion := i_operacion;
    l_tipo_redondeo := i_tipo_redondeo;
    l_decimales := i_decimales;
    l_factor := i_factor;

    CASE
      WHEN l_operacion = '*'
       AND l_tipo_redondeo = 'A' THEN
        l_precio_con_tarifa_derivada := CEIL (l_precio_articulo * l_factor);
      WHEN l_operacion = '*'
       AND l_tipo_redondeo = 'N' THEN
        l_precio_con_tarifa_derivada :=
          ROUND (l_precio_articulo * l_factor
                ,l_decimales);
      WHEN l_operacion = '/'
       AND l_tipo_redondeo = 'A' THEN
        l_precio_con_tarifa_derivada := CEIL (l_precio_articulo / l_factor);
      WHEN l_operacion = '/'
       AND l_tipo_redondeo = 'N' THEN
        l_precio_con_tarifa_derivada :=
          ROUND (l_precio_articulo / l_factor
                ,l_decimales);
    END CASE;

    RETURN NVL (l_precio_con_tarifa_derivada, 0);
  END get_tarifa_derivada_precio;

  FUNCTION get_precio_unitario_tarifa (i_cod_tarifa IN VARCHAR2
                                      ,i_cod_divisa IN VARCHAR2
                                      ,i_cod_art    IN VARCHAR2
                                      ,i_fecha      IN DATE
                                      ,i_cantidad   IN NUMBER)
    RETURN NUMBER AS
    l_tpreu  tarifa_articulo.tpreu%TYPE;
    l_precio tarifa_articulo.precio%TYPE;
  BEGIN
    get_precio_tarifa (i_cod_tarifa => i_cod_tarifa
                      ,i_cod_divisa => i_cod_divisa
                      ,i_cod_art    => i_cod_art
                      ,i_fecha      => i_fecha
                      ,i_cantidad   => i_cantidad
                      ,o_precio     => l_precio
                      ,o_tpreu      => l_tpreu);
    RETURN get_precio_unitario (i_precio => l_precio
                               ,i_tpreu  => l_tpreu);
  END get_precio_unitario_tarifa;

  FUNCTION get_precio_tarifa_derivada (i_cod_tarifa  IN VARCHAR2
                                      ,i_cod_art     IN VARCHAR2
                                      ,i_fecha       IN DATE
                                      ,i_cantidad    IN NUMBER
                                      ,i_tpreu       IN VARCHAR2
                                      ,i_fecha_desde IN DATE DEFAULT TO_DATE ('1900-01-01'
                                                                             ,'YYYY-MM-DD'))
    RETURN NUMBER AS
    l_cod_tarifa             tarifa_articulo_t.cod_tarifa%TYPE;
    l_cod_art                tarifa_articulo_t.cod_art%TYPE;
    l_fecha_desde            tarifa_articulo_t.fecha_desde%TYPE;
    l_cantidad_desde         tarifa_articulo_t.cantidad_desde%TYPE;
    l_precio                 tarifa_articulo_t.precio%TYPE;
    l_tpreu                  tarifa_articulo_t.tpreu%TYPE;
    l_cod_tarifa_derivada    tarifa_t.cod_tarifa_derivada%TYPE;
    l_factor                 tarifa_t.factor%TYPE;
    l_operacion              tarifa_t.operacion%TYPE;
    l_tipo_redondeo          tarifa_t.tipo_redondeo%TYPE;
    l_decimales              tarifa_t.decimales%TYPE;

    l_precio_tarifa          NUMBER (18, 6);
    l_precio_tarifa_unitario NUMBER (18, 6);
    l_precio_tarifa_padre    NUMBER (18, 6);
  BEGIN
    SELECT tarifa.cod_tarifa_derivada
          ,tarifa.factor
          ,tarifa.operacion
          ,tarifa.tipo_redondeo
          ,tarifa.decimales
      INTO l_cod_tarifa_derivada
          ,l_factor
          ,l_operacion
          ,l_tipo_redondeo
          ,l_decimales
      FROM tarifa
     WHERE tarifa.cod_tarifa = i_cod_tarifa;

    BEGIN
        SELECT cod_tarifa
              ,cod_art
              ,fecha_desde
              ,cantidad_desde
              ,precio
              ,tpreu
          INTO l_cod_tarifa
              ,l_cod_art
              ,l_fecha_desde
              ,l_cantidad_desde
              ,l_precio
              ,l_tpreu
          FROM tarifa_articulo
         WHERE cod_tarifa = i_cod_tarifa
           AND cod_art = i_cod_art
           AND fecha_desde >= NVL (i_fecha_desde
                                  ,TO_DATE ('1900-01-01'
                                           ,'YYYY-MM-DD'))
           AND fecha_desde <= i_fecha
           AND cantidad_desde <= i_cantidad
      ORDER BY fecha_desde DESC
              ,cantidad_desde DESC
         FETCH NEXT 1 ROWS ONLY;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        l_precio := 0;
        l_tpreu := 'U';
        l_fecha_desde := i_fecha_desde;
    END;

--    DBMS_OUTPUT.put_line (   'TARIFA: '
--                          || i_cod_tarifa
--                          || ' PRECIO: '
--                          || NVL (l_precio, 0)
--                          || ' FECHA_DESDE: '
--                          || TO_CHAR (l_fecha_desde
--                                     ,'YYYY-MM-DD')
--                          || ' TARIFA DERIVADA: '
--                          || l_cod_tarifa_derivada);

    CASE
      WHEN l_cod_tarifa_derivada IS NULL THEN
        l_precio_tarifa_unitario :=
            l_precio
          / CASE l_tpreu
              WHEN 'M' THEN 1000
              WHEN 'C' THEN 100
              ELSE 1
            END;

        l_precio_tarifa :=
            l_precio_tarifa_unitario
          * CASE i_tpreu
              WHEN 'M' THEN 1000
              WHEN 'C' THEN 100
              ELSE 1
            END;
      ELSE
        l_precio_tarifa_padre :=
          tarifa_venta_pkg.get_precio_tarifa_derivada (i_cod_tarifa  => l_cod_tarifa_derivada
                                                      ,i_cod_art     => i_cod_art
                                                      ,i_fecha       => i_fecha
                                                      ,i_cantidad    => i_cantidad
                                                      ,i_tpreu       => i_tpreu
                                                      ,i_fecha_desde => l_fecha_desde);

        IF l_precio_tarifa_padre <> 0 THEN
          CASE l_operacion
            WHEN '*' THEN
              l_precio_tarifa := l_precio_tarifa_padre * l_factor;
            ELSE
              l_precio_tarifa := l_precio_tarifa_padre / l_factor;
          END CASE;

          CASE
            WHEN l_tipo_redondeo = 'A' THEN
              l_precio_tarifa :=
                ROUND (  l_precio_tarifa
                       + (  5
                          / POWER (10
                                  ,l_decimales + 1))
                      ,l_decimales);
            ELSE
              l_precio_tarifa :=
                ROUND (l_precio_tarifa
                      ,l_decimales);
          END CASE;
        ELSE
          l_precio_tarifa_unitario :=
              l_precio
            / CASE l_tpreu
                WHEN 'M' THEN 1000
                WHEN 'C' THEN 100
                ELSE 1
              END;

          l_precio_tarifa :=
              l_precio_tarifa_unitario
            * CASE i_tpreu
                WHEN 'M' THEN 1000
                WHEN 'C' THEN 100
                ELSE 1
              END;
        END IF;
    END CASE;

--    DBMS_OUTPUT.put_line ('*TARIFA: ' || i_cod_tarifa || ' PRECIO: ' || NVL (l_precio_tarifa, 0));
    RETURN NVL (l_precio_tarifa, 0);
  END get_precio_tarifa_derivada;

  FUNCTION get_fecha_tarifa (i_cod_tarifa IN VARCHAR2
                            ,i_cod_art    IN VARCHAR2)
    RETURN DATE AS
    l_fecha_desde DATE;
  BEGIN
    SELECT MAX (fecha_desde)
      INTO l_fecha_desde
      FROM (    SELECT fecha_desde
                  FROM (  SELECT tarifa_articulo.cod_tarifa
                                ,tarifa_articulo.cod_art
                                ,tarifa.cod_tarifa_derivada
                                ,MAX (tarifa_articulo.fecha_desde) fecha_desde
                            FROM tarifa
                                 INNER JOIN tarifa_articulo ON tarifa_articulo.cod_tarifa = tarifa.cod_tarifa
                        GROUP BY tarifa_articulo.cod_tarifa
                                ,tarifa_articulo.cod_art
                                ,tarifa.cod_tarifa_derivada) temp
            START WITH temp.cod_tarifa = i_cod_tarifa
                   AND temp.cod_art = i_cod_art
            CONNECT BY PRIOR temp.cod_tarifa_derivada = temp.cod_tarifa
                   AND PRIOR temp.cod_art = temp.cod_art);

    RETURN l_fecha_desde;
  END;

  PROCEDURE get_precio_tarifa (i_cod_tarifa IN     VARCHAR2
                              ,i_cod_divisa IN     VARCHAR2
                              ,i_cod_art    IN     VARCHAR2
                              ,i_fecha      IN     DATE
                              ,i_cantidad   IN     NUMBER
                              ,o_precio        OUT NUMBER
                              ,o_tpreu         OUT VARCHAR2) AS
    CURSOR tarifas_derivadas_cur IS
          SELECT tarifa.cod_tarifa
                ,tarifa.factor
                ,tarifa.operacion
                ,tarifa.tipo_redondeo
                ,tarifa.decimales
            FROM tarifa
      START WITH tarifa.cod_tarifa = i_cod_tarifa
             AND tarifa.cod_divisa = i_cod_divisa
      CONNECT BY PRIOR tarifa.cod_tarifa_derivada = tarifa.cod_tarifa
        ORDER BY LEVEL DESC;

    l_fecha_desde tarifa_articulo.fecha_desde%TYPE;
    l_tpreu_ant   tarifa_articulo.tpreu%TYPE;
    l_precio_ant  tarifa_articulo.precio%TYPE;
  BEGIN
    /*AGAFAVA LA DATA PER CADA TARIFA EN CONTES D'AGAFAR LA DATA MÉS GRAN DE LA TARIFA PRINCIPAL O DERIVADA.*/
    SELECT MAX (tarifa_articulo.fecha_desde)
      INTO l_fecha_desde
      FROM tarifa_articulo
     WHERE tarifa_articulo.cod_tarifa IN (    SELECT tarifa.cod_tarifa
                                                FROM tarifa
                                          START WITH tarifa.cod_tarifa = i_cod_tarifa
                                                 AND tarifa.cod_divisa = i_cod_divisa
                                          CONNECT BY PRIOR tarifa.cod_tarifa_derivada = tarifa.cod_tarifa)
       AND tarifa_articulo.cod_art = i_cod_art
       AND tarifa_articulo.fecha_desde < i_fecha;

   <<tarifas>>
    FOR tarifas_derivadas_rec IN tarifas_derivadas_cur LOOP
      BEGIN
        /*   SELECT MAX (tarifa_articulo.fecha_desde)
             INTO l_fecha_desde
             FROM tarifa_articulo
            WHERE     tarifa_articulo.cod_tarifa = tarifas_derivadas_rec.cod_tarifa
                  AND tarifa_articulo.cod_art = i_cod_art
                  AND tarifa_articulo.fecha_desde < i_fecha;*/

        SELECT tpreu
              ,precio
          INTO o_tpreu
              ,o_precio
          FROM (  SELECT tarifa_articulo.tpreu
                        ,tarifa_articulo.precio
                    FROM tarifa_articulo
                   WHERE tarifa_articulo.cod_tarifa = tarifas_derivadas_rec.cod_tarifa
                     AND tarifa_articulo.cod_art = i_cod_art
                     AND tarifa_articulo.fecha_desde = l_fecha_desde
                     AND tarifa_articulo.cantidad_desde <= i_cantidad
                ORDER BY tarifa_articulo.cantidad_desde DESC)
         WHERE ROWNUM = 1;
      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          IF l_precio_ant IS NOT NULL THEN
            o_tpreu := l_tpreu_ant;
            o_precio :=
              tarifa_venta_pkg.get_tarifa_derivada_precio (i_operacion       => tarifas_derivadas_rec.operacion
                                                          ,i_tipo_redondeo   => tarifas_derivadas_rec.tipo_redondeo
                                                          ,i_decimales       => tarifas_derivadas_rec.decimales
                                                          ,i_factor          => tarifas_derivadas_rec.factor
                                                          ,i_precio_articulo => l_precio_ant);
          END IF;
      END;

      l_tpreu_ant := o_tpreu;
      l_precio_ant := o_precio;
    END LOOP tarifas;

    o_tpreu := NVL (o_tpreu, 'U');
    o_precio := NVL (o_precio, 0);
  END get_precio_tarifa;

  PROCEDURE get_precio_grupo_netos (i_cod_cli    IN     VARCHAR2
                                   ,i_cod_divisa IN     VARCHAR2
                                   ,i_cod_art    IN     VARCHAR2
                                   ,i_fecha      IN     DATE
                                   ,i_cantidad   IN     NUMBER
                                   ,o_precio        OUT NUMBER
                                   ,o_tpreu         OUT VARCHAR2) AS
  BEGIN
    BEGIN
      SELECT precio
            ,tpreu
        INTO o_precio
            ,o_tpreu
        FROM (  SELECT grupo_netos_det.precio
                      ,grupo_netos_det.tpreu
                  FROM grupo_netos_det
                       INNER JOIN
                       (  SELECT grupo_netos_det.cod_grupo_neto
                                ,grupo_netos_det.cod_art
                                ,MAX (grupo_netos_det.fecha_desde) fecha_desde
                            FROM cliente_grupo_netos
                                 INNER JOIN grupo_netos ON grupo_netos.cod_grupo_neto = cliente_grupo_netos.cod_grupo_neto
                                 INNER JOIN grupo_netos_det ON grupo_netos_det.cod_grupo_neto = grupo_netos.cod_grupo_neto
                           WHERE cliente_grupo_netos.cod_cli = i_cod_cli
                             AND grupo_netos.cod_divisa = i_cod_divisa
                             AND grupo_netos_det.cod_art = i_cod_art
                             AND grupo_netos_det.fecha_desde < i_fecha
                             AND (grupo_netos_det.fecha_fin > i_fecha
                               OR grupo_netos_det.fecha_fin IS NULL)
                             AND grupo_netos.activo_sn = 'S'
                        GROUP BY grupo_netos_det.cod_grupo_neto
                                ,grupo_netos_det.cod_art) grupo_netos_det_vigente
                         ON grupo_netos_det.cod_grupo_neto = grupo_netos_det_vigente.cod_grupo_neto
                        AND grupo_netos_det.cod_art = grupo_netos_det_vigente.cod_art
                        AND grupo_netos_det.fecha_desde = grupo_netos_det_vigente.fecha_desde
                 WHERE grupo_netos_det.cantidad_desde <= i_cantidad
              ORDER BY tarifa_venta_pkg.get_precio_unitario (i_precio => grupo_netos_det.precio
                                                            ,i_tpreu  => grupo_netos_det.tpreu) ASC)
       WHERE ROWNUM = 1;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        o_tpreu := 'U';
        o_precio := 0;
    END;

    o_tpreu := NVL (o_tpreu, 'U');
    o_precio := NVL (o_precio, 0);
  END get_precio_grupo_netos;

  PROCEDURE get_precio_cliente_neto (i_cod_cli    IN     VARCHAR2
                                    ,i_cod_divisa IN     VARCHAR2
                                    ,i_cod_art    IN     VARCHAR2
                                    ,i_fecha      IN     DATE
                                    ,i_cantidad   IN     NUMBER
                                    ,o_precio        OUT NUMBER
                                    ,o_tpreu         OUT VARCHAR2) AS
    l_fecha_desde tarifa_articulo.fecha_desde%TYPE;
  BEGIN
    BEGIN
      SELECT MAX (TRUNC (cliente_precio_neto.fecha_desde))
        INTO l_fecha_desde
        FROM cliente_precio_neto
             INNER JOIN cliente ON cliente.cod_cli = cliente_precio_neto.cod_cli
       WHERE (cliente_precio_neto.cod_cli = i_cod_cli)
         AND cliente.cod_divisa = i_cod_divisa
         AND cliente_precio_neto.cod_art = i_cod_art
         AND cliente_precio_neto.fecha_desde < i_fecha
         AND (TRUNC (cliente_precio_neto.fecha_fin) > TRUNC (i_fecha)
           OR cliente_precio_neto.fecha_fin IS NULL);

      SELECT tpreu
            ,precio
        INTO o_tpreu
            ,o_precio
        FROM (  SELECT cliente_precio_neto.tpreu
                      ,cliente_precio_neto.precio
                  FROM cliente_precio_neto
                       INNER JOIN cliente ON cliente.cod_cli = cliente_precio_neto.cod_cli
                 WHERE (cliente_precio_neto.cod_cli = i_cod_cli)
                   AND cliente.cod_divisa = i_cod_divisa
                   AND cliente_precio_neto.cod_art = i_cod_art
                   AND TRUNC (cliente_precio_neto.fecha_desde) = l_fecha_desde
                   AND (TRUNC (cliente_precio_neto.fecha_fin) > TRUNC (l_fecha_desde)
                     OR cliente_precio_neto.fecha_fin IS NULL)
                   AND cliente_precio_neto.cantidad_desde <= i_cantidad
              ORDER BY cliente_precio_neto.cantidad_desde DESC)
       WHERE ROWNUM = 1;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        o_tpreu := 'U';
        o_precio := 0;
    END;

    o_tpreu := NVL (o_tpreu, 'U');
    o_precio := NVL (o_precio, 0);
  END get_precio_cliente_neto;

  FUNCTION get_descuento_general (i_cod_art         IN VARCHAR2
                                 ,i_cod_dto_general IN VARCHAR2
                                 ,i_fecha           IN DATE)
    RETURN NUMBER AS
    l_descuento descuento_general_det_t.descuento%TYPE;
  BEGIN
    BEGIN
      SELECT descuento
        INTO l_descuento
        FROM (  SELECT rn
                      ,prioridad
                      ,fecha_desde
                      ,descuento
                  FROM (SELECT ROW_NUMBER () OVER (ORDER BY descuento_general_det.fecha_desde DESC) rn
                              ,1 prioridad
                              ,descuento_general_det.fecha_desde
                              ,descuento_general_det.descuento
                          FROM descuento_general_det
                               INNER JOIN artcomun
                                 ON artcomun.cod_art = descuento_general_det.cod_art
                                AND artcomun.familia = descuento_general_det.familia
                                AND artcomun.subfamilia = descuento_general_det.subfamilia
                         WHERE descuento_general_det.cod_dto_general = i_cod_dto_general
                           AND artcomun.cod_art = i_cod_art
                           AND descuento_general_det.fecha_desde <= i_fecha
                           AND (TRUNC (descuento_general_det.fecha_fin) >= TRUNC (i_fecha)
                             OR (descuento_general_det.fecha_fin) IS NULL)
                        UNION ALL
                        SELECT ROW_NUMBER () OVER (ORDER BY descuento_general_det.fecha_desde DESC) rn
                              ,2 prioridad
                              ,descuento_general_det.fecha_desde
                              ,descuento_general_det.descuento
                          FROM descuento_general_det
                               INNER JOIN artcomun
                                 ON artcomun.cod_art = descuento_general_det.cod_art
                                AND artcomun.familia = descuento_general_det.familia
                         WHERE descuento_general_det.cod_dto_general = i_cod_dto_general
                           AND artcomun.cod_art = i_cod_art
                           AND descuento_general_det.subfamilia = '*'
                           AND descuento_general_det.fecha_desde <= i_fecha
                           AND (TRUNC (descuento_general_det.fecha_fin) >= TRUNC (i_fecha)
                             OR (descuento_general_det.fecha_fin) IS NULL)
                        UNION ALL
                        SELECT ROW_NUMBER () OVER (ORDER BY descuento_general_det.fecha_desde DESC) rn
                              ,3 prioridad
                              ,descuento_general_det.fecha_desde
                              ,descuento_general_det.descuento
                          FROM descuento_general_det
                               INNER JOIN artcomun
                                 ON artcomun.familia = descuento_general_det.familia
                                AND artcomun.subfamilia = descuento_general_det.subfamilia
                         WHERE descuento_general_det.cod_dto_general = i_cod_dto_general
                           AND artcomun.cod_art = i_cod_art
                           AND descuento_general_det.cod_art = '*'
                           AND descuento_general_det.fecha_desde <= i_fecha
                           AND (TRUNC (descuento_general_det.fecha_fin) >= TRUNC (i_fecha)
                             OR (descuento_general_det.fecha_fin) IS NULL)
                        UNION ALL
                        SELECT ROW_NUMBER () OVER (ORDER BY descuento_general_det.fecha_desde DESC) rn
                              ,4 prioridad
                              ,descuento_general_det.fecha_desde
                              ,descuento_general_det.descuento
                          FROM descuento_general_det
                               INNER JOIN artcomun
                                 ON artcomun.cod_art = descuento_general_det.cod_art
                                AND artcomun.subfamilia = descuento_general_det.subfamilia
                         WHERE descuento_general_det.cod_dto_general = i_cod_dto_general
                           AND artcomun.cod_art = i_cod_art
                           AND descuento_general_det.familia = '*'
                           AND descuento_general_det.fecha_desde <= i_fecha
                           AND (TRUNC (descuento_general_det.fecha_fin) >= TRUNC (i_fecha)
                             OR (descuento_general_det.fecha_fin) IS NULL)
                        UNION ALL
                        SELECT ROW_NUMBER () OVER (ORDER BY descuento_general_det.fecha_desde DESC) rn
                              ,5 prioridad
                              ,descuento_general_det.fecha_desde
                              ,descuento_general_det.descuento
                          FROM descuento_general_det
                               INNER JOIN artcomun ON artcomun.cod_art = descuento_general_det.cod_art
                         WHERE descuento_general_det.cod_dto_general = i_cod_dto_general
                           AND artcomun.cod_art = i_cod_art
                           AND descuento_general_det.subfamilia = '*'
                           AND descuento_general_det.familia = '*'
                           AND descuento_general_det.fecha_desde <= i_fecha
                           AND (TRUNC (descuento_general_det.fecha_fin) >= TRUNC (i_fecha)
                             OR (descuento_general_det.fecha_fin) IS NULL)
                        UNION ALL
                        SELECT ROW_NUMBER () OVER (ORDER BY descuento_general_det.fecha_desde DESC) rn
                              ,6 prioridad
                              ,descuento_general_det.fecha_desde
                              ,descuento_general_det.descuento
                          FROM descuento_general_det
                               INNER JOIN artcomun ON artcomun.subfamilia = descuento_general_det.subfamilia
                         WHERE descuento_general_det.cod_dto_general = i_cod_dto_general
                           AND artcomun.cod_art = i_cod_art
                           AND descuento_general_det.cod_art = '*'
                           AND descuento_general_det.familia = '*'
                           AND descuento_general_det.fecha_desde <= i_fecha
                           AND (TRUNC (descuento_general_det.fecha_fin) >= TRUNC (i_fecha)
                             OR (descuento_general_det.fecha_fin) IS NULL)
                        UNION ALL
                        SELECT ROW_NUMBER () OVER (ORDER BY descuento_general_det.fecha_desde DESC) rn
                              ,7 prioridad
                              ,descuento_general_det.fecha_desde
                              ,descuento_general_det.descuento
                          FROM descuento_general_det
                               INNER JOIN artcomun ON artcomun.familia = descuento_general_det.familia
                         WHERE descuento_general_det.cod_dto_general = i_cod_dto_general
                           AND artcomun.cod_art = i_cod_art
                           AND descuento_general_det.cod_art = '*'
                           AND descuento_general_det.subfamilia = '*'
                           AND descuento_general_det.fecha_desde <= i_fecha
                           AND (TRUNC (descuento_general_det.fecha_fin) >= TRUNC (i_fecha)
                             OR (descuento_general_det.fecha_fin) IS NULL)
                        UNION ALL
                        SELECT ROW_NUMBER () OVER (ORDER BY descuento_general_det.fecha_desde DESC) rn
                              ,8 prioridad
                              ,descuento_general_det.fecha_desde
                              ,descuento_general_det.descuento
                          FROM descuento_general_det
                         WHERE descuento_general_det.cod_dto_general = i_cod_dto_general
                           AND descuento_general_det.cod_art = '*'
                           AND descuento_general_det.familia = '*'
                           AND descuento_general_det.subfamilia = '*'
                           AND descuento_general_det.fecha_desde <= i_fecha
                           AND (TRUNC (descuento_general_det.fecha_fin) >= TRUNC (i_fecha)
                             OR (descuento_general_det.fecha_fin) IS NULL))
                 WHERE rn = 1
              ORDER BY prioridad ASC)
       WHERE ROWNUM = 1;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        l_descuento := 0;
    END;

    RETURN NVL (l_descuento, 0);
  END get_descuento_general;

  FUNCTION get_descuento_cliente_descuento (i_cod_art IN VARCHAR2
                                           ,i_cod_cli IN VARCHAR2
                                           ,i_fecha   IN DATE)
    RETURN NUMBER AS
    l_descuento cliente_descuento_t.descuento%TYPE;
  BEGIN
    BEGIN
      SELECT descuento
        INTO l_descuento
        FROM (  SELECT fecha_desde
                      ,descuento
                  FROM (SELECT cliente_descuento.fecha_desde
                              ,cliente_descuento.descuento
                          FROM cliente_descuento
                               INNER JOIN artcomun
                                 ON artcomun.cod_art = cliente_descuento.cod_art
                                AND artcomun.familia = cliente_descuento.familia
                                AND artcomun.subfamilia = cliente_descuento.subfamilia
                         WHERE cliente_descuento.cod_cli = i_cod_cli
                           AND artcomun.cod_art = i_cod_art
                           AND cliente_descuento.fecha_desde <= i_fecha
                           AND (cliente_descuento.fecha_fin >= i_fecha
                             OR cliente_descuento.fecha_fin IS NULL)
                        UNION ALL
                        SELECT cliente_descuento.fecha_desde
                              ,cliente_descuento.descuento
                          FROM cliente_descuento
                               INNER JOIN artcomun
                                 ON artcomun.cod_art = cliente_descuento.cod_art
                                AND artcomun.familia = cliente_descuento.familia
                         WHERE cliente_descuento.cod_cli = i_cod_cli
                           AND artcomun.cod_art = i_cod_art
                           AND cliente_descuento.subfamilia = '*'
                           AND cliente_descuento.fecha_desde <= i_fecha
                           AND (cliente_descuento.fecha_fin >= i_fecha
                             OR cliente_descuento.fecha_fin IS NULL)
                        UNION ALL
                        SELECT cliente_descuento.fecha_desde
                              ,cliente_descuento.descuento
                          FROM cliente_descuento
                               INNER JOIN artcomun
                                 ON artcomun.familia = cliente_descuento.familia
                                AND artcomun.subfamilia = cliente_descuento.subfamilia
                         WHERE cliente_descuento.cod_cli = i_cod_cli
                           AND artcomun.cod_art = i_cod_art
                           AND cliente_descuento.cod_art = '*'
                           AND cliente_descuento.fecha_desde <= i_fecha
                           AND (cliente_descuento.fecha_fin >= i_fecha
                             OR cliente_descuento.fecha_fin IS NULL)
                        UNION ALL
                        SELECT cliente_descuento.fecha_desde
                              ,cliente_descuento.descuento
                          FROM cliente_descuento
                               INNER JOIN artcomun
                                 ON artcomun.cod_art = cliente_descuento.cod_art
                                AND artcomun.subfamilia = cliente_descuento.subfamilia
                         WHERE cliente_descuento.cod_cli = i_cod_cli
                           AND artcomun.cod_art = i_cod_art
                           AND cliente_descuento.familia = '*'
                           AND cliente_descuento.fecha_desde <= i_fecha
                           AND (cliente_descuento.fecha_fin >= i_fecha
                             OR cliente_descuento.fecha_fin IS NULL)
                        UNION ALL
                        SELECT cliente_descuento.fecha_desde
                              ,cliente_descuento.descuento
                          FROM cliente_descuento
                               INNER JOIN artcomun ON artcomun.cod_art = cliente_descuento.cod_art
                         WHERE cliente_descuento.cod_cli = i_cod_cli
                           AND artcomun.cod_art = i_cod_art
                           AND cliente_descuento.subfamilia = '*'
                           AND cliente_descuento.familia = '*'
                           AND cliente_descuento.fecha_desde <= i_fecha
                           AND (cliente_descuento.fecha_fin >= i_fecha
                             OR cliente_descuento.fecha_fin IS NULL)
                        UNION ALL
                        SELECT cliente_descuento.fecha_desde
                              ,cliente_descuento.descuento
                          FROM cliente_descuento
                               INNER JOIN artcomun ON artcomun.subfamilia = cliente_descuento.subfamilia
                         WHERE cliente_descuento.cod_cli = i_cod_cli
                           AND artcomun.cod_art = i_cod_art
                           AND cliente_descuento.cod_art = '*'
                           AND cliente_descuento.familia = '*'
                           AND cliente_descuento.fecha_desde <= i_fecha
                           AND (cliente_descuento.fecha_fin >= i_fecha
                             OR cliente_descuento.fecha_fin IS NULL)
                        UNION ALL
                        SELECT cliente_descuento.fecha_desde
                              ,cliente_descuento.descuento
                          FROM cliente_descuento
                               INNER JOIN artcomun ON artcomun.familia = cliente_descuento.familia
                         WHERE cliente_descuento.cod_cli = i_cod_cli
                           AND artcomun.cod_art = i_cod_art
                           AND cliente_descuento.cod_art = '*'
                           AND cliente_descuento.subfamilia = '*'
                           AND cliente_descuento.fecha_desde <= i_fecha
                           AND (cliente_descuento.fecha_fin >= i_fecha
                             OR cliente_descuento.fecha_fin IS NULL)
                        UNION ALL
                        SELECT cliente_descuento.fecha_desde
                              ,cliente_descuento.descuento
                          FROM cliente_descuento
                         WHERE cliente_descuento.cod_cli = i_cod_cli
                           AND cliente_descuento.cod_art = '*'
                           AND cliente_descuento.familia = '*'
                           AND cliente_descuento.subfamilia = '*'
                           AND cliente_descuento.fecha_desde <= i_fecha
                           AND (cliente_descuento.fecha_fin >= i_fecha
                             OR cliente_descuento.fecha_fin IS NULL))
              ORDER BY fecha_desde DESC)
       WHERE ROWNUM = 1;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        l_descuento := 0;
    END;

    RETURN NVL (l_descuento, 0);
  END get_descuento_cliente_descuento;

  FUNCTION get_descuento_fuente_pedido (i_cod_cli      IN VARCHAR2
                                       ,i_cod_fuen_ped IN VARCHAR2)
    RETURN NUMBER AS
    l_descuento cliente_descuento_t.descuento%TYPE;
  BEGIN
    BEGIN
      SELECT cliente_descuento_fuen_ped.descuento
        INTO l_descuento
        FROM cliente_descuento_fuen_ped
       WHERE cliente_descuento_fuen_ped.cod_cli = i_cod_cli
         AND cliente_descuento_fuen_ped.cod_fuen_ped = i_cod_fuen_ped;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        l_descuento := 0;
    END;

    RETURN NVL (l_descuento, 0);
  END get_descuento_fuente_pedido;

  PROCEDURE get_precio_venta (i_cod_art              IN     VARCHAR2
                             ,i_cod_cli              IN     VARCHAR2
                             ,i_cod_fuen_ped         IN     VARCHAR2
                             ,i_cod_divisa           IN     VARCHAR2
                             ,i_fecha                IN     DATE
                             ,i_cantidad             IN     NUMBER
                             ,o_precio                  OUT NUMBER
                             ,o_tpreu                   OUT VARCHAR2
                             ,o_dto1                    OUT NUMBER
                             ,o_dto2                    OUT NUMBER
                             ,o_dto3                    OUT NUMBER
                             ,o_codigo_origen_precio    OUT VARCHAR2) AS
    l_cod_tarifa                   cliente_t.cod_tarifa%TYPE;
    l_cod_dto_general              cliente_t.cod_dto_general%TYPE;

    l_cod_cli_central              cliente_t.cod_cli_central%TYPE;
    l_precio_tarifa                NUMBER (18, 6);
    l_tpreu_tarifa                 VARCHAR2 (1);
    l_descuento_general            NUMBER (5, 2);
    l_descuento_cliente            NUMBER (5, 2);
    l_descuento1                   NUMBER (5, 2);

    l_descuento_fuente_pedido      NUMBER (5, 2);
    l_precio_neto_tarifa           NUMBER (18, 6);
    l_precio_neto_tarifa_unitario  NUMBER (18, 6);
    l_precio_neto_cliente          NUMBER (18, 6);
    l_precio_neto_cliente_unitario NUMBER (18, 6);
    l_tpreu_precio_neto_cliente    VARCHAR2 (1);

    l_precio_grupo_netos           NUMBER (18, 6);
    l_precio_grupo_netos_unitario  NUMBER (18, 6);
    l_tpreu_grupo_netos            VARCHAR2 (1);
    l_precio_neto                  NUMBER (18, 6);
    l_tpreu_neto                   VARCHAR2 (1);
    l_precio_neto_unitario         NUMBER (18, 6);
    l_origen_descuento             VARCHAR2 (1 CHAR) := '0';
    l_origen_neto                  VARCHAR2 (1 CHAR) := '0';
    l_tipo_calculo_precio          cliente_t.tipo_calculo_precio%TYPE;
  BEGIN
    o_precio := 0;
    o_tpreu := 'U';
    o_dto1 := 0;
    o_dto2 := 0;
    o_dto2 := 0;
    o_dto3 := 0;
    o_codigo_origen_precio := 'T0';

    BEGIN
      SELECT cliente.cod_tarifa
            ,cliente.cod_dto_general
            ,cliente.cod_cli_central
            ,cliente.tipo_calculo_precio
        INTO l_cod_tarifa
            ,l_cod_dto_general
            ,l_cod_cli_central
            ,l_tipo_calculo_precio
        FROM cliente
       WHERE cliente.cod_cli = i_cod_cli;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        RETURN;
    END;

    IF l_cod_cli_central IS NOT NULL THEN
      -- Precio central
      NULL;
    END IF;

    IF l_tipo_calculo_precio IS NULL THEN
      l_tipo_calculo_precio := 'M';
    END IF;

    -- Precio tarifa teniendo en cuenta las tarifas derivadas
    tarifa_venta_pkg.get_precio_tarifa (i_cod_tarifa => l_cod_tarifa
                                       ,i_cod_divisa => i_cod_divisa
                                       ,i_cod_art    => i_cod_art
                                       ,i_fecha      => i_fecha
                                       ,i_cantidad   => i_cantidad
                                       ,o_precio     => l_precio_tarifa
                                       ,o_tpreu      => l_tpreu_tarifa);
    -- Descuento 1
    -- El mejor entre el descuento de cliente y el general
    l_descuento_general :=
      tarifa_venta_pkg.get_descuento_general (i_cod_art         => i_cod_art
                                             ,i_cod_dto_general => l_cod_dto_general
                                             ,i_fecha           => i_fecha);

    l_descuento_cliente :=
      tarifa_venta_pkg.get_descuento_cliente_descuento (i_cod_art => i_cod_art
                                                       ,i_cod_cli => i_cod_cli
                                                       ,i_fecha   => i_fecha);

    IF l_descuento_general > l_descuento_cliente THEN
      l_descuento1 := l_descuento_general;
      l_origen_descuento := '2'; -- Descuento General
    ELSE
      l_descuento1 := l_descuento_cliente;
      l_origen_descuento := '1'; -- Descuento Cliente
    END IF;

    IF l_descuento1 = 0 THEN
      l_origen_descuento := '0';
    END IF;

    -- Precio neto tarifa
    l_precio_neto_tarifa := l_precio_tarifa * ((100 - l_descuento1) / 100);
    l_precio_neto_tarifa_unitario :=
      tarifa_venta_pkg.get_precio_unitario (i_precio => l_precio_neto_tarifa
                                           ,i_tpreu  => l_tpreu_tarifa);

    -- Precio neto cliente
    tarifa_venta_pkg.get_precio_cliente_neto (i_cod_cli    => i_cod_cli
                                             ,i_cod_divisa => i_cod_divisa
                                             ,i_cod_art    => i_cod_art
                                             ,i_fecha      => i_fecha
                                             ,i_cantidad   => i_cantidad
                                             ,o_precio     => l_precio_neto_cliente
                                             ,o_tpreu      => l_tpreu_precio_neto_cliente);
    l_precio_neto_cliente_unitario :=
      tarifa_venta_pkg.get_precio_unitario (i_precio => l_precio_neto_cliente
                                           ,i_tpreu  => l_tpreu_precio_neto_cliente);

    -- Precio neto grupo netos
    tarifa_venta_pkg.get_precio_grupo_netos (i_cod_cli    => i_cod_cli
                                            ,i_cod_divisa => i_cod_divisa
                                            ,i_cod_art    => i_cod_art
                                            ,i_fecha      => i_fecha
                                            ,i_cantidad   => i_cantidad
                                            ,o_precio     => l_precio_grupo_netos
                                            ,o_tpreu      => l_tpreu_grupo_netos);

    l_precio_grupo_netos_unitario :=
      tarifa_venta_pkg.get_precio_unitario (i_precio => l_precio_grupo_netos
                                           ,i_tpreu  => l_tpreu_grupo_netos);

    -- Precio Neto
    IF NVL (l_precio_grupo_netos_unitario, 0) = 0
    OR (NVL (l_precio_neto_cliente_unitario, 0) <> 0
    AND l_precio_neto_cliente_unitario <= l_precio_grupo_netos_unitario) THEN
      l_precio_neto := l_precio_neto_cliente;
      l_tpreu_neto := l_tpreu_precio_neto_cliente;
      l_origen_neto := '0';
    ELSE
      l_precio_neto := l_precio_grupo_netos;
      l_tpreu_neto := l_tpreu_grupo_netos;
      l_origen_neto := '1';
    END IF;

    l_precio_neto_unitario :=
      tarifa_venta_pkg.get_precio_unitario (i_precio => l_precio_neto
                                           ,i_tpreu  => l_tpreu_neto);

    -- Determinamos si cogemos precios netos o tarifa + descuento, pero comprobando si queremos que coja mejor precio cliente o precio neto cliente (cliente_t.tipo_calculo_precio)
    IF (NVL (l_precio_neto_unitario, 0) = 0
     OR (NVL (l_precio_neto_tarifa_unitario, 0) <> 0
     AND l_precio_neto_tarifa_unitario <= l_precio_neto_unitario))
   AND (l_tipo_calculo_precio <> 'N'
     OR (l_precio_neto = 0
     AND l_tipo_calculo_precio = 'N')) THEN
      -- Precio tarifa + dto
      o_precio := l_precio_tarifa;
      o_tpreu := l_tpreu_tarifa;
      o_dto1 := l_descuento1;
      o_codigo_origen_precio := 'T' || l_origen_descuento;
    ELSE
      -- precio neto sin dto
      o_precio := l_precio_neto;
      o_tpreu := l_tpreu_neto;
      o_dto1 := 0;

      o_codigo_origen_precio := 'N' || l_origen_neto;
    END IF;

    -- Descuento 3
    -- En función del tipo de entrada del pedido
    l_descuento_fuente_pedido :=
      tarifa_venta_pkg.get_descuento_fuente_pedido (i_cod_cli      => i_cod_cli
                                                   ,i_cod_fuen_ped => i_cod_fuen_ped);
    o_dto3 := l_descuento_fuente_pedido;
  END get_precio_venta;

  FUNCTION get_descuento_bonificacion (i_cod_cli IN VARCHAR2
                                      ,i_importe IN DECIMAL)
    RETURN NUMBER AS
    l_descuento NUMBER (7, 4);
  BEGIN
    BEGIN
      SELECT descuento
        INTO l_descuento
        FROM (  SELECT descuento_bonificacion_det.descuento
                  FROM cliente
                       INNER JOIN descuento_bonificacion_det
                         ON descuento_bonificacion_det.cod_dto_bonificacion = cliente.cod_dto_bonificacion
                 WHERE cliente.cod_cli = i_cod_cli
                   AND descuento_bonificacion_det.importe_desde <= i_importe
              ORDER BY descuento_bonificacion_det.importe_desde DESC)
       WHERE ROWNUM = 1;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        l_descuento := 0;
    END;

    RETURN NVL (l_descuento, 0);
  END get_descuento_bonificacion;

  FUNCTION get_precio_unitario_tarifa (i_cod_art IN VARCHAR2)
    RETURN NUMBER AS
    l_precio NUMBER (18, 6);
    l_tpreu  VARCHAR2 (1);
  BEGIN
    get_precio_tarifa (i_cod_tarifa => '1'
                      ,i_cod_divisa => 'EU'
                      ,i_cod_art    => i_cod_art
                      ,i_fecha      => SYSDATE
                      ,i_cantidad   => 1
                      ,o_precio     => l_precio
                      ,o_tpreu      => l_tpreu);
    RETURN get_precio_unitario (i_precio => l_precio
                               ,i_tpreu  => l_tpreu);
  END get_precio_unitario_tarifa;

  FUNCTION get_precio_unitario_tarifa (i_cod_art    IN VARCHAR2
                                      ,i_cod_tarifa IN VARCHAR2)
    RETURN NUMBER AS
    l_precio NUMBER (18, 6);
    l_tpreu  VARCHAR2 (1);
  BEGIN
    get_precio_tarifa (i_cod_tarifa => i_cod_tarifa
                      ,i_cod_divisa => 'EU'
                      ,i_cod_art    => i_cod_art
                      ,i_fecha      => SYSDATE
                      ,i_cantidad   => 1
                      ,o_precio     => l_precio
                      ,o_tpreu      => l_tpreu);
    RETURN get_precio_unitario (i_precio => l_precio
                               ,i_tpreu  => l_tpreu);
  END get_precio_unitario_tarifa;

  PROCEDURE actualiza_tarifa_base AS
  BEGIN
    FOR articulos_rec IN (SELECT cod_art
                            FROM tarifa_articulo
                           WHERE cod_tarifa IN (SELECT valor_dg
                                                  FROM datos_gen
                                                 WHERE descr_dg = 'TARIFA_BASE_APLICAR_CALCULO')
                             AND fecha_desde < SYSDATE) LOOP
      tarifa_venta_pkg.actualiza_tarifa_base (articulos_rec.cod_art);
    END LOOP articulos;
  END actualiza_tarifa_base;

  PROCEDURE actualiza_tarifa_base (i_cod_art IN VARCHAR2) AS
    l_ct_costes_embarque_manual artfilial_t.ct_coste_embarque_manual%TYPE;
    l_ct_tarifa_xp_calculada    artfilial_t.ct_tarifa_xp_calculada%TYPE;
    l_ct_tarifa_xp              artfilial_t.ct_tarifa_xp%TYPE;
  BEGIN
    -- Obtemenos último embarque
    BEGIN
      SELECT ct_costes_embarque_manual
            ,c_tarifa_calculada
            ,c_tarifa_xp_final
        INTO l_ct_costes_embarque_manual
            ,l_ct_tarifa_xp_calculada
            ,l_ct_tarifa_xp
        FROM (SELECT TRUNC (  ROUND ((c_coste_embarque + c_gastos_embarque + c_importe_arancel + c_ult_precio_compra)
                                    ,3)
                            * c_factor_division
                           ,2) AS c_tarifa_calculada
                    ,ct_tarifa_xp_manual
                    ,CASE
                       WHEN ct_tarifa_xp_manual IS NULL
                         OR ct_tarifa_xp_manual = 0 THEN
                         TRUNC (
                             ROUND ((c_coste_embarque + c_gastos_embarque + c_importe_arancel + c_ult_precio_compra)
                                   ,3)
                           * c_factor_division
                          ,2)
                       ELSE
                         ct_tarifa_xp_manual
                     END c_tarifa_xp_final
                    ,ct_costes_embarque_manual
                FROM (SELECT c_coste_embarque
                            ,c_gastos_embarque
                            ,c_ult_precio_compra
                            ,c_factor_division
                            ,ct_tarifa_xp_manual
                            ,ct_costes_embarque_manual
                            ,CASE
                               WHEN calculo_arancel_manual_sn = 'N' THEN
                                 ct_importe_arancel
                               ELSE
                                 ROUND (  ROUND ((c_coste_embarque + c_gastos_embarque + c_ult_precio_compra)
                                                ,3)
                                        * (ct_porcentaje_arancel_manual / 100)
                                       ,3)
                             END c_importe_arancel
                        FROM (SELECT cod_art
                                    ,CASE
                                       WHEN calculo_costes_manual_sn = 'N' THEN
                                         ct_costes_embarque
                                       ELSE
                                         NVL (ROUND ((  ct_coste_transporte
                                                      / NULLIF (ct_unidades_transporte
                                                               ,0))
                                                    ,3)
                                             ,0)
                                     END c_coste_embarque
                                    ,CASE
                                       WHEN calculo_costes_manual_sn = 'N' THEN ct_gastos_embarque
                                       ELSE ct_coste_gastos_embarque_manual
                                     END c_gastos_embarque
                                    ,ct_importe_arancel
                                    ,ct_porcentaje_arancel_manual
                                    ,CASE
                                       WHEN calculo_costes_manual_sn = 'N' THEN ct_ultimo_precio_compra_uni
                                       ELSE ct_ult_precio_compra_uni_manual
                                     END c_ult_precio_compra
                                    ,NVL (ROUND ((  ct_coste_transporte
                                                  / NULLIF (ct_unidades_transporte
                                                           ,0))
                                                ,2)
                                         ,0) AS ct_costes_embarque_manual
                                    ,CASE
                                       WHEN ct_factor_division = 0
                                         OR ct_factor_division IS NULL THEN
                                         1
                                       ELSE
                                         ct_factor_division
                                     END c_factor_division
                                    ,ct_tarifa_xp_manual
                                    ,calculo_arancel_manual_sn
                                FROM artfilial
                               WHERE cod_art = i_cod_art)));

      UPDATE artfilial
         SET ct_coste_embarque_manual = l_ct_costes_embarque_manual
            ,ct_tarifa_xp_calculada = l_ct_tarifa_xp_calculada
            ,ct_tarifa_xp = l_ct_tarifa_xp
       WHERE cod_art = i_cod_art;

      UPDATE tarifa_articulo
         SET precio = l_ct_tarifa_xp
       WHERE cod_tarifa IN (SELECT valor_dg
                              FROM datos_gen
                             WHERE descr_dg = 'TARIFA_BASE_APLICAR_CALCULO')
         AND cod_art = i_cod_art
         AND fecha_desde < SYSDATE;
    --dbms_output.put_line('art:' || i_cod_art || ' tarifa_xp:' || l_ct_tarifa_xp);

    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        l_ct_costes_embarque_manual := 0;
        l_ct_tarifa_xp_calculada := 0;
        l_ct_tarifa_xp := 0;
    END;
  END actualiza_tarifa_base;

  FUNCTION get_precio_venta_unitario (i_cod_art IN VARCHAR2
                                     ,i_cod_cli IN VARCHAR2
                                     ,i_fecha   IN DATE DEFAULT SYSDATE)
    RETURN NUMBER AS
  BEGIN
    RETURN get_precio_venta_unitario_tipo (i_cod_art     => i_cod_art
                                          ,i_cod_cli     => i_cod_cli
                                          ,i_fecha       => i_fecha
                                          ,i_tipo_precio => 'N');
  END get_precio_venta_unitario;

  FUNCTION get_precio_venta_unitario_tipo (i_cod_art     IN VARCHAR2
                                          ,i_cod_cli     IN VARCHAR2
                                          ,i_fecha       IN DATE DEFAULT SYSDATE
                                          ,i_tipo_precio IN VARCHAR2 DEFAULT 'N')
    /* i_tipo_precio = 'N' neto
       i_tipo_precio = 'B' bruto */
    RETURN NUMBER AS
    l_cod_fuen_ped         VARCHAR2 (2 CHAR);
    l_cod_divisa           VARCHAR2 (2 CHAR);
    l_cantidad             NUMBER (10);
    l_precio               NUMBER (18, 6);
    l_tpreu                VARCHAR2 (1 CHAR);
    l_dto1                 NUMBER (7, 4);
    l_dto2                 NUMBER (7, 4);
    l_dto3                 NUMBER (7, 4);
    l_codigo_origen_precio VARCHAR2 (2 CHAR);
    l_precio_unitario      NUMBER (18, 6);
    l_importe_dto          NUMBER (18, 6);
    l_dto_equivalente      NUMBER (7, 4);
  BEGIN
    l_cod_fuen_ped := 'TE';
    l_cantidad := 1;
    l_precio_unitario := 0;

    SELECT cliente.cod_divisa
      INTO l_cod_divisa
      FROM cliente
     WHERE cliente.cod_cli = i_cod_cli;

    tarifa_venta_pkg.get_precio_venta (i_cod_art              => i_cod_art
                                      ,i_cod_cli              => i_cod_cli
                                      ,i_cod_fuen_ped         => l_cod_fuen_ped
                                      ,i_cod_divisa           => l_cod_divisa
                                      ,i_fecha                => i_fecha
                                      ,i_cantidad             => l_cantidad
                                      ,o_precio               => l_precio
                                      ,o_tpreu                => l_tpreu
                                      ,o_dto1                 => l_dto1
                                      ,o_dto2                 => l_dto2
                                      ,o_dto3                 => l_dto3
                                      ,o_codigo_origen_precio => l_codigo_origen_precio);

    l_precio_unitario :=
      ROUND (  ROUND (NVL (l_precio, 0)
                     ,2)
             / CASE l_tpreu
                 WHEN 'M' THEN 1000
                 WHEN 'C' THEN 100
                 ELSE 1
               END
            ,5);

    l_dto_equivalente :=
      ROUND (1 - ((1 - NVL (l_dto1 / 100, 0)) * (1 - NVL (l_dto2 / 100, 0)) * (1 - NVL (l_dto3 / 100, 0)))
            ,4);

    l_importe_dto :=
      ROUND (l_precio_unitario * l_dto_equivalente
            ,5);

    IF i_tipo_precio = 'N' THEN /* calcular neto */
      l_precio_unitario := l_precio_unitario - l_importe_dto;
    END IF;

    RETURN l_precio_unitario;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN 0;
  END get_precio_venta_unitario_tipo;
END tarifa_venta_pkg;
/

