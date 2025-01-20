/*/* 74 campos */-- 16/07/2021  Ult. Modif 30/09/2021 -By. VSM
/* 74 campos */-- 16/07/2021  Ult. Modif 06/10/2021 -By. CES
/* 74 campos */-- 16/07/2021  Ult. Modif 12/10/2021 -By. VSM
/* 74 campos */-- 16/07/2021  Ult. Modif 29/11/2021 -By. VSM   -- SE MODIFICO EL TIPO DE SERVICIO 
/* 74 campos */-- 16/07/2021  Ult. Modif 02/12/2021 -By. VSM   -- SE MODIFICO EL MONTO DE REGULARIZACION DE SALDO OTROS (13107)
--23/02/2022 - Se agrego el campo MONTO_REPORGRAMADO - CES/VSM
--14/03/2022 - Se agregaron los campos de Reprogramado /Refinanciado con la 669   -- CES/VSM
--24-03-2022 - Se agrego el campo Asalariado S/N segun su ultima declaracion Jurada --CES/VSM 
--01/04/2022 - Se corrigio el campo prevision, el mismo que ahora genra en BS --VSM
--04/04/2022 - SE MODIFICO EL MONTO DE REGULARIZACION DEL CAMPO OTRO_SALDO (19025527,19025246,19025352) --AMY
--04/04/2022 - SE MODIFICO EL MONTO DE REGULARIZACION DEL CAMPO OTRO_SALDO (19025246),'17375.75') --AMY
--13/04/2022 - Se aumento el estado y promotor -- CES,VSM
--27/04/2022 - Se aumento el capo prodductivo_no_productivo -- AMY,VSM */
--31/08/2022 - Se modificó el campo de dias deesde paso a vencido, se cambió de nombre a la cuenta contable de K y se adiciono cta. ctble de Productos */
--13/09/2022 - Se agrega el campo COD_RPT035 -- CES
--03/10/2022 - Se agregar el campo CALF_ANTERIOR y se optimiza el codigo al 50%, eliminacion de consultas anidadas --CES
--31/10/2022 - Se agregaron los cargos de Capital diferidos (460,461,463,466)
--03/11/2022 - Se comenta el campo otro_Saldo (Cartera de REGULARIZACION).
--30-01-2023 - Se agrega la columna 88 - PROD_DEV_SUSPENSO - CES
SELECT DISTINCT 
	b.prmprnpre CUENTA,--1
	ROUND(b.prmprmdes, 2) MONTO,--2
	ROUND((c.prtsatbas+c.prtsasprd), 2) TASA,--3
	b.prmprcmon MONEDA,--4
	b.prmprplzo PLAZO,--5
	DECODE(b.prmprppgk,
		30, 'MENSUAL',
		60, 'BIMENSUAL',
		90, 'TRIMESTRAL',
		180, 'SEMESTRAL',
		'OTRO PERIODO') TIP_SERV,--6
	TRIM(e.prcondesc) TIP_CUOTA,--7
	'' TIP_AMORT,--8
	(SELECT l.prppgfech
		 FROM prppg l
		 WHERE l.prppgnpre = b.prmprnpre
		 AND l.prppgnpag = 1) FECH_1RACUOTA,--9
	 DECODE(b.prmprstat,
	 	2, g.prtpmkcvg,
	 	3, g.prtpmkcvg,
	 	5, g.prtpmkcv2,
	 	6, g.prtpmkcej,
	 	7, g.prtpmkcad) CUENTA_CTBLE_K,--10
	b.prmprfdes FECHA_DESEMBOLSO,--11
	ROUND(b.prmprsald, 2) SALDO_ORIG,--12
		'' OTRO_SALDO,--13
	ROUND((SELECT NVL(max(prdifsald), 0)
		   FROM prdif
		   WHERE prdifnpre = b.prmprnpre
		   AND prdifcarg IN (420,424,421,425,460,461,463,466)
		   AND prdifmrcb = 0), 2) DIFER_K_ORIG,--14
	b.prmprfulp FEC_ULTIM_MOV,--15
	cr.croprfpag FEC_PROX_VENC,--16
	a.gbagecalf CALIF,--17
	ROUND(decode(b.prmprcmon,
		1, decode(b.prmprstat,
				2, cr.croprreqm,
	            3, cr.croprreqm,
	          	decode((SELECT (u.croprreqm+dif.crdipimpr)
		                FROM cropr u,crdip dif
		                WHERE u.croproper = b.prmprnpre
	                  	AND u.croproper = dif.crdipnbco
		                AND dif.crdipfech = (SELECT gbpmtfdia FROM gbpmt)),
		                null, cr.croprreqm,
		                (SELECT (u.croprreqm+dif.crdipimpr)
	                        FROM cropr u,crdip dif
	                        WHERE u.croproper = b.prmprnpre
	                      AND u.croproper = dif.crdipnbco
	                          AND dif.crdipfech = (SELECT gbpmtfdia FROM gbpmt)
	                    ))),
        decode(b.prmprstat,
        	2, cr.croprreqm,
        	3, cr.croprreqm,
            decode((SELECT (u.croprreqm+(dif.crdipimpr/6.86))
                   FROM cropr u, crdip dif
                   WHERE u.croproper = b.prmprnpre
                   AND u.croproper = dif.crdipnbco
                   AND dif.crdipfech = (SELECT gbpmtfdia FROM gbpmt)),
                   null, cr.croprreqm,
                   (SELECT (u.croprreqm + (dif.crdipimpr/6.86))
                   FROM cropr u, crdip dif
                   WHERE u.croproper = b.prmprnpre
                   AND u.croproper = dif.crdipnbco
                   AND dif.crdipfech = (SELECT gbpmtfdia FROM gbpmt))))),2) PREVISION,--18
	TRIM(m.gbconabre) CLASE_CRED,--19
	TRIM(f.prcondesc) OBJ_CRED,--20
	DECODE((SELECT NVL(COUNT(prrnvnpre), 0)
		  	FROM prrnv
		  	WHERE prrnvnpre = b.prmprnpre
		  	AND prrnvtrnv = 20),
		  	0, 'N', 'S') REPROG_669,--21
	DECODE((SELECT NVL(COUNT(prrnvnpre), 0)
			  	FROM prrnv
			  	WHERE prrnvnpre = b.prmprnpre
			  	AND prrnvtrnv = 8),
			  	0, 'N', 'S') REFIN_669,--22
	b.prmprcrpg NRO_REPROG,--23
	b.prmprfrpg FEC_ULT_REPROG,--24
	DECODE(b.prmprcrpg,
  		0, 0,
		NULL, 0,
		(SELECT ROUND(sum(pr1.prtdtimpp), 2)
	    FROM prtdt pr1
	    WHERE pr1.prtdtnpre = b.prmprnpre 
	    AND pr1.prtdtpref = 20
	    AND pr1.prtdtccon = 1
	    AND pr1.prtdtmrcb = 0
	    AND pr1.prtdtfpro <= b.prmprfrpg)) MONTO_REPROGRAMADO,--25
	TRIM(a.gbagenomb) NOMBRE,--26
	trim(a.gbagendid) CI_DEUDOR,--27
	(SELECT count(*)
    FROM prdeu xx
  	WHERE xx.prdeunpre = b.prmprnpre
    AND xx.prdeutres = 1) CANT_DEU,--28
	DECODE(cg.crgartipo,
    	null, (SELECT tg.gbtgacsup
	           FROM gbtga tg
	           WHERE tg.gbtgactga = (SELECT max(gagoptgar)
                     				FROM (SELECT first 1 *
				                         FROM gagop aa
				                         WHERE aa.gagopnopr = b.prmprnpre
				                         AND aa.gagopmrcb = 0
                   						 ORDER BY 1 DESC))),
		cg.crgartipo) TIPO_GARANTIA,--29
	(SELECT min(p.gagarfreg)
	FROM gagar p, gagop q
	WHERE p.gagarngar = q.gagopngar
	AND q.gagopnopr = b.prmprnpre
	AND p.gagarstat = 0
	AND q.gagopmrcb = 0
	AND q.gagopstat = 0) FEC_ING_GAR,--30
	(SELECT MIN(p.gagarfreg)
	FROM gagar p, gagop q
	WHERE p.gagarngar = q.gagopngar
	AND q.gagopnopr = b.prmprnpre
	AND p.gagarstat = 0
	AND q.gagopmrcb = 0
	AND q.gagopstat = 0) FEC_ING_GAR,--31
	cg.crgarcmon MONEDA_GAR,--32
	--ROUND(NVL(cg.crgarmont, 0), 2) VALOR_GARANT,--32
	round(nvl((SELECT sum(e.crgargins)
			   FROM crgar e
			   WHERE e.crgarnopr=cg.crgarnopr
			   and e.crgartipo=cg.crgartipo),0),2) VALOR_GARANT_X_TIP, --33
	ROUND(NVL(cg.crgargins, 0), 2) VALOR_GARANT_OP,--34
	DECODE(b.prmpruser, 'XXX', NULL, b.prmpruser) USER_APERT_MODIF,--35
	b.prmprrseg RESPONSABLE,--36
	a.gbageciiu CAEDEC,--37
	'' NUM_OPER_REFIN,--38
	'' MONTO_REFIN,--39
	trim(decode(a.gbagesexo, 1, 'M', 2, 'F')) SEXO,--40
	b.prmprciiu CAEDEC_DEST,--41
	b.prmprciiu CAEDEC_DEST,--42
	i.gbdbiisal ASALARIADO_ULT_DC,--43
	ROUND(decode(i.gbdbicmon,
		1, i.gbdbitotv/(SELECT d.gbpmttcof FROM gbpmt d),
		2, i.gbdbitotv), 2) VENTA_$US,--44
	ROUND(decode(i.gbdbicmon,
		1, i.gbdbipatr/(SELECT d.gbpmttcof FROM gbpmt d),
		2, i.gbdbipatr), 2) PATRIMONIO_$US,--45
	i.gbdbicper NRO_EMPLEADOS,--46
	i.gbdbiinde INDICE,--47
	TRIM(decode(i.gbdbitpre,
		0, null,
		1, 'MICRO EMPRESA',
		2, 'PEQUEÑA EMPRESA',
		3, 'MEDIANA EMPRESA')) TAM_EMPRESA,--48
	ROUND((SELECT a.gbpmttcof FROM gbpmt a), 2) TC_DOLAR,--49
	(SELECT a.gbpmttufv FROM gbpmt a) T_C_UFV,--50
	'' TEAC,--51
	TRIM(decode(c.prtsasprd, 0, 'TASA FIJA', 'TASA VARIABLE')) TIPO_TASA,--52
	TRIM(f.prconabre) DESTINO,--53
	ROUND((SELECT sum(z.prppgcapi)
       FROM prppg z
       WHERE z.prppgnpre = b.prmprnpre
       AND z.prppgfech = cr.croprfpag), 2) MONTO_PROX_CAP,--54
	(SELECT di.depindep
	FROM temp_p_ind_dep di
	WHERE substring(cred FROM 1 FOR (LENGTH(di.cred)-1)) = b.prmprnpre
 	AND di.codcli = a.gbagecage) DEP_INDEP,--55
	b.prmpragen AGENCIA,--56
	b.prmprfvac FECH_VENC,--57
	a.gbagecage COD_CLI,--58
	h.prtcrdesc PRODUCTO,--59
	b.prmprlncr NRO_LINEA,--60
	l.lcmlccmon MONEDA_LINEA,--61
	ROUND(l.lcmlcmapr, 2) MONTO_LINEA,--62
	ROUND(decode(l.lcmlccmon,
		1, (l.lcmlcmapr-l.lcmlcmut1),
		2, (l.lcmlcmapr-l.lcmlcmut2)), 2) SALDO_LINEA,--63
	a.gbagefnac FEC_NAC,--64
	(SELECT max(po.pond)
		FROM temp_h_pond po
	 	WHERE substring(cred FROM 1 FOR (LENGTH(po.cred)-1)) = b.prmprnpre) PONDERACION,--65
	ROUND(n.crcecimco, 2) CART_COMPUTABLE_BS,--66
	ROUND(n.crcecreqc, 2) PREV_CICL_BS,--67
	((SELECT gbpmtfdia FROM gbpmt)-b.prmprfinc) DIAS_INCUMP,--68
	b.prmprfsta FECHA_ESTADO,--69
	b.prmprfinc FECHA_INCUMP,--70
	DECODE(b.prmprstat, 7, b.prmprfsta, null) FECHA_CASTIGO,--71
	((SELECT gbpmtfdia FROM gbpmt)-b.prmprfpvc) DIAS_DESDE_VENCIDO,--72
	ROUND(DECODE(b.prmprstat, 
		2, decode(b.prmprpsus, 0, b.prmprpdvg, 0), 0), 2) PROD_DEV,--73
	b.prmprgrac DIAS_GRACIA,--74
	b.prmprgrac DIAS_GRACIA_INT,--75
	j.prtdtftra FECHA_ULT_PAG_CAP,--76
	k.prtdtftra FECHA_ULT_PAG_INT,--77
	cr.croprfpag FECHA_PROX_CAP,--78
	cr.croprfpag FECHA_PROX_INT,--79
	(SELECT count(*)
	FROM prppg z
 	WHERE z.prppgnpre = b.prmprnpre) NRO_CUOTAS,--80
	b.prmprppgk PERIODICIDAD_PAGO,--81
	trim(o.prcondesc) ESTADO_PRE,--82
	nvl(p.ecmsocven, pradiepro) PROMOTOR,--83
	(SELECT max(po.prod)
	 	FROM temp_h_pond po
	 	WHERE substring(cred FROM 1 FOR (LENGTH(po.cred)-1))=b.prmprnpre) PROD_NOPROD,--84
	decode(b.prmprstat,
		2, g.prtpmpcvg,
		3, g.prtpmpcvg,
		5, g.prtpmpcvn,
		6, g.prtpmpcej,
		7, g.prtpmpcej) CUENTA_CTBLE_PROD,--85
	lpad(croprcopr, 2, '0') COD_RPT035,--86
	ce.crceccalf CALIF_ANTERIOR,--87
	ROUND(DECODE(b.prmprstat, 
		2, decode(b.prmprpsus, 0, 0, b.prmprpsus) , b.prmprpsus), 2) PROD_DEV_SUSPENSO,--88
	decode(b.prmprstat,
		2, g.prtpmsdvg,
		3, g.prtpmsdvg,
		5, g.prtpmsdvn,
		6, g.prtpmsdej,
		7, g.prtpmsdej) CUENTA_CTBLE_PROD_SUSPENSO,--89
	ROUND((SELECT NVL(prdifsald, 0)
		   FROM prdif
		   WHERE prdifnpre = b.prmprnpre
		   AND prdifcarg IN (422,423,426,427)
		   AND prdifmrcb = 0), 2) SALDO_INTERES_DIF--90
FROM gbage a, prmpr b, prtsa c, prcon d, prcon e, prcon f, prtpm g, prtcr h, OUTER gbdbi i,
	OUTER prtdt j, OUTER prtdt k, OUTER lcmlc l, gbcon m,
	OUTER crcec n,OUTER prcon o, OUTER ecmso p, OUTER cropr cr, OUTER crcec ce, OUTER crgar cg, OUTER pradi
WHERE a.gbagecage = b.prmprcage
AND b.prmprnpre = c.prtsanpre
AND b.prmpruplz = d.prconcorr
AND d.prconpref = 3
AND b.prmprfpag = e.prconcorr
AND e.prconpref = 2
AND b.prmprdest = f.prconcorr
AND f.prconpref = 50
AND b.prmprtcre = g.prtpmtcre
AND b.prmprcmon = g.prtpmcmon
AND b.prmprtcre = h.prtcrtcre
AND b.prmprstat IN (2, 3, 5, 6, 7)
AND a.gbagecage = i.gbdbicage
AND b.prmprnpre = j.prtdtnpre
AND b.prmprnpre = k.prtdtnpre
AND a.gbagecage = l.lcmlccage
AND b.prmprlncr = l.lcmlcnrlc
AND b.prmprcclf = m.gbconcorr
AND m.gbconpfij = 80
AND b.prmprnpre = n.crcecnbco
AND l.lcmlcstat = 1
AND l.lcmlcmrcb = 0
AND b.prmprstat = o.prconcorr
AND o.prconpref = 4
AND b.prmprconv = p.ecmsonsol
AND b.prmprtcre NOT BETWEEN 60 AND 67
AND c.prtsafvig = (SELECT max(r.prtsafvig) FROM prtsa r WHERE r.prtsanpre = c.prtsanpre)
AND i.gbdbifech = (SELECT max(w.gbdbifech) FROM gbdbi w WHERE w.gbdbicage = i.gbdbicage)
AND j.prtdtftra = (SELECT max(x.prtdtftra)
         FROM prtdt x
         WHERE x.prtdtnpre = b.prmprnpre
         AND x.prtdtpref = 20
         AND x.prtdtccon = 1
         AND x.prtdtmrcb = 0)
AND k.prtdtftra = (SELECT max(y.prtdtftra)
			         FROM prtdt y
			         WHERE y.prtdtnpre = b.prmprnpre
			         AND y.prtdtpref = 20
			         AND y.prtdtccon = 2
			         AND y.prtdtmrcb = 0) 
AND n.crcecfech = (SELECT gbpmtfdia FROM gbpmt)
AND cg.crgarnopr[1,8] = b.prmprnpre
AND cg.crgarngar = (SELECT max(cga.crgarngar)
                   FROM crgar cga 
                   WHERE cga.crgarnopr = cg.crgarnopr 
                   AND cga.crgarmont > 0)
AND cr.croproper = b.prmprnpre
AND cr.croprnopr[1] < 2
AND ce.crcecnbco = b.prmprnpre
AND ce.crcecfech = (SELECT (SELECT max(crcecfech) FROM crcec)-30 FROM gbpmt)
AND pradinpre = b.prmprnpre
ORDER BY 1;