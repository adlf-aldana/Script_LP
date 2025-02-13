
CREATE TABLE tbase:informix.teqrg_dbs03 (
	teqrgidqr char(20) NOT NULL,
	teqrgcage integer,
	teqrgnomb char(60),
	teqrgndid char(15),
	teqrgcdes decimal(5,0),
	teqrgctad char(15),
	teqrgnmod smallint,
	teqrgcmon smallint,
	teqrgmone char(3),
	teqrgimpo decimal(8,2),
	teqrgglos char(60),
	teqrgfexp date,
	teqrgunic char(1),
	teqrgcsrv integer,
	teqrglibr char(30),
	teqrgncrt char(35),
	teqrgstat smallint,
	teqrgcont integer,
	teqrguser char(3),
	teqrghora char(8),
	teqrgfpro date,
	teqrguosi char(30),
	teqrgrb64 varchar
);



load FROM teqrg_dbs03.txt INSERT INTO teqrg_dbs03


SELECT *
FROM teqrg a
WHERE a.teqrgfpro = '2025-02-02'
AND EXISTS (SELECT *
			FROM teqrg_dbs03 b
			WHERE b.teqrgrb64 = a.teqrgrb64)

SELECT *
FROM teqrg a
WHERE a.teqrgfpro = '2025-02-02'
AND NOT EXISTS (SELECT *
			FROM teqrg_dbs03 b
			WHERE b.teqrgrb64 = a.teqrgrb64
			AND b.teqrgfpro = '2025-02-02'
			AND a.teqrguser = b.teqrguser
			AND a.teqrghora = b.teqrghora
			AND a.teqrgctad = b.teqrgctad )
			


			
			SELECT *
			FROM teqrg_dbs03 b
			WHERE teqrguser = 'Jha'
			ORDER BY teqrgrb64
