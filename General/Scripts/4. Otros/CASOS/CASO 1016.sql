/* PROGRAMAS */
select a.admdtmodn,b.admoddesc,a.admdtmprn,c.admprdesc,a.admdtmdtn,a.admdtdesc,a.admdtnprg,a.admdtnpnb,a.admdtstat
from admdt a,admod b,admpr c
where a.admdtmodn=b.admodmodn
and a.admdtmodn=c.admprmodn
and a.admdtmprn=c.admprmprn
--and a.admdtmodn=2
and (a.admdtnprg like '%364%'
or a.admdtnpnb like '%364%')
order by 1,3,5;

/* BASE UPGRADE */
select *from adctl;

/*PARA VER FECHA DE LA INSTANCIA GBPMT*/
select a.gbpmtnemp,a.gbpmtfdia,a.gbpmttcof,a.gbpmttcco,a.gbpmttcve,a.gbpmttufv
from gbpmt a;

update gbpmt
set gbpmtfdia='2022-10-10';

SELECT *FROM camca WHERE camcacage = 359160
UPDATE camca SET camcasact = '-99999.99' WHERE camcancta = 3051920851


-- FECHA DE PAGO
SELECT *
FROM prppg 
-- 20/09/2022
UPDATE prppg
SET prppgfech = '2022-09-19'
WHERE prppgnpre = 15096293
AND prppgfech = '2022-09-20'

-- DEBITO AUTOMATICO - SOLO DEBEN DIFERIDOS
SELECT DISTINCT prmprnpre, prmprcage, prmprctac, prppgfech 
FROM prmpr, prdif, prppg
WHERE prppgnpre = prdifnpre
AND prmprnpre = prppgnpre
AND prmprstat = 2
--AND prdifcarg = 420
--AND prmprsald = 0
AND prppgfech = '2022-11-20'
--AND prppgfech BETWEEN '2022-10-01' AND '2022-10-31'
--AND prdifcuot = prdifsald
AND prmprdeba = 'S';

--DEBITOS AUTOMATICOS - 
SELECT DISTINCT prmprnpre, prmprcage, prmprctac
FROM prmpr, prdif, prppg
WHERE prmprnpre = prdifnpre
AND prmprnpre = prppgnpre
AND prmprstat = 2
AND prmprcmon = 2
AND prppgfech = '2022-10-11'
AND prmprdeba = 'S'
ORDER BY 1

SELECT *FROM prtdt WHERE prtdtnpre = 10047160 ORDER BY prtdtfpro DESC
SELECT prerrfech, prerrnpre, prerrctac, prerrerro, prerrdisp, prerrimpt, prerruser
FROM prerr 
WHERE prerrnpre = 10047181
ORDER BY prerrfpro DESC 


SELECT *FROM suemp WHERE suempcemp = 2017
SELECT *FROM adhcl WHERE adhclusrn = 'GPC'

-- COBRO AUTOMATICO - pr365
-- Obs. no guarda en la prtdt, prtcn
unload TO prerr_pr365_antes.txt
SELECT *
DELETE FROM prerr 
WHERE prerrfpro >= '2022-05-01'
ORDER BY prerrhora DESC


SELECT *FROM prtdt ORDER BY prtdtfpro DESC 
SELECT *FROM prtcn ORDER BY prtcnfpro DESC 

SELECT *FROM catrn WHERE catrnfpro >= '2022-07-01' ORDER BY catrnfpro DESC 
SELECT *FROM catcn WHERE catcnfpro >= '2022-07-01' ORDER BY catcnfpro DESC 



SELECT *FROM camca WHERE camcancta = 3052393184
SELECT *FROM catrn WHERE catrnncta = 3052393184 AND catrnfpro >= '2022-09-01'

-- Prestamos comerciales/Procesos Especiales/Cobo deb. Aut.x Fecha
-- pr365
-- Obs. no guarda en la prtdt, prtcn
--1317
unload TO prerr_pr365_antes.txt
SELECT * FROM prerr 
WHERE prerrfpro >= '2022-05-01'
ORDER BY prerrhora DESC 

/*
 * 15065297
 * 15184496
 * 15410102   
 * */
SELECT *FROM prmpr WHERE prmprnpre = 10047181
SELECT *FROM camca WHERE camcacage = 15762
SELECT *FROM camca WHERE camcancta = 3051876608
SELECT *FROM catrn WHERE catrnncta = 3051876608 AND catrnuser = 'AMY' ORDER BY catrnfpro 

SELECT catrnntra, catrnftra, catrnncta, catrnimpo, catrncmon, catrnglos, catrnuser, catrnfpro
FROM catrn 
WHERE catrnncta = 3051876608 
ORDER BY catrnfpro DESC 

SELECT *FROM catcn WHERE catcnncta = 3051876608 ORDER BY catcnfpro 
SELECT *FROM prtdt WHERE prtdtnpre = 10045337 ORDER BY prtdtfpro DESC 

SELECT *
FROM prtdt 
WHERE prtdtuser = 'AMY'
and prtdtccon = 422

SELECT *FROM prdif WHERE prdifnpre = 10040348
SELECT *FROM prdip WHERE prdipnpre = 10040348

SELECT *
FROM prmpr, prdip
WHERE prmprnpre = prdipnpre
AND prdipfpag = '2022-10-05'
AND prmprcmon = 1

--3051920851
SELECT *FROM camca WHERE camcacage = 359160


SELECT prtcnndoc, prtcnftra, prtcnnpre, prtcnpref, prtcnccon, prtcndesc, prtcnimpi, prtcnuser
FROM prtcn 
WHERE prtcnnpre = 10047181 
ORDER BY prtcnfpro DESC 



SELECT prerrnpre, prerrdesc,prerrerro
FROM prmpr INNER JOIN prerr
	ON prmprnpre = prerrnpre
WHERE prmprcmon = '2'
AND prerrfech >= '2022-10-10'


-- Prestamos Comerciales/Ope. Captaciones y Varios/Cobro debito automatico
-- pr356
SELECT *FROM prmpr WHERE prmprnpre = 10040811
SELECT *FROM camca WHERE camcancta = 2051000099   
SELECT *FROM catrn WHERE catrnncta = 2051000099 ORDER BY catrnfpro DESC 
SELECT *FROM catcn WHERE catcnncta = 2051000099 ORDER BY catcnfpro DESC 

SELECT DISTINCT prmprnpre, prtdtntra
FROM prmpr INNER JOIN camca
	ON prmprctad = camcancta
	INNER JOIN prtdt ON prmprnpre = prtdtnpre
	AND prtdtuser = 'AMY'
	



--10040811 Bs.
--15147371 $.
SELECT *FROM prtdt WHERE prtdtnpre = 10040811 ORDER BY prtdtfpro DESC 
SELECT *FROM prtdt WHERE prtdtnpre = 15147371 ORDER BY prtdtfpro DESC 

SELECT *FROM camca WHERE camcancta = 3051920851
SELECT *FROM catrn WHERE catrnncta = 3051920851 ORDER BY catrnfpro DESC 

-- PR356
--10042666 $
--10040910 Bs.
SELECT *FROM prtdt WHERE prtdtnpre = 10042666 AND prtdtuser = 'AMY' ORDER BY prtdtfpro DESC 
SELECT *FROM prtdt WHERE prtdtnpre = 10040910 AND prtdtuser = 'AMY' ORDER BY prtdtfpro DESC 

-- pr361
--10045919 Bs
--10044459 $
SELECT *FROM prtdt WHERE prtdtnpre = 10045919 ORDER BY prtdtfpro DESC 
SELECT *FROM prtdt WHERE prtdtnpre = 10044459 AND prtdtuser = 'AMY' ORDER BY prtdtfpro DESC 

--10040585
--10041739
--10047953
--19036324

UPDATE camca
SET camcasact = '-9999999.99'
WHERE camcancta IN (3052021325,
3051920851,
3052881844)

SELECT *FROM prtdt WHERE prtdtnpre = 10047953 ORDER BY prtdtftra DESC  
SELECT *FROM prerr WHERE prerrnpre = 10047953

SELECT *
FROM catrn
WHERE catrnncta = 3052021325
ORDER BY catrnfpro DESC 

SELECT *
FROM catrn
WHERE catrnncta = 3051920851
ORDER BY catrnftra DESC 

DELETE catrn
WHERE catrnncta = 3051920851
AND catrnntra = 27650692

INSERT INTO catrn (catrnftra,catrnncta,catrnndoc,catrnmorg,catrntorg,catrnpref,catrncorr,catrnimpo,catrnimpt,catrncbio,catrncmon,catrnglos,catrnstat,catrnplaz,catrnagen,catrnuser,catrnhora,catrnfpro) VALUES ('2022-10-20','3051920851',850814,17,850814,70,2,18.93,18.93,6.86,1,'Cobro de Capital No.Pre.:19024599                                                         ',0,30,30,'SMW','11:23:59','2022-10-11');


SELECT *
FROM catcn
WHERE catcnncta = 3051920851
ORDER BY catcnfpro DESC 

SELECT *
FROM catrn
WHERE catrnncta = 3052881844
ORDER BY catrnfpro DESC 

SELECT DISTINCT prmprnpre, prmprcage, prmprcmon, prppgfech, camcancta, camcacmon
FROM prmpr, prppg, camca
WHERE prmprnpre = prppgnpre
AND prmprctac = camcancta
AND prmprcmon = 2
AND prmprstat = 2
AND prmprdeba = 'S'
AND camcacmon = 1
AND prppgfech = '2022-10-15'

SELECT *FROM camca WHERE camcancta = 3051557355
SELECT *FROM catrn WHERE catrnncta = 3051557355 ORDER BY 2


SELECT *FROM prtdt WHERE prtdtnpre = 10041651 ORDER BY prtdtfpro DESC 
SELECT *FROM prerr WHERE prerrnpre = 10041651 ORDER BY prerrfech DESC 

SELECT *FROM prtdt WHERE prtdtnpre = 10044416 ORDER BY 5,6 
SELECT *FROM prerr WHERE prerrnpre = 10044416 ORDER BY prerrfech DESC 
SELECT *FROM catrn WHERE catrnncta = 3051666106 ORDER BY catrnfpro DESC 

SELECT *FROM prmpr WHERE prmprnpre = 10041651
SELECT *FROM camca WHERE camcancta = 3052580921   

/*  */
unload TO prmpr_10044416.unl
SELECT *FROM prmpr WHERE prmprnpre = 10044416;

unload TO prtdt_10044416.unl
SELECT *FROM prtdt WHERE prtdtnpre = 10044416 ORDER BY 5;

unload TO prhtr_10044416.unl
SELECT *FROM prhtr WHERE prhtrnpre = 10044416;

unload TO camca_3051666106.unl
SELECT *FROM camca WHERE camcancta = 3051666106;

unload TO catrn_3051666106.unl
SELECT *FROM catrn WHERE catrnncta = 3051666106 ORDER BY 2;

unload TO .prdeb_10044416.unl
SELECT *FROM prdeb WHERE prdebnpre = 10044416;

unload TO prerr_10044416.unl
SELECT *FROM prerr WHERE prerrnpre = 10044416 AND prerrfech >= '2022-05-01';

