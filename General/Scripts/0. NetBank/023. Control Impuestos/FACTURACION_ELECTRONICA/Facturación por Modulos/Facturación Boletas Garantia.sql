SELECT *FROM FERCI
SELECT *FROM FECPR  


SELECT UNIQUE 8,"008"||"-"||"000"||"-"||LPAD(bgcgpccgo,4,"0"),bgcgpdesc, bgcgpctbl
FROM bgcgp, cnrip
WHERE bgcgpctbl BETWEEN cnripcini AND  cnripcfin
  AND bgcgpcfis="S"
--AND cnripnive IN (1,2,3,4,5,17)
-- SELECT *FROM bgcgp -- Cargos y Rangos de Comisiones -> BGP302
-- SELECT *FROM cnrip -- Rango de impuestos -> CNM321
 
SELECT *FROM admod;

SELECT UNIQUE 8,"008"||"-"||"053"||"-"||LPAD(bgcgpccgo,4,"0"),bgcgpdesc, bgcgpctbl
FROM bgcgp, cnrip
WHERE bgcgpctbl BETWEEN cnripcini AND  cnripcfin

SELECT *
FROM iplvt
WHERE iplvtmodn = 8
ORDER BY iplvtfpro DESC;

SELECT bgmbgnbol,
	bgmbgcmon,
	bgmbgimpo,
	bgmbgcage,
	bgmbgbene,
	bgmbgndoc,
	bgmbgfemi,
	bgmbgfvto,
	bgmbgmrcb,
	bgmbgstat,
	bgmbgnomb,
	iplvtnfac,
	iplvtnord,
	iplvtftra,
	iplvtnomb,
	iplvtimpt,
	iplvtsiva,
	iplvtideb,
	iplvttiva,
	iplvtmodn,
	iplvtnopr,
	iplvtsimp
FROM bgmbg, iplvt
WHERE bgmbgnbol = iplvtnopr
AND iplvtmodn = 8
ORDER BY iplvtfpro DESC;

SELECT *
FROM bgtcn
WHERE bgtcnnbol = 286;

UNLOAD TO ferci_bg.txt SELECT *FROM ferci WHERE fercicpro LIKE '008-%';
DELETE ferci WHERE fercicpro LIKE '008-%';
LOAD FROM ferci_bg.txt INSERT INTO ferci;

INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','008-053-0001   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','008-053-0002   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','008-053-0003   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','008-053-0004   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','008-053-0005   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','008-053-0006   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','008-053-0007   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','008-053-0008   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','008-053-0009   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','008-053-0010   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','008-053-0011   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','008-053-0012   ','71190               ');
