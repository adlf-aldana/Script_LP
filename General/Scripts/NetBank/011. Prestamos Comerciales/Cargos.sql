--PRORRATEO INT REPRO/R
SELECT prmprnpre,
	prmprcage,
	prdipcarg,
	prdipfpag 
FROM prdip, prmpr
WHERE prdipnpre = prmprnpre-- = 10044606
AND prdipcarg BETWEEN 430 AND 452
AND prdipfpag BETWEEN '2023-03-01' AND '2023-03-31'
ORDER BY 1

-- SEGURO DESGRAVAMEN CODEUDOR
SELECT ROUND(((a.prmprsald + 
	(SELECT SUM(CASE WHEN prdifnpre = a.prmprnpre 
                     AND prdifcarg IN (420,421,424,425)
                THEN prdifsald ELSE 0 END)
     FROM prdif)) *
    (SELECT SUM(CASE WHEN prcgcnpre = a.prmprnpre 
                     AND prcgcmrcb = 0 
                     AND (prcgccarg BETWEEN 210 AND 247 
                     	 OR prcgccarg BETWEEN 90 AND 99)
                THEN prcgcmont ELSE 0 END)
     FROM prcgc)) / 100,2)
FROM prmpr a
WHERE prmprnpre = 10042828;

-- SEGURO TODO RIESGO
SELECT 
(SELECT ROUND(SUM(prcgcmont),2)
	FROM prcgc
	WHERE prcgcnpre = a.prmprnpre
	AND prcgcmrcb = 0
	AND prcgccarg IN (412,413)) SEG_TODO_RIESGO
FROM prmpr a
WHERE prmprnpre = 10043532

-- SEGURO DIFERIDO DESGRAVAMEN
SELECT 
(SELECT prdipcuot
	FROM prdip
	WHERE prdipnpre = a.prmprnpre
	AND prdipcarg IN (76,77)
	AND prdipfpag BETWEEN '2023-03-01' AND '2023-03-31') DIF_SEG_DES
FROM prmpr a
WHERE prmprnpre = 10044606

-- COBRO AUTOMATICO
SELECT * 
FROM prerr 
WHERE prerrnpre = 10045010 
ORDER BY 1 DESC;

SELECT *
FROM prmpr
WHERE prmprnpre = 10045010