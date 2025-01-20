-- BANCA DIGITAL - REPORTE MENSUAL
SELECT *FROM gbage WHERE gbagecage IN (29330)
SELECT *FROM catrn 
WHERE catrnncta IN (3051522403,
3051590096,
3051590101,
3051874052,
3052024232,
3052296051,
3052551164,
3052551176)
AND catrnuser = 'WEB'


SELECT '5-'||camcancta  ProductBankIdentifier, 
camcancta ProductNumber, 
camcastat ProductStatusId, 
2 ProductTypeId, 
'Caja de Ahorros' ProductAlias, 
camcastus CanTransact, 
camcacmon CurrencyId
FROM camca, cafir
--WHERE camcacage = 362340
WHERE cafircage = 362340
and cafirncta=camcancta 
and cafirstat=0 
AND camcatpca <> 2
AND camcastat in (1, 2) 
AND camcastus in (1, 2, 3) 
and camcamane in (1,3);

SELECT camcacage ClientBankIdentifier, 
'5-' ||camcancta ProductBankIdentifier,
2 ProductTypeId, 
'Caja de Ahorros' ProductAlias, 
camcancta ProductNumber,
camcacmon Moneda,(camcasact * -1) Saldo, 
(SELECT gbagenomb FROM gbage WHERE gbagecage=camcacage) ProductOwnerName, 
(SELECT gbofidesc FROM gbofi WHERE gbofinofi=camcaplaz) ProductBranchName,
camcastus CanTransact, camcaagen SubsidiaryId, 
(SELECT gbofidesc 
FROM gbofi 
WHERE gbofinofi=camcaagen) SubsidiaryName 
FROM camca, cafir 
WHERE cafircage=81536
and cafirncta=camcancta 
and cafirstat=0 
AND camcastat in (1, 2) 
AND camcastus in (1, 2, 3) and camcamane in (1,2,3);
-- RAIANE COD CLI: 81536
-- MARCIA COD CLI: 125250
SELECT *FROM cafir WHERE cafircage = 81536;
SELECT *FROM camca WHERE camcancta IN (3051877638,
3051897731,
3051923023,
3051923396,
3051923841);
AND camcastat IN (1,2,3);

-- OTRO CLIENTE MISMO PROBLEMA REPORTE MENSUAL
SELECT *FROM cafir WHERE cafircage = 66854
SELECT *FROM camca WHERE camcancta in(3051660542,
3051820154,
3051965215,
3052739675)
