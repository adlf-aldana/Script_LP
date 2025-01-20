SELECT *FROM admod
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
VALUES('1009387022', '096-050-0012', '71190'); 
SELECT *FROM admod order BY 1


----------------------------------------------------------------
-- COMISIONES PRODUCTOS DEFINIDOS
SELECT UNIQUE 96,"096"||"-"||LPAD(feconpref,3,"0")||"-"||LPAD(feconcorr,4,"0"), fecondesc, RPAD(TRIM( NVL(feconabre,"0")),8,"0")
FROM fecon
WHERE feconpref = 53 
  AND feconcorr > 0;
 
UNLOAD TO fecon_53.txt
SELECT *
FROM fecon 
WHERE feconpref >= 50--53
ORDER BY 1,2,3;

LOAD FROM fecon_53.TXT INSERT INTO fecon;
SELECT *FROM admod

SELECT *
FROM fersu;

INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,0,'SERVICIOS FACTURADOS',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,1,'SERVICIOS FINANCIEROS                                                                                                                                                                                                                                     ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,2,'SERVICIO DE CAJEROS                                                                                                                                                                                                                                       ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,3,'COMISIONES POR SERVICIO DE COBRANZA                                                                                                                                                                                                                       ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,4,'TRANSACCIONES REALIZADAS EN ATM                                                                                                                                                                                                                           ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,5,'SEGURO DE TARJETAS                                                                                                                                                                                                                                        ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,6,'RECUPERACIOENS OTROS CONCEPTOS                                                                                                                                                                                                                            ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,7,'COMISIONES CUOTA EMISOR                                                                                                                                                                                                                                   ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,8,'COMISION CORRESPONSAL                                                                                                                                                                                                                                     ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,9,'VENTA DE ACTIVOS                                                                                                                                                                                                                                          ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,11,'COMISIONES VARIAS                                                                                                                                                                                                                                         ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (50,12,'COMISIONES ENTEL',NULL,0);