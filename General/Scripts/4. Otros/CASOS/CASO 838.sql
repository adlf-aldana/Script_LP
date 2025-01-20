/*************/
/* CASO 838 */
/************/
SELECT count(*) FROM capro
WHERE caproanio = 2022
AND capronmes = 3;

SELECT * FROM camca a, capro b
WHERE a.camcancta=b.caproncta
AND a.camcastat=3
AND b.caproanio=2022
AND b.capronmes=3;

SELECT * FROM capro
WHERE caproncta
IN (--3051771664-- stat 1
    --3051920851-- stat 1
    --3051009373-- stat 3
    --3051735062-- stat 3
    )
AND caproanio = 2022
AND capronmes = 3;

SELECT * FROM camca WHERE camcancta = 3051771664;
SELECT * FROM camca WHERE camcancta = 3051920851;
SELECT * FROM camca WHERE camcancta = 3051009373;
SELECT * FROM camca WHERE camcancta = 3051735062;

SELECT * FROM catrn
WHERE catrnncta=3051771664
ORDER BY 1;

SELECT * FROM catrn
WHERE catrnncta=3051920851
ORDER BY 1;

SELECT * FROM catrn
WHERE catrnncta=3051009373
ORDER BY 1;

SELECT * FROM catrn
WHERE catrnncta=3051735062
ORDER BY 1;


SELECT * FROM camca WHERE camcancta=9052255528;

select *
from catrn a
where a.catrnncta=9052255528;

SELECT * FROM capro
WHERE caproncta
IN (9052255528);

SELECT * FROM gbage WHERE gbagecage=352280;
-- 62.87 * 0.05 * 31 / 36000 = 0.0027
-- caprompro * interes * dias_mes / cantidad_dias_anio

SELECT * FROM caima;

-- BUSCANDO CAJAS DE AHORRO CON RETENCION
SELECT *FROM capig,camca WHERE camcancta = capigncta AND capigglos LIKE '%RET%' AND capigstat = 0 AND camcacmon = 2
