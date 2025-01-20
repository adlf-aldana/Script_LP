SELECT *FROM fecpr
-- Vista para armar el catalogo de productos en SFI/NB
DROP  VIEW IF EXISTS fecpr;

CREATE VIEW fecpr -- PRODUCTOS Y SERVICIOS INTERNOSOS
        (fecprmodn, fecprncod, fecprdesc, fecprcctb)
        AS

-- comisiones generales modulo gb
SELECT UNIQUE 1,"001"||"-"||LPAD(gbcompref,3,"0")||"-"||LPAD(gbcomcorr,4,"0"), gbcomdesc, gbcomctcb
FROM gbcom, cnrip
WHERE gbcomctcb BETWEEN cnripcini AND  cnripcfin
--AND cnripnive IN (1,2,3,4,5,17)
--SELECT *FROM gbcom -- Mtto de Comisiones -> GBP017
--SELECT *FROM cnrip -- Rango de impuestos -> CNM321

-- comisiones de ctas ctes cctmvpref = 40
UNION 
SELECT UNIQUE 4, "004"||"-"||LPAD(cctmvpref,3,"0")||"-"||LPAD(cctmvcorr,4,"0"), cctmvdesc, cctmvctbl
FROM cctmv, cnrip
WHERE 1=1
  AND cctmvpref = 40
  AND cctmvctbl BETWEEN cnripcini AND  cnripcfin
--AND cnripnive IN (1,2,3,4,5,17)
-- SELECT *FROM cctmv WHERE 1=1 AND cctmvpref = 40 -- Tipos de movimientos - ccm302
-- SELECT *FROM cnrip -- Rango de impuestos -> CNM321

UNION -- comisiones de Avance en cuentas corrientes
SELECT UNIQUE 4,"004"||"-"||"000"||"-"||LPAD(cccgpccrg,4,"0"),cccgpdesc, cccgpcctb
FROM cccgp, cnrip
WHERE cccgpcctb BETWEEN cnripcini AND  cnripcfin
  AND cccgpmiva="S"
--AND cnripnive IN (1,2,3,4,5,17)
-- SELECT *FROM cccgp -- Mant. Cargos Parametros -> ccm319
-- SELECT *FROM cnrip -- Rango de impuestos -> CNM321
  
UNION -- comisiones de caja de ahorros catmvpref = 40
SELECT UNIQUE 5,"005"||"-"||LPAD(catmvpref,3,"0")||"-"||LPAD(catmvcorr,4,"0"), catmvdesc, catmvctbl
FROM catmv, cnrip
WHERE 1=1
  AND catmvpref = 40
  AND catmvctbl BETWEEN cnripcini AND  cnripcfin
--AND cnripnive IN (1,2,3,4,5,17)
-- SELECT *FROM catmv WHERE 1=1 AND catmvpref = 40 -- Tipos de Movimiento -> CAM302
-- SELECT *FROM cnrip -- Rango de impuestos -> CNM321
  
UNION -- comisiones de caja cjtmvpref = 40
SELECT UNIQUE 6,"006"||"-"||LPAD(cjtmvpref,3,"0")||"-"||LPAD(cjtmvcorr,4,"0"), cjtmvdesc, cjtmvctbl
FROM cjtmv, cnrip
WHERE 1=1
  AND cjtmvpref = 40
  AND cjtmvctbl BETWEEN cnripcini AND  cnripcfin
--AND cnripnive IN (1,2,3,4,5,17)
-- SELECT *FROM cjtmv WHERE 1=1 AND cjtmvpref = 40 -- Tipos de movimiento -> CJM302
-- SELECT *FROM cnrip -- Rango de impuestos -> CNM321
  
UNION -- comisiones de caja del cacgp 
SELECT UNIQUE 6,"006"||"-"||"005"||"-"||LPAD(cacgptipo,4,"0"), "CARGOS CA", cacgpctbl
FROM cacgp,cnrip
WHERE 1=1
  AND cacgpcfis = "S"
  AND cacgpctbl BETWEEN cnripcini AND  cnripcfin
-- SELECT *FROM cacgp
-- SELECT *FROM cnrip -- Rango de impuestos -> CNM321

UNION -- comisiones de boletas
SELECT UNIQUE 8,"008"||"-"||"053"||"-"||LPAD(bgcgpccgo,4,"0"),bgcgpdesc, bgcgpctbl
FROM bgcgp, cnrip
WHERE bgcgpctbl BETWEEN cnripcini AND  cnripcfin
  AND bgcgpcfis="S"
--AND cnripnive IN (1,2,3,4,5,17)
-- SELECT *FROM bgcgp -- Cargos y Rangos de Comisiones -> BGP302
-- SELECT *FROM cnrip -- Rango de impuestos -> CNM321
  
UNION -- comisiones de Avales
SELECT UNIQUE 11,"011"||"-"||"000"||"-"||LPAD(avcgpccgo,4,"0"),avcgpdesc, avcgpctbl
FROM avcgp, cnrip
WHERE avcgpctbl BETWEEN cnripcini AND  cnripcfin
  AND avcgpcfis="S"
--AND cnripnive IN (1,2,3,4,5,17)
-- SELECT *FROM avcgp 
-- SELECT *FROM cnrip -- Rango de impuestos -> CNM321
UNION -- comisiones de acreditivos
SELECT UNIQUE 13,"013"||"-"||"000"||"-"||LPAD(aicctccrg,4,"0"),aicctdesc, aicctcctb
FROM aicct, cnrip
WHERE aicctcctb BETWEEN cnripcini AND  cnripcfin
  AND aicctmiva="S"
--AND cnripnive IN (1,2,3,4,5,17)
-- SELECT *FROM aicct
-- SELECT *FROM cnrip -- Rango de impuestos -> CNM321
  
UNION -- comisiones de leasing
SELECT UNIQUE 14,"014"||"-"||"000"||"-"||LPAD(lscgpcarg,4,"0"),lscgpdesc, lscgpcctb
FROM lscgp, cnrip
WHERE 1=1 --lscgpcctb BETWEEN cnripcini AND  cnripcfin
  AND lscgpmiva = "S"
--AND cnripnive IN (1,2,3,4,5,17)
-- SELECT *FROM lscgp
-- SELECT *FROM cnrip -- Rango de impuestos -> CNM321
UNION -- comisiones de giros
SELECT UNIQUE 15,"015"||"-"||"000"||"-"||LPAD(grcgpccgo,4,"0"),grcgpdesc, grcgpctbl
FROM grcgp, cnrip
WHERE grcgpctbl BETWEEN cnripcini AND  cnripcfin
  AND grcgpcfis="S"
--AND cnripnive IN (1,2,3,4,5,17)
-- SELECT *FROM grcgp
-- SELECT *FROM cnrip -- Rango de impuestos -> CNM321
  
UNION -- comisiones de prestamo
SELECT UNIQUE 17,"017"||"-"||"000"||"-"||LPAD(prcgpcarg,4,"0"),prcgpdesc, prcgpcctb
FROM prcgp, cnrip
WHERE prcgpcctb BETWEEN cnripcini AND  cnripcfin
  AND prcgpmiva = "S"
--AND cnripnive IN (1,2,3,4,5,17)
-- SELECT *FROM prcgp -- Definicion de cargos -> PRP302
-- SELECT *FROM cnrip -- Rango de impuestos -> CNM321
  
UNION -- productos definidos en facturacion
SELECT UNIQUE 96,"096"||"-"||LPAD(feconpref,3,"0")||"-"||LPAD(feconcorr,4,"0"), fecondesc, RPAD(TRIM( NVL(feconabre,"0")),8,"0")
FROM fecon
WHERE feconpref = 50
  AND feconcorr > 0
--SELECT *FROM fecon WHERE feconpref = 50
  

UNION -- compra venta de moneda extranjera
SELECT 6, "006"||"-"||"000"||"-"||"0001","COMPRA VENTA ME", cjctlcdif FROM cjctl
-- SELECT *FROM cjctl  -- Mant. Parametros Generales - CAM397

UNION -- cobro por cargo ATM
--SELECT 24, "024-100-0001", " COBRO DE CARGO ATM", tdctlccic FROM tdctl
SELECT 24, "024-053-0001", " COBRO DE CARGO ATM", tdctlccic FROM tdctl
-- SELECT *FROM tdctl -- Mant. de Parametros - TDP301
