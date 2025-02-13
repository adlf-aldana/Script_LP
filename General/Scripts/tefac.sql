CREATE TABLE tbase:informix.tefac_dbs03 (
	tefacntra integer,
	tefacnomb char(60),
	tefacnruc char(15),
	tefaccmon smallint,
	tefacimpt decimal(14,2),
	tefacmrcb smallint,
	tefacuser char(20),
	tefachora char(8),
	tefacfpro date
);


load FROM tefac_dbs03_020225.txt INSERT INTO tefac_dbs03;

SELECT *
FROM tefac a
WHERE a.tefacfpro = '2025-02-02'
AND EXISTS (SELECT *
			FROM tefac_dbs03 b
			WHERE b.tefacfpro = a.tefacfpro
			AND b.tefacnruc = a.tefacnruc)

SELECT *
FROM tefac_dbs03 a
WHERE a.tefacfpro = '2025-02-02'
AND NOT EXISTS (SELECT *
			FROM tefac b
			WHERE b.tefacfpro = a.tefacfpro
			AND b.tefacnruc = a.tefacnruc
			AND b.tefachora = a.tefachora)
			
SELECT *
FROM tetrn, tefac_dbs03
WHERE tetrnndid LIKE '%7755921%'
AND tetrnftra = tefac

SELECT *
FROM tetrn_dbs03
WHERE tetrnntra = 380810


SELECT *
FROM teces
ORDER BY 1 DESC 

SELECT *
FROM tetrn
WHERE tetrnntra = 381061