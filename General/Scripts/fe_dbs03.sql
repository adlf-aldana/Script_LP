SELECT *
FROM fedfe
WHERE fedfeiddf IN (22492,22493,22494)

SELECT *
FROM felvt
WHERE felvtnufg IN (22492,22493,22494)

SELECT *
FROM fehfe
WHERE fehfeiddf IN (22492,22493,22494)

load FROM fedfe_dbs03.txt INSERT INTO fedfe;
load FROM felvt_dbs03.txt INSERT INTO felvt;
load FROM fehfe_dbs03.txt INSERT INTO fehfe;

SELECT *
FROM fecdf

UPDATE fecdf
SET fecdfcorr = 506
WHERE fecdfcdse = 9
AND fecdfgest = 2025

UPDATE fecdf
SET fecdfcorr = 327
WHERE fecdfcdse = 15
AND fecdfgest = 2025

SELECT *
FROM fesrl