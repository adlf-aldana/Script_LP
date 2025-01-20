/* CAJA DE AHORRO */  -- FINAL 25 campos 
select distinct b.camcaagen COD_AGENCIA,--1
g.gbofidesc DESC_AGENCIA,--2
j.gbconcorr TIPO_PERSONA,--3
DECODE(b.camcatpca,(SELECT cc.catcatpca
                    FROM catca cc
                    WHERE cc.catcatpca=b.camcatpca
                    AND cc.catcatpca IN (3,38,39,40,41)
                    AND b.camcancta NOT IN (SELECT p.catitncta
                                            FROM catit p
                                            WHERE p.catitncta=b.camcancta)),'SI','NO') PERSONA_INSTITUCIONAL, --4                         
c.catcatpca COD_PRODUCTO,--5
a.gbagecage NRO_SOCIO,--6
TRIM(a.gbagenomb) NOMBRE_SOCIO,--7
TRIM(a.gbagendid) CI_SOCIO,--8
TRIM(a.gbagenruc) NIT_SOCIO,--9
b.camcancta NRO_CUENTA,--10
decode(b.camcacmon,1,'BOLIVIANOS',2,'DOLARES') MONEDA,--11
TRIM(h.cacondesc) ESTADO,--12
b.camcafapt FECHA_APERTURA,--13
b.camcafcbl FECHA_ESTADO,--14
round(decode(b.camcatpca,
			(select cc.catcatpca
			from catca cc
	      	where cc.catcatpca= b.camcatpca
	      	and cc.catcatpca not in(select p.caprptpca
	      							from caprp p
	                              	where p.caprptpca=cc.catcatpca)
			and b.camcatasa=0), d.canidtasa,
			(select cc.catcatpca
			from catca cc
	      	where cc.catcatpca=b.camcatpca
	      	and cc.catcatpca not in(select p.caprptpca
                                    from caprp p
                                    where p.caprptpca=cc.catcatpca)
   			and b.camcatasa>0), b.camcatasa,
      		(select cc.catcatpca
			from catca cc
           	where cc.catcatpca= b.camcatpca
           	and cc.catcatpca in(select p.caprptpca
           						from caprp p
                               	where p.caprptpca=cc.catcatpca)), d.canidtasa), 2) TASA_INTERES,--15
round((b.camcasact *-1),2) SALDO,--16
ROUND(f.caprompro, 2) PROMEDIO_DE_LOS_SALDOS,--17
round(b.camcaiacu,2) MONTO_INTERES_DEVENGADO,--18
(select e.gbpmtfdia
 from gbpmt e) FECHA_DEVENGAMIENTO,--19
decode(b.camcastat,1,i.catcmctaa,2,i.catcmctsi,3,i.catcmctcc) CTA_CTBLE,--20
ROUND(decode(b.camcatpca,
		(SELECT cc.catcatpca
		  FROM catca cc
		  WHERE cc.catcatpca= b.camcatpca
		  AND cc.catcatpca not IN(SELECT p.caprptpca
	                              FROM caprp p
	                              WHERE p.caprptpca=cc.catcatpca)
						      AND b.camcatasa=0), d.canidtasa,
		(SELECT cc.catcatpca
	      FROM catca cc
	      WHERE cc.catcatpca = b.camcatpca
	      AND cc.catcatpca NOT IN(SELECT p.caprptpca
	                              FROM caprp p
	                              WHERE p.caprptpca = cc.catcatpca)
	    					      AND b.camcatasa > 0), b.camcatasa,
		(SELECT cc.catcatpca
	      FROM catca cc
	      WHERE cc.catcatpca = b.camcatpca
	      AND cc.catcatpca IN(SELECT p.caprptpca
                          FROM caprp p
                          WHERE p.caprptpca = cc.catcatpca)),
	 	(decode(f.caprompro,(SELECT k.caprompro
                          FROM capro k
                          WHERE k.caproncta = b.camcancta
                          AND k.capronmes = f.capronmes
                          AND k.caproanio = f.caproanio
                          AND k.caprompro > 0),(((SELECT f.catrnimpo*-1
                                                FROM catrn f
                                                WHERE f.catrnncta = b.camcancta
                                                AND f.catrnftra = (SELECT a.gbpmtfdia FROM  gbpmt a)
	    	                                    AND f.catrnpref = 10
		   	                                    AND f.catrncorr = 1
                                                AND f.catrnstat = 0)*36000)/(f.caprompro*(SELECT day(a.gbpmtfdia) FROM  gbpmt a))), 
                         (SELECT k.caprompro
                          FROM capro k
                          WHERE k.caproncta = b.camcancta
                          AND k.capronmes = f.capronmes
                          AND k.caproanio = f.caproanio
                          AND k.caprompro = 0), d.canidtasa)
    	)), 2) INTERES_PAGADO,--21
 (SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_ULTIMA_CAPITALIZACION,--22
(SELECT min(catrnftra)
FROM (SELECT FIRST 2 catrnftra
	FROM catrn
	WHERE catrnncta = b.camcancta 
	AND catrnpref != 10
	ORDER BY catrnftra DESC) tmp
) FECHA_PENULT_OPERACION, --23
b.camcafumv FECHA_ULT_OPERACION_CTA,--24
b.camcafumv FECHA_ULT_OPERACION_SOCIO--25
from gbage a,camca b,catca c,OUTER canid d,cacon e,OUTER capro f,gbofi g,cacon h,outer catcm i,gbcon j
where a.gbagecage=b.camcacage
and b.camcatpca=c.catcatpca
and b.camcatpca=d.canidtpca
and b.camcacmon=d.canidcmon
and b.camcamane=e.caconcorr
and b.camcancta=f.caproncta
and b.camcaagen=g.gbofinofi
and b.camcastat=h.caconcorr
and h.caconpref=4
and b.camcatpca=i.catcmtpca
and b.camcacmon=i.catcmcmon
and j.gbconpfij=1
and a.gbagetper=j.gbconcorr
and b.camcastat in(1,2,3)
and d.canidmrcb=0
and e.caconpref=3
--AND b.camcancta = 3051920851
and f.capronmes=(select month(a.gbpmtfdia)
         		from  gbpmt a)
and f.caproanio=(select year(a.gbpmtfdia)
         		from  gbpmt a)
and not exists (select *
              from capig h
              where h.capigncta=b.camcancta
              and h.capigstat=0
              and h.capigcpig in(select pi.catpgcpig  
                                from catpg pi
                                where pi.catpgcpig=h.capigcpig
                                and pi.catpgtpgr is not null
                                and pi.catpgctab is not null));
/* DOS */ --PIGNORACIONES
UNION;
select distinct b.camcaagen COD_AGENCIA,--1
g.gbofidesc DESC_AGENCIA,--2
j.gbconcorr TIPO_PERSONA,--3
  DECODE(b.camcatpca,(SELECT cc.catcatpca
                      FROM catca cc
                      WHERE cc.catcatpca=b.camcatpca
                      AND cc.catcatpca IN (3,38,39,40,41)
                      AND b.camcancta NOT IN (SELECT p.catitncta
                                              FROM catit p
                                              WHERE p.catitncta=b.camcancta)),'SI','NO') PERSONA_INSTITUCIONAL, --4
c.catcatpca COD_PRODUCTO,--5
a.gbagecage NRO_SOCIO,--6
TRIM(a.gbagenomb) NOMBRE_SOCIO,--7
TRIM(a.gbagendid) CI_SOCIO,--8
TRIM(a.gbagenruc) NIT_SOCIO,--9
b.camcancta NRO_CUENTA,--10
decode(b.camcacmon,1,'BOLIVIANOS',2,'DOLARES') MONEDA,--11
TRIM(h.cacondesc) ESTADO,--12
b.camcafapt FECHA_APERTURA,--13
b.camcafcbl FECHA_ESTADO,--14
round(decode(b.camcatpca,
			(select cc.catcatpca
			from catca cc
	      	where cc.catcatpca= b.camcatpca
	      	and cc.catcatpca not in(select p.caprptpca
	      							from caprp p
	                              	where p.caprptpca=cc.catcatpca)
			and b.camcatasa=0), d.canidtasa,
			(select cc.catcatpca
			from catca cc
	      	where cc.catcatpca=b.camcatpca
	      	and cc.catcatpca not in(select p.caprptpca
                                    from caprp p
                                    where p.caprptpca=cc.catcatpca)
   			and b.camcatasa>0), b.camcatasa,
      		(select cc.catcatpca
			from catca cc
           	where cc.catcatpca= b.camcatpca
           	and cc.catcatpca in(select p.caprptpca
           						from caprp p
                               	where p.caprptpca=cc.catcatpca)), d.canidtasa), 2) TASA_INTERES,--15                               	
round(((b.camcasact *-1)-(select sum(l.capigimpo)
                          from capig l
                          where l.capigncta=b.camcancta
                          and l.capigstat=0
                          and l.capigcpig in(select pi.catpgcpig  
                                             from catpg pi
                                             where pi.catpgcpig=l.capigcpig
                                             and pi.catpgtpgr is not null
                                             and pi.catpgctab is not null))),2) SALDO, --16             
f.caprompro PROMEDIO_DE_LOS_SALDOS,--17
round(b.camcaiacu,2) MONTO_INTERES_DEVENGADO,--18
(select e.gbpmtfdia
 from gbpmt e) FECHA_DEVENGAMIENTO,--19
decode(b.camcastat,1,i.catcmctaa,2,i.catcmctsi,3,i.catcmctcc) CTA_CTBLE,--20
ROUND(decode(b.camcatpca,
	(SELECT cc.catcatpca
      FROM catca cc
      WHERE cc.catcatpca = b.camcatpca
      AND cc.catcatpca NOT IN(SELECT p.caprptpca
                              FROM caprp p
                              WHERE p.caprptpca = cc.catcatpca)
				      		  AND b.camcatasa=0), d.canidtasa,
(SELECT cc.catcatpca
  FROM catca cc
  WHERE cc.catcatpca = b.camcatpca
  AND cc.catcatpca not IN(SELECT p.caprptpca
                          FROM caprp p
                          WHERE p.caprptpca = cc.catcatpca)
					      AND b.camcatasa > 0), b.camcatasa,
(SELECT cc.catcatpca
  FROM catca cc
  WHERE cc.catcatpca = b.camcatpca
  AND cc.catcatpca IN(SELECT p.caprptpca
                      FROM caprp p
                      WHERE p.caprptpca = cc.catcatpca)),
 (decode(f.caprompro,(SELECT k.caprompro
                      FROM capro k
                      WHERE k.caproncta = b.camcancta
                      AND k.capronmes = f.capronmes
                      AND k.caproanio = f.caproanio
                      AND k.caprompro > 0),(((SELECT f.catrnimpo*-1
                                            FROM catrn f
                                            WHERE f.catrnncta = b.camcancta
                                            AND f.catrnftra = (SELECT a.gbpmtfdia FROM  gbpmt a)
    	                                    AND f.catrnpref = 10
	   	                                    AND f.catrncorr = 1
                                            AND f.catrnstat = 0)*36000)/(f.caprompro*(SELECT day(a.gbpmtfdia)
												                                    FROM  gbpmt a))), 
                     (SELECT k.caprompro
                      FROM capro k
                      WHERE k.caproncta=b.camcancta
                      AND k.capronmes=f.capronmes
                      AND k.caproanio=f.caproanio
                      AND k.caprompro=0),d.canidtasa))),2) INTERES_PAGADO,--21
 (SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_ULTIMA_CAPITALIZACION,--22
(SELECT min(catrnftra)
FROM (SELECT FIRST 2 catrnftra
	FROM catrn
	WHERE catrnncta = b.camcancta 
	AND catrnpref != 10
	ORDER BY catrnftra DESC) tmp
) FECHA_PENULT_OPERACION, --23
b.camcafumv fecha_ult_operacion_cta,--24
b.camcafumv fecha_ult_operacion_socio--25
from gbage a,camca b,catca c,OUTER canid d,cacon e,OUTER capro f,gbofi g,cacon h,outer catcm i,gbcon j
where a.gbagecage=b.camcacage
and b.camcatpca=c.catcatpca
and b.camcatpca=d.canidtpca
and b.camcacmon=d.canidcmon
and b.camcamane=e.caconcorr
and b.camcancta=f.caproncta
and b.camcaagen=g.gbofinofi
and b.camcastat=h.caconcorr
and h.caconpref=4
and b.camcatpca=i.catcmtpca
and b.camcacmon=i.catcmcmon
and j.gbconpfij=1
and a.gbagetper=j.gbconcorr
and b.camcastat in(1,2,3)
and d.canidmrcb=0
and e.caconpref=3
--AND b.camcancta = 3051920851--3051462756
and f.capronmes=(select month(a.gbpmtfdia)
         from  gbpmt a)
and f.caproanio=(select year(a.gbpmtfdia)
         from  gbpmt a)
and exists (select *
          from capig h
          where h.capigncta=b.camcancta
          and h.capigstat=0
          and h.capigcpig in(select pi.catpgcpig  
                   from catpg pi
                   where pi.catpgcpig=h.capigcpig
                   and pi.catpgtpgr is not null
                   and pi.catpgctab is not null));
/* TRES */ -- RETENCIONES
UNION;
select distinct b.camcaagen COD_AGENCIA,--1
g.gbofidesc DESC_AGENCIA,--2
j.gbconcorr TIPO_PERSONA,--3
  DECODE(b.camcatpca,(SELECT cc.catcatpca
                      FROM catca cc
                      WHERE cc.catcatpca=b.camcatpca
                      AND cc.catcatpca IN (3,38,39,40,41)
                      AND b.camcancta NOT IN (SELECT p.catitncta
                                              FROM catit p
                                              WHERE p.catitncta=b.camcancta)),'SI','NO') PERSONA_INSTITUCIONAL, --4
c.catcatpca COD_PRODUCTO,--5
a.gbagecage NRO_SOCIO,--6
TRIM(a.gbagenomb) NOMBRE_SOCIO,--7
TRIM(a.gbagendid) CI_SOCIO,--8
TRIM(a.gbagenruc) NIT_SOCIO,--9
b.camcancta NRO_CUENTA,--10
decode(b.camcacmon,1,'BOLIVIANOS',2,'DOLARES') MONEDA,--11
TRIM(h.cacondesc) ESTADO,--12
b.camcafapt FECHA_APERTURA,--13
b.camcafcbl FECHA_ESTADO,--14
round(decode(b.camcatpca,
			(select cc.catcatpca
			from catca cc
	      	where cc.catcatpca= b.camcatpca
	      	and cc.catcatpca not in(select p.caprptpca
	      							from caprp p
	                              	where p.caprptpca=cc.catcatpca)
			and b.camcatasa=0), d.canidtasa,
			(select cc.catcatpca
			from catca cc
	      	where cc.catcatpca=b.camcatpca
	      	and cc.catcatpca not in(select p.caprptpca
                                    from caprp p
                                    where p.caprptpca=cc.catcatpca)
   			and b.camcatasa>0), b.camcatasa,
      		(select cc.catcatpca
			from catca cc
           	where cc.catcatpca= b.camcatpca
           	and cc.catcatpca in(select p.caprptpca
           						from caprp p
                               	where p.caprptpca=cc.catcatpca)), d.canidtasa), 2) TASA_INTERES,--15
round((select sum(l.capigimpo)
     from capig l
     where l.capigncta=b.camcancta
     and l.capigstat=0
     and l.capigcpig in(select pi.catpgcpig 
                        from catpg pi
                        where pi.catpgcpig=l.capigcpig
                        and pi.catpgtpgr is not null
                        and pi.catpgctab is not null
                        and pi.catpgcpig in (3,5,6,7,8,9,10,50))),2) SALDO, --16
f.caprompro PROMEDIO_DE_LOS_SALDOS,--17
round(b.camcaiacu,2) MONTO_INTERES_DEVENGADO,--18
(select e.gbpmtfdia
 from gbpmt e) FECHA_DEVENGAMIENTO,--19
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
                      2,(SELECT r.catpgctab
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
                                                              and pi.catpgcpig in (3,5,6,7,8,9,10,50))))) CTA_CTBLE,--20
	ROUND(decode(b.camcatpca,
		(SELECT cc.catcatpca
	      FROM catca cc
	      WHERE cc.catcatpca = b.camcatpca
	      AND cc.catcatpca NOT IN(SELECT p.caprptpca
                              	FROM caprp p
                          		WHERE p.caprptpca = cc.catcatpca)
					      		AND b.camcatasa = 0), d.canidtasa,
      	(SELECT cc.catcatpca
	      FROM catca cc
	      WHERE cc.catcatpca = b.camcatpca
	      AND cc.catcatpca NOT IN(SELECT p.caprptpca
                                  FROM caprp p
                                  WHERE p.caprptpca = cc.catcatpca)
        					      AND b.camcatasa > 0), b.camcatasa,
		(SELECT cc.catcatpca
	      FROM catca cc
	      WHERE cc.catcatpca = b.camcatpca
	      AND cc.catcatpca IN(SELECT p.caprptpca
	                          FROM caprp p
	                          WHERE p.caprptpca = cc.catcatpca)),
		 (decode(f.caprompro,
		 	(SELECT k.caprompro
		      FROM capro k
		      WHERE k.caproncta = b.camcancta
		      AND k.capronmes = f.capronmes
		      AND k.caproanio = f.caproanio
		      AND k.caprompro > 0),(((SELECT f.catrnimpo*-1
	                                FROM catrn f
	                                WHERE f.catrnncta = b.camcancta
	                                AND f.catrnftra = (SELECT a.gbpmtfdia FROM  gbpmt a)
	                                AND f.catrnpref = 10
	                                AND f.catrncorr  =1
	                                AND f.catrnstat = 0)*36000)/(f.caprompro*(SELECT day(a.gbpmtfdia) FROM  gbpmt a))), 
         (SELECT k.caprompro
          FROM capro k
          WHERE k.caproncta = b.camcancta
          AND k.capronmes = f.capronmes
          AND k.caproanio = f.caproanio
          AND k.caprompro = 0), d.canidtasa))), 2) INTERES_PAGADO,--21
 (SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_ULTIMA_CAPITALIZACION,--22
(SELECT min(catrnftra)
FROM (SELECT FIRST 2 catrnftra
	FROM catrn
	WHERE catrnncta = b.camcancta 
	AND catrnpref != 10
	ORDER BY catrnftra DESC) tmp
) FECHA_PENULT_OPERACION, --23
b.camcafumv fecha_ult_operacion_cta,--24
b.camcafumv fecha_ult_operacion_socio--25*/
from gbage a,camca b,catca c,OUTER canid d,cacon e,OUTER capro f,gbofi g,cacon h,outer catcm i,gbcon j
where a.gbagecage=b.camcacage
and b.camcatpca=c.catcatpca
and b.camcatpca=d.canidtpca
and b.camcacmon=d.canidcmon
and b.camcamane=e.caconcorr
and b.camcancta=f.caproncta
and b.camcaagen=g.gbofinofi
and b.camcastat=h.caconcorr
and h.caconpref=4
and b.camcatpca=i.catcmtpca
and b.camcacmon=i.catcmcmon
and j.gbconpfij=1
and a.gbagetper=j.gbconcorr
and b.camcastat in(1,2,3)
and d.canidmrcb=0
and e.caconpref=3;
/*
--AND b.camcancta = 3051920851--3051462756
and f.capronmes=(select month(a.gbpmtfdia)
         from  gbpmt a)
and f.caproanio=(select year(a.gbpmtfdia)
         from  gbpmt a)
AND EXISTS (SELECT *
     	    FROM capig h
		    WHERE h.capigncta = b.camcancta
			AND h.capigstat = 0
			AND h.capigcpig IN(SELECT max(pi.catpgcpig)	
			    			   FROM catpg pi
			    			   WHERE pi.catpgcpig = h.capigcpig
			    			   AND pi.catpgtpgr IS NOT NULL
                               AND pi.catpgctab IS NOT NULL
                               AND pi.catpgcpig IN (3, 5, 6, 7, 8, 9, 10, 50))
							   AND h.capigimpo > 0);
/* CUATRO */
UNION;
select distinct b.camcaagen COD_AGENCIA,--1
g.gbofidesc DESC_AGENCIA,--2
j.gbconcorr TIPO_PERSONA,--3
DECODE(b.camcatpca,(SELECT cc.catcatpca
                    FROM catca cc
                    WHERE cc.catcatpca=b.camcatpca
                    AND cc.catcatpca IN (3,38,39,40,41)
                    AND b.camcancta NOT IN (SELECT p.catitncta
                                            FROM catit p
                                            WHERE p.catitncta=b.camcancta)),'SI','NO') PERSONA_INSTITUCIONAL, --4
c.catcatpca COD_PRODUCTO,--5
a.gbagecage NRO_SOCIO,--6
TRIM(a.gbagenomb) NOMBRE_SOCIO,--7
TRIM(a.gbagendid) CI_SOCIO,--8
TRIM(a.gbagenruc) NIT_SOCIO,--9
b.camcancta NRO_CUENTA,--10
decode(b.camcacmon,1,'BOLIVIANOS',2,'DOLARES') MONEDA,--11
TRIM(h.cacondesc) ESTADO,--12
b.camcafapt FECHA_APERTURA,--13
b.camcafcbl FECHA_ESTADO,--14
round(decode(b.camcatpca,
			(select cc.catcatpca
			from catca cc
	      	where cc.catcatpca= b.camcatpca
	      	and cc.catcatpca not in(select p.caprptpca
	      							from caprp p
	                              	where p.caprptpca=cc.catcatpca)
			and b.camcatasa=0), d.canidtasa,
			(select cc.catcatpca
			from catca cc
	      	where cc.catcatpca=b.camcatpca
	      	and cc.catcatpca not in(select p.caprptpca
                                    from caprp p
                                    where p.caprptpca=cc.catcatpca)
   			and b.camcatasa>0), b.camcatasa,
      		(select cc.catcatpca
			from catca cc
           	where cc.catcatpca= b.camcatpca
           	and cc.catcatpca in(select p.caprptpca
           						from caprp p
                               	where p.caprptpca=cc.catcatpca)), d.canidtasa), 2) TASA_INTERES,--15
round((select sum(l.capigimpo)
            from capig l
            where l.capigncta=b.camcancta
            and l.capigstat=0
            and l.capigcpig in(select pi.catpgcpig
                      from catpg pi
                      where pi.catpgcpig=l.capigcpig
                      and pi.catpgtpgr is not null
                      and pi.catpgctab is not NULL
                      and pi.catpgcpig NOT in (3,5,6,7,8,9,10,50)))) SALDO, --16
f.caprompro PROMEDIO_DE_LOS_SALDOS,--17
round(b.camcaiacu,2) MONTO_INTERES_DEVENGADO,--18
(select e.gbpmtfdia
from gbpmt e) FECHA_DEVENGAMIENTO,--19
decode(b.camcacmon,1,(select left(r.catpgctab,6)
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
                                                           and pi.catpgcpig NOT in (3,5,6,7,8,9,10,50)))),
                     2,(select left(r.catpgctab,6)
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
                                                             and pi.catpgcpig NOT in (3,5,6,7,8,9,10,50))))) CTA_CTBLE,--20
	ROUND(decode(b.camcatpca,
		(SELECT cc.catcatpca
	      FROM catca cc
	      WHERE cc.catcatpca = b.camcatpca
	      AND cc.catcatpca NOT IN(SELECT p.caprptpca
	                              FROM caprp p
	                              WHERE p.caprptpca = cc.catcatpca)
					     		  AND b.camcatasa = 0), d.canidtasa,
	(SELECT cc.catcatpca
      FROM catca cc
      WHERE cc.catcatpca = b.camcatpca
      AND cc.catcatpca 	 IN(SELECT p.caprptpca
                              FROM caprp p
                              WHERE p.caprptpca = cc.catcatpca)
    					      AND b.camcatasa > 0), b.camcatasa,
	(SELECT cc.catcatpca
      FROM catca cc
      WHERE cc.catcatpca= b.camcatpca
      AND cc.catcatpca IN(SELECT p.caprptpca
                          FROM caprp p
                          WHERE p.caprptpca=cc.catcatpca)),
 	(decode(f.caprompro,
 		(SELECT k.caprompro
          FROM capro k
          WHERE k.caproncta = b.camcancta
          AND k.capronmes = f.capronmes
          AND k.caproanio = f.caproanio
          AND k.caprompro > 0),(((SELECT f.catrnimpo*-1
                                FROM catrn f
                                WHERE f.catrnncta = b.camcancta
                                AND f.catrnftra = (SELECT a.gbpmtfdia FROM  gbpmt a)
                                AND f.catrnpref=10
                                AND f.catrncorr=1
                                AND f.catrnstat=0)*36000)/(f.caprompro*(SELECT day(a.gbpmtfdia) FROM  gbpmt a))), 
         (SELECT k.caprompro
          FROM capro k
          WHERE k.caproncta = b.camcancta
          AND k.capronmes = f.capronmes
          AND k.caproanio = f.caproanio
          AND k.caprompro = 0), d.canidtasa))),2) INTERES_PAGADO,--21
 (SELECT max(x.catrnftra)
   FROM catrn x
   WHERE x.catrnncta = b.camcancta
   AND x.catrnpref = 10
   AND x.catrncorr = 1
   AND x.catrnstat = 0) FECHA_ULTIMA_CAPITALIZACION,--22
(SELECT min(catrnftra)
FROM (SELECT FIRST 2 catrnftra
	FROM catrn
	WHERE catrnncta = b.camcancta 
	AND catrnpref != 10
	ORDER BY catrnftra DESC) tmp
) FECHA_PENULT_OPERACION, --23
b.camcafumv fecha_ult_operacion_cta,--24
b.camcafumv fecha_ult_operacion_socio--25
from gbage a,camca b,catca c,OUTER canid d,cacon e,OUTER capro f,gbofi g,cacon h,outer catcm i,gbcon j
where a.gbagecage=b.camcacage
and b.camcatpca=c.catcatpca
and b.camcatpca=d.canidtpca
and b.camcacmon=d.canidcmon
and b.camcamane=e.caconcorr
and b.camcancta=f.caproncta
and b.camcaagen=g.gbofinofi
and b.camcastat=h.caconcorr
and h.caconpref=4
and b.camcatpca=i.catcmtpca
and b.camcacmon=i.catcmcmon
and j.gbconpfij=1
and a.gbagetper=j.gbconcorr
and b.camcastat in(1,2,3)
and d.canidmrcb=0
and e.caconpref=3
--AND b.camcancta = 3051920851
and f.capronmes=(select month(a.gbpmtfdia)
         		from  gbpmt a)
and f.caproanio=(select year(a.gbpmtfdia)
         		from  gbpmt a)
and exists (select *
          from capig h
          where h.capigncta=b.camcancta
          and h.capigstat=0
          and h.capigcpig in(select max(pi.catpgcpig) 
                             from catpg pi
                             where pi.catpgcpig=h.capigcpig
                             and pi.catpgtpgr is not null
                             and pi.catpgctab is not null
                             and pi.catpgcpig NOT in (3,5,6,7,8,9,10,50))
      and h.capigimpo>0) 
order by 10,20,1;
