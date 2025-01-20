--FIRMAS AUTORIZADAS MOD. AGENCIA 
-- Mod General/Parametros/Firmas Autorizadas - Firmas Autorizadas Mod. Agencia
SELECT *FROM gbfma WHERE gbfmacfun=356926;

-- CARGA MASIVA DE PRE SOLICITUDES
--UPDATE ecmso set ECMSORSE2 =43026 WHERE ecmsonsol =2945
SELECT *FROM ecmso WHERE ecmsonsol=2945;
--10048331
SELECT *FROM prmpr WHERE prmprnpre=10048331;
SELECT *FROM prmpr WHERE prmprconv=2945;

SELECT *FROM gbage WHERE gbagecage=356926;