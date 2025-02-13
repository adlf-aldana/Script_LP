-- New script in development.
-- Date: 10 sept 2024
-- Time: 11:33:14
-- Author: sgcruz

SELECT sum(cndtrimpi)
FROM cndtr
WHERE cndtrfdoc = '2025-02-06'
AND cndtrntra = 7768;

SELECT 
	catcnndoc,
	sum(catcnimpi),
	count(*)
FROM catcn
WHERE catcnftra = '2025-02-06'
GROUP BY 1
ORDER BY 2 DESC;

SELECT catcnftra FECHA_TRA,
	catcnncta CUENTA,
	catcnntra NUM_TRA,
	catcndesc DESCRIPCION,
	catcncctb CUENTA_CONTABLE,
	catcnimpi IMPORTE_BS,
	catcnimpc IMPORTE_sus,	
	catcnplaz PLAZA,
	catcnagen AGENCIA
FROM catcn
WHERE catcnncta = 5051283178
AND catcnftra = '2024-09-09';

SELECT cndtrntra,
	cndtrmorg,
	cndtritem,
	cndtrcnta,
	cndtrglos,
	cndtrimpi,
	cndtrimpc,
	cndtrplaz,
	cndtragen
FROM cndtr
WHERE cndtrfdoc = '2024-09-09'
AND cndtrntra = 7768
AND cndtrcnta IN (18308190,18308190)

--CASO 1: 
SELECT *
FROM cndtr
WHERE cndtrntra = 7768
AND cndtrfdoc = '2024-09-09'
AND cndtrcnta = 18308190
AND cndtragen = 30
AND cndtrimpi > 0;

UPDATE cndtr
	SET cndtrimpi = cndtrimpi-800,--50,293.02
	cndtrimpc = (cndtrimpi-800)/6.86--7,331.34
WHERE cndtrntra = 7768
AND cndtrfdoc = '2024-09-09'
AND cndtrcnta = 18308190
AND cndtragen = 30
AND cndtrimpi > 0

-- CASO 2:
SELECT *
FROM cndtr
WHERE cndtrntra = 7768
AND cndtrfdoc = '2024-09-09'
AND cndtrcnta = 18308130 
AND cndtragen = 90
AND cndtrimpi < 0;

UPDATE cndtr
	SET cndtrimpi = cndtrimpi+30,-- -50293.02
		cndtrimpc = (cndtrimpi+30)/6.86 -- -7,331.34
WHERE cndtrntra = 7768
AND cndtrfdoc = '2024-09-09'
AND cndtrcnta = 18308130 
AND cndtragen = 90
AND cndtrimpi < 0;

-- CATCN
--CASO 1:
SELECT *
FROM catcn
WHERE catcnntra = 29886449
AND catcnftra = '2024-09-09'
AND catcncctb = 18308190
AND catcnagen = 30
AND catcnimpi = 900;

UPDATE catcn
	SET catcnimpi = catcnimpi-800,-- 100
		catcnimpc = ((catcnimpi-1000)/6.86) -- -14.58
WHERE catcnntra = 29886449
AND catcnftra = '2024-09-09'
AND catcncctb = 18308190
AND catcnagen = 30
AND catcnimpi = 900;

--CASO 2:
SELECT *
FROM catcn
WHERE catcnntra = 29886449
AND catcnftra = '2024-09-09'
AND catcncctb = 18308130
AND catcnagen = 90
AND catcnimpi = -130;

UPDATE catcn
	SET catcnimpi = catcnimpi+30,-- -100
		catcnimpc = (catcnimpi+230)/6.86 -- 14.58
WHERE catcnntra = 29886449
AND catcnftra = '2024-09-09'
AND catcncctb = 18308130
AND catcnagen = 90
AND catcnimpi = -130;


SELECT *
FROM catrn
WHERE catrnntra = 29886449;

SELECT *
FROM catcn
WHERE catcnntra = 29886449
AND catcnftra = '2024-09-09';

SELECT *
FROM catcn
WHERE catcnftra = '2024-09-09'
AND catcnndoc = 0
ORDER BY catcnntra;


