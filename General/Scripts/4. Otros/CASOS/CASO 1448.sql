/* PROGRAMAS */
select a.admdtmodn,b.admoddesc,a.admdtmprn,c.admprdesc,a.admdtmdtn,a.admdtdesc,a.admdtnprg,a.admdtnpnb,a.admdtstat
from admdt a,admod b,admpr c
where a.admdtmodn=b.admodmodn
and a.admdtmodn=c.admprmodn
and a.admdtmprn=c.admprmprn
--and a.admdtmodn=2
and (a.admdtnprg like '%372%'
or a.admdtnpnb like '%372%')
order by 1,3,5;

SELECT prtdtntra, prtdtnpre, prtdtftra, prtdtpref, prtdtccon, prtdtdesc, prtdtimpp, prtdtuser
FROM prtdt 
WHERE prtdtnpre = 1201

SELECT *FROM prppg WHERE prppgnpre = 1201
SELECT *FROM prppg WHERE prppgnpre = 1202
SELECT *FROM prcgc WHERE prcgcnpre = 1202
SELECT *FROM prdip WHERE prdipnpre = 1202
SELECT *FROM prppo WHERE prpponpre = 1202

SELECT *FROM prrnv ORDER BY prrnvfpro DESC 
SELECT *FROM prrnv WHERE prrnvnpre = 1202 
SELECT *FROM prtdt WHERE prtdtnpre = 1202

UPDATE prtdt
SET prtdtccon = 80
WHERE prtdtnpre = 1201
AND prtdtitem = 3
AND prtdtttrn = 2
AND prtdtftra = '2022-09-12'



SELECT *FROM gbpmt
-- 2022-10-15
UPDATE gbpmt
SET gbpmtfdia = '2022-10-15'
UPDATE camca
SET camcasact = '-2500.00'
WHERE camcancta = 2051000336


-- DEBITO AUTOMATICO - SOLO DEBEN DIFERIDOS
SELECT DISTINCT prmprnpre, prmprcage, prmprctac--, prppgfech 
FROM prmpr, prdif, prppg
WHERE prppgnpre = prdifnpre
AND prmprnpre = prppgnpre
AND prmprstat = 2
--AND prdifcarg = 431 --PRORRATEADO
--AND prmprsald = 0
--AND prppgfech = '2022-09-15'
AND prppgfech BETWEEN '2022-12-02' AND '2022-12-02'
--AND prdifcuot = prdifsald
AND prmprdeba = 'S';

UPDATE camca
SET camcasact = '-200000'
WHERE camcancta = 5051251747--8051182655--3051731951--3051382619

-- DEBITO AUTOMATICO
SELECT DISTINCT prmprnpre, prmprcage, prmprctac--, prppgfech 
FROM prmpr, prppg
WHERE prmprnpre = prppgnpre
AND prmprstat = 2
AND prppgfech BETWEEN '2022-11-01' AND '2022-11-01'
AND prmprdeba = 'S';

/**
10041213	53793	3051544231   
10042828	63839	3052618754   
10043532	38284	3051811385   
10044606	68175	3052691976   
10044791	47255	3051696967   
10047807	80113	3051848986   
 */
SELECT *FROM prmpr WHERE prmprnpre = 10041213

SELECT *
FROM prtdt
WHERE prtdtnpre = 10043532
--AND prtdtpref = 21
--AND prtdtccon IN (420,422)
ORDER BY 5

SELECT *FROM prdif WHERE prdifnpre = 10041213
SELECT *FROM prdip WHERE prdipnpre = 10041213 ORDER BY 3,2



-- crr136
SELECT *FROM prrnv

-- REIMPRESION PLAN DE PAGOS pr520
SELECT *FROM prdif WHERE prdifnpre = 10040811

SELECT count(*)
FROM prdip
WHERE prdipnpre = 10040811
AND prdipcarg = 434

SELECT *FROM prdif WHERE prdifnpre = 15410111
SELECT count(*)
FROM prdip
WHERE prdipnpre = 15410111
AND prdipcarg = 434

SELECT *FROM prdif WHERE prdifnpre = 19037055
SELECT count(*)
FROM prdip
WHERE prdipnpre = 19037055
AND prdipcarg = 434

/*Este credito presenta problemas, PARA ANALIZAR */
SELECT *FROM prdif WHERE prdifnpre = 10043950
SELECT count(*)
FROM prdip
WHERE prdipnpre = 10043950
AND prdipcarg = 434

SELECT *
FROM prdip
WHERE prdipnpre = 10043950
AND prdipcarg = 434

SELECT *FROM prtdt WHERE prtdtnpre = 10043950 ORDER BY prtdtfpro DESC 

-- REIMPRESION PLAN DE PAGOS prr106
/* 1201
 * 10040811
 * 10043950
 * 15410111
 * 19037055
 * */
SELECT *FROM prdif WHERE prdifnpre = 10040811
SELECT count(*)
FROM prdip
WHERE prdipnpre = 10040811
AND prdipcarg = 434

SELECT *FROM prmpr WHERE prmprnpre = 1201
SELECT *FROM prmpr WHERE prmprnpre = 10048216
SELECT *FROM prmpr WHERE prmprnpre = 15410117
SELECT *FROM prmpr WHERE prmprnpre = 18080123
SELECT *FROM prmpr WHERE prmprnpre = 19037102


SELECT *FROM camca WHERE camcancta = 3051905100
SELECT *FROM camca WHERE camcancta = 3051899985
SELECT *FROM catrn WHERE catrnncta = 3051923023
SELECT *FROM catrn WHERE catrnncta = 3051941049

SELECT *FROM prtdt WHERE prtdtnpre = 10046336
SELECT *FROM prtdt WHERE prtdtnpre = 10047407

SELECT *FROM prtdt WHERE prtdtntra = 847668
SELECT *FROM prtdt WHERE prtdtnpre = 10046336