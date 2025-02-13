SELECT sum(catcnimpi)
FROM catcn
WHERE catcnftra = '2024-12-30';

SELECT
	catcnntra,
	catcnndoc,
	sum(catcnimpi),
	count(*)
FROM catcn
WHERE catcnftra = '2025-02-02'
GROUP BY 1, 2
ORDER BY 3 DESC;

SELECT *
FROM catcn
WHERE catcnndoc = 28001798--28002406--27999033--28001991
AND catcnftra = '2024-12-30';
--28001798
SELECT *
FROM catcn
WHERE catcnitem IN (3, 5)
AND catcnftra = '2024-12-30';


UPDATE catcn
SET catcnimpi = 0,
	catcnimpc = 0
WHERE catcncctb = 18308181        
AND catcnftra = '2024-12-30'
AND catcnndoc = 28001991
AND catcnitem = 201
AND catcnimpi = 300000;

UPDATE catcn
SET catcnimpi = 0,
	catcnimpc = 0
WHERE catcncctb = 18308130        
AND catcnftra = '2024-12-30'
AND catcnndoc = 27999033
AND catcnitem = 201
AND catcnimpi = 580;

UPDATE catcn
SET catcnimpi = 0,
	catcnimpc = 0
WHERE catcncctb = 18308131
AND catcnftra = '2024-12-30'
AND catcnndoc = 28002406
AND catcnitem = 201
AND catcnimpi = 376.00;

UPDATE catcn
SET catcnimpi = 0,
	catcnimpc = 0
WHERE catcncctb = 18308130        
AND catcnftra = '2024-12-30'
AND catcnndoc = 28001798
AND catcnitem = 6
AND catcnimpi = 376;
----

SELECT sum(cndtrimpi)
FROM cndtr
WHERE cndtrntra = 10903;

UPDATE cndtr
SET cndtrimpi = cndtrimpi-300000,
	cndtrimpc = (cndtrimpi-300000)/6.86
WHERE cndtrcnta = 18308181
AND cndtrntra = 10903
AND cndtrimpi > 0
AND cndtragen = 81
AND cndtrfdoc = '2024-12-30';

UPDATE cndtr
SET cndtrimpi = cndtrimpi-580,
	cndtrimpc = (cndtrimpi-580)/6.86
WHERE cndtrcnta = 18308130        
AND cndtrntra = 10903
AND cndtrimpi > 0
AND cndtragen = 30
AND cndtrfdoc = '2024-12-30';

UPDATE cndtr
SET cndtrimpi = cndtrimpi-376,
	cndtrimpc = (cndtrimpi-376)/6.86
WHERE cndtrcnta = 18308131
AND cndtrntra = 10903
AND cndtrimpi > 0
AND cndtragen = 31
AND cndtrfdoc = '2024-12-30';

UPDATE cndtr
SET cndtrimpi = cndtrimpi-376,
	cndtrimpc = (cndtrimpi-376)/6.86
WHERE cndtrcnta = 18308130
AND cndtrntra = 10903
AND cndtrimpi > 0
AND cndtragen = 31
AND cndtrfdoc = '2024-12-30';
