-- 24405M02        
SELECT 24, "024-100-0001", " COBRO DE CARGO ATM", tdctlccic FROM tdctl
-- SELECT *FROM tdctl -- Mant. de Parametros - TDP301
SELECT *FROM fecpr

-- ATM
SELECT catrnntra,
	catrnncta,
	catrnftra,
	catrnimpo,
	catrnimpt,
	catrnglos,
	catrnstat,
	catrnuser,
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
WHERE catrnntra = iplvtntra
--AND catrncmon = 1
AND catrnuser = 'ATM'
--AND iplvtmodn = 6
ORDER BY catrnfpro DESC;

SELECT *
FROM catcn
WHERE catcnncta = 9051256068
AND catcnntra = 28200569;

UNLOAD TO ferci_atm.txt SELECT *FROM ferci WHERE fercicpro LIKE '024%';
LOAD FROM ferci_atm.txt INSERT INTO ferci;

INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','024-100-0001   ','71190               ');
