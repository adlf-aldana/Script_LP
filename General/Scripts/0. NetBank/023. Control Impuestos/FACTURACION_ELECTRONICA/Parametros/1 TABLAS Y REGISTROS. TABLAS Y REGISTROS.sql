-- REGLA FACTURACION 326

-- FACTURACION ELECTRONICA DETALLE
SELECT *
FROM fedfe
ORDER BY 1;

-- CATALOGO DE PRODUCTOS Y SERVICIOS (SIN)
unload TO fecps.unl
SELECT *
FROM fecps
WHERE fecpsnnit = (SELECT gbpmtcruc FROM gbpmt);

DROP INDEX fecps_01

-- CREAR INDICE SI NO EXISTE
create unique index fecps_01 on fecps  (fecpsnnit,fecpscimp);

-- NIT - CODIGO_SIN - DESCRIPCION - CODIGO_ACTIVIDAD
load FROM fecps.unl INSERT INTO fecps;

-----------------------------------------------

--PARAMETROS SIN
UNLOAD TO fepsi.unl
SELECT *
FROM fepsi
ORDER BY 1,2;

DROP INDEX fepsi_01
-- CREAR INDEX SI NO EXISTE
create unique index fepsi_01 on fepsi  (fepsitipo,fepsicimp);

LOAD FROM fepsi.unl INSERT INTO fepsi;

-----------------------------------------------
-- GENERACION DE NUMERO CORRELATIVO DE FACTURA
UNLOAD TO fecdf.txt
SELECT *
FROM fecdf;

-- ELIMINAR TABLA  DE PRODUCCION
DROP TABLE fecdf;

-- CREAR TABLA
CREATE table fecdf
    (
    fecdfnnit char(15) ,                       {  }
    fecdfcdse smallint ,                       {  }
    fecdfcsuc smallint ,                       {  }
    fecdfgest smallint ,                       {  }
    fecdfcorr dec(15,0) ,                      {  }
    fecdffulf date                             {  }
    );

LOAD FROM fecdf.txt INSERT INTO fecdf;

-----------------------------------------------

SELECT *
FROM fechastc;

-- CREAR TABLA EN PRODUCCION
CREATE table fechastc
    (
    fechastc  date ,                           {  }
    marcatc   smallint ,                       {  }
    reprotc   smallint                         {  }
    );

-----------------------------------------------
-- FACTURACION ELECTRONICA CONCEPTOS
unload TO fecon.unl
SELECT *
FROM fecon
ORDER BY 1, 2;

load FROM fecon.unl INSERT INTO DELETE fecon;

-------------------------------------
-- DATOS ADICIONALES RESPECTO AL ANTERIOR SISTENA DE FACTURACION
SELECT *
FROM fedat;

-- CREAR INDEX SI NO EXISTE
create unique index fedat_01 on fedat  (fedattipo,fedatntra);

------------------------------------
-- CONTRIBUYENTE
SELECT *
FROM fedco

-- CREAR INDEX SI NO EXISTE
create unique index fedco_01 on fedco  (fedconnit)

------------------------------------

-- FACTURACION ELECTRONICA DETALLE
SELECT *FROM fedfe

DROP INDEX fedfe_01
-- CREAR INDEX SI NO EXISTE
create unique index fedfe_01 on fedfe  (fedfeiddf,fedfeitem);

---------------------------------------------------
-- DOCUMENTO SECTOR
UNLOAD TO fedse.txt
SELECT *
FROM fedse
ORDER BY 1;

DROP INDEX fedse_01
--CREAR INDEX SI NO EXISTE
create unique index fedse_01 on fedse  (fedsecodi);

LOAD FROM fedse.txt INSERT INTO fedse;

---------------------------------------------------
-- TABLA DE FACTURAS ANULADAS
SELECT *FROM fefan;

---------------------------------------------------

-- FACTURACION ELECTRONICA CABECERA
SELECT *FROM fehfe

DROP INDEX fehfe_00
--CREAR INDEX SI NO EXISTE
create unique index fehfe_00 on fehfe  (fehfeiddf);

--------------------------------------------------
-- NUEVA TABLA DE LIBRO DE VENTA PARA FE
SELECT *FROM felvt;
DROP TABLE felvt

CREATE table felvt
    (
    felvtnnit char(15) not null ,              {  }
    felvtpnfa dec(15,0) ,                      {  }
    felvtnfac dec(15,0) not null ,             {  }
    felvtccuf varchar(100) ,                   {  }
    felvtcdse smallint not null ,              {  }
    felvtftra date not null ,                  {  }
    felvthtra char(8) not null ,               {  }
    felvttdoc smallint not null ,              {  }
    felvtnruc char(15) ,                       {  }
    felvtcomp char(5) ,                        {  }
    felvtnomb char(150) ,                      {  }
    felvtnauc char(30) ,                       {  }
    felvtemai char(500) ,                      {  }
    felvtnufg int8 ,                               {  }
    felvtimpt dec(14,2) not null ,             {  }
    felvtiice dec(14,2) not null ,             {  }
    felvtiehd dec(14,2) not null ,             {  }
    felvtexen dec(14,2) not null ,             {  }
    felvtsiva dec(14,2) not null ,             {  }
    felvtideb dec(14,2) not null ,             {  }
    felvttiva dec(7,3) not null ,              {  }
    felvtuneg smallint not null ,              {  }
    felvtcloc smallint ,                       {  }
    felvtmodn smallint ,                       {  }
    felvtnopr dec(16,0) ,                      {  }
    felvtntra integer ,                        {  }
    felvtstat smallint not null ,              {  }
    felvtfsta date not null ,                  {  }
    felvtmvta smallint ,                       {  }
    felvtsimp char(1) not null ,               {  }
    felvtilot char(1) not null ,               {  }
    felvtuser char(3) ,                        {  }
    felvthora char(8) ,                        {  }
    felvtfpro date ,                           {  }
    felvtita0 dec(14,2) not null ,             {  }
    felvtidbr dec(14,2) not null ,             {  }
    felvtibon dec(14,2) not null ,             {  }
    felvtgfac smallint not null ,              {  }
    felvtsenv smallint not null                {  }
    );

   DROP INDEX felvt_01;
   DROP INDEX felvt_02;
   DROP INDEX felvt_03;
   DROP INDEX felvt_04;
 create index felvt_01 on felvt  (felvtccuf);
 create index felvt_02 on felvt  (felvtnnit,felvtftra);
 create index felvt_03 on felvt  (felvtnnit,felvtnfac);
 create index felvt_04 on felvt  (felvtnnit,felvtmodn,felvtnopr,felvtntra);

----------------------------------------------------------

SELECT *FROM fenta;
-- CREAR TABLA
CREATE table fenta
    (
    fentannit char(15) not null ,              {  }
    fentannta dec(15,0) not null ,             {  }
    fentafuli smallint ,                       {  }
    fentaccuf char(100) ,                      {  }
    fentacafc char(100) ,                      {  }
    fentatdoc smallint not null ,              {  }
    fentacdse smallint not null ,              {  }
    fentaftra date not null ,                  {  }
    fentahtra char(8) not null ,               {  }
    fentatdoi smallint not null ,              {  }
    fentanruc char(15) ,                       {  }
    fentacomp char(5) ,                        {  }
    fentanomb char(150) ,                      {  }
    fentanauc char(30) ,                       {  }
    fentaemai char(500) ,                      {  }
    fentanufg int8 ,                               {  }
    fentaimpt dec(14,2) not null ,             {  }
    fentaiice dec(14,2) not null ,             {  }
    fentaiehd dec(14,2) not null ,             {  }
    fentaneto dec(14,2) not null ,             {  }
    fentaifis dec(14,2) not null ,             {  }
    fentativa dec(7,3) not null ,              {  }
    fentauneg smallint not null ,              {  }
    fentacloc smallint ,                       {  }
    fentamorg smallint ,                       {  }
    fentatorg integer ,                        {  }
    fentastat smallint not null ,              {  }
    fentafsta date not null ,                  {  }
    fentacufo char(100) ,                      {  }
    fentanfao dec(15,0) not null ,             {  }
    fentamoro smallint ,                       {  }
    fentatoro integer ,                        {  }
    fentandev integer ,                        {  }
    fentauser char(3) ,                        {  }
    fentahora char(8) ,                        {  }
    fentafpro date ,                           {  }
    fentasimp char(1) not null ,               {  }
    fentasenv smallint not null                {  }
    );
   
--------------------------------------------------------

SELECT *FROM fepff;

-------------------------------------------------------
SELECT *FROM ferci;
-- ELIMINAR TABLA  DE PRODUCCION
DROP TABLE ferci;
-- CREAR TABLA
CREATE table ferci
    (
    fercinnit char(15) not null ,              {  }
    fercicpro char(15) not null ,              {  }
    fercicimp char(20) not null                {  }
    );

   DROP INDEX ferci_01
create unique index ferci_01 on ferci  (fercinnit,fercicpro);
--------------------------------------------------------

SELECT *FROM feres;

CREATE table feres
    (
    feresnemi int8 ,                               {  }
    feresccuf varchar(100) not null ,          {  }
    feresifee varchar(200) not null ,          {  }
    feresiddf int8 ,                               {  }
    feresfemi varchar(30) ,                    {  }
    feresctip integer ,                        {  }
    ferescdse smallint ,                       {  }
    feresoper smallint ,                       {  }
    feresmoda smallint ,                       {  }
    feresform smallint ,                       {  }
    ferescodi varchar(100) ,                   {  }
    ferescrec integer ,                        {  }
    feresdesc varchar(200) ,                   {  }
    feresslme varchar(200)                     {  }
    );

--------------------------------------------------------
-- TABLA DE RELACION DE VIAS DE PAGO CON FORMAS DE PAGO DEL SIN
UNLOAD TO ferfp
SELECT *
FROM ferfp;

DROP INDEX ferfp_01
-- CREAR INDEX SI NO EXISTE
create unique index ferfp_01 on ferfp  (ferfpnmod,ferfpnvia);

LOAD FROM ferfp.txt INSERT INTO ferfp;

---------------------------------------------------------
--TABLA DE RELACIÓN DE CODIGOS
UNLOAD TO fersi.unl
SELECT *
FROM fersi;

-- ELIMINAR TABLA  DE PRODUCCION
DROP TABLE fersi;

-- CREAR TABLA
CREATE table fersi
    (
    fersitipo smallint not null ,              {  }
    fersiccon smallint not null ,              {  }
    fersicimp char(20) not null                {  }
    );

LOAD FROM fersi.unl INSERT INTO fersi;
   
----------------------------------------------------
-- RELACION SUCURSAL - OFICINA
UNLOAD TO fersu.txt
SELECT *
FROM fersu;

LOAD FROM fersu.txt INSERT INTO fersu;

-----------------------------------------------------
-- TABLA DE SERIALES U CORRELATIVO
SELECT *FROM fesrl;

----------------------------------------------------
-- SUCURSALES
UNLOAD TO fesuc.txt
SELECT *
FROM fesuc;

-- CREAR INDEX SI NO EXISTE
create unique index fesuc_00 on fesuc  (fesucnnit,fesucnsuc);

LOAD FROM fesuc.txt INSERT INTO fesuc;

--------------------------------------------------------

SELECT *FROM fetem

--------------------------------------------------------
-- VALORES POR DEFECTO
UNLOAD TO fevdf.unl
SELECT *
FROM fevdf
ORDER BY 1,2;

DROP TABLE fevdf;

CREATE table fevdf
    (
    fevdfnatr smallint ,                       {  }
    fevdfdesc char(50) ,                       {  }
    fevdfvald char(100)                         {  }
    );

LOAD FROM fevdf.unl INSERT INTO fevdf;

INSERT INTO fevdf (fevdfnatr,fevdfdesc,fevdfvald) VALUES (1,'ACTIVIDAD ECONOMICA                               ','620100                        ');
INSERT INTO fevdf (fevdfnatr,fevdfdesc,fevdfvald) VALUES (4,'MOTIVO DE ANULACION DE FACTURA                    ','1                             ');
INSERT INTO fevdf (fevdfnatr,fevdfdesc,fevdfvald) VALUES (9,'FORMA DE PAGO                                     ','1                             ');
INSERT INTO fevdf (fevdfnatr,fevdfdesc,fevdfvald) VALUES (13,'UNIDAD DE MEDIDA                                  ','58                            ');
INSERT INTO fevdf (fevdfnatr,fevdfdesc,fevdfvald) VALUES (20,'CODIGO DE SISTEMA                                 ','SIST-01                       ');
INSERT INTO fevdf (fevdfnatr,fevdfdesc,fevdfvald) VALUES (22,'URL DE QR                                         ','https://pilotosiat.impuestos.gob.bo/consulta/QR');
INSERT INTO fevdf (fevdfnatr,fevdfdesc,fevdfvald) VALUES (23,'DOCUMENTO SECTOR                                  ','15                            ');


/*
AMBIENTE DE PRUEBAS
https://pilotosiat.impuestos.gob.bo/consulta/QR
AMBIENTE DE PRODUCCION
https://siat.impuestos.gob.bo/consulta/QR
*/

--------------------------------------------------------
-- Vista para armar el catalogo de productos en SFI/NB
-- VISTA
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
SELECT 24, "024-100-0001", " COBRO DE CARGO ATM", tdctlccic FROM tdctl
-- SELECT *FROM tdctl -- Mant. de Parametros - TDP301
