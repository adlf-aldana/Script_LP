SELECT UNIQUE 5,"005"||"-"||LPAD(catmvpref,3,"0")||"-"||LPAD(catmvcorr,4,"0"), catmvdesc, catmvctbl
FROM catmv, cnrip
WHERE 1=1
  AND catmvpref = 40
  AND catmvctbl BETWEEN cnripcini AND  cnripcfin;
  
SELECT *FROM admod;

SELECT *
FROM iplvt
WHERE iplvtmodn = 5
ORDER BY iplvtfpro DESC;

SELECT catrnntra,
	catrnftra,
	catrnncta,
	catrnpref,
	catrncorr,
	catrnimpo,
	catrnimpt,
	catrncmon,
	catrnglos,
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
FROM catrn, iplvt
WHERE catrnndoc = iplvtnopr
AND catrnntra = iplvtntra
AND iplvtmodn = 5
ORDER BY iplvtfpro DESC;

SELECT *
FROM catcn
WHERE catcnntra = 28197535;

UNLOAD TO ferci_ahorro.txt SELECT *FROM ferci ORDER BY 2WHERE fercicpro LIKE '005-%';
LOAD FROM ferci_ahorro.txt INSERT INTO ferci;

INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','005-040-0001   ','71190               ');