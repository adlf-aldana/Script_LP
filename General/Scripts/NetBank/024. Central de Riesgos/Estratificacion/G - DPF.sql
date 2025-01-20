--ARCHIVO G - DPF
SELECT *
FROM crsld
WHERE crsldagrp = 3
AND crsldnive  = 1
AND crsldfech = "2022-03-31";
--ORDER BY 4;--28/02/2022";

SELECT *
FROM gbtpe
WHERE gbtpe = 7
ORDER BY 1,2;

SELECT *
FROM pftre
WHERE pftretpgr = 50
ORDER BY 1,3;

-- TIPOS DE RETENCIONES
SELECT * 
FROM pftre;

SELECT * 
FROM pfret;

SELECT *
FROM pfmdp
WHERE pfmdptdep=31;

SELECT *
FROM pfmdp
WHERE pfmdptdep=31;
--AND pfmdpcmon=1;


select *
FROM pfret
WHERE pfretndep='300024634900000';

SELECT *
FROM pfret
WHERE pfrettret IN (26,27);

SELECT * 
FROM pftre
WHERE pftrecodi in (26,27);

SELECT *FROM pftdp
WHERE pftdptdep IN (26,27);

--ARCHIVO G
SELECT sum(crsldsald)
From   crsld
where  crsldagrp = 3 -- DPF
and   crsldnive  = 1
aND   crsldfech = "2022-06-30";--28/02/2022";


/* TOTAL - BALANCE DE SUMAS Y SALDOS CAJAS DE AHORRO  */
-- 
SELECT sum(cndtrimpi)--*
FROM cndtr
WHERE cndtrcnta LIKE '2130113%'

SELECT sum(cndtrimpi)--*
FROM cndtr
WHERE cndtrcnta LIKE '2130313%'

SELECT sum(cndtrimpi)--*
FROM cndtr
WHERE cndtrcnta LIKE '%2130314%'

SELECT sum(cndtrimpi)--*
FROM cndtr
WHERE cndtrcnta LIKE '%2130413%'

SELECT sum(cndtrimpi)--*
FROM cndtr
WHERE cndtrcnta LIKE '%2130414%'

SELECT sum(cndtrimpi)--*
FROM cndtr
WHERE cndtrcnta LIKE '%2130513%'

SELECT sum(cndtrimpi)--*
FROM cndtr
WHERE cndtrcnta LIKE '%2130611%'

SELECT sum(cndtrimpi)--*
FROM cndtr
WHERE cndtrcnta LIKE '%2130613%'

SELECT sum(cndtrimpi)--*
FROM cndtr
WHERE cndtrcnta LIKE '%2130614%'

SELECT sum(cndtrimpi)--*
FROM cndtr
WHERE cndtrcnta LIKE '%2130713%'

SELECT sum(cndtrimpi)--*
FROM cndtr
WHERE cndtrcnta LIKE '%2130813%'

SELECT sum(cndtrimpi)--*
FROM cndtr
WHERE cndtrcnta LIKE '%2130814%'

SELECT sum(cndtrimpi)--*
FROM cndtr
WHERE cndtrcnta LIKE '235091%'

SELECT *
FROM cndtr
WHERE cndtrcnta LIKE '%2130213%';

SELECT *
FROM informix.pftcn 
WHERE pftcncctb LIKE '%2130213%';

SELECT sum(cndtrimpi)--*
FROM cndtr
WHERE cndtrcnta LIKE '2130113%'
OR cndtrcnta LIKE '2130313%'
OR cndtrcnta LIKE '%2130314%'
OR cndtrcnta LIKE '%2130413%'
OR cndtrcnta LIKE '%2130414%'
OR cndtrcnta LIKE '%2130513%'
OR cndtrcnta LIKE '%2130611%'
OR cndtrcnta LIKE '%2130613%'
OR cndtrcnta LIKE '%2130614%'
OR cndtrcnta LIKE '%2130713%'
OR cndtrcnta LIKE '%2130813%'
OR cndtrcnta LIKE '%2130814%'
OR cndtrcnta LIKE '235091%'
OR cndtrcnta LIKE '%2130213%';