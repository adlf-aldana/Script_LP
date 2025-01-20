SELECT *FROM fecon ORDER BY 1,2
-- PAIS ORIGEN
	-- AXON
SELECT *
FROM gbcon
WHERE gbconpfij = 54
ORDER BY 1,2
	-- SIN
SELECT *
FROM fepsi
WHERE fepsitipo = 5
ORDER BY CAST(fepsicimp AS integer)

-- TIPO DE ACTIVIDADES
SELECT *
FROM fecps

-- UNIDAD DE MEDIDA
	-- SIN
SELECT *
FROM fepsi
WHERE fepsitipo = 13
ORDER BY 1, 2

-- TIPO DOCUMENTO IDENTIDAD
SELECT *
FROM fepsi
WHERE fepsitipo = 6

SELECT *
FROM gbcon 
WHERE gbconpfij = 4

SELECT *
FROM fersi
WHERE fersitipo = 6

-- DOCUMENTO SECTOR
unload TO fedse_bk_antes.txt
SELECT *
FROM fedse

-- DOCUMENTO FISCAL
SELECT *
FROM fepsi
ORDER BY 1,2

-- METODO PAGO
SELECT *
FROM fepsi
WHERE fepsitipo = 9
ORDER BY CAST(fepsicimp AS integer)

SELECT *
FROM fersi
WHERE fersitipo = 9

-- TIPO MONEDA
SELECT *
FROM gbcon 
WHERE gbconpfij = 10

SELECT *
FROM fepsi
WHERE fepsitipo = 10
ORDER BY CAST(fepsicimp AS integer)

SELECT *
FROM fersi
WHERE fersitipo = 10

-- MOTIVO ANULACION
SELECT *
FROM fepsi
WHERE fepsitipo = 4

SELECT *
FROM fecon 
WHERE feconpref = 5

SELECT *
FROM fersi
WHERE fersitipo = 4
