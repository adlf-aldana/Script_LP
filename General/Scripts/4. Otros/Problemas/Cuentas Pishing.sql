--3051876608 - VELASQUEZ PRADO RAMIRO GONZALO - 976548CB - ramirovelasquez
--3051947237 - ARCE MARA¥ON LESLIE CLARA - 4383867CB - lesli
SELECT *
FROM camca
WHERE camcancta IN (3051876608,3051947237)

SELECT *
FROM gbage
WHERE gbagecage IN (15762, 76822)

SELECT *
FROM catrn
WHERE catrnndoc = 28742000

SELECT *
FROM catrn
WHERE catrnncta = 3051876608--3051947237
AND catrnftra >= '2023-09-23'
AND catrnuser = 'WEB'

select * 
from catrn
where catrnncta= 3051876608
and catrnuser='WEB'
and catrnftra between '2023-09-23' and '2023-09-24'
and catrnndoc in(158429,158464,158547)
order by 2;

select *
from tetrn
where tetrnnvia='3051876608'
and tetrnntra in(158429,158464,158547)
and tetrnftra between '2023-09-23' and '2023-09-24'
order by 2;


SELECT *
FROM tetrn
WHERE tetrnnctx = '1311025767'

SELECT *
FROM tecon
ORDER BY 1,2,3

--DOS SANTOS GOMES OLIVEIRA LUCAS
SELECT *
FROM gbage 
WHERE gbagenomb LIKE '%DOS%SANTOS%'

SELECT *
FROM catrn
WHERE catrnncta = 3051876608
AND catrnftra >= '2023-09-01'

SELECT *FROM tetrn WHERE tetrnntra IN ( 158437,158441)