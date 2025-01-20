SELECT DISTINCT
	a.prmprnpre AS N_PRE,
	a.prmprcage AS COD_CLI,
	a.prmprcmon AS MONEDA,
	a.prmprstat AS ESTADO_CREDITO,
	a.prmprcage AS COD_CLI,
	gbagenomb AS NOMBRE,
	prppgfech AS FECHA_PAGO,
	a.prmprfinc AS FEC_INCUM,
	a.prmprfpvc AS FEC_PASVENC,
	a.prmprfulp AS FEC_ULT_PAGO,
	prppgnpag AS CUOTA,
	a.prmprdeba AS DEB_AUT,
	prdebdesc AS GLOSA,
	prdebimpt AS IMPORTE_DEB_AUT,
	camcancta AS N_CUENTA,
	camcacmon AS MONEDA_CA,
	camcastat AS ESTADO_CA,
	ABS(camcasact) AS SALDO_CA,
	prppgcapi AS CAPITAL,
	prppginte AS INTERES,
	ROUND(((a.prmprsald +
		NVL((
			SELECT SUM(
				CASE
					WHEN prdifnpre = a.prmprnpre
					AND prdifcarg IN (420, 421, 424, 425)
				THEN prdifsald
				ELSE 0
				END)
			FROM prdif
		), 0)) *
		NVL((
			SELECT SUM(
				CASE
					WHEN prcgcnpre = a.prmprnpre
					AND prcgcmrcb = 0
					AND (prcgccarg BETWEEN 210 AND 247
					OR prcgccarg BETWEEN 80 AND 99)
				THEN prcgcmont
				ELSE 0
				END)
			FROM prcgc), 0)
	) / 100, 2) AS SEG_DESGRAVAMENT_COD,
	NVL((
		SELECT ROUND(SUM(prcgcmont), 2)
		FROM prcgc
		WHERE prcgcnpre = a.prmprnpre
		AND prcgcmrcb = 0
		AND prcgccarg IN (412, 413)
	), 0) AS SEG_TODO_RIESGO,
	NVL((SELECT SUM(prdipcuot)
		FROM prdip
		WHERE prdipnpre = a.prmprnpre
		AND (prdipcarg BETWEEN 66 AND 67 OR 
			prdipcarg BETWEEN 510 AND 553)
		AND prdipfpag BETWEEN '2023-05-01' AND '2023-05-31'
	), 0) AS DIF_SEG_DES,
	NVL((SELECT SUM(prdipcuot)
		FROM prdip
		WHERE prdipnpre = a.prmprnpre
		AND prdipcarg BETWEEN 430 AND 452
		AND prdipfpag BETWEEN '2023-05-01' AND '2023-05-31'
	), 0) AS PRORRATEO_INT_REPR,
	NVL(ROUND(( SELECT prcgcmont
			FROM prcgc
			WHERE prcgcnpre = a.prmprnpre
			AND prcgccarg IN (417, 418)
			AND prcgcmrcb = 0
			),2), 0) AS SEGURO_VEHICULAR
FROM prmpr a
	INNER JOIN prppg
		ON a.prmprnpre = prppgnpre
		AND prppgfech BETWEEN '2023-05-01' AND '2023-05-31'
		AND a.prmprstat IN (2, 3, 5, 6, 7)
	INNER JOIN prdeb
		ON prdebnpre = a.prmprnpre 
		AND prdebmrcb = 0
	INNER JOIN camca
		ON a.prmprctac = camcancta
		AND a.prmprdeba = 'S'
	INNER JOIN gbage
		ON camcacage = gbagecage
	LEFT JOIN prdif
		ON prdif.prdifnpre = a.prmprnpre
	LEFT JOIN prcgc
		ON prcgc.prcgcnpre = a.prmprnpre
ORDER BY prppgfech, N_PRE;
