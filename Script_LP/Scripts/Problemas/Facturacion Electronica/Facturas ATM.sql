SELECT *
FROM iplvt
WHERE iplvtnfac IN (1902,1910,1911,1914,1915,1925,1926,1930)
AND iplvtftra >= '2023-11-01'

SELECT fehfeiddf,
	fehfenfac,
	fehfemtot,
	fehfemrcb,
	fehfestat,
	fehfetres
FROM fehfe
WHERE fehfenfac IN (1902,1910,1911,1914,1915,1925,1926,1930)
AND fehfefreg >= '2023-11-01'

SELECT fehfeiddf,
	fehfenfac,
	fehfemtot,
	fehfemrcb,
	fehfestat,
	fehfetres
FROM fehfe
WHERE fehfenfac IN (4214,1902)
AND fehfefreg >= '2023-11-01'

SELECT felvtfpro,
	felvtnfac,
	felvtnomb,
	felvtnufg,
	felvtimpt,
	felvtnopr,
	felvtntra,
	felvtstat
FROM felvt
WHERE felvtnfac IN (1902,1910,1911,1914,1915,1925,1926,1930)
AND felvtftra >= '2023-11-01'

SELECT catrnntra,
	catrnftra,
	catrnncta,
	catrnimpo,
	catrncmon,
	catrnuser, 
	catrnhora,
	catrntorg
FROM catrn
WHERE catrnncta IN (3051905708,
5051279672,
5051279672,
9051258030,
3051669964,
3051967108,
3051022988)
AND catrnftra >= '2023-11-01'
ORDER BY 3,1;

unload TO camca_3051905708.txt
SELECT *
FROM camca 
WHERE camcancta = 3051905708;

unload TO capig_3051905708.txt
SELECT *
FROM capig
WHERE capigncta = 3051905708;

unload TO tdpig_3051905708.txt
SELECT *
FROM informix.tdpig 
WHERE tdpigcdes = 3051905708
AND tdpigftra = '2023-11-01';

unload TO tdtrn_3051905708.txt
SELECT *
FROM tdtrn
WHERE tdtrntorg = 671714;

SELECT felvtfpro,
	felvtnfac,
	felvtnomb,
	felvtnufg,
	felvtimpt,
	felvtnopr,
	felvtntra,
	felvtstat

unload TO felvt_3051905708.txt
SELECT *
FROM felvt
WHERE felvtntra = 28900155;

unload TO fehfe_3051905708.txt
SELECT *
FROM fehfe 
WHERE fehfenfac IN (4214,
1902)
AND fehfefreg >= '2023-11-01';