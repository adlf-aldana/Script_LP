-- comisiones de leasing
SELECT UNIQUE 14,"014"||"-"||"000"||"-"||LPAD(lscgpcarg,4,"0"),lscgpdesc, lscgpcctb
FROM lscgp, cnrip
WHERE 1=1 --lscgpcctb BETWEEN cnripcini AND  cnripcfin
  AND lscgpmiva = "S";
  
SELECT *FROM iplvt WHERE iplvtmodn = 14;
SELECT *FROM lscgp;

SELECT *FROM cndtr WHERE cndtrcnta = 44199101 ORDER BY cndtrfdoc DESC 