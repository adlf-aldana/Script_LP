--381314
SELECT *
FROM tetrn
WHERE tetrnftra = '2025-02-02'
AND tetrnstat IN (200,201,202,203)
ORDER BY 1

select TRIM(num_orden_originante),
	TRIM(num_orden_ach), 
	TRIM(num_orden_destinatario),
	TRIM(cuenta_origen),
	TRIM(cuenta_destino),
	TRIM(titular_originante),
	TRIM(importe),
	* 
from ach_orders
WHERE num_orden_ach = '14262502024442308748'

SELECT *
FROM tetrn
WHERE tetrntxmd = '14262502024442308748'

UPDATE tetrn
SET tetrnntra = 380830 --381314
WHERE tetrntxmd = '14262502024442308748'

-------------------------------------------
SELECT *
FROM tetrn
WHERE tetrnntro = '75003250202000380831'

UPDATE tetrn
SET tetrnntra = 381090 --380830
WHERE tetrnntro = '75003250202000380830'

SELECT *
FROM tetrn
WHERE tetrnntra IN (381314,380830,381090)

SELECT *
FROM tetrn
WHERE tetrnntra > 380830

SELECT *FROM capig WHERE capignpig IN (8911096,
8911097)

SELECT *FROM camca WHERE camcancta = 9051089108



SELECT tetrnimpo,*
FROM tetrn
WHERE tetrnntra = 400637