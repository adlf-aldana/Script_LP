SELECT *
FROM tdtrn
WHERE tdtrnntra = 'D72819'

SELECT *
FROM catrn 
WHERE catrntorg = 653211

SELECT *
FROM catrn
WHERE catrnncta = 8051082441
AND catrnftra >= '2023-05-01'
AND catrnuser = 'ATM'

SELECT *
FROM tdtrn
WHERE tdtrntorg = 920266

-----------------------------

SELECT *
FROM tdtrn
WHERE tdtrnntra IN ('D72819','D74393','D74394','D75983','D75985','D76389')

SELECT *
FROM catrn 
WHERE catrntorg IN (653211,
285731,
286859,
895911,
46914,
564720)
AND catrnftra >= '2023-01-01'

-----------------------------
SELECT *FROM capig WHERE capigncta = 8051082441 AND capigfpig >= '2023-01-01' AND capigcpig = 98
SELECT *FROM tdpig WHERE tdpigcdes = '8051082441'
-- 8051082441 NO SE ENCUENTRA MOVIMIENTO DE 07/08/2023
SELECT *
FROM catrn
WHERE catrnncta = 8051082441
AND catrnfpro >= '2023-05-01'
AND catrnuser = 'ATM'

SELECT *
FROM catcn
WHERE catcnncta = 8051082441
AND catcnfpro >= '2023-05-01'
AND catcnuser = 'ATM'

-- OTRO 300 Bs.
SELECT *
FROM tdtrn
WHERE tdtrntorg = 920266

SELECT *FROM tdtrn WHERE tdtrnntra = 'D68876'
------------------------------
-- 8051129691 NO SE ENCUENTRA MOVIMIENTO DE 16/08/2023
SELECT *
FROM catrn
WHERE catrnncta = 8051129691
AND catrnfpro >= '2023-05-01'
AND catrnuser = 'ATM'

SELECT *
FROM catcn
WHERE catcnncta = 8051129691
AND catcnfpro >= '2023-05-01'
AND catcnuser = 'ATM'

-- OTROS 800 Bs.
SELECT *
FROM tdtrn
WHERE tdtrntorg IN (929213,346102,757741,452313,657682)

------------------------------
-- 8051129691 NO SE ENCUENTRA MOVIMIENTO DE 16/08/2023
SELECT *
FROM catrn
WHERE catrnncta = 8051129691
AND catrnfpro >= '2023-05-01'
AND catrnuser = 'ATM'

SELECT *
FROM catcn
WHERE catcnncta = 8051129691
AND catcnfpro >= '2023-05-01'
AND catcnuser = 'ATM'

-- OTROS 500 Bs.
SELECT *
FROM tdtrn
WHERE tdtrntorg IN (989888,635671,436982,910265,669478,178789,429906,97069,100503,10671,660506)
AND tdtrnfpro >= '2023-01-01'

------------------------------
-- 8051082441 NO SE ENCUENTRA MOVIMIENTO DE 26/08/2023
SELECT *
FROM catrn
WHERE catrnncta = 8051082441
AND catrnfpro >= '2023-05-01'
AND catrnuser = 'ATM'

SELECT *
FROM catcn
WHERE catcnncta = 8051129691
AND catcnfpro >= '2023-05-01'
AND catcnuser = 'ATM'

-- OTROS 400 Bs.
SELECT *
FROM tdtrn
WHERE tdtrntorg IN (15710,773039)
AND tdtrnfpro >= '2023-01-01'

------------------------------
-- 3051920112 NO SE ENCUENTRA MOVIMIENTO DE 27/08/2023
SELECT *
FROM catrn
WHERE catrnncta = 3051920112
AND catrnfpro >= '2023-05-01'
AND catrnuser = 'ATM'

SELECT *
FROM catcn
WHERE catcnncta = 3051920112
AND catcnfpro >= '2023-05-01'
AND catcnuser = 'ATM'

-- OTROS 30 Bs.
SELECT *
FROM tdtrn
WHERE tdtrntorg IN (193238,96334,853419,905330)
AND tdtrnfpro >= '2023-01-01'

------------------------------
-- 5051329841 NO SE ENCUENTRA MOVIMIENTO DE 29/08/2023
SELECT *
FROM catrn
WHERE catrnncta = 5051329841
AND catrnfpro >= '2023-05-01'
AND catrnuser = 'ATM'

SELECT *
FROM catcn
WHERE catcnncta = 3051920112
AND catcnfpro >= '2023-05-01'
AND catcnuser = 'ATM'

-- OTROS 30 Bs.
SELECT *
FROM tdtrn
WHERE tdtrntorg IN (82511,609458,519016,483573,512685,37920,203307,954469,965287,709490,582287,564720)
AND tdtrnfpro >= '2023-01-01'




















--------------------------------------------------
---GUSTAVO QUIERE REVERTIR 2 RETENCIONES Y VOLVER ACTIVA ANTERIORES PIGNORACIONES
select * 
from rjmrj 
where rjmrjnret in(3242,3256);

update rjmrj
set rjmrjstat=1 ---2 ANTES
where rjmrjnret in(3242,3256);

SELECT *
FROM capig
WHERE capigncta IN (3052402272,3052516073)
AND capigstat = 0

UPDATE capig
SET capigstat = 9
WHERE capignpig = 8179120

UPDATE capig
SET capigstat = 9
WHERE capignpig = 8179152

SELECT *
FROM rjdtr
where rjdtrnret in(3242,3256);

UPDATE rjdtr
SET rjdtrmrcb = 9 
where rjdtrnret in(3242,3256);

SELECT *
FROM capig
WHERE capignpig IN ('8179120',
'8179152')

UPDATE capig
SET capigstat = 9
WHERE capignpig IN ('8179120',
'8179152')

-----asfi 418858 activar 
select * 
from capig
where capignpig=418858
and capigncta=3052402272
order by 2;

update capig
set capigstat=0
where capignpig=418858
and capigncta=3052402272;

-----asfi 1635613 activar
select * from 
capigñ
where capignpig=1635613
and capigncta=3052516073 
order by 2;

update capig
set capigstat=0
where capignpig=1635613
and capigncta=3052516073;

select * 
from camca
where camcancta in(3052402272,3052516073);

update camca
set camcafpig=9.35
where camcancta=3052402272;

update camca
set camcafpig=10.79
where camcancta=3052516073;


------------------------------------------------
SELECT *FROM informix.rjcli WHERE rjclicage = 49935
SELECT *FROM catcn WHERE catcnncta = 3052402272 AND catcnftra >= '2023-11-13'
