SELECT gbagecage cod_cliente,
	gbagenomb nombre,
	TRIM(gbagendid) num_documento 
FROM gbage
WHERE gbageagen = 51
ORDER BY 2;


SELECT DISTINCT 
	catrnncta,
	prmprnpre
FROM camca, catrn, OUTER prmpr
WHERE camcancta = catrnncta
AND camcastat IN (1,2,3)
AND camcacage = prmprcage
AND catrnuser = 'WEB'
AND catrnagen = 51;

SELECT *--count(*)
FROM prmpr
WHERE prmprstat IN (2,3,4,5,6,7)
AND prmpragen = 51

SELECT DISTINCT 
	gbagecage,
	gbagenomb,
	gbagetdid,
	gbagendid
FROM gbage
	INNER JOIN camca
		ON gbagecage = camcacage
	INNER JOIN pfmdp
		ON gbagecage = pfmdpcage
WHERE gbageagen = 51
AND camcastat <> 4
ORDER BY 2;

SELECT DISTINCT 
	gbagecage COD_CLI,
	gbagenomb NOMBRE,
	TRIM(gbagendid) N_DOCUMENTO,
	camcancta N_AHORRO,
	ABS(camcasact) SALDO,
	cacondesc AHORRO_STAT,
	prmprnpre N_PRE,
	prmprmdes DESEMBOLSADO,
	prmprsald SALDO_PENDIENTE,
	prcondesc PRE_STAT,
	prmprstat PRE_STAT,
	prmprctac AHORRO_PRE
FROM gbage
	INNER JOIN camca
	ON gbagecage = camcacage
	AND camcastat <> 4
	LEFT JOIN cacon
		ON caconpref = 4
		AND camcastat = caconcorr		
	INNER JOIN catrn
	ON camcancta = catrnncta
	LEFT JOIN prmpr
	ON prmprcage = gbagecage
	AND prmprstat IN (2,3,4,5,6,7)
	LEFT JOIN prcon
		ON prconpref = 4
		AND prconcorr = prmprstat	
WHERE camcancta = catrnncta
AND catrnuser = 'WEB'
AND catrnagen = 51;

SELECT 
	gbagecage COD_CLI,
	gbagenomb NOMBRE,
	gbagendid N_DOCUMENTO,
	camcancta N_AHORRO,
	ABS(camcasact) SALDO,
	cacondesc AHORRO_STAT,
--	camcastat AHORRO_STAT,	
	pfmdpndep N_DPF,
	pfcondesc DPF_STAT,
	pfmdpstat DPF_STAT,
	prmprnpre N_PRE,
	prmprmdes DESEMBOLSADO,
	prmprsald SALDO_PENDIENTE,
	prcondesc PRE_STAT,
	prmprstat PRE_STAT,
	prmprctac AHORRO_PRE,
	CASE 
		WHEN EXISTS (
			SELECT 1
			FROM catrn
			WHERE catrnncta = a.camcancta
			AND catrnuser='WEB') THEN 'S'
		ELSE 'N'
	END AS BANCA_DIGITAL
FROM gbage
	LEFT JOIN camca a
		ON gbagecage = a.camcacage
		AND a.camcastat <> 4
	LEFT JOIN cacon
		ON caconpref = 4
		AND a.camcastat = caconcorr		
	LEFT JOIN pfmdp
		ON pfmdpcage = camcacage
		AND pfmdpstat <> 3
	LEFT JOIN pfcon
		ON pfconpfij = 5
		AND pfconcorr = pfmdpstat
	LEFT JOIN prmpr
		ON gbagecage = prmprcage
		AND prmprstat IN (2,3,4,5,6,7)
	LEFT JOIN prcon
		ON prconpref = 4
		AND prconcorr = prmprstat	
WHERE gbageagen = 51
ORDER BY 1;

SELECT *FROM cacon ORDER BY 1,2
SELECT *FROM pfcon ORDER BY 1,2
SELECT *FROM prmpr WHERE prmprnpre = 10047596
SELECT *FROM prcon ORDER BY 1,2;
