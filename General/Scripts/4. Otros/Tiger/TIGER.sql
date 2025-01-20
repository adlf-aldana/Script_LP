/* PROGRAMAS */
SELECT *
FROM admdt 
WHERE admdtmodn = 2
AND admdtmprn = 23

/**********/
SELECT sum(cndtrimpi)
FROM cndtr
WHERE cndtrfdoc='2022-04-11';

SELECT *FROM cndtr
WHERE cndtrfdoc='2022-04-11';
/*PROBLEMAS CON DOS CAJAS DE AHORRO */
-- REALIZANDO UN NUEVO CIERRE PARA IDENTIFICAR SI EL
-- PROBLEMA ESTA EN EL CIERRE, PRESCRIPCION O REVERSION
-- DE UNA RETENCION
-- camcastat 4 -- cambiando de estado para realizar la prescripcion
UPDATE camca 
SET camcastat = 4
WHERE camcancta = --3052658041; -- IN (3052658041,5051464213);

SELECT * FROM camca
WHERE camcancta IN (3052658041,5051464213);

SELECT * FROM camca
WHERE camcancta IN (3052658041);

SELECT * FROM capig WHERE capigncta = 3052658041;
SELECT * FROM catcn WHERE catcnncta = 3052658041;
SELECT * FROM catrn WHERE catrnncta = 3052658041;

SELECT 
*FROM catrn
WHERE catrnncta IN (3052658041,5051464213);

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta  = 3052658041;

SELECT 
*FROM capig
WHERE capigncta = 3052658041;

SELECT 
*FROM rjdtr
WHERE rjdtrnret = 215;

SELECT 
*FROM rjdtr
WHERE rjdtrnret = 246;

--estado de resultados
/* CASO 1 */
unload TO camca_3052658041.unl
SELECT * FROM camca WHERE camcancta = 3052658041;
unload TO catrn_3052658041.unl
SELECT * FROM catrn WHERE catrnncta = 3052658041;
unload TO capig_3052658041.unl
SELECT * FROM capig WHERE capigncta = 3052658041;
unload TO catcn_3052658041.unl
SELECT * FROM catcn WHERE catcnncta = 3052658041;

/*CASO 2*/
unload TO camca_5051464213.unl
SELECT * FROM camca WHERE camcancta in (5051464213,3052658041);
unload TO catrn_5051464213.unl
SELECT * FROM catrn WHERE catrnncta = 5051464213;
unload TO capig_5051464213.unl
SELECT * FROM capig WHERE capigncta = 5051464213;
unload TO catcn_5051464213.unl
SELECT * FROM catcn WHERE catcnncta = 3052658041;

select a.camcacage,a.camcancta,a.camcastat,a.camcasact,a.camcasant,a.camcafpig,a.camcafumv,
a.camcafcbl fec_camb_stat,(a.camcafumv+365*5) fec_camb_stat
from camca a
where a.camcancta in(3052658041,5051464213)
order by 2;

/********************/
/* ARCHIVO CONTABLE */
SELECT * FROM cnsld;
SELECT * FROM cnsld WHERE cnsldcnta[1,2] = '35';

/* ENCAJE LEGAL CONSOLIDADO */
SELECT * FROM cnelc
WHERE cnelccctb[1,1] = '3'
ORDER BY 3 DESC;

-- TIPOS DE CREDITO
SELECT * FROM prtcr ORDER BY 1;

/* PONDERACION ACTIVOS DE RIESGO */
SELECT * FROM cnpac ORDER BY 1 DESC;
WHERE cnpaccctb[1,1] = '3';

/* PLAN DE CUENTAS */
SELECT * FROM cnplc ORDER BY 1;

/* SALDOS POR CUENTA */
SELECT * FROM cnsld
WHERE cnsldcnta[1,1] = '3';

SELECT * FROM cnbal;

select * from cnsld
where cnsldcnta between 35000000 AND 35499999;

SELECT count(*) FROM gbofi;

