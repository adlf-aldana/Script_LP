SELECT a.tetrnftra FECHA_TRANSF,
	TRIM(a.tetrnhora) HORA_TRANSF,
	a.tetrnntra NUM_TRANSF,
	a.tetrnstat || ' - ' || TRIM(d.tecondesc) ESTADO_TRANSF,
	TRIM(e.tecondesc) TIPO_TRANSFERENCIA,
	TRIM(a.tetrntxmd) NUM_ACH,
	DECODE(a.tetrnttra,1,'75003 - EFV LA PROMOTORA',
					   2, TRIM(a.tetrncenx) || ' - ' || c.tecondesc) ORIGINANTE,
   a.tetrnimpt IMPORTE,
    DECODE(a.tetrnttra,1, TRIM(a.tetrncenx) || ' - ' || c.tecondesc,
					   2,'75003 - EFV LA PROMOTORA') DESTINATARIO,
	a.tetrncage COD_CLI,
	TRIM(a.tetrnnomb) NOMBRE_CLIENTE,
	a.tetrnnvia CUENTA,
	b.catrnntra NUM_TRASACCION_CA
FROM tetrn a, OUTER catrn b, tecon c, tecon d, tecon e
WHERE a.tetrnnvia = b.catrnncta
AND a.tetrnntra = b.catrntorg
--AND catrnftra = tetrnftra
--AND tetrnstat IN (108, 104, 204, 103)
--AND NOT EXISTS (SELECT *
--				FROM catrn x
--				WHERE a.tetrnnvia = x.catrnncta
--				AND a.tetrnntra = x.catrntorg)
AND a.tetrnstat IN (102,103,203,109,101,105,202,110,108)--204,104,
--AND a.tetrnstat IN (204,104)
--AND a.tetrnstat = 108
AND d.teconcomd = 2 -- CAMARA ACCL (PARA ESTADO TRANSF)
AND d.teconpref = 5 -- ESTADOS TRANSACCION (PARA ESTADO TRANSF)
AND d.teconcorr = a.tetrnstat -- ESTADO TRANSFERENCIA (PARA ESTADO TRANSF)
AND e.teconcomd = 2 -- CAMARA ACCL (PARA TIPO TRANSFERENCIA (DEBITO/ABONO))
AND e.teconpref = 6 -- TIPO TRANSACCION (PARA TIPO TRANSFERENCIA (DEBITO/ABONO))
AND e.teconcorr = a.tetrnttra -- TIPO DE TRANSF (PARA TIPO TRANSFERENCIA (DEBITO/ABONO))
AND c.teconcomd = 2 -- CAMARA ACCL (ORIGINANTE)
AND c.teconpref = 2 -- ENTIDADES EXTERNAS (ORIGINANTE)
AND c.teconcorr = a.tetrncenx -- COD ENTIDADES EXTERNAS (ORIGINANTE)
--AND tetrnimpt < 260
--AND tetrnntra IN (172735,172736)
--AND a.tetrnstat = 110
--AND a.tetrnntra IN ()
AND a.tetrnftra >= '2023-11-22'
ORDER BY 1,3;
-------------------


UPDATE tetrn
SET tetrnstat = 109 --110
WHERE tetrnntra IN (175900,
175901,
175902,
175903,
175904,
175905,
175906)

SELECT *FROM tecon ORDER BY 1,2,3

-- TIGO MONEY QUITAR
-- BANCO PRODEM -> AVERIGUAR
SELECT *FROM tetrn WHERE tetrnstat IN (108,102) AND tetrnftra >= '2023-11-01'


UPDATE tetrn
SET tetrnstat = 109 --102
WHERE tetrnntra IN (174246,
174983)

UPDATE tetrn
SET tetrnstat = 109
WHERE tetrnntra IN (173621,
173691,
173893)

SELECT 
	tetrnntra NUM_TRANSACCION,
	TRIM(tetrntxmd) NUM_ACH,
	tetrnfpro FECHA_TE,
	tetrnhora HORA_TE,
	tetrnimpt IMP_TE,
	tetrnstat ESTADO_TE,
	catrnncta NUM_CA,
	catrnntra NTRA_CA,
	catrnimpo IMP_CA,
	catrnfpro FECHA_PRO_CA
FROM tetrn, OUTER catrn
WHERE catrnntra = tetrntorg
AND tetrnstat = 109
AND tetrnftra >= '2023-10-01'
--AND tetrntxmd IN ()
ORDER BY 1

SELECT fehfeiddf,
	fehfenfac,
	trim(fehfersoc),
	fehfemtmo,
	fehfefreg,
	fehfemrcb,
	fehfestat,
	fehfetres,
	fehfecmot
FROM fehfe
WHERE fehfenfac = 1930
AND fehfefreg >= '2023-10-01'

SELECT felvtnfac,
	felvtftra,
	trim(felvtnomb),
	felvtimpt,
	felvtnopr,
	felvtntra,
	felvtstat,
	felvtuser 
FROM felvt
WHERE felvtnfac = 1930
AND felvtftra >= '2023-10-01'
