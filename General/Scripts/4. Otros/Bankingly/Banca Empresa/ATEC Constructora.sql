--357407 TORRICO CLAVIJO ANTONIO
--3051944792 361737	A.T.E.C. CONSTRUCTORA
--constructora.atec
SELECT camcancta,
	camcacage,
	camcasact,
	camcastat,
	gbagenomb,
	gbagetdid,
	gbagendid,
	gbagenruc,
	cafircage
FROM camca, gbage, cafir
WHERE camcacage = gbagecage 
AND camcancta = cafirncta
AND camcancta = 3051944792;

SELECT *FROM catit WHERE catitcage = 357407
SELECT *FROM cafir WHERE cafirncta = 3051944792

SELECT *
FROM gbage
WHERE gbagecage = 357407;

SELECT *
FROM camca
WHERE camcacage = 357407

---------------------------

--administrador_1
--basico_1
--autorizador_1
SELECT *
FROM gbage
ORDER BY gbagefpro DESC 

SELECT '5-'||camcancta  ProductBankIdentifier, 
	camcancta ProductNumber, 
	camcastat ProductStatusId, 
	2 ProductTypeId, 
	'Caja de Ahorros' ProductAlias, 
	camcastus CanTransact, 
	camcacmon CurrencyId,
	camcasact 
FROM camca, cafir 
WHERE camcacage=42882
--WHERE cafircage = 42882
and cafirncta=camcancta 
and cafirstat=0 
AND camcastat in (1, 2) 
AND camcastus in (1, 2, 3) 
and camcamane in (1,2, 3);

SELECT camcacage ClientBankIdentifier, 
	'5-' ||camcancta ProductBankIdentifier,
	2 ProductTypeId, 
	'Caja de Ahorros' ProductAlias, 
	camcancta ProductNumber,
	camcacmon Moneda,(camcasact * -1) Saldo, 
	(SELECT gbagenomb FROM gbage WHERE gbagecage=camcacage) ProductOwnerName, 
	(SELECT gbofidesc FROM gbofi WHERE gbofinofi=camcaplaz) ProductBranchName,
	camcastus CanTransact, 
	camcaagen SubsidiaryId, 
	(SELECT gbofidesc FROM gbofi WHERE gbofinofi=camcaagen) SubsidiaryName 
FROM camca, cafir
--WHERE camcacage=361737
WHERE (
        (camcatpca <> 1 AND cafircage = 361737)
        OR
        (camcatpca = 1 AND camcacage = 361737)
    )
and cafirncta=camcancta 
and cafirstat=0 
AND camcastat in (1, 2); 


AND WHERE camcacage=? 
and cafirncta=camcancta 
and cafirstat=0 
AND camcastat in (1, 2) 
AND camcastus in (1, 2, 3) and camcamane in (1,2,3);

SELECT *FROM camca WHERE camcacage IN (359160,361737)