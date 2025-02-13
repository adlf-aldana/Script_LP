-- 07/02/2025
SELECT felvtnufg, --NRO_REG,
	felvtnfac,-- NRO_FACTURA,
	fehfestat,
	felvtftra,-- FECHA,
	felvtimpt,-- IMPORTE,
	felvtnopr,-- NRO_OPERACION, 
	felvtntra,-- NRO_TRANSACCION,
	felvtuser --USUARIO
FROM felvt, fehfe
WHERE felvtnufg = fehfeiddf
AND felvtnfac = fehfenfac
AND felvtnfac = 628
AND felvtnufg = 22646

SELECT *FROM fehfe

SELECT *
FROM catrn
WHERE catrnncta = 9051263592
AND catrnftra = '2025-02-07'
--catrnntra = 30485465

SELECT *FROM admod

SELECT *
FROM tdtrn
WHERE tdtrnfpro = '2025-02-07'

SELECT *
FROM catmv
WHERE catmvpref = 15