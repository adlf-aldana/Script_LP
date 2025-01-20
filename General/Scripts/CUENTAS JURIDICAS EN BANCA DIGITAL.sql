/* user: juanroberto
 * pass: Clave123*
 * pin: 123456
 * */

SELECT *
FROM gbage
WHERE gbagendid LIKE '%814329%'

SELECT *
FROM cafir
WHERE cafircage = 362340

SELECT *
FROM camca
WHERE camcancta IN (3051951056,
3052952928)

SELECT *
FROM catca
ORDER BY 1,2,3

-------------------------
-- rdossantos
SELECT *
FROM camca
WHERE camcacage = 81536

SELECT *FROM cafir WHERE cafircage = 81536

SELECT *FROM camca WHERE camcancta = 3051923396

SELECT '5-'||camcancta  ProductBankIdentifier, 
camcancta ProductNumber, 
camcastat ProductStatusId, 
2 ProductTypeId, 
'Caja de Ahorros' ProductAlias, 
camcastus CanTransact, 
camcacmon CurrencyId
FROM camca, cafir, catca
--WHERE camcacage = 362340
WHERE cafircage = 362340
and cafirncta=camcancta 
and cafirstat=0 
AND camcatpca = catcatpca AND catcatpgr = 30
AND camcastat in (1, 2) 
AND camcastus in (1, 2, 3) 
and camcamane in (1,3);

SELECT *
FROM catca
ORDER BY 1,2,3

SELECT camcacage,
	camcatpca,
	catcadesc
FROM camca, catca
WHERE camcatpca = catcatpca
AND camcacage = 359160



