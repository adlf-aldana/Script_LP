-- tetrnttra: 1 - DEBITO
-- tetrnttra: 2 - ABONO
SELECT *
FROM tecon 
ORDER BY 1,2,3;

-- 101 108 109 110 
SELECT tetrnntra NUM_TRANS,
	tetrnftra FECHA_TRANS,
	tetrnstat ESTADO,
	tetrntxmd NUM_ACH,
	tetrncage COD_CLI,
	tetrnnomb NOMB_CLI,
	tetrnimpt IMPORTE,
	tetrncenx,
--	tetrnttra,
	CASE
 	WHEN tetrnttra = 1 THEN tetrnnvia
 	WHEN tetrnttra = 2 THEN tetrnnctx
 	END AS CUENTA_ORIGEN,
	CASE
 	WHEN tetrnttra = 1 THEN 'DEBITO'
 	WHEN tetrnttra = 2 THEN 'ABONO'
 	END AS ACCION,
 	CASE
 	WHEN tetrnttra = 1 THEN tetrnnctx
 	WHEN tetrnttra = 2 THEN tetrnnvia
 	END AS CUENTA_DESTINO 
FROM tetrn
--WHERE tetrnntra IN (158429  , 158464 ,158547  );
WHERE tetrnstat = 104--IN (101, 108, 109, 110)
--tetrnntra IN (156531, 156536);
--AND tetrncage = 359160
ORDER BY 2;

SELECT *
FROM tetrn
WHERE tetrnntra = 155774
AND tetrnftra >= '2023-09-18'

SELECT *
FROM tetrn
WHERE tetrnntra IN (156531, 156536);
WHERE tetrncage = 359160
AND tetrnftra >= '2023-09-18'
