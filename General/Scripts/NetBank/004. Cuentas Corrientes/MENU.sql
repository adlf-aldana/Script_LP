/* CUENTAS CORRIENTES */
-- DELETE admdt
unload TO admdt_caja_Contact.txt
SELECT *FROM admdt
WHERE admdtmodn = 6
AND admdtmprn = 16
AND admdtmdtn IN (1,2,3,4,5,8,9,10);

SELECT *FROM admdt
WHERE admdtmodn = 4
AND admdtmprn = 16
AND admdtmdtn IN (1,2,3,4,5,8,9,10);


-- TAMAÑO VENTANA
UPDATE admdt
SET admdttama = 1
WHERE admdtmodn = 6
AND admdtmprn = 16
AND admdtmdtn IN (1,2,3,4,5,8,9,10);

--** MENU **--
/**************************************/
-- CAJAS 
SELECT *
FROM admdt
WHERE admdtmodn = 6
AND admdtmprn = 16
AND admdtmdtn = 6;
-- |6|16|6|Deposito Chq.Ajenos Bs.|fglgo /backup/bexe/cc334|1|cc334|PHP/ivt306.html
DELETE admdt
WHERE admdtmodn = 6
AND admdtmprn = 16
AND admdtmdtn = 6;

SELECT *
FROM admdt
WHERE admdtmodn = 6
AND admdtmprn = 16
AND admdtmdtn = 7;
--6|16|7|Deposito Chq.Ajenos $us.|fglgo /backup/bexe/cc335|1|cc335|PHP/ivt307.html
DELETE admdt
WHERE admdtmodn = 6
AND admdtmprn = 16
AND admdtmdtn = 7;

/**************************************/
-- CUENTAS CORRIENTES
unload TO admdt_Contact.txt
SELECT *
FROM admdt 
WHERE admdtmodn=4
AND admdtmprn=3
AND admdtmdtn =17;
--PHP/cc585.html                          
UPDATE admdt
SET ADMDTNPNB = 'PHP/ccr585.html'
WHERE admdtmodn=4
AND admdtmprn=3
AND ADMDTMDTN =17;

SELECT *
FROM admdt
WHERE admdtmodn=4
AND admdtmprn=3
AND ADMDTMDTN =19;
-- PHP/cc538.html

UPDATE admdt
SET ADMDTNPNB = 'PHP/ccr538.html'
WHERE admdtmodn=4
AND admdtmprn=3
AND ADMDTMDTN =19;

SELECT *
FROM admdt
WHERE admdtmodn=4
AND admdtmprn=7 
AND ADMDTMDTN =15;

INSERT INTO admdt 
VALUES (4,7,15,'Cierre de Ctas. Ctes. TGN','fglgo /backup/bexe/cc382',NULL,1,1,'cc382','PHP/ccp382.html');

/* MODIFICACIONES */
-- Quitar maestro de cuenta corrientes
SELECT *
FROM admdt
WHERE admdtmodn=4
AND admdtmprn=2 
AND admdtmdtn=15;
--4|2|15|Maestro de Cuentas Corrientes|fglgo /backup/bexe/cc305|1|1|ccm305|PHP/ccm305.html                         
DELETE admdt
WHERE admdtmodn=4
AND admdtmprn=2
AND admdtmdtn=15;

-- Suspencion/Ret Fondos -> Despignoracion de fondos
SELECT *
FROM admdt
WHERE admdtmodn=4
AND admdtmprn=1
AND admdtmdtn=16;
--Suspencion/Ret. Fondos
UPDATE admdt
SET admdtdesc='Despignoracion de Fondos'
WHERE admdtmodn=4
AND admdtmprn=1
AND admdtmdtn=16;

-- Planilla Camara de Comensancion -> Planilla Camara de Compensacion
SELECT *
FROM admdt
WHERE admdtmodn=4
AND admdtmprn=4
AND admdtmdtn=9;
--Planilla Camara de Comensacion          
UPDATE admdt
SET admdtdesc='Planilla Camara de Compensacion'
WHERE admdtmodn=4 
AND admdtmprn=4 
AND admdtmdtn=9;

-- Cambiar Reportes Historicos -> Procesos Especiales
unload TO admpr_Contact.txt
SELECT *
FROM admpr
WHERE admprmodn=4 
AND admprmprn=7;
--Reportes Historicos
UPDATE admpr
SET admprdesc='Procesos Especiales'
WHERE admprmodn=4
AND admprmprn=7;

SELECT *
FROM admdt
WHERE admdtmodn = 4
AND admdtmprn = 1
AND admdtmdtn = 6
ORDER BY 1,2,3;

--|4|1|6|Pago de Chqs Suc/Corrsp.|fglgo /backup/bexe/cct324|1|1|cct324|PHP/cct324.html
DELETE admdt
WHERE admdtmodn = 4
AND admdtmprn = 1
AND admdtmdtn = 6;

SELECT *
FROM admdt
WHERE admdtmodn = 4
AND admdtmprn = 1
AND admdtmdtn = 14
ORDER BY 1,2,3;

--|4|1|14|Rechazo cheques ajenos|fglgo /backup/bexe/cc386||1|1|cc386|PHP/cct386.html
DELETE admdt
WHERE admdtmodn = 4
AND admdtmprn = 1
AND admdtmdtn = 14;

SELECT *
FROM admdt
WHERE admdtmodn = 4
AND admdtmprn = 2
AND admdtmdtn = 9
ORDER BY 1,2,3;

--|4|2|9|Consulta Liq. de Avances|fglgo /backup/bexe/cc529||1|1|ccr529|PHP/ccr529.html                         
DELETE admdt
WHERE admdtmodn = 4
AND admdtmprn = 2
AND admdtmdtn = 9;

SELECT *
FROM admdt
WHERE admdtmodn = 4
AND admdtmprn = 2
AND admdtmdtn = 11
ORDER BY 1,2,3;

--|4|2|11|Historico Bloq/Hab.de Cta.|fglgo /backup/bexe/cc532|1|1|ccr532|PHP/ccr532.html                                                  
DELETE admdt
WHERE admdtmodn = 4
AND admdtmprn = 2
AND admdtmdtn = 11;

SELECT *
FROM admdt
WHERE admdtmodn = 4
AND admdtmprn = 3
AND admdtmdtn = 12
ORDER BY 1,2,3;

--|4|3|12|Consulta Dep.Cheques Ajenos|fglgo /backup/bexe/cc544|1|1|ccr544|PHP/ccr544.html                                                                           
DELETE admdt
WHERE admdtmodn = 4
AND admdtmprn = 3
AND admdtmdtn = 12;

SELECT *
FROM admdt
WHERE admdtmodn = 4
AND admdtmprn = 3
AND admdtmdtn = 13
ORDER BY 1,2,3;

--|4|3|13|Consulta Dep.Cheques Propios|fglgo /backup/bexe/cc545||1|1|ccr545|PHP/ccr545.html                                                                           
DELETE admdt
WHERE admdtmodn = 4
AND admdtmprn = 3
AND admdtmdtn = 13;

SELECT *
FROM admdt
WHERE admdtmodn = 4
AND admdtmprn = 9
AND admdtmdtn = 1
ORDER BY 1,2,3;

--|4|9|1|Autorizacion Rev. Deb/Cre/Tras|fglgo /backup/bexe/cct326|1|1|cct326|PHP/cct326.html                                                                                                    
DELETE admdt
WHERE admdtmodn = 4
AND admdtmprn = 9
AND admdtmdtn = 1;

SELECT *
FROM admdt
WHERE admdtmodn = 4
AND admdtmprn = 1
AND admdtmdtn = 12
ORDER BY 1,2,3;

--|4|1|12|Pago de Cheques|fglgo /backup/bexe/cct330|1|1|cct330|PHP/cct330.html
DELETE admdt
WHERE admdtmodn = 4
AND admdtmprn = 1
AND admdtmdtn = 12;

SELECT *FROM admdt WHERE admdtmodn = 4 AND admdtmprn = 4 AND admdtmdtn = 13
--|4        |4        |13       |Detalle Trans. por Usuario              |fglgo /backup/bexe/cc566                |                                        |1        |1        |ccr566                                                                                              |PHP/ccr566.html                         |
DELETE admdt WHERE admdtmodn = 4 AND admdtmprn = 4 AND admdtmdtn = 13

SELECT *FROM admdt WHERE admdtmodn = 4 AND admdtmprn = 5 AND admdtmdtn = 8
--|4|5|8|Cuadre Contable Avances Mes             |fglgo /backup/bexe/cc530                |                                        |1|1|ccr530                                                                                              |PHP/ccr530.html                         |
DELETE admdt WHERE admdtmodn = 4 AND admdtmprn = 5 AND admdtmdtn = 8

SELECT *FROM admdt WHERE admdtmodn = 4 AND admdtmprn = 5 AND admdtmdtn = 4
--|4|5|4|Cuadre Contable de Avances Diarios      |fglgo /backup/bexe/cc528                |                                        |1|1|ccr528                                                                                              |PHP/ccr528.html                         |
DELETE admdt WHERE admdtmodn = 4 AND admdtmprn = 5 AND admdtmdtn = 4

SELECT *FROM admod WHERE admodmodn=4
INSERT INTO admod (admodmodn,admoddesc,admoddisp,admodnimg,admodnser,admodakey,admodstat) VALUES (4,'Cuentas Corrientes                      ','CC             ',NULL,'3                   ',NULL,10);

SELECT *FROM admpr WHERE admprmodn = 6 AND admprmprn = 16
DELETE admpr  WHERE admprmodn = 6 AND admprmprn = 16
INSERT INTO admpr (admprmodn,admprmprn,admprdesc,admprnimg) VALUES (6,16,'Cuentas Corrientes                      ',NULL);
UPDATE admpr SET admprdesc = 'Cuentas Corrientes' 
WHERE admprmodn = 6 AND admprmprn = 16

SELECT *FROM admpr WHERE admprmodn = 6 AND admprmprn = 15
--Reportes de Parametros                  
UPDATE admpr SET admprdesc = 'Reportes de Parametros' 
WHERE admprmodn = 6 AND admprmprn = 15

SELECT *FROM admdt WHERE admdtmodn = 6 AND admdtmprn = 16
DELETE admdt WHERE admdtmodn = 6 AND admdtmprn = 16
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,1,'Pago de Cheques                         ','fglgo /backup/bexe/cct330               ',NULL,'1',1,'cct330                                                                                              ','PHP/cct330.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,2,'Deposito de Efectivo Bs.                ','fglgo /backup/bexe/cct332               ',NULL,'1',1,'cct332                                                                                              ','PHP/CCT332.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,3,'Deposito de Efectivo $us.               ','fglgo /backup/bexe/cct333               ',NULL,'1',1,'cct333                                                                                              ','PHP/CCT333.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,4,'Deposito Chq.Propios Bs.                ','fglgo /backup/bexe/cct336               ',NULL,'1',1,'cct336                                                                                              ','PHP/CCT336.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,5,'Deposito Chq.Propios $us.               ','fglgo /backup/bexe/cct337               ',NULL,'1',1,'cct337                                                                                              ','PHP/CCT337.html                         ');
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,8,'Dep.Chq.Ajenos Bs.F.Hora                ','fglgo /backup/bexe/cc342                ',NULL,'1',1,'cc342                                                                                               ',NULL);
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,9,'Dep.Chq.Ajenos $us.F.Hora               ','fglgo /backup/bexe/cc343                ',NULL,'1',1,'cc343                                                                                               ',NULL);
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,10,'Deposito Cheques de Gerencia            ','fglgo /backup/bexe/cgt332               ',NULL,'1',1,'cgt332                                                                                              ',NULL);
INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) VALUES (6,16,99,'Volver al Menu Anterior                 ',NULL,NULL,'1',NULL,NULL,NULL);

