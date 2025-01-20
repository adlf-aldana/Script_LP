SELECT catmvdesc AS TIPO_TRANSACCION,
	catrnndoc AS NRO_TRANSACCION,
	camcancta AS CTA_ORIGEN,
	gbagenomb AS TITULAR_ORIGEN,
	tetrnnctx AS CTA_DESTINO,
	tetrnnomx AS TITULAR_DESTINO,
	catrnftra AS FECHA_TRANS,
	catrnhora AS HORA_TRANS,
	ROUND(SUM(catrnimpo),2) AS MONTO,
	catrncmon MONEDA,
	tetrnuser USUARIO,
	adaudausr AUTORIZADOR
FROM gbage
	INNER JOIN camca
		ON gbagecage = camcacage
		AND camcastat = 1
	INNER JOIN catrn
		ON camcancta = catrnncta
		AND catrnftra BETWEEN '2022-01-01' AND '2022-10-31'
		AND catrnimpo > 0
		AND catrnpref = 10
		AND catrnstat = 0
	INNER JOIN catca
		ON camcatpca = catcatpca
	INNER JOIN catmv
		ON catrnpref = catmvpref
		AND catrncorr = catmvcorr
		AND catmvcorr IN (20,30)
	INNER JOIN tetrn
		ON catrnndoc = tetrnntra
	LEFT JOIN adaud
		ON camcancta = adaudnopr
		AND adaudmodn = 66
		AND adaudamrc = 'S'
GROUP BY 1,2,3,4,5,6,7,8,10,11,12
UNION 
SELECT catmvdesc AS TIPO_TRANSACCION,
	catrnndoc AS NRO_TRANSACCION,
	camcancta AS CTA_ORIGEN,
	gbagenomb AS TITULAR_ORIGEN,
	tetrnnctx AS CTA_DESTINO,
	tetrnnomx AS TITULAR_DESTINO,
	catrnftra AS FECHA_TRANS,
	catrnhora AS HORA_TRANS,
	ROUND(SUM(catrnimpo),2) AS MONTO,
	catrncmon MONEDA,
	tetrnuser USUARIO,
	adaudausr AUTORIZADOR
FROM gbage
	INNER JOIN camca
		ON gbagecage = camcacage
		AND camcastat = 1
	INNER JOIN catrn
		ON camcancta = catrnncta
		AND catrnftra BETWEEN '2022-01-01' AND '2022-10-31'
		AND (catrnimpo* -1) > 0
		AND catrnpref = 10
		AND catrnstat = 0
	INNER JOIN catca
		ON camcatpca = catcatpca
	INNER JOIN catmv
		ON catrnpref = catmvpref
		AND catrncorr = catmvcorr
		AND catmvcorr IN (21,31)
	INNER JOIN tetrn
		ON catrnndoc = tetrnntra
	LEFT JOIN adaud
		ON camcancta = adaudnopr
		AND adaudmodn = 66
		AND adaudamrc = 'S'
GROUP BY 1,2,3,4,5,6,7,8,10,11,12
UNION 
SELECT catmvdesc AS TIPO_TRANSACCION,
	a.catrnndoc AS NRO_TRANSACCION,
	b.camcancta AS CTA_ORIGEN,
	d.gbagenomb AS TITULAR_ORIGEN,
	tetrnnctx AS CTA_DESTINO,
	f.gbagenomb AS TITULAR_DESTINO,
	a.catrnftra AS FECHA_TRANS,
	a.catrnhora AS HORA_TRANS,
	ROUND(b.catrnimpo,2) AS MONTO,
	b.catrncmon MONEDA,
	b.catrnuser USUARIO,
	adaudausr AUTORIZADOR
FROM catrn a
	INNER JOIN catrn b
	INNER JOIN camca
	INNER JOIN gbage
	INNER JOIN camca c
	INNER JOIN camca cc
	INNER JOIN gbage f
	INNER JOIN catmv
	INNER JOIN cat
GROUP BY 1,2,3,4,5,6,7,8,10,11,12