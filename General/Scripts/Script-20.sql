SELECT cndtrntra COMPROBANTE,
	cndtrfdoc FECHA,
	cndtrcnta CNTA_CONTABLE,
	cndtrimpi IMPORTE
FROM cndtr
WHERE cndtrntra = 844

SELECT *
FROM prtcn
WHERE prtcnimpi BETWEEN abs(143702) AND abs(143703)

SELECT prtcnftra FECHA,
	prtcnnpre NUM_PRESTAMO,
	prtcndesc DESCRIPCION,
	prtcncctb CNTA_CONTABLE,
	prtcnimpi IMPORTE
FROM prtcn
WHERE prtcnndoc = 1285120