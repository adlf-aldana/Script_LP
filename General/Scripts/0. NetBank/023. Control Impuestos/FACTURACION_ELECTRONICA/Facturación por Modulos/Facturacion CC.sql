-- comisiones de ctas ctes cctmvpref = 40
UNION 
SELECT UNIQUE 4, "004"||"-"||LPAD(cctmvpref,3,"0")||"-"||LPAD(cctmvcorr,4,"0"), cctmvdesc, cctmvctbl
FROM cctmv, cnrip
WHERE 1=1
  AND cctmvpref = 40
  AND cctmvctbl BETWEEN cnripcini AND  cnripcfin

SELECT *FROM iplvt WHERE iplvtmodn = 4;
SELECT *FROM cctmv WHERE cctmvpref = 40