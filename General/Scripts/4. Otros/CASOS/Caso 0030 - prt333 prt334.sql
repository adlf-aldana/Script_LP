/* PRUEBA 1 - Prestamos con capital, interes
* 211 seg. desgravamen
* 412 SEGURO TODO RIESGO
* 434 PRORRATEO INT REPR
* 511 Difer seg. desgravame
* 552 DIFER SEG. TODO RIES
**/
SELECT prmprnpre,
	prmprcage,
	prmprstat,
	prmprfinc,
	prmprfpvc,
	prmprsald 
FROM prmpr 
WHERE prmprnpre IN (18007729)

SELECT *
FROM prdif
WHERE  prdifnpre = 18007729

select *
from prdip a
where a.prdipnpre IN (18007729)
order by 1,5,2,3;

SELECT *
FROM prtdt
WHERE prtdtnpre = 18007729
AND prtdtftra >= '2023-01-01'
ORDER BY 5

SELECT *
FROM prppg
WHERE prppgnpre = 18007729
AND prppgfech > '2023-01-01'

SELECT *
FROM camca 
WHERE camcancta = 8051177246

/* PRUEBA 2
 * SIN CAPITAL SIN INTERES
 * 80 SEG. DESGRAVAMEN TIT
 * 412 SEGURO TODO RIESGO P
 * **/

SELECT prmprnpre,
	prmprcage,
	prmprstat,
	prmprfinc,
	prmprfpvc,
	prmprsald 
FROM prmpr 
WHERE prmprnpre IN (10040930)

SELECT *
FROM prdif
WHERE  prdifnpre = 10040930

select *
from prdip a
where a.prdipnpre IN (10040930)
order by 2,3;

SELECT *
FROM prtdt
WHERE prtdtnpre = 10040930
AND prtdtftra >= '2023-01-01'
ORDER BY 5

SELECT *
FROM prppg
WHERE prppgnpre = 18007729
AND prppgfech > '2023-01-01'

/***/

SELECT prmprnpre,
	prmprcage,
	prmprstat,
	prmprfinc,
	prmprfpvc,
	prmprsald 
FROM prmpr 
WHERE prmprnpre IN (10040485)

SELECT *
FROM prdif
WHERE  prdifnpre = 10040485

select *
from prdip a
where a.prdipnpre IN (10040485)
order by 2,3;

SELECT *
FROM prtdt
WHERE prtdtnpre = 10040485
AND prtdtftra >= '2023-01-01'
ORDER BY 5

SELECT *
FROM prppg
WHERE prppgnpre = 10040485
AND prppgfech > '2023-01-01'

/***/
SELECT distinct  *
FROM prmpr
	INNER JOIN prtdt 
		ON prmprnpre = prtdtnpre 
	AND prmprsald = 0
	AND prmprstat = 2
	INNER JOIN prdif ON prmprnpre = prdifnpre
