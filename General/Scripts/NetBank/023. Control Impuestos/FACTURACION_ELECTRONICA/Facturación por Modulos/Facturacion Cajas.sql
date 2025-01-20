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