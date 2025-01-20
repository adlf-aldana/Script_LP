--ARCHIVO G
SELECT sum(crsldsald)
From   crsld
where  crsldagrp = 2 -- CAJA DE AHORRO
and   crsldnive  = 1
aND   crsldfech = "2023-02-28";--28/02/2022";

--DELETE crsld WHERE crsldfech = "2022-07-02"

unload to crsld_230531_2da.txt
SELECT *
FROM   crsld
WHERE   crsldfech >= "2023-05-01";

ORDER BY crsldfech DESC 

WHERE   crsldfech >= "2022-01-01";--28/02/2022";

--DELETE crsld WHERE crsldfech = "2023-05-31";

SELECT crsldtdep, sum(crsldsald)
FROM crsld
where  crsldagrp = 2 -- CAJA DE AHORRO
AND crsldrsld = 1 -- COD_ESTRATO 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12
and   crsldnive  = 1 -- MONEDA
aND   crsldfech >= "2023-05-01"--"2022-06-30"
GROUP BY crsldtdep;

-- LOGS
select *
from adlog a
where a.adlogfreg>='2023-01-09'
and a.adloguser='ERM'
--and a.adloglgin='tiger'
--and a.adlognprg like '%001%'
--and (a.adlogdesc like '%95:Previsiones y calificacion -> 1:Operaciones -> 9:Calculo de Prevision: PHP/CRT010.html%'
--or a.adlogdesc like '%95:Previsiones y calificacion -> 1:Operaciones -> 10:Asiento de prevision: PHP/CRP360.html%')
order by 1,3;

SELECT SUM(capigimpo) 
FROM capig, camca a
WHERE capigncta = a.camcancta
AND   capigcpig = 50
AND   capigstat = 0
AND a.camcastat <> 4
AND a.camcacmon = 1;

SELECT gbofiplaz
FROM gbofi 
GROUP BY 1;
           
SELECT camcatpca
FROM camca,gbage
WHERE camcastat <> 4
AND   camcasact <= 0
AND camcacage = gbagecage
AND  camcacmon = 1
GROUP BY 1               
ORDER BY 1;
           
SELECT  gbtpeposi, gbtpetdep 
FROM gbtpe
WHERE gbtpenmod = 5
AND   gbtpetdep in (1,2,3,11,12,13,14,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43);

-- MANT. TIPOS DE DEPOSITOS ESTRATIFICACION
SELECT *
FROM GBTPE
WHERE gbtpenmod = 5 ORDER BY 2; 

select sum(camcasact)
from   camca
where  camcastat <> 4
and    camcatpca = 29;

select gbagetper
from   gbage, camca
where  gbagecage = camcacage
and    camcatpca = 42
and   camcastat <> 4
group by 1;

/*
INSERT INTO gbtpe values(5,29,'CAJA DE AHORRO PROMO MAS',3);
INSERT INTO gbtpe values(5,30,'COOPERATIVO SAN PEDRO LTDA',1);
INSERT INTO gbtpe values(5,31,'COOPERATIVA LA SAGRADA FAMILIA',1);
INSERT INTO gbtpe values(5,32,'COOPERATIVA SAN PEDRO DE AIQUILE RL',1);
INSERT INTO gbtpe values(5,33,'COOP DE AHORRO Y CREDITO ABIERTA MONSE�',1);
INSERT INTO gbtpe values(5,34,'CAJA DE AHORRO ECOFUTURO',3);
INSERT INTO gbtpe values(5,35,'CAJA DE AHORRO DINAMICA',3);
INSERT INTO gbtpe values(5,36,'CAJA DE AHORRO PROACTIVA',3);
INSERT INTO gbtpe values(5,37,'CAJA DE AHORRO EFICAZ',3);
INSERT INTO gbtpe values(5,38,'FUTURO EMPLEADOS',3);
INSERT INTO gbtpe values(5,39,'DINAMICA EMPLEADOS',3);
INSERT INTO gbtpe values(5,40,'PROACTIVA EMPLEADOS',3);
INSERT INTO gbtpe values(5,41,'EFICAZ EMPLEADOS',3);
INSERT INTO gbtpe values(5,42,'COOPERATIVA COPROLE R.L.',1);
*/

--TIPO DE PIGNORACION
SELECT *
FROM catpg
--WHERE catpgtpgr = 50
ORDER BY 1;

SELECT *
FROM capig
WHERE capigcpig = 8
AND capigstat=0;

SELECT *
FROM catca
ORDER BY 1,2;

SELECT *
FROM capig
WHERE capigcpig = 50
AND capigstat=0;

SELECT *
FROM camca 
WHERE camcancta = 3051751810;

SELECT sum(camcasact)
FROM camca
WHERE camcastat = 1
AND camcacmon=1
AND camcatpca IN (1,3,13,15,21,26,27,29,34,35,36,37,38,39,40,41);

/* TOTAL - BALANCE DE SUMAS Y SALDOS CAJAS DE AHORRO  */
-- 
SELECT sum(cndtrimpi)--*
FROM cndtr
WHERE cndtrcnta LIKE '%282011%'
OR cndtrcnta LIKE '235071%'
OR cndtrcnta LIKE '%2120113%'
OR cndtrcnta LIKE '%2120213%'
OR cndtrcnta LIKE '%2120114%'
OR cndtrcnta LIKE '%2120214%'
OR cndtrcnta LIKE '%2120111%';

SELECT *FROM camca WHERE camcaplaz = 0

SELECT *
FROM cndtr
WHERE cndtrcnta LIKE '%282011%'

SELECT *
FROM cndtr
WHERE cndtrcnta LIKE '235071%'

OR cndtrcnta LIKE '%2120113%'
OR cndtrcnta LIKE '%2120213%'
OR cndtrcnta LIKE '%2120114%'
OR cndtrcnta LIKE '%2120214%'
OR cndtrcnta LIKE '%2120111%';
/*****************************/

SELECT UNIQUE(catpgcpig), catpgctau
FROM catpg
WHERE catpgctbz = "S";

SELECT *--SUM(capigimpo) 
FROM capig, camca a
WHERE capigncta = a.camcancta
AND   capigcpig = 8
AND   capigstat = 0
AND a.camcastat <> 4
AND a.camcacmon = 1;

SELECT *
FROM cndtr
WHERE cndtrcnta = 23514101



SELECT *
FROM cndtr
WHERE cndtrcnta = 23114101

SELECT *
FROM camca
WHERE camcaplaz = 0


SELECT *FROM catcn WHERE catcnncta = 3051751810 AND catcnft ORDER BY 1 DESC 
SELECT *FROM camca WHERE camcancta = 3051751810
SELECT *FROM capig WHERE capigncta = 3051751810

SELECT *FROM informix.rjfre WHERE rjfrencta = 3051751810

SELECT *FROM catpg ORDER BY 1

SELECT *FROM cndtr WHERE cndtrntra = 492

SELECT *FROM cnplc WHERE cnplccnta IN (21401149,23514101)

SELECT *FROM catca ORDER BY 1

SELECT *FROM catpg

SELECT *FROM cnhtr WHERE cnhtrntra = 492
SELECT *FROM cndtr WHERE cndtrntra = 492

SELECT *FROM rjmrj WHERE rjmrjnret = 743
SELECT *FROM rjmrj WHERE rjmrjnret = 744




SELECT sum(cndtrimpi)--*
FROM cndtr
WHERE cndtrcnta LIKE '%21201%'
AND cndtrcnta LIKE '%21401%'

OR cndtrcnta LIKE '%2120113%'
OR cndtrcnta LIKE '%2120213%'
OR cndtrcnta LIKE '%2120114%'
OR cndtrcnta LIKE '%2120214%'
OR cndtrcnta LIKE '%2120111%';


