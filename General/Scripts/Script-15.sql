SELECT *
FROM cndtr
WHERE cndtrfdoc > '2025-01-31'

SELECT *
FROM cndtr
WHERE cndtrntra = 785 a la 782

SELECT *
FROM cndtr
WHERE cndtrntra = 782

DELETE cndtr
WHERE cndtrntra = 782

DELETE cnhtr
WHERE cnhtrntra = 782

unload TO cndtr_785.txt
SELECT *
FROM cndtr
WHERE cndtrntra = 785

unload TO cnhtr_785.txt
SELECT *
FROM cnhtr
WHERE cnhtrntra = 785

load FROM cndtr_785_782.txt INSERT INTO cndtr;
load FROM cnhtr_785_782.txt INSERT INTO cnhtr;

DELETE cndtr
WHERE cndtrntra = 785

DELETE cnhtr
WHERE cnhtrntra = 785


select *
from cnsrl a

SELECT max(a.cnhtrntra)
from cnhtr a;

--------------------- UPDATE -- ingresar la misma cantidad de linea a fecha de cierre
update cnsrl a
set a.cnsrlcorr=(select max(a.cnhtrntra)
                 from cnhtr a);

---------------------------------
unload TO cnlog_0125.txt
select *
from cnlog;

delete cnlog a 
where a.cnlogntra=786; 

-- POSTERIOR AL NUEVO COMPROBANTE, UPDATE CNLOG;
update cnlog a
set a.cnlogntra=3646
where a.cnlogntra=3652;


-----------------------------------
SELECT *
FROM cndtr
WHERE cndtrntra = 781

SELECT *
FROM cnhtr
WHERE cnhtrntra = 781

UPDATE cndtr
SET cndtrtdoc = 90--4
WHERE cndtrntra = 781

UPDATE cnhtr
SET cnhtrtdoc = 90--4
WHERE cnhtrntra = 781

-------------------------------------
785 a la 783

SELECT *
FROM cndtr
WHERE cndtrntra = 783

SELECT *
FROM cnhtr
WHERE cnhtrntra = 783

DELETE cndtr
WHERE cndtrntra = 783

DELETE cnhtr
WHERE cnhtrntra = 783

unload TO cndtr_785_a_783.txt
SELECT *
FROM cndtr
WHERE cndtrntra = 785;

unload TO cnhtr_785_a_783.txt
SELECT *
FROM cnhtr
WHERE cnhtrntra = 785;

load FROM cndtr_785_a_783_mod.txt INSERT INTO cndtr;
load FROM cnhtr_785_a_783_mod.txt INSERT INTO cnhtr;

DELETE cndtr
WHERE cndtrntra = 785

DELETE cnhtr
WHERE cnhtrntra = 785

select *
from cnsrl a

SELECT max(a.cnhtrntra)
from cnhtr a;

--------------------- UPDATE -- ingresar la misma cantidad de linea a fecha de cierre
update cnsrl a
set a.cnsrlcorr=(select max(a.cnhtrntra)
                 from cnhtr a);
-----------------------------------------------------
