--3041000047
-- CODIGO DE BANCOS
SELECT *FROM gbbco WHERE gbbcocbco LIKE '%1009%'  ORDER BY 2

SELECT *FROM ipctl
-- FACTURACION
SELECT *FROM iplvt ORDER BY iplvtfpro DESC  WHERE iplvtnfac = 1183 AND iplvtnord = 431415200454554 --  ORDER BY iplvtfpro DESC 
SELECT *FROM iplvd ORDER BY iplvdfpro DESC;

-- EXENCIONES A CUENTAS
SELECT *FROM ipexc WHERE ipexcnmod = 17

SELECT *FROM tetrn ORDER BY tetrnfpro DESC 

SELECT *FROM prsor WHERE prsornpre = 19026618
/**/
-- boleta de garantia 195, no manda directo a factura
-- nopr 195 nfac 2462
SELECT *FROM iplvt ORDER BY iplvtfpro DESC 