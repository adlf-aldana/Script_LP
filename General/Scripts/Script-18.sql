-- RECHAZAR
SELECT --sum(t.tetrnimpo) MONTO,
	--count(*) ORDENES_RECIBIDAS,
	TRIM(t2.tecondesc) PARTICIPANTE,
	TRIM(t.tetrncenx) COD_PARTICIPANTE,
	t.tetrnimpo,*
FROM tetrn t , tecon t2 
WHERE t.tetrnntra = 380829
AND t2.teconpref = 2
AND t2.teconcorr = t.tetrncenx
AND t.tetrncenx NOT IN (74003,51002,1033)
--GROUP BY 3,4

