-- comisiones de acreditivos
SELECT UNIQUE 13,"013"||"-"||"000"||"-"||LPAD(aicctccrg,4,"0"),aicctdesc, aicctcctb
FROM aicct, cnrip
WHERE aicctcctb BETWEEN cnripcini AND  cnripcfin
  AND aicctmiva="S"

 SELECT *FROM iplvt WHERE iplvtmodn = 13
 SELECT *FROM aicct 