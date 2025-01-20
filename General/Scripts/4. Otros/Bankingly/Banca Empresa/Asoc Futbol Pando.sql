--****************************************************--
--------- BANCA EMPRESA ---------
-- 9051015748 250007	ASOCIACION DE FUTBOL DE PANDO
-- FIRMANTE	254913	MONJE AGUILERA YOVANNI
--------------------------------------------------------
-- USER: banca.empresa.futbol.pando
-- PASS: Clave123*
-- PIN: 123456
-- NIT: 1764672PA
--****************************************************--	


--****************************************************--
--------- BANCA PERSONA ---------
-- COD_CLI: 250007
-- USER: jorge.justiniano
-- PASS: Clave123*
-- preg: 
-- PIN: 123456
-- NIT: 1764672PA
--------------------------------------------------------
--****************************************************--
SELECT camcancta,
	camcacage,
	camcasact,
	camcastat,
	gbagenomb,
	gbagetdid,
	gbagendid,
	gbagenruc,
	catitcage
FROM camca, gbage, catit
WHERE camcacage = gbagecage 
AND camcancta = catitncta
AND camcancta = 9051014630;

SELECT gbagecage,
	gbagenomb,
	gbagetdid,
	gbagendid,
	camcancta,
	camcasact,
	cafircage
FROM gbage
	INNER JOIN camca
		ON camcacage = gbagecage
	INNER JOIN cafir
		ON gbagecage = cafircage
		AND camcancta = cafirncta
WHERE camcancta = 9051014630

---------------------------------------------------------
SELECT *FROM camca WHERE camcacage = 251434 AND camcastat = 1;

