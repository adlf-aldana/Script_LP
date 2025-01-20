SELECT UNIQUE 11,"011"||"-"||"000"||"-"||LPAD(avcgpccgo,4,"0"),avcgpdesc, avcgpctbl
FROM avcgp, cnrip
WHERE avcgpctbl BETWEEN cnripcini AND  cnripcfin
  AND avcgpcfis="S";
  
 
SELECT *FROM iplvt WHERE iplvtmodn = 11;
SELECT *FROM avcgp;