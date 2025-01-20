/* PROGRAMAS */
select a.admdtmodn,b.admoddesc,a.admdtmprn,c.admprdesc,a.admdtmdtn,a.admdtdesc,a.admdtnprg,a.admdtnpnb,a.admdtstat
from admdt a,admod b,admpr c
where a.admdtmodn=b.admodmodn
and a.admdtmodn=c.admprmodn
and a.admdtmprn=c.admprmprn
--and a.admdtmodn=2
and (a.admdtnprg like '%081%'
or a.admdtnpnb like '%081%')
order by 1,3,5;
-- Prestamos diferidos para realizar la 
-- normativa 669 y la reprogramacion automatica
SELECT distinct 
	prmprnpre,
	prmprcage,
	prmprfpro 
FROM prmpr
	INNER JOIN prdif
	ON prmprnpre =  prdifnpre
WHERE prmprstat = 2
ORDER BY prmprfpro DESC 

select *
FROM prrnv
WHERE prrnvnpre = 10048177

DELETE prrnv
WHERE prrnvnpre = 10048177

SELECT *
FROM prsor
WHERE prsornpre = 10048169

DELETE prsor
WHERE prsornpre = 10048169

select *FROM prcon WHERE prconpref = 305

-- crr136
SELECT 
 prsornpre,
 prsorcage,
 prsorfsol,
 prsormots,
 prsordess
FROM prsor
WHERE prsornpre = 10040126

SELECT *
FROM prrnv
WHERE prrnvnpre = 10040126

/***/ 
SELECT *
FROM prsor
WHERE prsornpre = 10040465--10045550

SELECT *
FROM prrnv
WHERE prrnvnpre = 10045550

-- h
SELECT prmprnpre,
	prmprcage,
	prmprtcre,
	prmprcmon,
	prmprsald,
	prmprstat estado_Prestamo,
	prsorfsol fsol,
	prsortrnv,
	prsorstat
FROM prmpr
	INNER JOIN prsor 
		ON prmprnpre = prsornpre
		ON prmprnpre = 10047535--prsornpre
		AND prmprstat = 2
		AND prsorstat IN (0,1,50,51,100,101)
ORDER BY prsorfpro DESC  

SELECT prsornpre,
	prsorcage,
	prsorfsol,
	prsorstat,
	prsordess
FROM prsor
WHERE prsornpre = 10046839--10040106--10047535
ORDER BY prsorfpro DESC 


SELECT prrnvnpre,
	prrnvfreg,
	prrnvtrnv,
	prrnvtcrn,
	prrnvmoti,
	prrnvmots,
	prrnvdess
FROM prrnv
WHERE prrnvnpre = 10046839

SELECT *
FROM prppg, prmpr
WHERE prppgnpre = prmprnpre
AND prppginte = 0
AND prmprstat = 2

--- CASO K
SELECT *FROM prcgp
-- INTERES PRORRATEADO

SELECT prsornpre,
	prsorcage,
	prsortrnv,
	prsorpror,
	prsorfper ,
	prsorgrac,
	prsorplzo,
	prsormont 
FROM prsor 
WHERE prsornpre = 1201
WHERE prsorgrac = '0'

------------------------------
