--****************************************************--
--------- BANCA EMPRESA ---------
-- 9051015748 250007	ASOCIACION DE FUTBOL DE PANDO
-- FIRMANTE	254913	MONJE AGUILERA YOVANNI - 1764672PA
--------------------------------------------------------
-- USER: administrador1
-- PASS: Clave123*
-- PIN: 123456
-- NIT: 1764672PA - NIT 082008
--****************************************************--	
SELECT *
FROM camca
WHERE camcacage IN (251434,254913,250007)
AND camcastat = 1

SELECT *
FROM gbage
WHERE gbagecage = 254913

SELECT *
FROM camca
WHERE camcancta = 9051015748