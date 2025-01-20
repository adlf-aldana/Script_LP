SELECT tdtrnntra NUM_TRANS_ATM,
--	tdtrnntrj NUM_TARJETA,
	camcancta NUM_CUENTA,
--	tdtrnttrn,
	tdtrnimpt IMPORTE_TRANSACCIONADO,
--	tdtrnfpro,
--	tdtrnhora,
--	tdpigimpt,
--	tdpignpig,
	tdpigftra FECHA_TRANS,
--	capignpig,
--	capigfpig,
--	capighora,
	camcasact*-1 SALDO_ACTUAL,
	camcafpig PIGNORADO,
	(SELECT sum(capigimpo)
	FROM capig
	WHERE capigncta = camcancta
	AND capigstat = 0) SALDO_PIGNORADO_REAL,
	catrnntra NUM_TRANS_AHORRO,
	catrnftra FECHA_PROCESADA
--	catrnfpro,
--	catrnhora,
--	catrnimpo
--	catrncmon
FROM tdtrn, tdpig, capig, camca, catrn
WHERE catrnftra >= '2023-09-01'
--WHERE catrnftra BETWEEN '2023-07-01' AND '2023-10-01'
AND catrnftra <> capigfpig
--tdtrnntra = 'D80618'
AND tdpigntra = tdtrnntra
AND capignpig = tdpignpig
AND capigncta = camcancta
AND camcancta = catrnncta
--AND camcafpig <> ()
AND catrntorg = tdtrntorg
--AND tdtrnntra <> 'D80618'
AND tdtrnttrn = 4;

SELECT *
FROM tdtrn
WHERE tdtrnntra = 'D80618'

SELECT *
FROM tdpig
WHERE tdpigntra ='D80618' 
--WHERE tdpignpig = 8105856;

SELECT *
FROM capig
--WHERE capignpig = 8071126
WHERE capigncta = 9051080516
ORDER BY capigstat,2
AND capigstat = 0

SELECT *
FROM camca
WHERE camcancta = 9051256123

SELECT *
FROM catrn
--WHERE catrntorg = 912424--catrnntra = 28742409--catrnncta = 9051256123
WHERE catrnncta = 9051256123
AND catrnftra >= '2023-09-23';

SELECT --catcnftra FECHA_TRANS,
--	catcnndoc,
	catcndesc DESCRIPCION,
	catcncctb CUENTA_CONTABLE,
	catcnimpi IMPORTE,
	catcnntra NUM_TRANS,
	catcnfpro FECHA_PROCESADA,
	catcnncta NUM_CUENTA
FROM catcn
WHERE catcnncta = 9051256123
AND catcnftra >= '2023-09-23';
WHERE catcnntra = 28742409;

/* MOV CONTABLE */ --CAJAS DE AHORRO
select a.catcnftra,
a.catcnndoc,
--a.catcnncta,
a.catcnitem,
a.catcnpref,
a.catcncorr,
a.catcndesc,
a.catcncctb,
a.catcnntra,
a.catcnimpi,
a.catcnimpc--,a.catcnplaz plaza,a.catcnagen agen
from catcn a
where a.catcnftra between '2023-09-23' and '2023-09-25'
and a.catcnncta  in(9051256123)
order by 1,2;

------------------------------
-- TODAS CON PIGNORACIONES DIFERENTES A LA FPIG
SELECT camcancta,
	camcacage,
	camcasact,
	camcafpig,
	sum(capigimpo)
FROM camca, capig
WHERE capigncta = camcancta 
AND capigstat = 0
AND camcastat IN (1,2,3)
--AND camcaplaz = 80
--AND camcancta = 9051256123
--AND capigfpig >= '2023-01-01'
AND capigcpig <> 4
AND camcafpig <> (SELECT sum(capigimpo)
				FROM capig
				WHERE capigncta = camcancta 
				--AND capigcpig = 98
				AND capigstat = 0
				AND capigcpig <> 4
				OR capigcpig <> 999)
GROUP BY 1,2,3,4;


-- fechas
SELECT catrnncta NUM_CUENTA,
	tdtrnimpt IMPORTE_TRANSACCIONADA,
	tdtrnfpro FECHA_TRANSACCIONADA,
	catrnimpo IMPORTE_PROCESADA,
	catrnftra FECHA_PROCESADA,
	tdtrnplaz PLAZA,
	tdtrnncaj CAJERO
FROM catrn, tdtrn
WHERE catrntorg = tdtrntorg
AND catrnftra = '2023-09-18'
AND catrnftra <> tdtrnfpro
AND catrnimpo = tdtrnimpt
--AND catrnncta = 9051258731
--AND catrntorg = 924152

---- MI CASO
SELECT *FROM catrn WHERE catrnncta = 3051920851 AND catrnftra >= '2023-09-18' AND catrnmorg = 24
SELECT *FROM catcn WHERE catcnntra IN (28741068, 28741069)
SELECT *FROM tdtrn WHERE tdtrntorg = 773091
SELECT *FROM tdmtd WHERE tdmtdntrj = 600009048
SELECT *FROM felvt WHERE felvtnopr = 3051920851
SELECT *FROM capig WHERE capigncta = 3051920851 AND capigfpig = '2023-09-22'
SELECT *FROM tdpig WHERE tdpigntra = 'D80370'


SELECT *FROM capig WHERE capigfpig = '2023-09-23' AND capigcpig = 98
-- OTRO CASO FECHA 23/09/2023 PERO SE DESPIGNORO EL 25/09/2023
SELECT *FROM tdpig WHERE tdpignpig = 8105857
SELECT *FROM tdtrn WHERE tdtrnntra = 'D80619 '
SELECT *FROM catrn WHERE catrntorg = 930501
SELECT *FROM camca WHERE camcancta = 3051299812
SELECT *FROM capig WHERE capigncta = 3051299812 AND capigcpig = 98 AND capigfpig >= '2023-09-01'
SELECT *FROM capig WHERE capigncta = 3051299812  AND capigstat = 0

SELECT *FROM capig WHERE capigcpig = 98 AND capigstat = 0

