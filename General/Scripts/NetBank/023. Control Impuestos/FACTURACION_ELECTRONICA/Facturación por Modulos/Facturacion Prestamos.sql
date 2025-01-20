-- Comisiones Prestamos
SELECT UNIQUE 17,"017"||"-"||"000"||"-"||LPAD(prcgpcarg,4,"0"),prcgpdesc, prcgpcctb
FROM prcgp, cnrip
WHERE prcgpcctb BETWEEN cnripcini AND  cnripcfin
  AND prcgpmiva = "S";

SELECT *
FROM prcgp
WHERE prcgpmiva = "S";

SELECT *FROM prtcn WHERE prtcncctb = 54501201 ORDER BY prtcnfpro DESC   
SELECT *FROM cndtr WHERE cndtrcnta = 54501201
  
SELECT *
FROM iplvt
WHERE iplvtmodn = 17
ORDER BY iplvtfpro DESC;

UNLOAD TO ferci_prestamos.txt SELECT *FROM ferci WHERE fercicpro LIKE '017-%';
LOAD FROM ferci_prestamos.txt INSERT INTO ferci;

INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','017-000-0003   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','017-000-0004   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','017-000-0040   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','017-000-0041   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','017-000-0042   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','017-000-0043   ','71190               ');

