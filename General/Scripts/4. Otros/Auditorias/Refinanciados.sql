SELECT DISTINCT 
	prmprnpre AS N_OPERACION,
	TRIM(gbagenomb) AS NOMBRE_PRESTATARIO,
	prmprsald AS SALDO_ADEUDADO,
	TRIM(prcondesc) AS ESTADO_CREDITO,
	prmprtcre AS TIPO_CREDITO,
	prsorfreg AS FECHA_INGRESO_PRORROGA,
	(SELECT MAX(prtdtftra)
	FROM prtdt
	WHERE prtdtnpre = prmprnpre
		AND prtdtmrcb = 0
		AND prtdtpref = 20
		AND prtdtccon = 2) AS FECHA_ULT_PAGO_K,
	(SELECT MAX(prtdtftra)
	FROM prtdt
	WHERE prtdtnpre = prmprnpre
		AND prtdtmrcb = 0
		AND prtdtpref = 20
		AND prtdtccon = 1) AS FECHA_ULT_PAGO_I,
	DECODE(prmprstat, 5, 'SI', 'NO') AS ESTADO_VENCIDO,
	DECODE(prmprstat, 5, prmprfpvc, NULL) AS FECHA_VENCIDO
FROM prmpr
	JOIN prsor ON prmprnpre = prsornpre
	JOIN prrnv ON prmprnpre = prrnvnpre
	JOIN gbage ON prmprcage = gbagecage
	JOIN prcon ON prmprstat = prconcorr
WHERE prconpref = 4
AND prsorstat = 2
ORDER BY 1;