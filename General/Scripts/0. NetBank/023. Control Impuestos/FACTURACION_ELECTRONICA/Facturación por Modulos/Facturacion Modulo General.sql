-- comisiones generales modulo gb
SELECT UNIQUE 1,"001"||"-"||LPAD(gbcompref,3,"0")||"-"||LPAD(gbcomcorr,4,"0"), gbcomdesc, gbcomctcb
FROM gbcom, cnrip
WHERE gbcomctcb BETWEEN cnripcini AND  cnripcfin;
--AND cnripnive IN (1,2,3,4,5,17)
--SELECT *FROM gbcom -- Mtto de Comisiones -> GBP017
--SELECT *FROM cnrip -- Rango de impuestos -> CNM321

-- MG/Parametros/CONCEPTOS (GBP004) - Pref 6
3 EXTRACTO DE CAJA DE AHORROS
5 RETIRO EN CAJA DE AHORROS

SELECT *FROM cacon WHERE cacondesc LIKE '%RETIRO%'
SELECT *FROM gbcon WHERE gbcondesc LIKE '%RETIRO%'

SELECT *
FROM gbcom
ORDER BY 1,2

SELECT *FROM gbcon WHERE gbconpfij = 6
SELECT *FROM gbcon WHERE gbconpfij = 1
SELECT *FROM tetrn WHERE tetrntxmd = 14262305264024014 ORDER BY tetrnfpro DESC 
SELECT *FROM tetrn ORDER BY tetrnfpro DESC 

SELECT *FROM tecon ORDER BY 1,2
SELECT *FROM temte

SELECT *FROM ferci

------------------------------------------------------

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

--------------------------------------------------------
UNLOAD TO ferci_general.txt SELECT *FROM ferci WHERE fercicpro LIKE '001-%';
LOAD FROM ferci_general.txt INSERT INTO ferci;

INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','001-006-0003   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','001-006-0005   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','001-006-0018   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','001-006-0019   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','001-006-0020   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','001-006-0021   ','71190               ');
