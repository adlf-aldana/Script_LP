CREATE TABLE tbase:informix.tdpig_dbs03 (
	tdpigntra char(7),
	tdpigitem smallint NOT NULL,
	tdpigftra date NOT NULL,
	tdpigttrn smallint NOT NULL,
	tdpigmdes smallint NOT NULL,
	tdpigcdes char(10) NOT NULL,
	tdpignpig integer NOT NULL,
	tdpigimpt decimal(14,2) NOT NULL,
	tdpigcmon smallint NOT NULL,
	tdpigcbio decimal(7,5),
	tdpigimpo decimal(14,2) NOT NULL,
	tdpigmone smallint NOT NULL,
	tdpigicrg decimal(14,2) NOT NULL,
	tdpigstat smallint NOT NULL,
	tdpigajus decimal(14,2),
	tdpigiitf decimal(14,2),
	tdpigtcgo decimal(7,5),
	tdpigicr1 decimal(14,2)
);

load FROM tdpig_dbs03.txt INSERT INTO tdpig_dbs03;

SELECT *
FROM tdpig a
WHERE a.tdpigftra = today
AND EXISTS (SELECT *
			FROM tdpig_dbs03 b
			WHERE b.tdpigftra = a.tdpigftra
			AND b.tdpigcdes = a.tdpigcdes
			AND b.tdpigimpt = a.tdpigimpt);

SELECT *
FROM tdpig_dbs03 a
WHERE a.tdpigftra = today
AND NOT EXISTS (SELECT *
			FROM tdpig b
			WHERE b.tdpigftra = a.tdpigftra
			AND b.tdpigcdes = a.tdpigcdes
			AND b.tdpigimpt = a.tdpigimpt);

DELETE tdpig_dbs03

INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54806 ',1,'2025-02-02',1,5,'8051268734',0,50.00,1,6.86000,50.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54807 ',1,'2025-02-02',1,5,'8051261839',0,620.00,1,6.86000,620.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54809 ',1,'2025-02-02',1,5,'8051268978',0,350.00,1,6.86000,350.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54810 ',1,'2025-02-02',1,5,'3051439151',0,100.00,1,6.86000,100.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54811 ',1,'2025-02-02',1,5,'9051052677',0,100.00,1,6.86000,100.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54812 ',1,'2025-02-02',1,5,'9051258391',0,200.00,1,6.86000,200.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54813 ',1,'2025-02-02',1,5,'9051261130',0,200.00,1,6.86000,200.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54814 ',1,'2025-02-02',1,5,'9051258391',0,60.00,1,6.86000,60.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54815 ',1,'2025-02-02',1,5,'8051152038',0,1000.00,1,6.86000,1000.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54816 ',1,'2025-02-02',1,5,'8051152038',0,1000.00,1,6.86000,1000.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54817 ',1,'2025-02-02',1,5,'8051152038',0,1000.00,1,6.86000,1000.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54818 ',1,'2025-02-02',6,5,'3051957476',0,89.50,1,6.86000,89.50,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54820 ',1,'2025-02-02',1,5,'8051263942',0,20.00,1,6.86000,20.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54821 ',1,'2025-02-02',1,5,'9051080880',0,200.00,1,6.86000,200.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54822 ',1,'2025-02-02',6,5,'3051484039',0,15.07,1,6.86000,15.07,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54823 ',1,'2025-02-02',1,5,'9051253640',0,500.00,1,6.86000,500.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54824 ',1,'2025-02-02',1,5,'8051270464',0,50.00,1,6.86000,50.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54825 ',1,'2025-02-02',6,5,'3051987158',0,2.99,2,6.97000,20.84,1,0.00,8,0.00,0.00,6.97000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54826 ',1,'2025-02-02',1,5,'9051030658',0,300.00,1,6.86000,300.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54827 ',1,'2025-02-02',1,5,'8051269714',0,50.00,1,6.86000,50.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54828 ',1,'2025-02-02',1,5,'3051623283',0,400.00,1,6.86000,400.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54829 ',1,'2025-02-02',4,5,'3051935715',0,300.00,1,6.86000,300.00,1,8.71,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54830 ',1,'2025-02-02',6,5,'3051684811',0,300.00,1,6.86000,300.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54831 ',1,'2025-02-02',6,5,'3051623283',0,120.00,1,6.86000,120.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54832 ',1,'2025-02-02',6,5,'9051263504',0,25.00,1,6.86000,25.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54833 ',1,'2025-02-02',1,5,'9051060641',0,400.00,1,6.86000,400.00,1,0.00,8,0.00,0.00,6.86000,0.00);
INSERT INTO tdpig_dbs03 (tdpigntra,tdpigitem,tdpigftra,tdpigttrn,tdpigmdes,tdpigcdes,tdpignpig,tdpigimpt,tdpigcmon,tdpigcbio,tdpigimpo,tdpigmone,tdpigicrg,tdpigstat,tdpigajus,tdpigiitf,tdpigtcgo,tdpigicr1) VALUES ('E54834 ',1,'2025-02-02',1,5,'9051258755',0,1000.00,1,6.86000,1000.00,1,0.00,8,0.00,0.00,6.86000,0.00);
