SELECT sum(t.tetrnimpo) MONTO,
	count(*) ORDENES_RECIBIDAS,
	TRIM(t2.tecondesc) PARTICIPANTE,
	TRIM(t.tetrncenx) COD_PARTICIPANTE
FROM tetrn t , tecon t2 
WHERE (t.tetrnstat = 204 OR t.tetrnntra IN (380819,380846,380849,380873,380883,381062, 381314, 382546, 382657,384221,384382,385156,388201,389189))
AND t.tetrnftra = '2025-02-02'
AND t.tetrnfpro = '2025-02-02'
--AND t.tetrnntra = 380823
AND t2.teconpref = 2
AND t2.teconcorr = t.tetrncenx 
GROUP BY 3,4
ORDER BY 2;

SELECT t.tetrnntra NUM_TRANSAC,
	t.tetrnftra FECHA_TRANS,
	TRIM(t2.tecondesc) PARTICIPANTE,
	TRIM(t.tetrncenx) COD_PARTICIPANTE,	
	t.tetrnimpo IMPORTE,
	t.tetrnstat ESTADO,
	TRIM(t.tetrntxmd) NUM_ACH,
	t.tetrncage COD_CLIENTE,
	TRIM(t.tetrnnomb) CLIENTE,
	t.tetrnnvia CUENTA_AHORRO,
	TRIM(t.tetrnglos) GLOSA	
FROM tetrn t , tecon t2 
WHERE (t.tetrnstat = 204 OR t.tetrnntra IN (380819,380846,380849,380873,380883,381062, 381314, 382546, 382657,384221,384382,385156,388201,389189))
AND t.tetrnftra = '2025-02-02'
AND t.tetrnfpro = '2025-02-02'
--AND t.tetrnntra = 380823
AND t2.teconpref = 2
AND t2.teconcorr = t.tetrncenx 
ORDER BY 1;

SELECT *
FROM tetrn
WHERE tetrnstat IN (200,201,202,203,204)
AND tetrnftra = '2025-02-02'