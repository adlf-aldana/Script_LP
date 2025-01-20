SELECT 'CA-' || catmvpref || '-' || catmvcorr AS CODIGO_TRANSACCION, 
	catmvdesc TIPO_TRANSACCION,
	cacondesc DESCRIPCION
FROM catmv, cacon
WHERE caconpref = 1
AND catmvpref = caconcorr
UNION 
SELECT 'CJ-' || cjtmvpref || '-' || cjtmvcorr AS CODIGO_TRANSACCION,
	cjtmvdesc TIPO_TRANSACCION,
	cjcondesc DESCRIPCION
FROM cjtmv, cjcon
WHERE cjconpref = 1
AND cjconcorr = cjtmvpref
UNION 
SELECT 'PF-' || a.pfconpfij || '-' || a.pfconcorr AS CODIGO_TRANSACCION,
	a.pfcondesc TIPO_TRANSACCION,
	(SELECT b.pfcondesc
	FROM pfcon b
	WHERE b.pfconpfij = a.pfconpfij
	AND b.pfconcorr = 0) DESCRIPCION
FROM pfcon a
WHERE a.pfconpfij IN (3,4)
AND a.pfconcorr NOT IN (0) 
UNION 
SELECT 'PR-' || a.prconpref || '-' || a.prconcorr AS CODIGO_TRANSACCION,
	a.prcondesc TIPO_TRANSACCION,
	(SELECT b.prcondesc
	FROM prcon b
	WHERE b.prconcorr = 0
	AND b.prconpref = a.prconpref) DESCRIPCION
FROM prcon a
WHERE a.prconpref IN (20,21)
AND a.prconcorr NOT IN (0);


SELECT catcatpca TIPO_CAJA_AHORRO,
	catcadesc DESCRIPCION,
	catcatcap TIPO_CAPITALIZACION
FROM catca
ORDER BY 1,2 

SELECT *
FROM cacon 
ORDER BY 1,2