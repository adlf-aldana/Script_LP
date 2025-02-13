/* REQUERIMIENTOS ADICIONALES */
-- ANEXO II-A (RA-90-EXCEL)
-- BD CUENTAS DE CAJAS DE AHORRO (INCLUYO RESTINGIDOS) --CORTE 30/04/2022
SELECT DISTINCT b.camcancta NRO_CTA, --1
  b.camcafapt FECHA_APRT, --2
  b.camcatpca COD_PROD_CTA, --3
  trim(c.catcadesc) PROD_CTA, --4
  trim(h.cacondesc) TIPO_MANEJO, --5
  b.camcacmon MONEDA_ORIG, --6
  l.gbpmttcof TIPO_CAMBIO, --7
  ROUND(DECODE(b.camcacmon,
              1,(b.camcasact * -1),
              2,((b.camcasact * -1) * 6.86)), 2) SALDO_BS, --8
  ROUND((b.camcasact *-1)-(SELECT sum(l.capigimpo)
                            FROM capig l
                            WHERE l.capigncta=b.camcancta
                            AND l.capigstat=0
                            --AND l.capigcpig IN(2,3,5,6),
                            AND l.capigcpig IN (SELECT pi.catpgcpig
                                                FROM catpg pi
                                                WHERE pi.catpgcpig = l.capigcpig
                                                AND pi.catpgtpgr IS NOT NULL
                                                AND pi.catpgctab IS NOT NULL)),2) SALDO_ORIG,--9
    ROUND(decode(b.camcatpca,(select cc.catcatpca
                          from catca cc
                          where cc.catcatpca=b.camcatpca
                          and b.camcatasa>0
                          and cc.catcatpca not in(select p.caprptpca
                                                  from caprp p
                                                  where p.caprptpca=cc.catcatpca)),
                          b.camcatasa,d.canidtasa),2) TASA_N, --10                                              
DECODE(m.caigdtasa,
		0,n.cacaptasa,
		NULL, DECODE(b.camcatpca, 
			1, 2,m.caigdtasa), m.caigdtasa) TASA_E, --11   			                                                   
  ROUND(nvl(DECODE(b.camcacmon,
              1, f.caprompro,
              2, (f.caprompro * l.gbpmttcof)),0), 2) SALDO_PROM_BS, --12
  ROUND(nvl(f.caprompro,0),2) SALDO_PROM_ORIG, --13
  (SELECT x.caprompro
    FROM capro x
    WHERE x.caproncta = b.camcancta
    AND b.camcacmon = 1
    AND a.gbagetper = 1
    AND x.caproanio = 2025
    AND x.capronmes = 1) PROM_DS2055, --14
    ROUND(nvl(DECODE(b.camcacmon,
              1, (SELECT sum (x.caigdintg)
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2024-12-01' AND '2024-12-31'),
              (SELECT sum (x.caigdintg) * 6.86
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2024-12-01' AND '2024-12-31')),0), 2) INT_DVG_ACUM, --15  
  ROUND(nvl(DECODE(b.camcacmon,
              1, (SELECT sum (x.caigdintg)
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2025-01-01' AND '2025-01-30'),
              (SELECT sum (x.caigdintg) * 6.86
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2025-01-01' AND '2025-01-30')),0), 2) INT_DVG_MES, --16
 (SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_ULT_INT, --17
  (SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_CAP_INT, --18
  b.camcafumv FECHA_ULT_MOV, --19
  trim(e.cacondesc) ESTADO, --20
  b.camcafcbl FECHA_ESTADO, --21
  DECODE(b.camcastat,
  			1,i.catcmctaa,
            2,i.catcmctsi,
            3,i.catcmctcc) CUENTA_CTBLE_SALDO, ---22        
  cast('' AS date) FECHA_RETENCION,--23
  CAST('' AS integer)  MONTO_RETENIDO_BS, --24
  '' MOTIVO_RETENIDO, --25
  '' CUENTA_CTBLE_RTN, --26
  (SELECT max(t.capigfpro)
   FROM capig t
   WHERE t.capigncta = b.camcancta
   AND t.capigstat = 9
   AND t.capigcpig IN (3,5,6,7,8,9,10,50)) FECHA_LIB_RNT,--27
   CAST('' AS integer) MONTO_PIGNO,--28
    '' CTA_CTBLE_PIGNO,--29
    '' TASA_PIG, --30
    trim(g.gbofidesc) NOMBRE_OFICINA,--31
    decode(b.camcatpca,(select cc.catcatpca
                            from catca cc
                              where cc.catcatpca=b.camcatpca
                              and cc.catcatpca IN (3,38,39,40,41)
                              and b.camcancta not in(select p.catitncta
                                                    from catit p
                                                    where p.catitncta=b.camcancta)),3,null) COD_CUENTA_FUNC,--32                                                    
(select group_concat_bar(gbagenomb) from cafir,gbage where cafirncta=b.camcancta and cafirstat=0 and cafircage=gbagecage) NOMBRE, -- 33
(select group_concat_bar(gbagendid) from cafir,gbage where cafirncta=b.camcancta and cafirstat=0 and cafircage=gbagecage) NRO_DOC_IDENTIDAD, --34
(select group_concat_bar(cafircage) from cafir where cafirncta=b.camcancta and cafirstat=0) CODIGO_CLIENTE, --35
(select group_concat_bar(gbagefnac) from cafir,gbage where cafirncta=b.camcancta and cafirstat=0 and cafircage=gbagecage) FECHA_NACIMIENTO, --36
    (SELECT count(*)
      FROM tdtct q
      WHERE q.tdtctncta = b.camcancta) No_TARJETA_DE_DEBITO_RELACIONADAS, --37
(select group_concat(tdmtdfreg) FROM tdmtd q, tdtct r
      WHERE q.tdmtdcage = a.gbagecage
      AND q.tdmtdntrj = r.tdtctntrj
      and r.tdtctncta=b.camcancta) FECHA_HAB_TARJETAS, --38      
      DECODE(a.gbagetper,
            1, 'NATURAL',
            'JURIDICA') TIPO_PERSONA, --39
      'SI' FIRMANTE_AUTORIZADO, --40
      (select group_concat_bar(cafircage) from cafir where cafirncta=b.camcancta and cafirstat=0) COD_FIRMANTE --41*/
FROM gbage a,camca b,catca c,outer canid d,cacon e,outer capro f,gbofi g,cacon h,outer catcm i,gbcon j,gbpmt l, OUTER caigd m,OUTER cacap n
WHERE a.gbagecage = b.camcacage
AND b.camcastat IN (1,2,3)
AND b.camcancta = m.caigdncta
AND m.caigdfech = l.gbpmtfdia
and n.cacapncta = b.camcancta
AND n.cacapanio = 2025
AND n.cacapnmes = 1
AND b.camcatpca = c.catcatpca
AND h.caconpref = 3
AND b.camcamane = h.caconcorr
AND b.camcatpca=d.canidtpca
AND b.camcacmon=d.canidcmon
AND d.canidmrcb = 0
AND b.camcancta = f.caproncta
AND f.caproanio = 2025
AND f.capronmes = 1
AND e.caconpref = 4
AND b.camcastat = e.caconcorr
AND b.camcatpca = i.catcmtpca
AND b.camcacmon = i.catcmcmon
AND b.camcaagen = g.gbofinofi
AND j.gbconpfij = 1
AND a.gbagetper = j.gbconcorr
AND NOT EXISTS (SELECT *
                FROM capig m
                WHERE m.capigncta=b.camcancta
                AND m.capigstat=0
                --AND m.capigcpig in(2,3,5,6)
                AND m.capigcpig IN (SELECT pi.catpgcpig
                                    FROM catpg pi
                                    WHERE pi.catpgcpig = m.capigcpig
                                    AND pi.catpgtpgr IS NOT NULL 
                                    AND pi.catpgctab IS NOT NULL))
--and a.gbagecage in (75058,60048)
order by 1;
UNION -- 2

SELECT DISTINCT b.camcancta NRO_CTA, --1
  b.camcafapt FECHA_APRT, --2
  b.camcatpca COD_PROD_CTA, --3
  trim(c.catcadesc) PROD_CTA, --4
  trim(h.cacondesc) TIPO_MANEJO, --5
  b.camcacmon MONEDA_ORIG, --6
  l.gbpmttcof TIPO_CAMBIO, --7
  ROUND(DECODE(b.camcacmon,
              1, ((b.camcasact *-1)-(SELECT sum(l.capigimpo)
                                    FROM capig l
                                    WHERE l.capigncta=b.camcancta
                                    AND l.capigstat=0
                                    --AND l.capigcpig IN(2,3,5,6))),
                                    AND l.capigcpig IN (SELECT pi.catpgcpig
                                                      FROM catpg pi
                                                      WHERE pi.catpgcpig = l.capigcpig
                                                      AND pi.catpgtpgr IS NOT NULL
                                                      AND pi.catpgctab IS NOT NULL))),
              2, (((b.camcasact *-1)*6.86)-(SELECT sum(l.capigimpo)*6.86
                                    FROM capig l
                                    WHERE l.capigncta=b.camcancta
                                    AND l.capigstat=0
                                    --AND l.capigcpig in(2,3,5,6)
                                    AND l.capigcpig IN (SELECT pi.catpgcpig
                                                      FROM catpg pi
                                                      WHERE pi.catpgcpig = l.capigcpig
                                                      AND pi.catpgtpgr IS NOT NULL
                                                      AND pi.catpgctab IS NOT NULL)))),2) SALDO_BS,--8
   ROUND((b.camcasact *-1)-(SELECT sum(l.capigimpo)
                            FROM capig l
                            WHERE l.capigncta=b.camcancta
                            AND l.capigstat=0
                            --AND l.capigcpig IN(2,3,5,6),
                            AND l.capigcpig IN (SELECT pi.catpgcpig
                                                FROM catpg pi
                                                WHERE pi.catpgcpig = l.capigcpig
                                                AND pi.catpgtpgr IS NOT NULL
                                                AND pi.catpgctab IS NOT NULL)),2) SALDO_ORIG,--9
    ROUND(decode(b.camcatpca,(select cc.catcatpca
                          from catca cc
                          where cc.catcatpca=b.camcatpca
                          and b.camcatasa>0
                          and cc.catcatpca not in(select p.caprptpca
                                                  from caprp p
                                                  where p.caprptpca=cc.catcatpca)),
                          b.camcatasa,d.canidtasa),2) TASA_N, --10                                              
DECODE(m.caigdtasa,
		0,n.cacaptasa,
		NULL, DECODE(b.camcatpca, 
			1, 2,m.caigdtasa), m.caigdtasa) TASA_E, --11   			                                                   
  ROUND(nvl(DECODE(b.camcacmon,
              1, f.caprompro,
              2, (f.caprompro * l.gbpmttcof)),0), 2) SALDO_PROM_BS, --12
  ROUND(nvl(f.caprompro,0),2) SALDO_PROM_ORIG, --13
  (SELECT x.caprompro
    FROM capro x
    WHERE x.caproncta = b.camcancta
    AND b.camcacmon = 1
    AND a.gbagetper = 1
    AND x.caproanio = 2025
    AND x.capronmes = 1) prom_DS2055, --14
    ROUND(nvl(DECODE(b.camcacmon,
              1, (SELECT sum (x.caigdintg)
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2024-12-01' AND '2024-12-31'),
              (SELECT sum (x.caigdintg) * 6.86
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2024-12-01' AND '2024-12-31')),0), 2) INT_DVG_ACUM, --15  
  ROUND(nvl(DECODE(b.camcacmon,
              1, (SELECT sum (x.caigdintg)
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2025-01-01' AND '2025-01-30'),
              (SELECT sum (x.caigdintg) * 6.86
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2025-01-01' AND '2025-01-30')),0), 2) INT_DVG_MES, --16
 (SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_ULT_INT, --17
  (SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_CAP_INT, --18
  b.camcafumv FECHA_ULT_MOV, --19
  trim(e.cacondesc) ESTADO, --20
  b.camcafcbl FECHA_ESTADO, --21
  DECODE(b.camcastat,
  			1,i.catcmctaa,
            2,i.catcmctsi,
            3,i.catcmctcc) CUENTA_CTBLE_SALDO, ---22        
  cast('' AS date) FECHA_RETENCION,--23
  CAST('' AS integer)  MONTO_RETENIDO_BS, --24
  '' MOTIVO_RETENIDO, --25
  '' CUENTA_CTBLE_RTN, --26
  (SELECT max(t.capigfpro)
   FROM capig t
   WHERE t.capigncta = b.camcancta
   AND t.capigstat = 9
   AND t.capigcpig IN (3,5,6,7,8,9,10,50)) FECHA_LIB_RNT,--27
   CAST('' AS integer) MONTO_PIGNO,--28
    '' CTA_CTBLE_PIGNO,--29
    '' TASA_PIG, --30
    trim(g.gbofidesc) NOMBRE_OFICINA,--31
    decode(b.camcatpca,(select cc.catcatpca
                            from catca cc
                              where cc.catcatpca=b.camcatpca
                              and cc.catcatpca IN (3,38,39,40,41)
                              and b.camcancta not in(select p.catitncta
                                                    from catit p
                                                    where p.catitncta=b.camcancta)),3,null) COD_CUENTA_FUNC,--32                                                    
(select group_concat_bar(gbagenomb) from cafir,gbage where cafirncta=b.camcancta and cafirstat=0 and cafircage=gbagecage) NOMBRE, -- 33
(select group_concat_bar(gbagendid) from cafir,gbage where cafirncta=b.camcancta and cafirstat=0 and cafircage=gbagecage) NRO_DOC_IDENTIDAD, --34
(select group_concat_bar(cafircage) from cafir where cafirncta=b.camcancta and cafirstat=0) CODIGO_CLIENTE, --35
(select group_concat_bar(gbagefnac) from cafir,gbage where cafirncta=b.camcancta and cafirstat=0 and cafircage=gbagecage) FECHA_NACIMIENTO, --36
    (SELECT count(*)
      FROM tdtct q
      WHERE q.tdtctncta = b.camcancta) No_TARJETA_DE_DEBITO_RELACIONADAS, --37
 (select group_concat(tdmtdfreg) FROM tdmtd q, tdtct r
      WHERE q.tdmtdcage = a.gbagecage
      AND q.tdmtdntrj = r.tdtctntrj
      and r.tdtctncta=b.camcancta) FECHA_HAB_TARJETAS, --38      
      DECODE(a.gbagetper,
            1, 'NATURAL',
            'JURIDICA') TIPO_PERSONA, --39
      'SI' FIRMANTE_AUTORIZADO, --40
      (select group_concat_bar(cafircage) from cafir where cafirncta=b.camcancta and cafirstat=0) COD_FIRMANTE --41*/
FROM gbage a,camca b,catca c,outer canid d,cacon e,outer capro f,gbofi g,cacon h,outer catcm i,gbcon j,gbpmt l,outer caigd m,outer cacap n
WHERE a.gbagecage = b.camcacage
AND b.camcastat IN (1,2,3)
AND b.camcancta = m.caigdncta
AND m.caigdfech = l.gbpmtfdia
and n.cacapncta = b.camcancta
AND n.cacapanio = 2025
AND n.cacapnmes = 1
AND b.camcatpca = c.catcatpca
AND h.caconpref = 3
AND b.camcamane = h.caconcorr
AND b.camcatpca=d.canidtpca
AND b.camcacmon=d.canidcmon
AND d.canidmrcb = 0
AND b.camcancta = f.caproncta
AND f.caproanio = YEAR(l.gbpmtfdia)
AND f.capronmes = MONTH(l.gbpmtfdia)
AND e.caconpref = 4
AND b.camcastat = e.caconcorr
AND b.camcatpca = i.catcmtpca
AND b.camcacmon = i.catcmcmon
AND b.camcaagen = g.gbofinofi
AND j.gbconpfij = 1
AND a.gbagetper = j.gbconcorr
--AND b.camcancta = 3051345582
and exists (select *
            from capig h
            where h.capigncta=b.camcancta
            and h.capigstat=0
            and h.capigcpig in(select pi.catpgcpig                      
                               from catpg pi
                               where pi.catpgcpig=h.capigcpig
                               and pi.catpgtpgr is not null
                               and pi.catpgctab is not null))
order by 1;

UNION -- 3

SELECT DISTINCT b.camcancta NRO_CTA, --1
  b.camcafapt FECHA_APRT, --2
  b.camcatpca COD_PROD_CTA, --3
  trim(c.catcadesc) PROD_CTA, --4
  trim(h.cacondesc) TIPO_MANEJO, --5
  b.camcacmon MONEDA_ORIG, --6
  l.gbpmttcof TIPO_CAMBIO, --7
  ROUND(DECODE(b.camcacmon,
              1,  (SELECT sum(l.capigimpo)
                   FROM capig l
                   WHERE l.capigncta=b.camcancta
                   AND l.capigstat=0
                   AND l.capigcpig IN (SELECT pi.catpgcpig
                                       FROM catpg pi
                                       WHERE pi.catpgcpig = l.capigcpig
                                       AND pi.catpgtpgr IS NOT NULL
                                       AND pi.catpgctab IS NOT NULL
                                       and pi.catpgcpig in (3,5,6,7,8,9,10,50))),
              2, (SELECT sum(l.capigimpo)*6.86
                   FROM capig l
                   WHERE l.capigncta=b.camcancta
                   AND l.capigstat=0
                   AND l.capigcpig IN (SELECT pi.catpgcpig
                                       FROM catpg pi
                                       WHERE pi.catpgcpig = l.capigcpig
                                       AND pi.catpgtpgr IS NOT NULL
                                       AND pi.catpgctab IS NOT NULL
                                       and pi.catpgcpig in (3,5,6,7,8,9,10,50)))),2) SALDO_BS,--8
  round((select sum(l.capigimpo)
       from capig l
       where l.capigncta=b.camcancta
       and l.capigstat=0
       and l.capigcpig in(select pi.catpgcpig               
                           from catpg pi
                           where pi.catpgcpig=l.capigcpig
                           and pi.catpgtpgr is not null
                          and pi.catpgctab is not null
                          and pi.catpgcpig in (3,5,6,7,8,9,10,50))),2) SALDO_ORIG,--9
    ROUND(decode(b.camcatpca,(select cc.catcatpca
                          from catca cc
                          where cc.catcatpca=b.camcatpca
                          and b.camcatasa>0
                          and cc.catcatpca not in(select p.caprptpca
                                                  from caprp p
                                                  where p.caprptpca=cc.catcatpca)),
                          b.camcatasa,d.canidtasa),2) TASA_N, --10                                              
DECODE(m.caigdtasa,
		0,n.cacaptasa,
		NULL, DECODE(b.camcatpca, 
			1, 2,m.caigdtasa), m.caigdtasa) TASA_E, --11   			                                                   
  ROUND(nvl(DECODE(b.camcacmon,
              1, f.caprompro,
              2, (f.caprompro * l.gbpmttcof)),0), 2) SALDO_PROM_BS, --12
  ROUND(nvl(f.caprompro,0),2) SALDO_PROM_ORIG, --13
  (SELECT x.caprompro
    FROM capro x
    WHERE x.caproncta = b.camcancta
    AND b.camcacmon = 1
    AND a.gbagetper = 1
    AND x.caproanio = 2025
    AND x.capronmes = 1) prom_DS2055, --14
    ROUND(nvl(DECODE(b.camcacmon,
              1, (SELECT sum (x.caigdintg)
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2024-01-01' AND '2024-12-31'),
              (SELECT sum (x.caigdintg) * 6.86
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2024-01-01' AND '2024-12-31')),0), 2) INT_DVG_ACUM, --15  
  ROUND(nvl(DECODE(b.camcacmon,
              1, (SELECT sum (x.caigdintg)
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2025-01-01' AND '2025-01-30'),
              (SELECT sum (x.caigdintg) * 6.86
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2025-01-01' AND '2025-01-30')),0), 2) INT_DVG_MES, --16
 (SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_ULT_INT, --17
  (SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_CAP_INT, --18
  b.camcafumv FECHA_ULT_MOV, --19
  'RETENIDA' ESTADO, --20
  b.camcafcbl FECHA_ESTADO, --21
  decode(b.camcacmon,1,(select r.catpgctab
                        from capig q,catpg r
                        where q.capigncta=b.camcancta
                        and q.capigcpig=r.catpgcpig
                        and q.capignpig =(select max(t.capignpig)
                                          from capig t
                                           where t.capigncta=b.camcancta
                                           and t.capigstat=0
                                           and t.capigcpig in(select pi.catpgcpig                          
                                           from catpg pi
                                           where pi.catpgcpig=t.capigcpig
                                           and pi.catpgtpgr is not null
                                                             and pi.catpgctab is not null
                                                             and pi.catpgcpig in (3,5,6,7,8,9,10,50)))),
                           2,(select r.catpgctad
                              from capig q,catpg r
                              where q.capigncta=b.camcancta
                              and q.capigcpig=r.catpgcpig
                              and q.capignpig =(select max(t.capignpig)
                                                from capig t
                                                where t.capigncta=b.camcancta
                                                and t.capigstat=0
                                                and t.capigcpig in(select pi.catpgcpig                    
                                                                  from catpg pi
                                                                  where pi.catpgcpig=t.capigcpig
                                                                  and pi.catpgtpgr is not null
                                                                  and pi.catpgctab is not null
                                                                  and pi.catpgcpig in (3,5,6,7,8,9,10,50))))) CUENTA_CTBLE_SALDO,--22
  (SELECT max(t.capigfpig)
    FROM capig t
    WHERE t.capigncta = b.camcancta
    AND t.capigstat = 0
    AND t.capigcpig IN (3,5,6,7,8,9,10,50)
    AND t.capigimpo > 0) FECHA_RETENCION,--23
   ROUND(DECODE(b.camcacmon,
            1,(SELECT sum(l.capigimpo)
               FROM capig l
               WHERE l.capigncta=b.camcancta
               AND l.capigstat=0
               AND l.capigcpig IN (3,5,6,7,8,9,10,50)),
            2,(SELECT sum(l.capigimpo)*6.86
               FROM capig l
               WHERE l.capigncta=b.camcancta
               AND l.capigstat=0
               AND l.capigcpig IN (3,5,6,7,8,9,10,50))),2) MONTO_RETENIDO_BS, --24
  (SELECT q.capigglos
    FROM capig q
    WHERE q.capigncta=b.camcancta
    AND q.capignpig in (SELECT max(t.capignpig)
                        FROM capig t
                        WHERE t.capigncta=b.camcancta
                        AND t.capigstat=0
                        AND t.capigcpig IN (3,5,6,7,8,9,10,50))) MOTIVO_RETENIDO, --25
   DECODE(b.camcacmon,
            1,(SELECT r.catpgctab
               FROM capig q,catpg r
               WHERE q.capigncta = b.camcancta
               AND q.capigcpig = r.catpgcpig
               AND q.capignpig = (SELECT max(t.capignpig)
                                  FROM capig t
                                  WHERE t.capigncta=b.camcancta
                                  AND t.capigstat=0
                                  AND t.capigcpig IN (3,5,6,7,8,9,10,50))),
            2,(SELECT r.catpgctad
               FROM capig q,catpg r
               WHERE q.capigncta = b.camcancta
               AND q.capigcpig = r.catpgcpig
               AND q.capignpig = (SELECT max(t.capignpig)
                                  FROM capig t
                                  WHERE t.capigncta=b.camcancta
                                  AND t.capigstat=0
                                  AND t.capigcpig IN (3,5,6,7,8,9,10,50)))) CUENTA_CTBLE_RTN, --26
  (SELECT max(t.capigfpro)
   FROM capig t
   WHERE t.capigncta = b.camcancta
   AND t.capigstat = 9
   AND t.capigcpig IN (3,5,6,7,8,9,10,50)) FECHA_LIB_RNT,--27
   CAST('' AS integer) MONTO_PIGNO,--28
   '' CTA_CTBLE_PIGNO,--29
   '' TASA_PIG, --30   
   trim(g.gbofidesc) NOMBRE_OFICINA,--31
    decode(b.camcatpca,(select cc.catcatpca
                            from catca cc
                              where cc.catcatpca=b.camcatpca
                              and cc.catcatpca IN (3,38,39,40,41)
                              and b.camcancta not in(select p.catitncta
                                                    from catit p
                                                    where p.catitncta=b.camcancta)),3,null) COD_CUENTA_FUNC,--32                                                    
(select group_concat_bar(gbagenomb) from cafir,gbage where cafirncta=b.camcancta and cafirstat=0 and cafircage=gbagecage) NOMBRE, -- 33
(select group_concat_bar(gbagendid) from cafir,gbage where cafirncta=b.camcancta and cafirstat=0 and cafircage=gbagecage) NRO_DOC_IDENTIDAD, --34
(select group_concat_bar(cafircage) from cafir where cafirncta=b.camcancta and cafirstat=0) CODIGO_CLIENTE, --35
(select group_concat_bar(gbagefnac) from cafir,gbage where cafirncta=b.camcancta and cafirstat=0 and cafircage=gbagecage) FECHA_NACIMIENTO, --36
    (SELECT count(*)
      FROM tdtct q
      WHERE q.tdtctncta = b.camcancta) No_TARJETA_DE_DEBITO_RELACIONADAS, --37
 (select group_concat(tdmtdfreg) FROM tdmtd q, tdtct r
      WHERE q.tdmtdcage = a.gbagecage
      AND q.tdmtdntrj = r.tdtctntrj
      and r.tdtctncta=b.camcancta) FECHA_HAB_TARJETAS, --38      
      DECODE(a.gbagetper,
            1, 'NATURAL',
            'JURIDICA') TIPO_PERSONA, --39
      'SI' FIRMANTE_AUTORIZADO, --40
      (select group_concat_bar(cafircage) from cafir where cafirncta=b.camcancta and cafirstat=0) COD_FIRMANTE --41*/
FROM gbage a,camca b,catca c,outer canid d,cacon e,outer capro f,gbofi g,cacon h,outer catcm i,gbcon j,gbpmt l,outer caigd m,outer cacap n
WHERE a.gbagecage = b.camcacage
AND b.camcastat IN (1,2,3)
AND b.camcancta = m.caigdncta
AND m.caigdfech = l.gbpmtfdia
and n.cacapncta = b.camcancta
AND n.cacapanio = 2025
AND n.cacapnmes = 1
AND b.camcatpca = c.catcatpca
AND h.caconpref = 3
AND b.camcamane = h.caconcorr
AND b.camcatpca=d.canidtpca
AND b.camcacmon=d.canidcmon
AND d.canidmrcb = 0
AND b.camcancta = f.caproncta
AND f.caproanio = YEAR(l.gbpmtfdia)
AND f.capronmes = MONTH(l.gbpmtfdia)
AND e.caconpref = 4
AND b.camcastat = e.caconcorr
AND b.camcatpca = i.catcmtpca
AND b.camcacmon = i.catcmcmon
AND b.camcaagen = g.gbofinofi
AND j.gbconpfij = 1
AND a.gbagetper = j.gbconcorr
and exists (select *
            from capig h
            where h.capigncta=b.camcancta
            and h.capigstat=0
            and h.capigcpig in(select max(pi.catpgcpig)                 
                              from catpg pi
                              where pi.catpgcpig=h.capigcpig
                              and pi.catpgtpgr is not null
                              and pi.catpgctab is not null
                              and pi.catpgcpig in (3,5,6,7,8,9,10,50))
                              and h.capigimpo>0)
order by 1;

UNION -- 4


SELECT DISTINCT b.camcancta NRO_CTA, --1
  b.camcafapt FECHA_APRT, --2
  b.camcatpca COD_PROD_CTA, --3
  trim(c.catcadesc) PROD_CTA, --4
  trim(h.cacondesc) TIPO_MANEJO, --5
  b.camcacmon MONEDA_ORIG, --6
  l.gbpmttcof TIPO_CAMBIO, --7
  ROUND(DECODE(b.camcacmon,
              1, (SELECT sum(l.capigimpo)
                                    FROM capig l
                                    WHERE l.capigncta=b.camcancta
                                    AND l.capigstat=0
                                    --AND l.capigcpig IN(2,3,5,6))),
                                    AND l.capigcpig IN (SELECT pi.catpgcpig
                                                      FROM catpg pi
                                                      WHERE pi.catpgcpig = l.capigcpig
                                                      AND pi.catpgtpgr IS NOT NULL
                                                      AND pi.catpgctab IS NOT NULL
                                                      and pi.catpgcpig not in (3,5,6,7,8,9,10,50))),
              2, (SELECT sum(l.capigimpo)*6.86
                                    FROM capig l
                                    WHERE l.capigncta=b.camcancta
                                    AND l.capigstat=0
                                    --AND l.capigcpig in(2,3,5,6)
                                    AND l.capigcpig IN (SELECT pi.catpgcpig
                                                      FROM catpg pi
                                                      WHERE pi.catpgcpig = l.capigcpig
                                                      AND pi.catpgtpgr IS NOT NULL
                                                      AND pi.catpgctab IS NOT NULL
                                                      and pi.catpgcpig not in (3,5,6,7,8,9,10,50)))),2) SALDO_BS,--8
  round((select sum(l.capigimpo)
       from capig l
       where l.capigncta=b.camcancta
       and l.capigstat=0
       and l.capigcpig in(select pi.catpgcpig               
                          from catpg pi
                          where pi.catpgcpig=l.capigcpig
                          and pi.catpgtpgr is not null
                          and pi.catpgctab is not null
                          and pi.catpgcpig not in (3,5,6,7,8,9,10,50))),2) SALDO_ORIG,--9
   ROUND(decode(b.camcatpca,(select cc.catcatpca
                          from catca cc
                          where cc.catcatpca=b.camcatpca
                          and b.camcatasa>0
                          and cc.catcatpca not in(select p.caprptpca
                                                  from caprp p
                                                  where p.caprptpca=cc.catcatpca)),
                          b.camcatasa,d.canidtasa),2) TASA_N, --10                                              
DECODE(m.caigdtasa,
		0,n.cacaptasa,
		NULL, DECODE(b.camcatpca, 
			1, 2,m.caigdtasa), m.caigdtasa) TASA_E, --11   			                                                   
  ROUND(nvl(DECODE(b.camcacmon,
              1, f.caprompro,
              2, (f.caprompro * l.gbpmttcof)),0), 2) SALDO_PROM_BS, --12
  ROUND(nvl(f.caprompro,0),2) SALDO_PROM_ORIG, --13
  (SELECT x.caprompro
    FROM capro x
    WHERE x.caproncta = b.camcancta
    AND b.camcacmon = 1
    AND a.gbagetper = 1
    AND x.caproanio = 2025
    AND x.capronmes = 1) prom_DS2055, --14
    ROUND(nvl(DECODE(b.camcacmon,
              1, (SELECT sum (x.caigdintg)
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2024-12-01' AND '2024-12-31'),
              (SELECT sum (x.caigdintg) * 6.86
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2024-12-01' AND '2024-12-31')),0), 2) INT_DVG_ACUM, --15  
  ROUND(nvl(DECODE(b.camcacmon,
              1, (SELECT sum (x.caigdintg)
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2025-01-01' AND '2025-01-30'),
              (SELECT sum (x.caigdintg) * 6.86
                  FROM caigd x
                  WHERE x.caigdncta = b.camcancta
                  AND x.caigdfech BETWEEN '2025-01-01' AND '2025-01-30')),0), 2) INT_DVG_MES, --16
 (SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_ULT_INT, --17
  (SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_CAP_INT, --18
  b.camcafumv FECHA_ULT_MOV, --19
  'PIGNORADA' ESTADO, --20
  b.camcafcbl FECHA_ESTADO, --21
  decode(b.camcacmon,1,(select r.catpgctab
                            from capig q,catpg r
                            where q.capigncta=b.camcancta
                            and q.capigcpig=r.catpgcpig
                            and q.capignpig =(select max(t.capignpig)
                                              from capig t
                                              where t.capigncta=b.camcancta
                                              and t.capigstat=0
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
                                              and t.capigstat=0
                                              and t.capigcpig in(select pi.catpgcpig                    
                                                                 from catpg pi
                                                                 where pi.catpgcpig=t.capigcpig
                                                                 and pi.catpgtpgr is not null
                                                                 and pi.catpgctab is not null
                                                                 and pi.catpgcpig not in (3,5,6,7,8,9,10,50))))) CUENTA_CTBLE_SALDO,--22
  cast('' AS date) FECHA_RETENCION,--23
  CAST('' AS integer)  MONTO_RETENIDO_BS, --24
  '' MOTIVO_RETENIDO, --25
  '' CUENTA_CTBLE_RTN, --26
  (SELECT max(t.capigfpro)
   FROM capig t
   WHERE t.capigncta = b.camcancta
   AND t.capigstat = 9
   AND t.capigcpig IN (3,5,6,7,8,9,10,50)) FECHA_LIB_RNT,--27
   ROUND(DECODE(b.camcacmon,
            1,(SELECT sum(l.capigimpo)
               FROM capig l
               WHERE l.capigncta=b.camcancta
               AND l.capigstat=0
               AND l.capigcpig NOT IN (3,5,6,7,8,9,10,50)), --(2,3,5,6)),
            2,(SELECT sum(l.capigimpo)*6.86
               FROM capig l
               WHERE l.capigncta=b.camcancta
               AND l.capigstat=0
               AND l.capigcpig NOT IN (3,5,6,7,8,9,10,50))),2) MONTO_PIGNO,--28
     (SELECT max(t.capigfpig)
      FROM capig t
      WHERE t.capigncta = b.camcancta
      AND t.capigstat = 0
      AND t.capigcpig NOT IN (3,5,6,7,8,9,10,50)
      AND t.capigimpo > 0) FECHA_PIGNO,--32
   decode(b.camcacmon,1,(select r.catpgctab
                        from capig q,catpg r
                        where q.capigncta=b.camcancta
                        and q.capigcpig=r.catpgcpig
                        and q.capignpig =(select max(t.capignpig)
                                          from capig t
                                          where t.capigncta=b.camcancta
                                          and t.capigstat=0
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
                                        and t.capigstat=0
                                        and t.capigcpig in(select pi.catpgcpig                    
                                                          from catpg pi
                                                          where pi.catpgcpig=t.capigcpig
                                                          and pi.catpgtpgr is not null
                                                          and pi.catpgctab is not null
                                                          and pi.catpgcpig not in (3,5,6,7,8,9,10,50))))) CTA_CTBLE_PIGNO,--29
     '' TASA_PIG, --30                                                          
     trim(g.gbofidesc) NOMBRE_OFICINA,--31
    decode(b.camcatpca,(select cc.catcatpca
                            from catca cc
                              where cc.catcatpca=b.camcatpca
                              and cc.catcatpca IN (3,38,39,40,41)
                              and b.camcancta not in(select p.catitncta
                                                    from catit p
                                                    where p.catitncta=b.camcancta)),3,null) COD_CUENTA_FUNC,--32                                                    
(select group_concat_bar(gbagenomb) from cafir,gbage where cafirncta=b.camcancta and cafirstat=0 and cafircage=gbagecage) NOMBRE, -- 33
(select group_concat_bar(gbagendid) from cafir,gbage where cafirncta=b.camcancta and cafirstat=0 and cafircage=gbagecage) NRO_DOC_IDENTIDAD, --34
(select group_concat_bar(cafircage) from cafir where cafirncta=b.camcancta and cafirstat=0) CODIGO_CLIENTE, --35
(select group_concat_bar(gbagefnac) from cafir,gbage where cafirncta=b.camcancta and cafirstat=0 and cafircage=gbagecage) FECHA_NACIMIENTO, --36
    (SELECT count(*)
      FROM tdtct q
      WHERE q.tdtctncta = b.camcancta) No_TARJETA_DE_DEBITO_RELACIONADAS, --37
(select group_concat(tdmtdfreg) FROM tdmtd q, tdtct r
      WHERE q.tdmtdcage = a.gbagecage
      AND q.tdmtdntrj = r.tdtctntrj
      and r.tdtctncta=b.camcancta) FECHA_HAB_TARJETAS, --38      
      DECODE(a.gbagetper,
            1, 'NATURAL',
            'JURIDICA') TIPO_PERSONA, --39
      'SI' FIRMANTE_AUTORIZADO, --40
      (select group_concat_bar(cafircage) from cafir where cafirncta=b.camcancta and cafirstat=0) COD_FIRMANTE --41*/
FROM gbage a,camca b,catca c,outer canid d,cacon e,outer capro f,gbofi g,cacon h,outer catcm i,gbcon j,gbpmt l,outer caigd m,outer cacap n
WHERE a.gbagecage = b.camcacage
AND b.camcastat IN (1,2,3)
AND b.camcancta = m.caigdncta
AND m.caigdfech = l.gbpmtfdia
and n.cacapncta = b.camcancta
AND n.cacapanio = 2025
AND n.cacapnmes = 1
AND b.camcatpca = c.catcatpca
AND h.caconpref = 3
AND b.camcamane = h.caconcorr
AND b.camcatpca=d.canidtpca
AND b.camcacmon=d.canidcmon
AND d.canidmrcb = 0
AND b.camcancta = f.caproncta
AND f.caproanio = YEAR(l.gbpmtfdia)
AND f.capronmes = MONTH(l.gbpmtfdia)
AND e.caconpref = 4
AND b.camcastat = e.caconcorr
AND b.camcatpca = i.catcmtpca
AND b.camcacmon = i.catcmcmon
AND b.camcaagen = g.gbofinofi
AND j.gbconpfij = 1
AND a.gbagetper = j.gbconcorr
and exists (select *
            from capig h
            where h.capigncta=b.camcancta
            and h.capigstat=0
            and h.capigcpig in(select max(pi.catpgcpig)                 
                               from catpg pi
                               where pi.catpgcpig=h.capigcpig
                               and pi.catpgtpgr is not null
                               and pi.catpgctab is not null
                               and pi.catpgcpig not in (3,5,6,7,8,9,10,50))
                               and h.capigimpo>0)
order by 1;

