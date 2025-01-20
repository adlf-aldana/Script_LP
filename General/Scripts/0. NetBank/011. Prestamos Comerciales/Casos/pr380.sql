-- Nueva tabla
SELECT *
FROM prcgl;
-- 64298
SELECT *
FROM prmpr 
WHERE prmpruser = 'AMY';

SELECT *
FROM prtdt 
WHERE prtdtuser = 'AMY' 
AND prtdtfpro = '2023-04-27';

--CAMBIO ESTADO /Afecta cierre diario pr380
SELECT *
FROM prces
WHERE prcesfpro >= '2023-04-27';

SELECT *FROM prcon ORDER BY 1,2
SELECT *FROM prmpr WHERE prmprnpre IN (10045550,
10045637,
10048279,
10048491,
18080124,
19037159)

SELECT *FROM prtdt WHERE prtdtnpre = 10045637 AND prtdtftra >= '2023-01-01' ORDER BY 5

--CARGOS / Afecta cierre diario pr380
SELECT *
FROM prcgc 
WHERE prcgcmrcb = 0
ORDER BY prcgcfpro DESC, 1;

SELECT *
FROM prtcn 
ORDER BY prtcnfpro DESC 

-- TASA PRESTAMO
SELECT *
FROM prtsa
ORDER BY prtsafpro DESC 