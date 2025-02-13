CREATE TABLE tbase:informix.tdiso_dbs03 (
	tdisofech date,
	tdisobit1 char(4),
	tdisobit2 char(19),
	tdisobit3 char(6),
	tdisobit4 decimal(14,2),
	tdisobit5 decimal(14,2),
	tdisobit6 decimal(14,2),
	tdisobit7 char(10),
	tdisobit9 char(8),
	tdisobit10 decimal(9,2),
	tdisobit11 integer,
	tdisobit12 char(6),
	tdisobit13 char(4),
	tdisobit14 char(4),
	tdisobit15 char(4),
	tdisobit16 char(4),
	tdisobit18 char(4),
	tdisobit19 char(3),
	tdisobit22 char(3),
	tdisobit24 char(3),
	tdisobit25 char(2),
	tdisobit26 smallint,
	tdisobit32 char(10),
	tdisobit33 char(10),
	tdisobit35 char(39),
	tdisobit37 decimal(12,0),
	tdisobit38 char(6),
	tdisobit39 char(2),
	tdisobit41 char(8),
	tdisobit42 char(15),
	tdisobit43 char(40),
	tdisobit45 char(76),
	tdisobit48 char(1),
	tdisobit49 char(3),
	tdisobit50 char(3),
	tdisobit51 char(3),
	tdisobit52 char(16),
	tdisobit54 char(43),
	tdisobit60 char(2),
	tdisobit61 char(4),
	tdisobit62 char(175),
	tdisobit63 char(2),
	tdisobit70 char(3),
	tdisobit90 char(42),
	tdisobit95 decimal(14,2),
	tdisobit102 char(10),
	tdisobit103 char(10)
);

load FROM tdiso_dbs03.txt INSERT INTO tdiso_dbs03;

SELECT *
FROM tdiso a
WHERE a.tdisofech = today
AND EXISTS (SELECT *
			FROM tdiso_dbs03 b
			WHERE b.catcnntra = a.catcnntra
			AND b.catcnncta = a.catcnncta
			AND b.tdisobit4 = a.tdisobit4);
