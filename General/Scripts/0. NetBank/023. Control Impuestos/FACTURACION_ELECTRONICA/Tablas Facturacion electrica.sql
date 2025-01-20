-- FACTURACION ELECTRONICA CABECERA
SELECT *
FROM fehfe

-- FACTURACION ELECTRONICA DETALLE
SELECT *
FROM fedfe
ORDER BY 1

-- FACTURACION ELECTRONICA CONCEPTOS
SELECT *
FROM fecon
ORDER BY 1, 2

-----------------------------------------------
-- CATALOGO DE PRODUCTOS Y SERVICIOS (SIN)
SELECT *
FROM fecps
WHERE fecpsnnit = (SELECT gbpmtcruc FROM gbpmt)
-- NIT - CODIGO_SIN - DESCRIPCION - CODIGO_ACTIVIDAD
INSERT INTO fecps(fecpsnnit, fecpscimp, fecpsdesc, fecpscaco)
VALUES ('1009387022','71190','OTROS SERVICIOS DE INTERMEDIACIÓN FINANCIERA, EXCEPTO LOS SERVICIOS DE LA BANCA DE INVERSIÓN, SERVICIOS DE SEGUROS Y SERVICIOS DE PENSIONES',	661900);
INSERT INTO fecps(fecpsnnit, fecpscimp, fecpsdesc, fecpscaco)
VALUES ('1009387022','711909','OTROS SERVICIOS DE INTERMEDIACIÓN FINANIERA, EXCEPTO LOS SERVICIOS DE LA BANCA DE INVERSIÓN, SERVICIOS DE SEGUROS Y SERVICIOS DE PENSIONES IMPORTADO',661900);
INSERT INTO fecps(fecpsnnit, fecpscimp, fecpsdesc, fecpscaco)
VALUES ('1009387022','71592','SERVICIOS DE CAMBIO DE DIVISAS',640001);
INSERT INTO fecps(fecpsnnit, fecpscimp, fecpsdesc, fecpscaco)
VALUES ('1009387022','99100','OTROS PRODUCTOS O SERVICIOS ALCANZADOS POR EL IVA',640001);
INSERT INTO fecps(fecpsnnit, fecpscimp, fecpsdesc, fecpscaco)
VALUES ('1009387022','991009','OTROS PRODUCTOS O SERVICIOS ALCANZADOS POR EL IVA IMPORTADO',661900);
INSERT INTO fecps(fecpsnnit, fecpscimp, fecpsdesc, fecpscaco)
VALUES ('1009387022','715929','SERVICIOS DE CAMBIO DE DIVISAS IMPORTADO',640001);

-----------------------------------------------

--TABLA DE RELACION DE CODIGOS
SELECT *
FROM ferci

INSERT INTO ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '006-000-0001', '71190');--COMPRA Y VENTA DE DIVISAS


INSERT INTO ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '008-053-0001', '71190');--COMISIONES P/ BOLETAS DE GARANTIA

INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','096-050-0004   ','71190               ');


SELECT *FROM fecpr ORDER BY 1
--UPDATE fecpr SET fecprdesc = 'COMPRA VENTA MEX' WHERE fecprmodn = 6
INSERT INTO fecpr (fecprmodn,fecprncod,fecprdesc,fecprcctb) 
VALUES (96,'096-050-0004','CARGO COMISION USO ATM','54105M16        ');

-- NIT - TIPO (Vista fecpr) - CODIGO_SIN
-- ANTES
INSERT INTO tbase:informix.ferci(fercinnit, fercitipo, fercicsai, fercicimp) VALUES('1009387022', '004-040-0001', 0, '71190');
-- DESPUES
-- CUENTAS CORRIENTES
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0001', '71190');-- CUENTAS CORRIENTES
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0002', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0003', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0004', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0005', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0006', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0007', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0008', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0009', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0010', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0011', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0012', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0013', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0014', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0019', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0020', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0021', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0022', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0023', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0024', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0025', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0026', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0027', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0028', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0029', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0030', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0033', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '004-040-0034', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '005-040-0001', '71190');
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) VALUES('1009387022', '006-000-0001', '71190');-- COMPRA VENTA MONEDA EXTRANJERA

SELECT *FROM ferci WHERE fercicpro LIKE '%015-%'

INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0001', '71190'); -- GIROS Y TRANSFERENCIAS - TELEX
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0002', '71190'); -- GIROS Y TRANSFERENCIAS - TELEX
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0003', '71190');-- GIROS Y TRANSFERENCIAS - FORMULARIOS
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0004', '71190');-- GIROS Y TRANSFERENCIAS - FORMULARIOS
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0005', '71190');-- GIROS Y TRANSFERENCIAS - COMISIONES
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0006', '71190');-- GIROS Y TRANSFERENCIAS - COMISIONES
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0007', '71190');-- GIROS Y TRANSFERENCIAS - TELEX
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0008', '71190');-- GIROS Y TRANSFERENCIAS - TELEX
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0009', '71190');-- GIROS Y TRANSFERENCIAS - FORMULARIOS
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0010', '71190');-- GIROS Y TRANSFERENCIAS - FORMULARIOS
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0011', '71190');-- GIROS Y TRANSFERENCIAS - PORTES
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0012', '71190');-- GIROS Y TRANSFERENCIAS - PORTES
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0013', '71190');-- GIROS Y TRANSFERENCIAS - COMISIONES
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0014', '71190');-- GIROS Y TRANSFERENCIAS - COMISIONES
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0025', '71190');-- GIROS Y TRANSFERENCIAS - TELEX
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0026', '71190');-- GIROS Y TRANSFERENCIAS - TELEX
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0027', '71190');-- GIROS Y TRANSFERENCIAS - FORMULARIOS
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0028', '71190');-- GIROS Y TRANSFERENCIAS - FORMULARIOS
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0029', '71190');-- GIROS Y TRANSFERENCIAS - COMISIONES
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0030', '71190');-- GIROS Y TRANSFERENCIAS - COMISIONES
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0040', '71190');-- GIROS Y TRANSFERENCIAS - TELEX
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0041', '71190');-- GIROS Y TRANSFERENCIAS - TELEX
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0042', '71190');-- GIROS Y TRANSFERENCIAS - FORMULARIOS
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0043', '71190');-- GIROS Y TRANSFERENCIAS - FORMULARIOS
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0044', '71190');-- GIROS Y TRANSFERENCIAS - COMISIONES
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0045', '71190');-- GIROS Y TRANSFERENCIAS - COMISIONES
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0051', '71190');-- GIROS Y TRANSFERENCIAS - TELEX
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0052', '71190');-- GIROS Y TRANSFERENCIAS - TELEX
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0053', '71190');-- GIROS Y TRANSFERENCIAS - FORMULARIOS
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0054', '71190');-- GIROS Y TRANSFERENCIAS - FORMULARIOS
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0055', '71190');-- GIROS Y TRANSFERENCIAS - COMISIONES
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '015-000-0056', '71190');-- GIROS Y TRANSFERENCIAS - COMISIONES

INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '017-000-0003', '71190'); -- PRESTAMOS COMERCIALES - FORMULARIO M/E
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '017-000-0004', '71190'); -- PRESTAMOS COMERCIALES - FORMULARIO M/E
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '017-000-0040', '71190'); -- PRESTAMOS COMERCIALES - FORMULARIO M/E HASTA $US 5000
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '017-000-0041', '71190'); -- PRESTAMOS COMERCIALES - FORMULARIO M/E > 5001 A 10000
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '017-000-0042', '71190'); -- PRESTAMOS COMERCIALES - FORMULARIO M/E > 10001 A 20000
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '017-000-0043', '71190'); -- PRESTAMOS COMERCIALES - FORMULARIO M/E > 20001

INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '024-100-0001', '71190'); -- TARJETAS DE DEBITO - COBRO CARGO ATM

INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '026-100-0001', '71190'); -- TARJETAS DE DEBITO - COBRO CARGO ATM

-- CONTABILIDAD
SELECT *
FROM fecon
WHERE feconpref = 53

INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,0,'SERVICIOS FACTURADOS',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,1,'SERVICIOS FINANCIEROS',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,2,'SERVICIO DE CAJEROS',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,3,'COMISIONES POR SERVICIO DE COBRANZA',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,4,'TRANSACCIONES REALIZADAS EN ATM',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,5,'SEGURO DE TARJETAS',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,6,'RECUPERACIOENS OTROS CONCEPTOS',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,7,'COMISIONES CUOTA EMISOR',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,8,'COMISION CORRESPONSAL',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,9,'VENTA DE ACTIVOS',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,10,'COMISIONES VARIAS',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,11,'INGRESOS VARIOS',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,12,'COMISIONES POR SERVICIO DE COBRANZAS',NULL,0);

SELECT *FROM ferci WHERE fercicpro LIKE '%003-%'

DELETE ferci WHERE fercicpro LIKE '%003-%'

INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '003-053-0001', '71190'); 
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '003-053-0002', '71190'); 
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '003-053-0003', '71190'); 
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '003-053-0004', '71190'); 
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '003-053-0005', '71190'); 
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '003-053-0006', '71190'); 
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '003-053-0007', '71190'); 
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '003-053-0008', '71190'); 
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '003-053-0009', '71190'); 
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '003-053-0010', '71190'); 
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '003-053-0011', '71190'); 
INSERT INTO tbase:informix.ferci(fercinnit, fercicpro, fercicimp) 
VALUES('1009387022', '003-053-0012', '71190'); 

SELECT *FROM iplvt ORDER BY iplvtfpro DESC 
-----------------------------------------------
--PARAMETROS SIN
SELECT *
FROM fepsi
ORDER BY 1,2

-----------------------------------------------
-- VALORES POR DEFECTO
SELECT *
FROM fevdf
ORDER BY 1,2
--620100                        
UPDATE informix.fevdf 
SET fevdfvald = '620100'
WHERE fevdfnatr = 1

INSERT INTO tbase:informix.fevdf(fevdfnatr, fevdfdesc, fevdfvald)
VALUES(22, 'URL DE QR', 'https://pilotosiat.impuestos.gob.bo/consulta/QR ');

--??
INSERT INTO tbase:informix.fevdf(fevdfnatr, fevdfdesc, fevdfvald)
VALUES(23, 'DOCUMENTO SECTOR', '15');

-----------------------------------------------
--TABLA DE RELACIÓN DE CODIGOS
SELECT *
FROM fersi

--  TIPO: 4
-- MOTIVO ANULACION DE FACTURA
-- Facturación electrónica conceptos / MOT. ANULACION DE FACTURA
SELECT *
FROM fecon 
WHERE feconpref = 5
	-- FACTURA MAL EMITIDA
	-- (FEPSITIPO: 4) - (FECONCORR) - (FEPSICIMP)
INSERT INTO fersi(fersitipo, fersiccon, fersicimp)
VALUES(4, 1, 1);
	-- DATOS DE EMISION INCORRECTOS
INSERT INTO fersi(fersitipo, fersiccon, fersicimp)
VALUES(4, 2, 3);
	-- FACTURA O NOTA DE CREDITO-DEBITO DEVUELTA
INSERT INTO fersi(fersitipo, fersiccon, fersicimp)
VALUES(4, 3, 4);

SELECT *
FROM fersi
WHERE fersitipo = 4

--  TIPO: 6
-- TIPO DE DOCUMENTO DE IDENTIDAD
SELECT *FROM fepsi ORDER BY 1,2
SELECT *
FROM gbcon 
WHERE gbconpfij = 4
	-- (FEPSITIPO: 6) - (GBCONCORR) - (FEPSICIMP)
	-- CARNET DE IDENTIDAD
INSERT INTO fersi(fersitipo, fersiccon, fersicimp)
VALUES(6, 1, 1);
	-- PERSONA EXTRANJERA
INSERT INTO fersi(fersitipo, fersiccon, fersicimp)
VALUES(6, 3, 2);
	-- NIT
INSERT INTO fersi(fersitipo, fersiccon, fersicimp)
VALUES(6, 9, 5);

INSERT INTO fersi(fersitipo, fersiccon, fersicimp)
VALUES(6, 0, 1);

INSERT INTO fersi(fersitipo, fersiccon, fersicimp)
VALUES(6, 5, 9);

SELECT *
FROM fersi
WHERE fersitipo = 6

-- FORMAS DE PAGO
SELECT *
FROM ferfp

INSERT INTO ferfp VALUES(6,6,1);	-- CAJA
INSERT INTO ferfp VALUES(5,6,1);	-- CAJA DE AHORROS

SELECT *
FROM fevdf 
WHERE fevdfnatr = 9

--  TIPO: 9
-- VIAS DE PAGO
SELECT "17",prviacvia,1, prviadesc
FROM prvia
order by 2

SELECT *
FROM fersi
ORDER BY 1,2
	
INSERT INTO fersi(fersitipo, fersiccon, fersicimp)
VALUES(9, 1, 1);
	-- CAJA AHORRO - OTROS
INSERT INTO tbase:informix.fersi(fersitipo, fersiccon, fersicimp)
VALUES(9, 3, 5);
	-- PUENTE VARIOS - OTROS
INSERT INTO tbase:informix.fersi(fersitipo, fersiccon, fersicimp)
VALUES(9, 5, 5);
	-- (FEPSITIPO: 9) - (PRVIACVIA) - (FEPSICIMP)
	-- PUENTE CAJA - EFECTIVO
INSERT INTO fersi (fersitipo,fersiccon,fersicimp) VALUES (9,1,'1');
INSERT INTO fersi (fersitipo,fersiccon,fersicimp) VALUES (9,5,'2');
INSERT INTO fersi (fersitipo,fersiccon,fersicimp) VALUES (9,5,'3');
INSERT INTO fersi (fersitipo,fersiccon,fersicimp) VALUES (9,5,'7');
INSERT INTO fersi (fersitipo,fersiccon,fersicimp) VALUES (9,5,'8');
INSERT INTO fersi (fersitipo,fersiccon,fersicimp) VALUES (9,5,'10');
INSERT INTO fersi (fersitipo,fersiccon,fersicimp) VALUES (9,5,'27');

SELECT *
FROM fersi
WHERE fersitipo = 9

--  TIPO: 10
-- TIPO DE MONEDA
SELECT *
FROM gbcon 
WHERE gbconpfij = 10
	-- BOLIVIANOS
	-- (FEPSITIPO: 9) - (GBCONCORR) - (FEPSICIMP)
INSERT INTO fersi(fersitipo, fersiccon, fersicimp)
VALUES(10, 1, 1);
	-- DOLARES
INSERT INTO fersi(fersitipo, fersiccon, fersicimp)
VALUES(10, 2, 2);

SELECT *
FROM fersi
WHERE fersitipo = 10

----------------------------------------------------
-- CONTRIBUYENTE
SELECT *
FROM fedco

----------------------------------------------------
-- SUCURSALES
SELECT *
FROM fesuc

DELETE fesuc WHERE fesucnsuc = 15

UPDATE fesuc
SET fesuc
fesucdire = 'CALLE ESPAÑA NRO. S 0111 EDIF.: LA PROMOTORA PISO: 0',
		   --CALLE ESPAÑA NRO. S   0111 EDIF.: LA PROMOTORA PISO: 0 DEPTO.: 0 ZONA/BARRIO: CENTRAL
fesucdpto = 'DEPTO.: 0 ZONA/CENTRAL',
fesuctelf = '763166685'
WHERE fesucnsuc = 0

SELECT *
FROM gbofi

--fesucnsuc: CODIGO_SUCURSAL_SIN
--fesucnomb: GBOFIDESC
--fesucdire: GBAGEDIRE
--fesuctelf: GBAGEDESC3
--fesucdalc:
--fesuclgar:
--fesuccres:
--fesucnres:
--fesucndid:
--fesuccorg:
--fesucdpto:
--fesucnnit:
INSERT INTO fesuc(fesucnsuc, fesucnomb, fesucdire, fesuctelf, fesucdalc, fesuclgar, fesuccres, fesucnres, fesucndid, fesuccorg, fesucdpto, fesucnnit) 
VALUES(0, 'OFICINA CENTRAL', 'CALLE ESPAÑA ESQ. AV. HEROINAS N. 111', '4222741-4224393', '', '', 0, '', '', '', 'COCHABAMBA - BOLIVIA', 1009387022);

INSERT INTO fesuc(fesucnsuc, fesucnomb, fesucdire, fesuctelf, fesucdalc, fesuclgar, fesuccres, fesucnres, fesucndid, fesuccorg, fesucdpto, fesucnnit) 
VALUES(2, 'AGENCIA SUD', 'CALLE J.R.MOLINA N.2585 PANAMERICANA', '4660593', '', '', 0, '', '', '', 'COCHABAMBA - BOLIVIA                    ', 1009387022);

INSERT INTO fesuc(fesucnsuc, fesucnomb, fesucdire, fesuctelf, fesucdalc, fesuclgar, fesuccres, fesucnres, fesucndid, fesuccorg, fesucdpto, fesucnnit) 
VALUES(3, 'AGENCIA NORTE', 'AV. AMERICA N.475 ENTRE G. WASHINGTON Y N. IRIGOYEN', ' 4799391-4799392             ', '', '', 0, '', '', '', 'COCHABAMBA - BOLIVIA', 1009387022);

INSERT INTO fesuc(fesucnsuc, fesucnomb, fesucdire, fesuctelf, fesucdalc, fesuclgar, fesuccres, fesucnres, fesucndid, fesuccorg, fesucdpto, fesucnnit) 
VALUES(4, 'AGENCIA QUILLACOLLO', 'CALLE COCHABAMBA N. 87', '4363179', '', '', 0, '', '', '', 'COCHABAMBA - BOLIVIA                    ', 1009387022);

INSERT INTO fesuc(fesucnsuc, fesucnomb, fesucdire, fesuctelf, fesucdalc, fesuclgar, fesuccres, fesucnres, fesucndid, fesuccorg, fesucdpto, fesucnnit) 
VALUES(6, 'SUCURSAL MUTUAL POTOSI', 'PLAZA 6 DE AGOSTO N. 11', '6222747', '', '', 0, '', '', '', 'POTOSI - BOLIVIA                        ', 1009387022);

INSERT INTO fesuc(fesucnsuc, fesucnomb, fesucdire, fesuctelf, fesucdalc, fesuclgar, fesuccres, fesucnres, fesucndid, fesuccorg, fesucdpto, fesucnnit) 
VALUES(7, 'AGENCIA VILLAZON', 'C. LA PAZ N.198 / AV. ANTOFAGASTA', '6224176', '', '', 0, '', '', '', 'POTOSI - BOLIVIA                        ', 1009387022);

INSERT INTO fesuc(fesucnsuc, fesucnomb, fesucdire, fesuctelf, fesucdalc, fesuclgar, fesuccres, fesucnres, fesucndid, fesuccorg, fesucdpto, fesucnnit) 
VALUES(8, 'AGENCIA TUPIZA', 'C. COCHABAMBA N.12 / CHUQUISACA', '6224176', '', '', 0, '', '', '', 'POTOSI - BOLIVIA                        ', 1009387022);

INSERT INTO fesuc(fesucnsuc, fesucnomb, fesucdire, fesuctelf, fesucdalc, fesuclgar, fesuccres, fesucnres, fesucndid, fesuccorg, fesucdpto, fesucnnit) 
VALUES(9, 'SUCURSAL MUTUAL PAITITI', 'AV. GERMAN BUSCH N.65', '4622133', '', '', 0, '', '', '', 'BENI - BOLIVIA', 1009387022);

INSERT INTO fesuc(fesucnsuc, fesucnomb, fesucdire, fesuctelf, fesucdalc, fesuclgar, fesuccres, fesucnres, fesucndid, fesuccorg, fesucdpto, fesucnnit) 
VALUES(11, 'AGENCIA RIBERALTA', 'AV. DR JUAN DE DIOS MARTINEZ N. 239', '8524753', '', '', 0, '', '', '', 'BENI - BOLIVIA', 1009387022);

INSERT INTO fesuc(fesucnsuc, fesucnomb, fesucdire, fesuctelf, fesucdalc, fesuclgar, fesuccres, fesucnres, fesucndid, fesuccorg, fesucdpto, fesucnnit) 
VALUES(12, 'SUCURSAL MUTUAL PANDO', 'AV. FERNANDEZ MOLINA N.045 /C. BENI', '8422055', '', '', 0, '', '', '', 'PANDO - BOLIVIA                         ', 1009387022);

INSERT INTO fesuc(fesucnsuc, fesucnomb, fesucdire, fesuctelf, fesucdalc, fesuclgar, fesuccres, fesucnres, fesucndid, fesuccorg, fesucdpto, fesucnnit) 
VALUES(13, 'AGENCIA GUAYARAMERIN', 'C. MARISCAL SANTA CRUZ N. 434', '8524753', '', '', 0, '', '', '', 'BENI - BOLIVIA                          ', 1009387022);

INSERT INTO fesuc(fesucnsuc, fesucnomb, fesucdire, fesuctelf, fesucdalc, fesuclgar, fesuccres, fesucnres, fesucndid, fesuccorg, fesucdpto, fesucnnit) 
VALUES(15, 'SUCURSAL LA PAZ', 'URB. SAN MIGUEL - Z. CALACOTO', '', '', '', 0, '', '', '', 'LA PAZ - BOLIVIA                        ', 1009387022);

INSERT INTO fesuc(fesucnsuc, fesucnomb, fesucdire, fesuctelf, fesucdalc, fesuclgar, fesuccres, fesucnres, fesucndid, fesuccorg, fesucdpto, fesucnnit) 
VALUES(0, 'SUCURSAL COCHABAMBA                         ', 'AV. HEROINAS CALLE ESPAÑA', '', '', '', 0, '', '', '', 'COCHABAMBA - BOLIVIA                        ', 1009387022);

----------------------------------------------------
-- RELACION SUCURSAL - OFICINA
SELECT *
FROM fersu

--fersunnit: NIT
--fersunsuc: fesucnsuc -> CODIGO_SUCURSAL_SIN
--fersunofi: gbofinofi
INSERT INTO fersu (fersunnit, fersunsuc, fersunofi) VALUES(1009387022, 2, 34);
INSERT INTO fersu (fersunnit, fersunsuc, fersunofi) VALUES(1009387022, 3, 33);
INSERT INTO fersu (fersunnit, fersunsuc, fersunofi) VALUES(1009387022, 4, 31);
INSERT INTO fersu (fersunnit, fersunsuc, fersunofi) VALUES(1009387022, 6, 50);
INSERT INTO fersu (fersunnit, fersunsuc, fersunofi) VALUES(1009387022, 7, 52);
INSERT INTO fersu (fersunnit, fersunsuc, fersunofi) VALUES(1009387022, 8, 51);
INSERT INTO fersu (fersunnit, fersunsuc, fersunofi) VALUES(1009387022, 9, 80);
INSERT INTO fersu (fersunnit, fersunsuc, fersunofi) VALUES(1009387022, 11, 82);
INSERT INTO fersu (fersunnit, fersunsuc, fersunofi) VALUES(1009387022, 12, 90);
INSERT INTO fersu (fersunnit, fersunsuc, fersunofi) VALUES(1009387022, 13, 81);
INSERT INTO fersu (fersunnit, fersunsuc, fersunofi) VALUES(1009387022, 15, 20);

INSERT INTO fersu (fersunnit, fersunsuc, fersunofi) VALUES(1009387022, 0, 30);

----------------------------------------------------
-- DOCUMENTO SECTOR
SELECT *
FROM fedse
ORDER BY 1

----------------------------------------------------
-- GENERACION DE NUMERO CORRELATIVO DE FACTURA
SELECT *
FROM fecdf

--fecdfnnit: NIT
--fecdftent: fedsecodi
--fecdfentg:
--fecdfgest: GESTION
--fecdfcorr:
--fecdffulf: FECHA
INSERT INTO fecdf (fecdfnnit, fecdfcdse, fecdfcsuc, fecdfgest, fecdfcorr, fecdffulf) VALUES('1009387022', 1, 0, 2023, 0, '2023-03-21');
INSERT INTO fecdf (fecdfnnit, fecdfcdse, fecdfcsuc, fecdfgest, fecdfcorr, fecdffulf) VALUES('1009387022', 9, 0, 2023, 0, '2023-03-21');
INSERT INTO fecdf (fecdfnnit, fecdfcdse, fecdfcsuc, fecdfgest, fecdfcorr, fecdffulf) VALUES('1009387022', 15, 0, 2023, 0, '2023-03-21');



----------------------------------------------------
-- DATOS ADICIONALES RESPECTO AL ANTERIOR SISTENA DE FACTURACION
SELECT *
FROM fedat

----------------------------------------------------
-- NUEVA TABLA DE LIBRO DE VENTA PARA FE
SELECT *
FROM felvt

----------------------------------------------------
-- VALORES POR DEFECTO
SELECT *
FROM fevdf

----------------------------------------------------
-- TABLA DE FACTURAS ANULADAS
SELECT *
FROM fefan

----------------------------------------------------
-- TABLA DE RELACION DE VIAS DE PAGO CON FORMAS DE PAGO DEL SIN
SELECT *
FROM ferfp

----------------------------------------------------
-- TABLA DE SERIALES U CORRELATIVO
SELECT *
FROM fesrl

----------------------------------------------------
-- TABLA TEMPORAL ALMACENA DATOS DEL BENEFICIARIO (NETBANK WEB)
SELECT *
FROM fetem

----------------------------------------------------
-- VISTA - LISTA DE PRODUCTOS Y SERVICIOS
SELECT *
FROM fecpr
ORDER BY 1,2

---------------------------------------------------------------------------------
select fercicpro as codigo_Producto, fercicimp as codigo_Producto_SIN from ferci
SELECT *FROM fedse ORDER BY 1
SELECT *FROM fesrl
SELECT *FROM fecdf
SELECT *FROM fevdf

SELECT *FROM felvt

UPDATE fecdf 
SET fecdfcsuc = 0
WHERE fecdfcdse = 15

