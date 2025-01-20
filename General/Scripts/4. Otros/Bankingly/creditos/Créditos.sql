-- JUAN LUIZAGA
-- user: juan.luizaga
-- pass: Clave123*
-- preg: prueba
-- pin: 123456

--PASAR CREDITO A OTRO CLIENTE
SELECT prmprnpre,
	prmprcage,
	prmprcmon,
	prmprstat
FROM prmpr
WHERE prmprnpre IN (10047767,
10047838,
10048451)

UPDATE prmpr
SET prmprcage = 19277
WHERE prmprnpre IN (10047767)

SELECT * 
FROM prdeu 
WHERE prdeunpre = 10047767

--
UPDATE prdeu
SET prdeucage = 19277
WHERE prdeunpre = 10047767
AND prdeucage = 80626

------------------------------
SELECT prmprnpre,
	prmprstat,
	prmprcmon,
	prmprfinc,
	prmprfpvc
FROM prmpr, prppg
WHERE prmprnpre = prppgnpre
AND prmprstat = 2
AND prmprcmon = 2
AND prppgfech = '2022-10-19'

SELECT *
FROM prmpr
WHERE prmprstat = 2
ORDER BY prmprfpro DESC 

SELECT prtdtntra,
	prtdtnpre,
	prtdtmrcb,
	prtdtftra,
	prtdtpref,
	prtdtccon,
	prtdtdesc,
	prtdtimpp,
	prtdtcmon
	prtdtuser	
FROM prtdt
WHERE prtdtnpre = 10042827
--AND prtdtmrcb = 0
AND prtdtftra >= '2022-01-01'
ORDER BY 4

load FROM prtdt_10042827.txt
INSERT INTO prtdt

SELECT *
FROM prppg
WHERE prppgnpre = 10048451
ORDER BY 2

SELECT *
FROM adreg
WHERE adregmodo = 17

SELECT *
FROM prtdt a
WHERE a.prtdtcmon = 2
AND a.prtdtuser = 'WEB'
AND a.prtdtfpro >= '2023-01-01'

SELECT *
FROM prtdt
WHERE prtdtnpre = 10042768
AND prtdtftra >= '2023-01-01'
ORDER BY 5

SELECT *
FROM uifou
WHERE uifoufpro >= '2022-01-01'
ORDER BY uifoufpro DESC 

SELECT *
FROM uitrp
WHERE uitrpfpro >= '2022-01-01'
ORDER BY uitrpfpro DESC 


SELECT *
FROM admdt
ORDER BY 1,2,3

SELECT *
FROM prtdt
WHERE prtdtnpre = 10047838
AND prtdtftra >= '2022-01-01'
ORDER BY 5

--10048451
SELECT *
FROM prmpr, prppg
WHERE prmprstat = 2
AND prmprcmon = 1
AND prmprnpre = prppgnpre
AND prppgfech = '2022-10-19'

