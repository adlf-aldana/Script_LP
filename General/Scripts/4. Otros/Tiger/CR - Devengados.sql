-- CR

-- DEVENGADOS
SELECT *
FROM prhdv
WHERE prhdvnpre = 10047990--19037001
AND prhdvfdia >= '2023-03-01';
--AND prhdvfdia = t0.gbpmtfdia

SELECT *
FROM prmpr
WHERE prmprnpre = 10047990;

-- DIFERIDOS
SELECT * 
FROM prdif
WHERE prdifnpre=10047990
AND prdifcarg IN (422,423,426,427);--INTERESES DIFERIDO

SELECT *
FROM prmpr
WHERE prmprnpre = 19037001
	
	
SELECT  ROUND( (DECODE(prmprstat, 
						2, decode(prmprpsus, 0,0, prmprpsus), 
						prmprpsus)) +		
			(DECODE(prmprstat, 
						2, decode(prmprpsus, 0, prmprpdvg, 0),
						0)) + 
			prdifsald, 2)
FROM prmpr, OUTER prdif
WHERE prmprnpre = prdifnpre
AND prmprnpre = 10047990
AND prdifmrcb = 0
AND prdifcarg IN (422,423,426,427);


--AND prhdvfdia = t0.gbpmtfdia
	
select d.prpsgcarg carg,
	b.prcgpdesc descrip,
	b.prcgpcctb cta_ctble,
	a.prdsgcarn carg_dif,
	a.prdsgcant cant_dif,
	c.prcgpcctb cta_ctble_dif,
	d.prpsgcarn carg_prorr,
	d.prpsgcant cant_prorr,
	e.prcgpcctb cta_ctble_prorr
from prcgp b, OUTER prdsg a, prcgp c,prpsg d,prcgp e
where b.prcgpcarg = a.prdsgcarg
and b.prcgpcarg=c.prcgpcarg
and d.prpsgcarg=b.prcgpcarg
and d.prpsgcarn=e.prcgpcarg
order by 1;

