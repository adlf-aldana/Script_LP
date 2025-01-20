-- COMISIONES COMPRA Y VENTA DIVISAS
SELECT 6, "006"||"-"||"000"||"-"||"0001","COMPRA VENTA ME", cjctlcdif FROM cjctl
-- SELECT *FROM cjctl  -- Mant. Parametros Generales - CAM397

UNLOAD TO ferci_divisas.txt
SELECT *FROM ferci WHERE fercicpro LIKE '006-%';

LOAD FROM ferci_divisas.txt INSERT INTO ferci;

------------------------------------------------------------------------- 

-- COMISIONES ACREDITIVOS
SELECT UNIQUE 13,"013"||"-"||"000"||"-"||LPAD(aicctccrg,4,"0"),aicctdesc, aicctcctb
FROM aicct, cnrip
WHERE aicctcctb BETWEEN cnripcini AND  cnripcfin
  AND aicctmiva="S"

 SELECT *FROM iplvt WHERE iplvtmodn = 13;
 SELECT *FROM aicct;
 
------------------------------------------------------------------------- 

--COMISIONES ATM
-- 24405M02        
SELECT 24, "024-100-0001", " COBRO DE CARGO ATM", tdctlccic FROM tdctl
-- SELECT *FROM tdctl -- Mant. de Parametros - TDP301

-- ATM
SELECT catrnntra,
	catrnncta,
	catrnftra,
	catrnimpo,
	catrnimpt,
	catrnglos,
	catrnstat,
	catrnuser,
	iplvtnfac,
	iplvtnord,
	iplvtftra,
	iplvtnomb,
	iplvtimpt,
	iplvtsiva,
	iplvtideb,
	iplvttiva,
	iplvtmodn,
	iplvtnopr,
	iplvtsimp
FROM catrn, iplvt
WHERE catrnntra = iplvtntra
--AND catrncmon = 1
AND catrnuser = 'ATM'
--AND iplvtmodn = 6
ORDER BY catrnfpro DESC;

SELECT *
FROM catcn
WHERE catcnncta = 9051256068
AND catcnntra = 28200569;

UNLOAD TO ferci_atm.txt SELECT *FROM ferci WHERE fercicpro LIKE '024%';
LOAD FROM ferci_atm.txt INSERT INTO ferci;

------------------------------------------------------------------------- 

-- COMISIONES AVALES
SELECT UNIQUE 11,"011"||"-"||"000"||"-"||LPAD(avcgpccgo,4,"0"),avcgpdesc, avcgpctbl
FROM avcgp, cnrip
WHERE avcgpctbl BETWEEN cnripcini AND  cnripcfin
  AND avcgpcfis="S";
  
 
SELECT *FROM iplvt WHERE iplvtmodn = 11;
SELECT *FROM avcgp;

------------------------------------------------------------------------- 

-- COMISIONES BOLETAS DE GARANTIA

SELECT UNIQUE 8,"008"||"-"||"053"||"-"||LPAD(bgcgpccgo,4,"0"),bgcgpdesc, bgcgpctbl
FROM bgcgp, cnrip
WHERE bgcgpctbl BETWEEN cnripcini AND  cnripcfin
  AND bgcgpcfis="S"
--AND cnripnive IN (1,2,3,4,5,17)
-- SELECT *FROM bgcgp -- Cargos y Rangos de Comisiones -> BGP302
-- SELECT *FROM cnrip -- Rango de impuestos -> CNM321
 
SELECT *FROM admod;

SELECT *
FROM iplvt
WHERE iplvtmodn = 8
ORDER BY iplvtfpro DESC;

SELECT bgmbgnbol,
	bgmbgcmon,
	bgmbgimpo,
	bgmbgcage,
	bgmbgbene,
	bgmbgndoc,
	bgmbgfemi,
	bgmbgfvto,
	bgmbgmrcb,
	bgmbgstat,
	bgmbgnomb,
	iplvtnfac,
	iplvtnord,
	iplvtftra,
	iplvtnomb,
	iplvtimpt,
	iplvtsiva,
	iplvtideb,
	iplvttiva,
	iplvtmodn,
	iplvtnopr,
	iplvtsimp
FROM bgmbg, iplvt
WHERE bgmbgnbol = iplvtnopr
AND iplvtmodn = 8
ORDER BY iplvtfpro DESC;

SELECT *
FROM bgtcn
WHERE bgtcnnbol = 286;

UNLOAD TO ferci_bg.txt SELECT *FROM ferci WHERE fercicpro LIKE '008-%';
LOAD FROM ferci_bg.txt INSERT INTO ferci;

-------------------------------------------------------------------------

--COMISIONES CAJAS DE AHORRO
SELECT UNIQUE 5,"005"||"-"||LPAD(catmvpref,3,"0")||"-"||LPAD(catmvcorr,4,"0"), catmvdesc, catmvctbl
FROM catmv, cnrip
WHERE 1=1
  AND catmvpref = 40
  AND catmvctbl BETWEEN cnripcini AND  cnripcfin;
  
SELECT *FROM admod;

SELECT *
FROM iplvt
WHERE iplvtmodn = 5
ORDER BY iplvtfpro DESC;

SELECT catrnntra,
	catrnftra,
	catrnncta,
	catrnpref,
	catrncorr,
	catrnimpo,
	catrnimpt,
	catrncmon,
	catrnglos,
	iplvtnfac,
	iplvtnord,
	iplvtftra,
	iplvtnomb,
	iplvtimpt,
	iplvtsiva,
	iplvtideb,
	iplvttiva,
	iplvtmodn,
	iplvtnopr,
	iplvtsimp
FROM catrn, iplvt
WHERE catrnndoc = iplvtnopr
AND catrnntra = iplvtntra
AND iplvtmodn = 5
ORDER BY iplvtfpro DESC;

SELECT *
FROM catcn
WHERE catcnntra = 28197535;

UNLOAD TO ferci_ahorro.txt SELECT *FROM ferci WHERE fercicpro LIKE '005-%';
LOAD FROM ferci_ahorro.txt INSERT INTO ferci;

------------------------------------------------------------------------- 

-- COMISIONES CAJAS
-- PREFIJO 40 INGRESOS FACTURADOS
SELECT UNIQUE 6,"006"||"-"||LPAD(cjtmvpref,3,"0")||"-"||LPAD(cjtmvcorr,4,"0"), cjtmvdesc, cjtmvctbl
FROM cjtmv, cnrip
WHERE 1=1
  AND cjtmvpref = 40
  AND cjtmvctbl BETWEEN cnripcini AND  cnripcfin
 
SELECT *FROM cjcon ORDER BY 1,2
SELECT *FROM cjtmv ORDER BY 1,2
  
-- TABLA CARGOS - CACGP
UNION -- comisiones de caja del cacgp 
SELECT UNIQUE 6,"006"||"-"||"005"||"-"||LPAD(cacgptipo,4,"0"), "CARGOS CA", cacgpctbl
FROM cacgp,cnrip
WHERE 1=1
  AND cacgpcfis = "S"
  AND cacgpctbl BETWEEN cnripcini AND  cnripcfin
  
SELECT *FROM cacgp

SELECT *FROM iplvt WHERE iplvtmodn = 6

------------------------------------------------------------------------- 

-- COMISIONES CUENTAS CORRIENTES
-- comisiones de ctas ctes cctmvpref = 40
UNION 
SELECT UNIQUE 4, "004"||"-"||LPAD(cctmvpref,3,"0")||"-"||LPAD(cctmvcorr,4,"0"), cctmvdesc, cctmvctbl
FROM cctmv, cnrip
WHERE 1=1
  AND cctmvpref = 40
  AND cctmvctbl BETWEEN cnripcini AND  cnripcfin

SELECT *FROM iplvt WHERE iplvtmodn = 4;
SELECT *FROM cctmv WHERE cctmvpref = 40;

------------------------------------------------------------------------- 

-- COMISIONES GIROS
-- comisiones de giros
SELECT UNIQUE 15,"015"||"-"||"000"||"-"||LPAD(grcgpccgo,4,"0"),grcgpdesc, grcgpctbl
FROM grcgp, cnrip
WHERE grcgpctbl BETWEEN cnripcini AND  cnripcfin
  AND grcgpcfis="S";
  
SELECT *FROM iplvt WHERE iplvtmodn = 15;

SELECT *FROM cndtr WHERE cndtrcnta IN (
54501103,
54501203,
54501101,
54501201,
54105201,
54105101,
54501103,
54501203,
54501101,
54501201,
54501107,
54501207,
54105201,
54105201,
54501103,
54501203,
54501101,
54501201,
54105201,
54105101,
54501103,
54501203,
54501101,
54501201, 
54105201,  
54105101,   
54501103,    
54501203,     
54501101,      
54501201,       
54105201,        
54105101);

--UNLOAD TO ferci_giros.txt SELECT *FROM ferci WHERE fercicpro LIKE '015-%';
--LOAD FROM ferci_giros.txt INSERT INTO ferci;

------------------------------------------------------------------------- 

-- COMISIONES LEASING
SELECT UNIQUE 14,"014"||"-"||"000"||"-"||LPAD(lscgpcarg,4,"0"),lscgpdesc, lscgpcctb
FROM lscgp, cnrip
WHERE 1=1 --lscgpcctb BETWEEN cnripcini AND  cnripcfin
  AND lscgpmiva = "S";
  
SELECT *FROM iplvt WHERE iplvtmodn = 14;
SELECT *FROM lscgp;

------------------------------------------------------------------------- 

-- COMISIONES MODULO GENERAL
SELECT UNIQUE 1,"001"||"-"||LPAD(gbcompref,3,"0")||"-"||LPAD(gbcomcorr,4,"0"), gbcomdesc, gbcomctcb
FROM gbcom, cnrip
WHERE gbcomctcb BETWEEN cnripcini AND  cnripcfin;
--AND cnripnive IN (1,2,3,4,5,17)
--SELECT *FROM gbcom -- Mtto de Comisiones -> GBP017
--SELECT *FROM cnrip -- Rango de impuestos -> CNM321

-- MG/Parametros/CONCEPTOS (GBP004) - Pref 6
--3 EXTRACTO DE CAJA DE AHORROS
--5 RETIRO EN CAJA DE AHORROS

SELECT *FROM cacon WHERE cacondesc LIKE '%RETIRO%'
SELECT *FROM gbcon WHERE gbcondesc LIKE '%RETIRO%'

/*
-- CUENTAS CONTABLES COMISIONES MODULOS GENERALES
21201101        -- cajas de ahorro
21201101        -- cajas de ahorro
44199101        -- MAESTRO DE TARJETA(EMISION)
44199101        -- TARJETAS ADICIONALES
44199101        -- RENOVACION DE TARJETAS
44199101        -- BLOQUEO/HABILITACION DE TARJET
*/
SELECT *
FROM catcn
WHERE catcnfpro >= '2022-01-01'
AND catcncctb = 21201101

SELECT *FROM iplvt WHERE iplvtntra = 27842768
--UPDATE iplvt SET iplvtstat = 0 WHERE iplvtntra = 27842768

UNLOAD TO ferci_general.txt SELECT *FROM ferci WHERE fercicpro LIKE '001-%';
LOAD FROM ferci_general.txt INSERT INTO ferci;

------------------------------------------------------------------------- 

-- COMISIONES PRESTAMOS
SELECT UNIQUE 17,"017"||"-"||"000"||"-"||LPAD(prcgpcarg,4,"0"),prcgpdesc, prcgpcctb
FROM prcgp, cnrip
WHERE prcgpcctb BETWEEN cnripcini AND  cnripcfin
  AND prcgpmiva = "S";

SELECT *
FROM prcgp
WHERE prcgpmiva = "S";

SELECT *FROM prtcn WHERE prtcncctb = 54501201 ORDER BY prtcnfpro DESC   
SELECT *FROM cndtr WHERE cndtrcnta = 54501201
  
SELECT *
FROM iplvt
WHERE iplvtmodn = 17
ORDER BY iplvtfpro DESC;

--UNLOAD TO ferci_prestamos.txt SELECT *FROM ferci WHERE fercicpro LIKE '017-%';
--LOAD FROM ferci_prestamos.txt INSERT INTO ferci;

------------------------------------------------------------------------- 

-- COMISIONES PRODUCTOS DEFINIDOS
SELECT UNIQUE 96,"096"||"-"||LPAD(feconpref,3,"0")||"-"||LPAD(feconcorr,4,"0"), fecondesc, RPAD(TRIM( NVL(feconabre,"0")),8,"0")
FROM fecon
WHERE feconpref = 50 
  AND feconcorr > 0;
 
UNLOAD TO fecon_50.txt
SELECT *
FROM fecon 
WHERE feconpref = 50
ORDER BY 1,2,3;

LOAD FROM fecon_50.TXT INSERT INTO fecon;

INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,0,'SERVICIOS FACTURADOS                                                                                                                                                                                                                                      ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,1,'SERVICIOS FINANCIEROS                                                                                                                                                                                                                                     ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,2,'SERVICIO DE CAJEROS                                                                                                                                                                                                                                       ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,3,'COMISIONES POR SERVICIO DE COBRANZA                                                                                                                                                                                                                       ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,4,'TRANSACCIONES REALIZADAS EN ATM                                                                                                                                                                                                                           ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,5,'SEGURO DE TARJETAS                                                                                                                                                                                                                                        ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,6,'RECUPERACIOENS OTROS CONCEPTOS                                                                                                                                                                                                                            ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,7,'COMISIONES CUOTA EMISOR                                                                                                                                                                                                                                   ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,8,'COMISION CORRESPONSAL                                                                                                                                                                                                                                     ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,9,'VENTA DE ACTIVOS                                                                                                                                                                                                                                          ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,10,'COMISIONES VARIAS                                                                                                                                                                                                                                         ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,11,'INGRESOS VARIOS                                                                                                                                                                                                                                           ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,12,'COMISIONES POR SERVICIO DE COBRANZAS                                                                                                                                                                                                                      ',NULL,0);
