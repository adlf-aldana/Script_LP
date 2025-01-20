-- productos definidos en facturacion
SELECT UNIQUE 96,"096"||"-"||LPAD(feconpref,3,"0")||"-"||LPAD(feconcorr,4,"0"), fecondesc, RPAD(TRIM( NVL(feconabre,"0")),8,"0")
FROM fecon
WHERE feconpref = 53 
  AND feconcorr > 0;
 
UNLOAD TO fecon_53.txt
SELECT *
FROM fecon 
WHERE feconpref = 53
ORDER BY 1,2,3;

LOAD FROM fecon_53.TXT INSERT INTO fecon;

DELETE fecon WHERE feconpref = 53;

INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,0,'SERVICIOS FACTURADOS                                                                                                                                                                                                                                      ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,1,'SERVICIOS FINANCIEROS                                                                                                                                                                                                                                     ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,2,'SERVICIO DE CAJEROS                                                                                                                                                                                                                                       ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,3,'COMISIONES POR SERVICIO DE COBRANZA                                                                                                                                                                                                                       ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,4,'TRANSACCIONES REALIZADAS EN ATM                                                                                                                                                                                                                           ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,5,'SEGURO DE TARJETAS                                                                                                                                                                                                                                        ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,6,'RECUPERACIOENS OTROS CONCEPTOS                                                                                                                                                                                                                            ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,7,'COMISIONES CUOTA EMISOR                                                                                                                                                                                                                                   ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,8,'COMISION CORRESPONSAL                                                                                                                                                                                                                                     ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,9,'VENTA DE ACTIVOS                                                                                                                                                                                                                                          ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,10,'COMISIONES VARIAS                                                                                                                                                                                                                                         ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,11,'INGRESOS VARIOS                                                                                                                                                                                                                                           ',NULL,0);
INSERT INTO fecon (feconpref,feconcorr,fecondesc,feconabre,feconmrcb) VALUES (53,12,'COMISIONES POR SERVICIO DE COBRANZAS                                                                                                                                                                                                                      ',NULL,0);
