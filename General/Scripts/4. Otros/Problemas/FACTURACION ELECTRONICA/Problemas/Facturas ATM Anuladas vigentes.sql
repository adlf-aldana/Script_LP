SELECT DISTINCT 
	DECODE(felvtnfac, NULL, 'REVERSION/POS',
						TO_CHAR(felvtnfac)) NUM_FACTURA,
	felvtnufg,
	trim(felvtnomb) NOM_CLIENTE,
	felvtimpt IMPORTE_FACTURA,
--	felvtntra,
	DECODE(felvtstat,0,'VALIDA',
					9,'RECHAZADA')ESTADO_FACTURA,
--	felvtuser,
	felvthora,
	felvtfpro,
	tdtrnntra,
	--tdtrnntrj,
	tdtrntorg,
	tdtrncmon MONEDA,
--	tdtrnimpt,
	DECODE(tdtrnstat,0,'VALIDA',
					9,'RECHAZADA') ESTADO_TRANSACC,
	catrnntra NUM_TRANSACC_CA,
	catrnftra,
	catrnhora,
	catrnncta NUM_CUENTA,
	--catrnmorg,
	catrnimpo IMPORTE,
--	trim(catrnglos),
	DECODE(catrnstat,0,'TRANSACC CA VALIDA',
					9,'TRANSACC CA NO VALIDA') ESTADO_CA
--	catrnuser
FROM catrn, tdtrn, felvt, tdtct,tdmtd, fehfe
WHERE catrntorg = tdtrntorg
AND tdmtdntrj = tdtrnntrj
AND tdtctncta = catrnncta 
AND felvtnopr = catrnncta
AND felvtntra = catrnntra
AND felvtnufg = fehfeiddf
--AND tdtrnimpt = catrnimpo
--AND felvtftra = catrnftra
--AND catrnncta = 3051904170
--AND catrnftra = '2023-08-13'
AND catrnftra BETWEEN '2023-11-01' AND '2023-11-30'
AND tdtrnfpro BETWEEN '2023-11-01' AND '2023-11-30'
AND tdtrnstat = 9
AND felvtstat = 0
AND felvtcdse = 9
AND fehfemrcb = 0
ORDER BY 1;--catrnncta,catrnntra,felvtnufg;


