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

-- 10048180 -> NO EXISTE TASA
-- 

SELECT *
FROM prmpr 
WHERE prmprstat = 2
ORDER BY prmprfpro DESC 

SELECT *
FROM prmpr
WHERE prmprnpre = 15410216

SELECT *
FROM prsor
WHERE prsornpre = 15410216

SELECT *
FROM prrnv
WHERE prrnvnpre = 15410216

SELECT *
FROM prtsa
WHERE prtsanpre = 15410216

SELECT *
FROM prppg
WHERE prppgnpre = 10048608


/***
 * 
 * ***/
SELECT *
FROM prppg
WHERE prppgnpre = 19014437

SELECT *
FROM prdip
WHERE prdipnpre = 19014437
ORDER BY 2

select *
FROM prtdt
WHERE prtdtnpre = 19014437

/* PROGRAMAS */
select a.admdtmodn,b.admoddesc,a.admdtmprn,c.admprdesc,a.admdtmdtn,a.admdtdesc,a.admdtnprg,a.admdtnpnb,a.admdtstat
from admdt a,admod b,admpr c
where a.admdtmodn=b.admodmodn
and a.admdtmodn=c.admprmodn
and a.admdtmprn=c.admprmprn
--and a.admdtmodn=2
and (a.admdtnprg like '%361%'
or a.admdtnpnb like '%361%')
order by 1,3,5;