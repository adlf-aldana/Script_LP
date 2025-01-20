-- 63 - DEPOSITO DE EFECT. CUENTA PROPIA
-- 64 - DEPOSITO DE EFECT. CUENTA TERCEROS
SELECT *
FROM informix.catmv 
WHERE catmvpref = 16
AND catmvcorr IN (63,64)
ORDER BY 1,2

SELECT *
FROM catrn
WHERE catrnpref = 16
AND catrncorr IN (63, 64)

SELECT *
FROM catrn
WHERE catrnncta = 3051920851
AND catrnftra >= '2023-10-31'

SELECT catrnntra,
	catrnftra,
	catrnncta,
	catrntorg,
	catrnpref,
	catrncorr,
	catrnimpo,
	catrnplaz,
	catrnagen
FROM catrn
WHERE catrnntra = 28838698

SELECT catcnntra,
	catcnftra,
	catcnncta,
	catcnpref,
	catcncorr,
	catcnimpi,
	catcncctb,
	catcnplaz,
	catcnagen	
FROM catcn
WHERE catcnntra = 28838698

SELECT tdtrnntra,
	tdtrnntrj,
	tdtrnacep,
	tdtrnncaj
FROM tdtrn
WHERE tdtrntorg IN (64872)

SELECT *
FROM tdcaj 
ORDER BY 2

UPDATE catrn
---SET catrnagen = 33 --30
--WHERE catrnntra = 28731041