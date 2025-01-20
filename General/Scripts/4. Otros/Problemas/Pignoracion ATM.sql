SELECT capignpig,
	capigfpig,
	capigncta,
	capigcpig,
	capigglos,
	capigmorg,
	capigimpo,
	capigstat,
	capiguser,
	capighora
FROM capig
WHERE capigcpig =98
AND capigstat = 0
ORDER BY 2;

unload TO capig_cpig98_23102023.txt
SELECT *
FROM capig
WHERE capigcpig =98
AND capigstat = 0
ORDER BY 2;

------------------------------------------------------------------

UNLOAD TO bk_linea_tdtrn_20230912.txt
SELECT *
FROM tdtrn
WHERE tdtrnntrj = (SELECT tdmtdntrj
					FROM tdmtd
					WHERE tdmtdcage = (SELECT camcacage
										FROM camca
										WHERE camcancta = 3051952062)
					AND tdmtdstat = 1)
AND tdtrnfpro >= '2023-09-01';

------------------------------------------------------------------

UNLOAD TO bk_linea_tdpig_20230912.txt
SELECT *
FROM tdpig
WHERE tdpigntra IN (SELECT tdtrnntra
					FROM tdtrn
					WHERE tdtrnntrj = (SELECT tdmtdntrj
										FROM tdmtd
										WHERE tdmtdcage = (SELECT camcacage
															FROM camca
															WHERE camcancta = 3051609380)
															AND tdmtdstat = 1)
															AND tdtrnfpro = '2023-09-12');



SELECT capignpig NUM_PIGNORACION, 
	capigfpig FECHA_TRANSACCIONADA,
	(SELECT catrnftra
	FROM catrn
	WHERE catrnncta = capigncta
	AND catrnndoc= capigndoc) FECHA_PROCESADA,
	capigncta CUENTA,
	capigimpo IMPORTE,
	capigagen AGENCIA,
	(SELECT tdcondesc
	FROM tdtrn, tdcon
	WHERE tdconpref = 3
	AND tdtrnttrn = tdconcorr
	AND tdtrnntra = (SELECT tdpigntra
					FROM tdpig
					WHERE tdpignpig = capignpig)) TIPO_OPERACION
FROM capig
WHERE capignpig IN (8144508,
8143988,
8145831,
8144510,
8144511,
8145219,
8147085)
ORDER BY 2;

-------------------------
SELECT *
FROM camca 
WHERE camcancta = 9051030658

SELECT *
FROM camca 
WHERE camcancta = 9051073053

SELECT *
FROM capig
WHERE capigncta = 9051030658
AND capigstat = 0

unload TO tdpig_antes.txt
SELECT *
FROM tdpig
WHERE tdpignpig = 8144510

SELECT catrnntra,
	catrnftra,
	catrnncta,
	catrnndoc,
	catrnimpo,
	catrnglos,
	catrnstat,
	catrnuser, catrnhora, catrnfpro
FROM catrn
WHERE catrnftra = '2023-10-25'
AND catrnhora >= '12:20:00';

------------------------------------
SELECT *FROM camca WHERE camcancta = 9051030658
SELECT *FROM catrn WHERE catrnncta = 9051030658 AND catrnftra >= '2023-10-30'
SELECT *FROM capig WHERE capigncta = 9051030658 AND capigstat = 0

SELECT *FROM catrn WHERE catrnncta = 9051030658 AND catrnfpro >= '2023-10-20'

unload TO catcn_.txt
SELECT *FROM catcn WHERE catcnftra >= '2023-10-30';

unload TO catrn_.txt
SELECT *FROM catrn WHERE catrnftra >= '2023-10-30';

unload TO fehfe_.txt
SELECT *FROM fehfe WHERE fehfefreg >= '2023-10-30';
unload TO felvt_.txt
SELECT *FROM felvt WHERE felvtftra >= '2023-10-30';

SELECT *FROM camca WHERE camcancta = 9051252878