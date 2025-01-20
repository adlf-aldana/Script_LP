select a.crslbfece fecha, count (*) cant
from crslb a
where a.crslbfece >= '2023-06-01'
--and a.crslbncta is null
group by 1
order by 1;


DELETE crslb a
where a.crslbfece='2023-06-29';

SELECT *
FROM   crsld
WHERE   crsldfech >= "2023-01-01";


SELECT *
FROM   crsld
WHERE   crsldfech >= "2023-01-01";
-------------------------------

SELECT *
FROM camca
WHERE camcancta = 2051003948 

SELECT *
FROM catcn
WHERE catcnncta = 2051003948 
AND catcnftra >= '2023-06-01'


SELECT *FROM camca WHERE camcacage = 32723 AND camcastat != 4

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051419084--3051944534
--AND catrnftra >= '2023-06-01'
AND catrnstat = 0

SELECT *FROM camca WHERE camcancta = 3051419084

SELECT *FROM capig WHERE capigncta = 3051419084

---------------------------
SELECT *FROM cndtr WHERE cndtrntra = 5864 AND cndtrcnta = 21201101
SELECT *FROM catcn WHERE catcncctb = 21201101 AND catcnftra >= '2023-06-01'
SELECT *FROM camca WHERE camcancta = 2051003948

SELECT *FROM catmv ORDER BY 1,2
SELECT *FROM catmv WHERE catmvpref = 64
SELECT *FROM cjtmv WHERE cjtmvdesc LIKE '%COMISION%'
SELECT *FROM cacon WHERE cacondesc LIKE '%COMISION%'
SELECT *FROM cjcon WHERE cjcondesc LIKE '%COMISION%'

SELECT *FROM admod ORDER BY 1;
SELECT *FROM 