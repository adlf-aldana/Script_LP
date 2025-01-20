-- SCRIPT ATM - CAPIG - CATRN - CATCN
SELECT 
	capigncta CUENTA_AHORRO,
--	catrnncta CUENTA_AHORRO,
	capigimpo IMPORTE,
	capignpig NUM_PIGNORACION,
--	capigfpig FECHA,
--	capighora HORA,
--	capigcpig,
--	capigglos,	
--	tdpigntra,
--	tdpignpig,
--	tdpigimpo,
--	tdtrnntra,
--	tdtrnntrj,
--	tdtrnimpt,
--	tdtrntorg,
	tdtrnncaj ATM,
	tdcondesc TIPO_TRANS,
	tdtrnntra NUM_TRA_TD,
	tdtrnfpro FECHA_TRAN_TD,
	tdtrnhora HORA_TRAN_TD,
	catrnntra NUM_TRA_CA,
	catrnftra FECHA_TRAN_CA,
	catrnhora HORA_TRAN_CA
FROM tdtrn, tdpig, capig, OUTER catrn, tdcon, catcn
WHERE catrntorg = tdtrntorg
AND tdtrnntra = tdpigntra
AND tdpignpig = capignpig
AND catrnncta = capigncta
AND capigfpig >= '2023-08-01'
--AND capigfpig <> catrnftra
--AND tdtrntorg = 46098
AND capigncta = tdpigcdes
AND catrnncta = tdpigcdes
AND catcnncta = tdpigcdes
AND capigncta = catcnncta
AND catrnncta = catcnncta
AND catrnntra = catcnntra
AND capigcpig = 98
AND tdtrnstat = 0
AND capigstat = 9
AND tdconpref = 3
AND tdconcorr = tdtrnttrn;

SELECT catcnftra,
--	catcnndoc,
	catcndesc,
	catcncctb,
	catcnimpi,
	catcnimpc,
	catcnpost,
	catcnntra,
	catcnfpro,
	catcnhora,
	catcnncta
FROM catcn
WHERE catcnntra = 28737973

SELECT *
FROM catrn
WHERE catrnntra = 28737973

SELECT *
FROM tdpig
WHERE tdpigcdes = 2051004801

SELECT *
FROM tdtrn
WHERE tdtrnntra = 'D77675 ';

SELECT *
FROM capig
WHERE capigncta = 8051082441

SELECT *
FROM tdpig
WHERE tdpignpig = 8037206

SELECT *
FROM tdtrn
WHERE tdtrnntra = 'D72819 '

SELECT *
FROM catrn
WHERE catrntorg = 653211
-------------------------------------
SELECT *FROM capig WHERE capigncta = 8051082441 AND capignpig = 8037206 
SELECT *FROM capig WHERE capigncta = 8051129691  
UPDATE capig
SET capigstat = 0
WHERE capigncta = 8051082441
AND capignpig = 8037206

SELECT * FROM camca WHERE camcancta = 8051129691--8051082441
UPDATE camca
SET camcafpig = camcafpig + 300.00
WHERE camcancta = 8051082441

SELECT *FROM catrn WHERE catrnncta = 8051082441 AND catrnftra >= '2023-09-01'

SELECT *FROM tdpig WHERE tdpignpig = 8037206
SELECT *FROM tdtrn WHERE tdtrnntra = 'D72819 '
--------------------------------------------

SELECT *
FROM camca
WHERE camcancta IN (8051082441,
9051073053,
8051129691,
8051129691,
8051082441,
8051170169,
5051329841)

----------------------------------------------------------------
SELECT *FROM capig WHERE capigncta = 5051329841 AND capignpig = 8069707 
UPDATE capig
SET capigstat = 0
WHERE capigncta = 5051329841
AND capignpig = 8069707

SELECT * FROM camca WHERE camcancta = 5051329841
UPDATE camca
SET camcafpig = camcafpig + 50
WHERE camcancta = 5051329841

SELECT *FROM catrn WHERE catrnncta = 5051329841 AND catrnftra >= '2023-09-01'
--------------------------------------------

SELECT *
FROM tdpig
WHERE tdpignpig IN (8050603,
8050604)

SELECT *
FROM tdtrn
WHERE tdtrnntra IN ('D74393 ',
'D74394' )

SELECT *
FROM catrn
WHERE catrntorg IN (285731,
286859)

SELECT *FROM fehfe WHERE fehfefreg >= '2023-10-01' AND fehfemrcb = 9

