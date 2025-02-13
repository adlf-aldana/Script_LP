/*  CAJAS DE AHORRO CERRADAS */-- SIN RETENCION
SELECT DISTINCT b.camcancta NRO_CTA, --1
  b.camcafapt FECHA_APRT, --2
  b.camcatpca COD_PROD_CTA, --3
  trim(c.catcadesc) PROD_CTA, --4
  trim(e.cacondesc) TIPO_MANEJO, --5
  (SELECT p.catrnglos
    FROM catrn p
    WHERE p.catrnncta = b.camcancta
    AND p.catrnntra = (SELECT max(q.catrnntra)
                      FROM catrn q
                      WHERE q.catrnncta = b.camcancta)) MOTIVO_CIERRE, --6
  b.camcacmon MONEDA_ORIG, --7
  l.gbpmttcof TIPO_CAMBIO, --8
  round(decode(b.camcacmon, 1, (b.camcasdia), 2, ((b.camcasdia) * 6.86)), 2) SALDO_BS, --9
  round((b.camcasdia), 2) SALDO_ORIG, --10
  ROUND(decode(b.camcatpca, (SELECT cc.catcatpca
                            FROM catca cc
                            WHERE cc.catcatpca = b.camcatpca
                            AND b.camcatasa > 0
                            AND cc.catcatpca NOT IN (SELECT p.caprptpca
                                                    FROM caprp p
                                                    WHERE p.caprptpca = cc.catcatpca)),
                            b.camcatasa, d.canidtasa), 2) TASA_N, --11
  DECODE(m.caigdtasa,
        0,n.cacaptasa,
        NULL, DECODE(b.camcatpca, 
            1, 2,m.caigdtasa), m.caigdtasa) TASA_E, --12
  ROUND(nvl(DECODE(b.camcacmon,
              1, f.caprompro,
              2, (f.caprompro * l.gbpmttcof)),0), 2) SALDO_PROM_BS, --13
  ROUND(nvl(f.caprompro,0),2) SALDO_PROM_ORIG, --14
  (SELECT x.caprompro
    FROM capro x
    WHERE x.caproncta = b.camcancta
    AND b.camcacmon = 1
    AND a.gbagetper = 1
    AND x.caproanio = 2025
    AND x.capronmes = 1) prom_DS2055, --15
  ROUND(nvl(DECODE(b.camcacmon,
              1, (SELECT sum (x.caigdintg)
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2024-12-01' AND '2024-12-31'),
              (SELECT sum (x.caigdintg) * 6.86
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2024-12-01' AND '2024-12-31')),0), 2) INT_DVG_ACUM, --16
  round(decode(b.camcacmon, 1, b.camcaiacu,
                            2, (b.camcaiacu * 6.86)), 2) Int_dvg_mes, --17
  (SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_ULT_INT, --18
(SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_CAP_INT, --19                          
 (SELECT catrnftra
  FROM (
    SELECT
        catrnftra,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))) FECHA_ULT_MOV, --20
  (SELECT TRIM(catrnglos)
  FROM (
    SELECT
        catrnglos,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,11,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))) TIPO_ULT_MOV,--21
  (SELECT catrnftra
  FROM (
    SELECT
        catrnftra,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,11,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))-1) FECHA_PULTIMO_MOV,--22
  (SELECT TRIM(catrnglos)
  FROM (
    SELECT
        catrnglos,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,11,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))-1) TIPO_PULTIMO_MOV, --23
   (SELECT catrnftra
  FROM (
    SELECT
        catrnftra,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))-2) FECHA_APULT_MOV, --24
  (SELECT TRIM(catrnglos)
  FROM (
    SELECT
        catrnglos,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,11,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))-2) TIPO_APULT_MOV,--25
  trim(h.cacondesc) ESTADO_ANTERIOR, --26
  b.camcafcbl FECHA_ESTADO, --27
  DECODE(b.camcacmon,1,LEFT(c.catcactcb,6),
                     2,LEFT(c.catcactcd,6)) CUENTA_CTBLE_SALDO, --28
   CAST('' AS INT) MONTO_RETENIDO, --29
  '' MOTIVO_RETENIDO, --30
  '' CUENTA_CTBLE_RTN, --31
  trim(g.gbofidesc) NOMBRE_OFICINA, --32
  decode(b.camcatpca, (SELECT cc.catcatpca
                      FROM catca cc
                      WHERE cc.catcatpca = b.camcatpca
                        AND cc.catcatpca IN (3,38,39,40,41)
                        AND b.camcancta NOT IN (SELECT p.catitncta
                                                FROM catit p
                                                WHERE p.catitncta = b.camcancta)), 3, NULL) COD_CUENTA_FUNC, --33
  trim(a.gbagenomb) NOMBRE, --34
  trim(a.gbagendid) NRO_DOC_IDENTIDAD, --35
  a.gbagecage CODIGO_CLIENTE, --36
  a.gbagefnac FECHA_NACIMIENTO, --37
 decode(j.gbconcorr, 1, 'PERSONA NATURAL', 'PERSONA JURIDICA') ITPO_PERSONA, --38
'SI' FIRMANTE_AUTORIZADO, --39
 (select group_concat_bar(cafircage) from cafir where cafirncta=b.camcancta and cafirstat=0) COD_FIRMANTE --40
FROM gbage a,camca b,catca c,canid d,cacon e,OUTER capro f,gbofi g,cacon h,OUTER catcm i,gbcon j, gbpmt l, OUTER caigd m,OUTER cacap n, cahbl o
WHERE a.gbagecage = b.camcacage
  AND b.camcatpca = c.catcatpca
  AND b.camcatpca = d.canidtpca
  AND b.camcacmon = d.canidcmon
  AND b.camcamane = e.caconcorr
  AND b.camcancta = f.caproncta
  AND b.camcaagen = g.gbofinofi
  AND o.cahblstaa = h.caconcorr
  AND h.caconpref = 4
  AND b.camcancta = m.caigdncta
AND m.caigdfech = l.gbpmtfdia
and n.cacapncta = b.camcancta
AND n.cacapanio = 2025
AND n.cacapnmes = 1
AND f.caproanio = 2025
AND f.capronmes = 1
  AND b.camcatpca = i.catcmtpca
  AND b.camcacmon = i.catcmcmon
  AND j.gbconpfij = 1
  AND a.gbagetper = j.gbconcorr
  AND b.camcastat IN (4)
  AND b.camcastat=o.cahblstan
  AND d.canidmrcb = 0
  AND e.caconpref = 3
  and b.camcancta=o.cahblncta
  and b.camcafcbl=o.cahblfblq
  AND b.camcafcbl BETWEEN '2024-01-01' AND '2025-01-30'
AND NOT EXISTS (SELECT *
                FROM capig m
                WHERE m.capigncta=b.camcancta
                AND m.capigstat=9
                AND m.capigcpig IN (SELECT pi.catpgcpig
                                    FROM catpg pi
                                    WHERE pi.catpgcpig = m.capigcpig
                                    AND pi.catpgtpgr IS NOT NULL 
                                    AND pi.catpgctab IS NOT NULL))
UNION -- 2
SELECT DISTINCT b.camcancta NRO_CTA, --1
  b.camcafapt FECHA_APRT, --2
  b.camcatpca COD_PROD_CTA, --3
  trim(c.catcadesc) PROD_CTA, --4
  trim(e.cacondesc) TIPO_MANEJO, --5
  (SELECT p.catrnglos
    FROM catrn p
    WHERE p.catrnncta = b.camcancta
    AND p.catrnntra = (SELECT max(q.catrnntra)
                      FROM catrn q
                      WHERE q.catrnncta = b.camcancta)) MOTIVO_CIERRE, --6
  b.camcacmon MONEDA_ORIG, --7
  l.gbpmttcof TIPO_CAMBIO, --8
  round(decode(b.camcacmon, 1, (b.camcasdia), 2, ((b.camcasdia) * 6.86)), 2) SALDO_BS, --9
  round((b.camcasdia), 2) SALDO_ORIG, --10
  ROUND(decode(b.camcatpca, (SELECT cc.catcatpca
                            FROM catca cc
                            WHERE cc.catcatpca = b.camcatpca
                            AND b.camcatasa > 0
                            AND cc.catcatpca NOT IN (SELECT p.caprptpca
                                                    FROM caprp p
                                                    WHERE p.caprptpca = cc.catcatpca)),
                            b.camcatasa, d.canidtasa), 2) TASA_N, --11
  DECODE(m.caigdtasa,
        0,n.cacaptasa,
        NULL, DECODE(b.camcatpca, 
            1, 2,m.caigdtasa), m.caigdtasa) TASA_E, --12
  ROUND(nvl(DECODE(b.camcacmon,
              1, f.caprompro,
              2, (f.caprompro * l.gbpmttcof)),0), 2) SALDO_PROM_BS, --13
  ROUND(nvl(f.caprompro,0),2) SALDO_PROM_ORIG, --14
  (SELECT x.caprompro
    FROM capro x
    WHERE x.caproncta = b.camcancta
    AND b.camcacmon = 1
    AND a.gbagetper = 1
    AND x.caproanio = 2023
    AND x.capronmes = 11) prom_DS2055, --15
  ROUND(nvl(DECODE(b.camcacmon,
              1, (SELECT sum (x.caigdintg)
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2024-01-01' AND '2024-12-31'),
              (SELECT sum (x.caigdintg) * 6.86
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2024-01-01' AND '2024-12-31')),0), 2) INT_DVG_ACUM, --16
  round(decode(b.camcacmon, 1, b.camcaiacu,
                            2, (b.camcaiacu * 6.86)), 2) Int_dvg_mes, --17
  (SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_ULT_INT, --18
(SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_CAP_INT, --19                          
 (SELECT catrnftra
  FROM (
    SELECT
        catrnftra,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))) FECHA_ULT_MOV, --20
  (SELECT TRIM(catrnglos)
  FROM (
    SELECT
        catrnglos,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,11,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))) TIPO_ULT_MOV,--21
  (SELECT catrnftra
  FROM (
    SELECT
        catrnftra,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,11,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))-1) FECHA_PULTIMO_MOV,--22
  (SELECT TRIM(catrnglos)
  FROM (
    SELECT
        catrnglos,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,11,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))-1) TIPO_PULTIMO_MOV, --23
   (SELECT catrnftra
  FROM (
    SELECT
        catrnftra,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))-2) FECHA_APULT_MOV, --24
  (SELECT TRIM(catrnglos)
  FROM (
    SELECT
        catrnglos,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,11,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))-2) TIPO_APULT_MOV,--25
  trim(h.cacondesc) ESTADO_ANTERIOR, --26
  b.camcafcbl FECHA_ESTADO, --27
  DECODE(b.camcacmon,1,LEFT(c.catcactcb,6),
                     2,LEFT(c.catcactcd,6)) CUENTA_CTBLE_SALDO, --28
   CAST('' AS INT) MONTO_RETENIDO, --29
  '' MOTIVO_RETENIDO, --30
  '' CUENTA_CTBLE_RTN, --31
  trim(g.gbofidesc) NOMBRE_OFICINA, --32
  decode(b.camcatpca, (SELECT cc.catcatpca
                      FROM catca cc
                      WHERE cc.catcatpca = b.camcatpca
                        AND cc.catcatpca IN (3,38,39,40,41)
                        AND b.camcancta NOT IN (SELECT p.catitncta
                                                FROM catit p
                                                WHERE p.catitncta = b.camcancta)), 3, NULL) COD_CUENTA_FUNC, --33
  trim(a.gbagenomb) NOMBRE, --34
  trim(a.gbagendid) NRO_DOC_IDENTIDAD, --35
  a.gbagecage CODIGO_CLIENTE, --36
  a.gbagefnac FECHA_NACIMIENTO, --37
 decode(j.gbconcorr, 1, 'PERSONA NATURAL', 'PERSONA JURIDICA') ITPO_PERSONA, --38
'SI' FIRMANTE_AUTORIZADO, --39
 (select group_concat_bar(cafircage) from cafir where cafirncta=b.camcancta and cafirstat=0) COD_FIRMANTE --40
FROM gbage a,camca b,catca c,canid d,cacon e,OUTER capro f,gbofi g,cacon h,OUTER catcm i,gbcon j, gbpmt l, OUTER caigd m,OUTER cacap n, cahbl o
WHERE a.gbagecage = b.camcacage
  AND b.camcatpca = c.catcatpca
  AND b.camcatpca = d.canidtpca
  AND b.camcacmon = d.canidcmon
  AND b.camcamane = e.caconcorr
  AND b.camcancta = f.caproncta
  AND b.camcaagen = g.gbofinofi
  AND o.cahblstaa = h.caconcorr
  AND h.caconpref = 4
  AND b.camcancta = m.caigdncta
AND m.caigdfech = l.gbpmtfdia
and n.cacapncta = b.camcancta
AND n.cacapanio = 2025
AND n.cacapnmes = 1
AND f.caproanio = 2025
AND f.capronmes = 1
  AND b.camcatpca = i.catcmtpca
  AND b.camcacmon = i.catcmcmon
  AND j.gbconpfij = 1
  AND a.gbagetper = j.gbconcorr
  AND b.camcastat IN (4)
  AND b.camcastat=o.cahblstan
  AND d.canidmrcb = 0
  AND e.caconpref = 3
  and b.camcancta=o.cahblncta
  and b.camcafcbl=o.cahblfblq
  AND b.camcafcbl BETWEEN '2024-01-01' AND '2025-01-30'
AND EXISTS (SELECT *
                FROM capig m
                WHERE m.capigncta=b.camcancta
                AND m.capigstat=9
                AND m.capigcpig IN (SELECT pi.catpgcpig
                                    FROM catpg pi
                                    WHERE pi.catpgcpig = m.capigcpig
                                    AND pi.catpgtpgr IS NOT NULL 
                                    AND pi.catpgctab IS NOT NULL))
UNION --3
SELECT DISTINCT b.camcancta NRO_CTA, --1
  b.camcafapt FECHA_APRT, --2
  b.camcatpca COD_PROD_CTA, --3
  trim(c.catcadesc) PROD_CTA, --4
  trim(e.cacondesc) TIPO_MANEJO, --5
  (SELECT p.catrnglos
    FROM catrn p
    WHERE p.catrnncta = b.camcancta
    AND p.catrnntra = (SELECT max(q.catrnntra)
                      FROM catrn q
                      WHERE q.catrnncta = b.camcancta)) MOTIVO_CIERRE, --6
  b.camcacmon MONEDA_ORIG, --7
  l.gbpmttcof TIPO_CAMBIO, --8
  round(decode(b.camcacmon, 1, (b.camcasdia), 2, ((b.camcasdia) * 6.86)), 2) SALDO_BS, --9
  round((b.camcasdia), 2) SALDO_ORIG, --10
  ROUND(decode(b.camcatpca, (SELECT cc.catcatpca
                            FROM catca cc
                            WHERE cc.catcatpca = b.camcatpca
                            AND b.camcatasa > 0
                            AND cc.catcatpca NOT IN (SELECT p.caprptpca
                                                    FROM caprp p
                                                    WHERE p.caprptpca = cc.catcatpca)),
                            b.camcatasa, d.canidtasa), 2) TASA_N, --11
  DECODE(m.caigdtasa,
        0,n.cacaptasa,
        NULL, DECODE(b.camcatpca, 
            1, 2,m.caigdtasa), m.caigdtasa) TASA_E, --12
  ROUND(nvl(DECODE(b.camcacmon,
              1, f.caprompro,
              2, (f.caprompro * l.gbpmttcof)),0), 2) SALDO_PROM_BS, --13
  ROUND(nvl(f.caprompro,0),2) SALDO_PROM_ORIG, --14
  (SELECT x.caprompro
    FROM capro x
    WHERE x.caproncta = b.camcancta
    AND b.camcacmon = 1
    AND a.gbagetper = 1
    AND x.caproanio = 2023
    AND x.capronmes = 11) prom_DS2055, --15
  ROUND(nvl(DECODE(b.camcacmon,
              1, (SELECT sum (x.caigdintg)
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2024-01-01' AND '2025-01-30'),
              (SELECT sum (x.caigdintg) * 6.86
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2024-01-01' AND '2025-01-30')),0), 2) INT_DVG_ACUM, --16
  round(decode(b.camcacmon, 1, b.camcaiacu,
                            2, (b.camcaiacu * 6.86)), 2) Int_dvg_mes, --17
  (SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_ULT_INT, --18
(SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_CAP_INT, --19                          
 (SELECT catrnftra
  FROM (
    SELECT
        catrnftra,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))) FECHA_ULT_MOV, --20
  (SELECT TRIM(catrnglos)
  FROM (
    SELECT
        catrnglos,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,11,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))) TIPO_ULT_MOV,--21
  (SELECT catrnftra
  FROM (
    SELECT
        catrnftra,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,11,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))-1) FECHA_PULTIMO_MOV,--22
  (SELECT TRIM(catrnglos)
  FROM (
    SELECT
        catrnglos,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,11,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))-1) TIPO_PULTIMO_MOV, --23
   (SELECT catrnftra
  FROM (
    SELECT
        catrnftra,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))-2) FECHA_APULT_MOV, --24
  (SELECT TRIM(catrnglos)
  FROM (
    SELECT
        catrnglos,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,11,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))-2) TIPO_APULT_MOV,--25
  'RETENIDA' ESTADO_ANTERIOR, --26
  b.camcafcbl FECHA_ESTADO, --27
  decode(b.camcacmon,1,(select MAX(r.catpgctab)
                        from capig q,catpg r
                        where q.capigncta=b.camcancta
                        and q.capigcpig=r.catpgcpig
                        and q.capignpig =(select max(t.capignpig)
                                          from capig t
                                           where t.capigncta=b.camcancta
                                           and t.capigstat=9
                                           and t.capigcpig in(select pi.catpgcpig                          
                                           from catpg pi
                                           where pi.catpgcpig=t.capigcpig
                                           and pi.catpgtpgr is not null
                                                             and pi.catpgctab is not null
                                                             and pi.catpgcpig in (3,5,6,7,8,9,10,50)))),
                           2,(select MAX(r.catpgctad)
                              from capig q,catpg r
                              where q.capigncta=b.camcancta
                              and q.capigcpig=r.catpgcpig
                              and q.capignpig =(select max(t.capignpig)
                                                from capig t
                                                where t.capigncta=b.camcancta
                                                and t.capigstat=9
                                                and t.capigcpig in(select pi.catpgcpig                    
                                                                  from catpg pi
                                                                  where pi.catpgcpig=t.capigcpig
                                                                  and pi.catpgtpgr is not null
                                                                  and pi.catpgctab is not null
                                                                  and pi.catpgcpig in (3,5,6,7,8,9,10,50))))) CUENTA_CTBLE_SALDO, --28
  ROUND(DECODE(b.camcacmon,
            1,(SELECT sum(l.capigimpo)
               FROM capig l
               WHERE l.capigncta=b.camcancta
               AND l.capigstat=9
               AND l.capigcpig IN (3,5,6,7,8,9,10,50)),
            2,(SELECT sum(l.capigimpo)*6.86
               FROM capig l
               WHERE l.capigncta=b.camcancta
               AND l.capigstat=9
               AND l.capigcpig IN (3,5,6,7,8,9,10,50))),2) MONTO_RETENIDO, --29
  (SELECT q.capigglos
    FROM capig q
    WHERE q.capigncta=b.camcancta
    AND q.capignpig in (SELECT max(t.capignpig)
                        FROM capig t
                        WHERE t.capigncta=b.camcancta
                        AND t.capigstat=9
                        AND t.capigcpig IN (3,5,6,7,8,9,10,50))) MOTIVO_RETENIDO, --30
  DECODE(b.camcacmon,
            1,(SELECT MAX(r.catpgctab)
               FROM capig q,catpg r
               WHERE q.capigncta = b.camcancta
               AND q.capigcpig = r.catpgcpig
               AND q.capignpig = (SELECT max(t.capignpig)
                                  FROM capig t
                                  WHERE t.capigncta=b.camcancta
                                  AND t.capigstat=9
                                  AND t.capigcpig IN (3,5,6,7,8,9,10,50))),
            2,(SELECT MAX(r.catpgctad)
               FROM capig q,catpg r
               WHERE q.capigncta = b.camcancta
               AND q.capigcpig = r.catpgcpig
               AND q.capignpig = (SELECT max(t.capignpig)
                                  FROM capig t
                                  WHERE t.capigncta=b.camcancta
                                  AND t.capigstat=9
                                  AND t.capigcpig IN (3,5,6,7,8,9,10,50)))) CUENTA_CTBLE_RTN, --31
  trim(g.gbofidesc) NOMBRE_OFICINA, --32
  decode(b.camcatpca, (SELECT cc.catcatpca
                      FROM catca cc
                      WHERE cc.catcatpca = b.camcatpca
                        AND cc.catcatpca IN (3,38,39,40,41)
                        AND b.camcancta NOT IN (SELECT p.catitncta
                                                FROM catit p
                                                WHERE p.catitncta = b.camcancta)), 3, NULL) COD_CUENTA_FUNC, --33
  trim(a.gbagenomb) NOMBRE, --34
  trim(a.gbagendid) NRO_DOC_IDENTIDAD, --35
  a.gbagecage CODIGO_CLIENTE, --36
  a.gbagefnac FECHA_NACIMIENTO, --37
 decode(j.gbconcorr, 1, 'PERSONA NATURAL', 'PERSONA JURIDICA') TIPO_PERSONA, --38
'SI' FIRMANTE_AUTORIZADO, --39
 (select group_concat_bar(cafircage) from cafir where cafirncta=b.camcancta and cafirstat=0) COD_FIRMANTE --40
FROM gbage a,camca b,catca c,canid d,cacon e,OUTER capro f,gbofi g,cacon h,OUTER catcm i,gbcon j, gbpmt l, OUTER caigd m,OUTER cacap n, cahbl o
WHERE a.gbagecage = b.camcacage
  AND b.camcatpca = c.catcatpca
  AND b.camcatpca = d.canidtpca
  AND b.camcacmon = d.canidcmon
  AND b.camcamane = e.caconcorr
  AND b.camcancta = f.caproncta
  AND b.camcaagen = g.gbofinofi
  AND o.cahblstaa = h.caconcorr
  AND h.caconpref = 4
  AND b.camcancta = m.caigdncta
AND m.caigdfech = l.gbpmtfdia
and n.cacapncta = b.camcancta
AND n.cacapanio = 2025
AND n.cacapnmes = 1
AND f.caproanio = 2025
AND f.capronmes = 1
  AND b.camcatpca = i.catcmtpca
  AND b.camcacmon = i.catcmcmon
  AND j.gbconpfij = 1
  AND a.gbagetper = j.gbconcorr
  AND b.camcastat IN (4)
  AND b.camcastat=o.cahblstan
  AND d.canidmrcb = 0
  AND e.caconpref = 3
  and b.camcancta=o.cahblncta
  and b.camcafcbl=o.cahblfblq
  AND b.camcafcbl BETWEEN '2024-01-01' AND '2025-01-27'
and exists (select *
            from capig h
            where h.capigncta=b.camcancta
            and h.capigstat=9
            and h.capigcpig in(select max(pi.catpgcpig)                 
                              from catpg pi
                              where pi.catpgcpig=h.capigcpig
                              and pi.catpgtpgr is not null
                              and pi.catpgctab is not null
                              and pi.catpgcpig in (3,5,6,7,8,9,10,50))
                              and h.capigimpo>0)
UNION --4
SELECT DISTINCT b.camcancta NRO_CTA, --1
  b.camcafapt FECHA_APRT, --2
  b.camcatpca COD_PROD_CTA, --3
  trim(c.catcadesc) PROD_CTA, --4
  trim(e.cacondesc) TIPO_MANEJO, --5
  (SELECT p.catrnglos
    FROM catrn p
    WHERE p.catrnncta = b.camcancta
    AND p.catrnntra = (SELECT max(q.catrnntra)
                      FROM catrn q
                      WHERE q.catrnncta = b.camcancta)) MOTIVO_CIERRE, --6
  b.camcacmon MONEDA_ORIG, --7
  l.gbpmttcof TIPO_CAMBIO, --8
  round(decode(b.camcacmon, 1, (b.camcasdia), 2, ((b.camcasdia) * 6.86)), 2) SALDO_BS, --9
  round((b.camcasdia), 2) SALDO_ORIG, --10
  ROUND(decode(b.camcatpca, (SELECT cc.catcatpca
                            FROM catca cc
                            WHERE cc.catcatpca = b.camcatpca
                            AND b.camcatasa > 0
                            AND cc.catcatpca NOT IN (SELECT p.caprptpca
                                                    FROM caprp p
                                                    WHERE p.caprptpca = cc.catcatpca)),
                            b.camcatasa, d.canidtasa), 2) TASA_N, --11
  DECODE(m.caigdtasa,
        0,n.cacaptasa,
        NULL, DECODE(b.camcatpca, 
            1, 2,m.caigdtasa), m.caigdtasa) TASA_E, --12
  ROUND(nvl(DECODE(b.camcacmon,
              1, f.caprompro,
              2, (f.caprompro * l.gbpmttcof)),0), 2) SALDO_PROM_BS, --13
  ROUND(nvl(f.caprompro,0),2) SALDO_PROM_ORIG, --14
  (SELECT x.caprompro
    FROM capro x
    WHERE x.caproncta = b.camcancta
    AND b.camcacmon = 1
    AND a.gbagetper = 1
    AND x.caproanio = 2023
    AND x.capronmes = 11) prom_DS2055, --15
  ROUND(nvl(DECODE(b.camcacmon,
              1, (SELECT sum (x.caigdintg)
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2024-01-01' AND '2024-12-31'),
              (SELECT sum (x.caigdintg) * 6.86
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2024-01-01' AND '2024-12-31')),0), 2) INT_DVG_ACUM, --16
  round(decode(b.camcacmon, 1, b.camcaiacu,
                            2, (b.camcaiacu * 6.86)), 2) Int_dvg_mes, --17
  (SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_ULT_INT, --18
(SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_CAP_INT, --19                          
 (SELECT catrnftra
  FROM (
    SELECT
        catrnftra,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))) FECHA_ULT_MOV, --20
  (SELECT TRIM(catrnglos)
  FROM (
    SELECT
        catrnglos,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,11,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))) TIPO_ULT_MOV,--21
  (SELECT catrnftra
  FROM (
    SELECT
        catrnftra,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,11,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))-1) FECHA_PULTIMO_MOV,--22
  (SELECT TRIM(catrnglos)
  FROM (
    SELECT
        catrnglos,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,11,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))-1) TIPO_PULTIMO_MOV, --23
   (SELECT catrnftra
  FROM (
    SELECT
        catrnftra,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))-2) FECHA_APULT_MOV, --24
  (SELECT TRIM(catrnglos)
  FROM (
    SELECT
        catrnglos,
        RANK() OVER (ORDER BY catrnntra,catrnftra DESC) AS pos
    FROM catrn
    WHERE catrnncta = b.camcancta
      AND catrnstat = 0
      and ((catrnpref <>10)
            or catrncorr not in(1,2,11,51,52,50))
    ) AS pos_data
    WHERE pos = (select count(*)
                    from catrn x
                        WHERE x.catrnncta = b.camcancta
                        AND x.catrnstat = 0
                    and ((x.catrnpref <>10)
                    or catrncorr not in(1,2,11,51,52,50)))-2) TIPO_APULT_MOV,--25
  'PIGNORADA' ESTADO_ANTERIOR, --26
  b.camcafcbl FECHA_ESTADO, --27
  decode(b.camcacmon,1,(select r.catpgctab
                            from capig q,catpg r
                            where q.capigncta=b.camcancta
                            and q.capigcpig=r.catpgcpig
                            and q.capignpig =(select max(t.capignpig)
                                              from capig t
                                              where t.capigncta=b.camcancta
                                              and t.capigstat=9
                                              and t.capigcpig in(select pi.catpgcpig                          
                                                                 from catpg pi
                                                                 where pi.catpgcpig=t.capigcpig
                                                                 and pi.catpgtpgr is not null
                                                                 and pi.catpgctab is not null
                                                                 and pi.catpgcpig not in (3,5,6,7,8,9,10,50)))),
                        2,(select r.catpgctad
                            from capig q,catpg r
                            where q.capigncta=b.camcancta
                            and q.capigcpig=r.catpgcpig
                            and q.capignpig =(select max(t.capignpig)
                                              from capig t
                                              where t.capigncta=b.camcancta
                                              and t.capigstat=9
                                              and t.capigcpig in(select pi.catpgcpig                    
                                                                 from catpg pi
                                                                 where pi.catpgcpig=t.capigcpig
                                                                 and pi.catpgtpgr is not null
                                                                 and pi.catpgctab is not null
                                                                 and pi.catpgcpig not in (3,5,6,7,8,9,10,50))))) CUENTA_CTBLE_SALDO, --28
   CAST('' AS INT) MONTO_RETENIDO, --29
  '' MOTIVO_RETENIDO, --30
  '' CUENTA_CTBLE_RTN, --31
  trim(g.gbofidesc) NOMBRE_OFICINA, --32
  decode(b.camcatpca, (SELECT cc.catcatpca
                      FROM catca cc
                      WHERE cc.catcatpca = b.camcatpca
                        AND cc.catcatpca IN (3,38,39,40,41)
                        AND b.camcancta NOT IN (SELECT p.catitncta
                                                FROM catit p
                                                WHERE p.catitncta = b.camcancta)), 3, NULL) COD_CUENTA_FUNC, --33
  trim(a.gbagenomb) NOMBRE, --34
  trim(a.gbagendid) NRO_DOC_IDENTIDAD, --35
  a.gbagecage CODIGO_CLIENTE, --36
  a.gbagefnac FECHA_NACIMIENTO, --37
 decode(j.gbconcorr, 1, 'PERSONA NATURAL', 'PERSONA JURIDICA') ITPO_PERSONA, --38
'SI' FIRMANTE_AUTORIZADO, --39
 (select group_concat_bar(cafircage) from cafir where cafirncta=b.camcancta and cafirstat=0) COD_FIRMANTE --40
FROM gbage a,camca b,catca c,canid d,cacon e,OUTER capro f,gbofi g,cacon h,OUTER catcm i,gbcon j, gbpmt l, OUTER caigd m,OUTER cacap n, cahbl o
WHERE a.gbagecage = b.camcacage
  AND b.camcatpca = c.catcatpca
  AND b.camcatpca = d.canidtpca
  AND b.camcacmon = d.canidcmon
  AND b.camcamane = e.caconcorr
  AND b.camcancta = f.caproncta
  AND b.camcaagen = g.gbofinofi
  AND o.cahblstaa = h.caconcorr
  AND h.caconpref = 4
  AND b.camcancta = m.caigdncta
AND m.caigdfech = l.gbpmtfdia
and n.cacapncta = b.camcancta
AND n.cacapanio = 2025
AND n.cacapnmes = 1
AND f.caproanio = 2025
AND f.capronmes = 1
  AND b.camcatpca = i.catcmtpca
  AND b.camcacmon = i.catcmcmon
  AND j.gbconpfij = 1
  AND a.gbagetper = j.gbconcorr
  AND b.camcastat IN (4)
  AND b.camcastat=o.cahblstan
  AND d.canidmrcb = 0
  AND e.caconpref = 3
  and b.camcancta=o.cahblncta
  and b.camcafcbl=o.cahblfblq
  AND b.camcafcbl BETWEEN '2024-01-01' AND '2025-01-30'
and exists (select *
            from capig h
            where h.capigncta=b.camcancta
            and h.capigstat=9
            and h.capigcpig in(select max(pi.catpgcpig)                 
                               from catpg pi
                               where pi.catpgcpig=h.capigcpig
                               and pi.catpgtpgr is not null
                               and pi.catpgctab is not null
                               and pi.catpgcpig not in (3,5,6,7,8,9,10,50))
                               and h.capigimpo>0);