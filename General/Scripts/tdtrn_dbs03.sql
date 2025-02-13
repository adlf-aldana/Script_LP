CREATE TABLE tbase:informix.tdtrn_dbs03 (
	tdtrnntra char(7),
	tdtrnntrj char(19) NOT NULL,
	tdtrnttrn smallint NOT NULL,
	tdtrnftra char(10) NOT NULL,
	tdtrniorg decimal(14,2),
	tdtrnmorg smallint,
	tdtrniaju decimal(14,2),
	tdtrnimpt decimal(14,2) NOT NULL,
	tdtrncmon smallint,
	tdtrntcam decimal(9,2) NOT NULL,
	tdtrnicbk decimal(14,2),
	tdtrntorg integer,
	tdtrnacep char(60),
	tdtrnstat smallint NOT NULL,
	tdtrnncaj char(8),
	tdtrnb037 decimal(12,0),
	tdtrnb035 char(40),
	tdtrnplaz smallint,
	tdtrnfpro date,
	tdtrnhora char(8)
);

load FROM tdtrn_dbs03.txt INSERT INTO tdtrn_dbs03;

SELECT *
FROM tdtrn a
WHERE a.tdtrnfpro = today
AND EXISTS (SELECT *
			FROM tdtrn_dbs03 b
			WHERE b.tdtrnfpro = a.tdtrnfpro
			AND b.tdtrnntrj = a.tdtrnntrj
			AND b.tdtrnimpt = a.tdtrnimpt);

SELECT *
FROM tdtrn_dbs03 a
WHERE a.tdtrnfpro = today
AND NOT EXISTS (SELECT *
			FROM tdtrn b
			WHERE b.tdtrnfpro = a.tdtrnfpro
			AND b.tdtrnntrj = a.tdtrnntrj
			AND b.tdtrnimpt = a.tdtrnimpt);

DELETE tdtrn_dbs03

INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54810 ','600011539          ',1,'0202085111',100.00,1,NULL,100.00,1,0.00,NULL,927725,'CALLE ESPA#A S111 ESQ.HCOCHABAMBA     BOCBB464              ',0,'CBB464  ',436,'5242912210113307=270322013810324        ',30,'2025-02-02','08:50:06');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54828 ','600011636          ',1,'0202120214',400.00,1,NULL,400.00,1,0.00,NULL,203327,'CALLE ESPA#A S111 ESQ.HCOCHABAMBA     BOCBB464              ',0,'CBB464  ',438,'5242912210114271=270322018709805        ',30,'2025-02-02','12:01:09');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54831 ','600011636          ',6,'0202124044',120.00,1,NULL,120.00,1,0.00,NULL,279556,'ESTETICA COPACABANA SM   COCHABAMBA   BO06391501            ',0,'06391501',503312005877,'5242912210114271=270322018709805        ',30,'2025-02-02','12:39:39');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54822 ','600011799          ',6,'0202105400',15.07,1,NULL,15.07,1,0.00,NULL,86172,'FARMACORP ORURO AV.VILLARORURO        BO07142802            ',0,'07142802',503310000815,'5242912210115906=270322019242421        ',30,'2025-02-02','10:53:04');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54818 ','600012914          ',6,'0202095407',89.50,1,NULL,89.50,1,0.00,NULL,562,'PIL SARCO CBBA           COCHABAMBA   BO04140905            ',0,'04140905',503309047455,'5242910210149057=270922010963484        ',30,'2025-02-02','09:53:05');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54820 ','600013546          ',1,'0202103006',20.00,1,NULL,20.00,1,0.00,NULL,51141,'C.MARISCAL SC AV.25 DE TRINIDAD       BOTRN125              ',0,'TRN125  ',5262,'5242911210126293=270922012727941        ',80,'2025-02-02','10:29:02');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54815 ','600013563          ',1,'0202093335',1000.00,1,NULL,1000.00,1,0.00,NULL,974936,'C.MARISCAL SC AV.25 DE TRINIDAD       BOTRN125              ',0,'TRN125  ',5257,'5242911210126467=270922011662637        ',80,'2025-02-02','09:32:31');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54816 ','600013563          ',1,'0202093502',1000.00,1,NULL,1000.00,1,0.00,NULL,976574,'C.MARISCAL SC AV.25 DE TRINIDAD       BOTRN125              ',0,'TRN125  ',5258,'5242911210126467=270922011662637        ',80,'2025-02-02','09:33:58');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54817 ','600013563          ',1,'0202093645',1000.00,1,NULL,1000.00,1,0.00,NULL,978605,'C.MARISCAL SC AV.25 DE TRINIDAD       BOTRN125              ',0,'TRN125  ',5259,'5242911210126467=270922011662637        ',80,'2025-02-02','09:35:41');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54809 ','600013615          ',1,'0202084512',350.00,1,NULL,350.00,1,0.00,NULL,921291,'C.MARISCAL SC AV.25 DE TRINIDAD       BOTRN125              ',0,'TRN125  ',5255,'5242911210126988=270922016961799        ',80,'2025-02-02','08:44:17');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54827 ','600013622          ',1,'0202114716',50.00,1,NULL,50.00,1,0.00,NULL,175599,'AV.DR.JUAN DE DIOS ES.ATRINIDAD       BOTRN127              ',0,'TRN127  ',2316,'5242911210127051=270922016861831        ',80,'2025-02-02','11:46:11');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54833 ','600014348          ',1,'0202131319',400.00,1,NULL,400.00,1,0.00,NULL,345844,'AV.FERNANDEZ MOLINA N.0PANDO          BOPND105              ',0,'PND105  ',2688,'5242910210157480=271122012174481        ',90,'2025-02-02','13:12:14');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54830 ','600014702          ',6,'0202122310',300.00,1,NULL,300.00,1,0.00,NULL,244735,'CHICKEN S KINGDOM 13     COCHABAMBA   BO05075901            ',0,'05075901',503312011538,'5242910210161045=271122016323076        ',30,'2025-02-02','12:22:08');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54806 ','600015127          ',1,'0202073401',50.00,1,NULL,50.00,1,0.00,NULL,861758,'C.MARISCAL SC AV.25 DE TRINIDAD       BOTRN125              ',0,'TRN125  ',5253,'5242910210165285=270422018129550        ',80,'2025-02-02','07:32:56');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54813 ','600015904          ',1,'0202092023',200.00,1,NULL,200.00,1,0.00,NULL,959620,'AV.FERNANDEZ MOLINA N.0PANDO          BOPND105              ',0,'PND105  ',2677,'5242910210173057=270422019442098        ',90,'2025-02-02','09:19:19');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54834 ','600016642          ',1,'0202140544',1000.00,1,NULL,1000.00,1,0.00,NULL,448055,'AV.FERNANDEZ MOLINA N.0PANDO          BOPND105              ',0,'PND105  ',2689,'5242910210180433=270422018765942        ',90,'2025-02-02','14:04:39');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54824 ','600016834          ',1,'0202112333',50.00,1,NULL,50.00,1,0.00,NULL,132852,'AV.GERMAN BUSH N.65    TRINIDAD       BOTRN128              ',0,'TRN128  ',6076,'5242910210182355=270422016449416        ',80,'2025-02-02','11:22:33');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54826 ','600017115          ',1,'0202114231',300.00,1,NULL,300.00,1,0.00,NULL,166445,'AV.FERNANDEZ MOLINA N.0PANDO          BOPND105              ',0,'PND105  ',2684,'5242910210185168=270422018594239        ',90,'2025-02-02','11:41:26');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54811 ','600017284          ',1,'0202085541',100.00,1,NULL,100.00,1,0.00,NULL,932658,'AV.FERNANDEZ MOLINA N.0PANDO          BOPND105              ',0,'PND105  ',2675,'5242910210186851=270422014235761        ',90,'2025-02-02','08:54:36');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54823 ','600017298          ',1,'0202105824',500.00,1,NULL,500.00,1,0.00,NULL,92998,'AV.FERNANDEZ MOLINA N.0PANDO          BOPND105              ',0,'PND105  ',2682,'5242910210186992=270422018740782        ',90,'2025-02-02','10:57:19');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54821 ','600017299          ',1,'0202105148',200.00,1,NULL,200.00,1,0.00,NULL,82821,'AV.FERNANDEZ MOLINA N.0PANDO          BOPND105              ',0,'PND105  ',2681,'5242910210187008=270422011620162        ',90,'2025-02-02','10:50:43');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54832 ','600017332          ',6,'0202125028',25.00,1,NULL,25.00,1,0.00,NULL,299081,'MINI MARKET ROJ        SANTA CRUZ    BOL10634082            ',0,'10634082',503316010885,'5242910210187339=270422016986043        ',30,'2025-02-02','12:49:27');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54812 ','600017334          ',1,'0202091644',200.00,1,NULL,200.00,1,0.00,NULL,955621,'AV.FERNANDEZ MOLINA N.0PANDO          BOPND105              ',0,'PND105  ',2676,'5242910210187354=270422011744542        ',90,'2025-02-02','09:15:39');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54814 ','600017334          ',1,'0202092903',60.00,1,NULL,60.00,1,0.00,NULL,969697,'AV.FERNANDEZ MOLINA N.0PANDO          BOPND105              ',0,'PND105  ',2679,'5242910210187354=270422011744542        ',90,'2025-02-02','09:27:59');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54807 ','600017417          ',1,'0202082326',620.00,1,NULL,620.00,1,0.00,NULL,899142,'AV.GERMAN BUSH N.65    TRINIDAD       BOTRN128              ',0,'TRN128  ',6074,'5242910210188188=270422014843886        ',80,'2025-02-02','08:22:22');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54825 ','600017602          ',6,'0202102359',2.99,2,NULL,2.99,2,0.00,NULL,133620,'WL *STEAM PURCHASE     425-889-9642  USA00473607            ',0,'00473607',503354286405,NULL,30,'2025-02-02','11:22:55');
INSERT INTO tdtrn_dbs03 (tdtrnntra,tdtrnntrj,tdtrnttrn,tdtrnftra,tdtrniorg,tdtrnmorg,tdtrniaju,tdtrnimpt,tdtrncmon,tdtrntcam,tdtrnicbk,tdtrntorg,tdtrnacep,tdtrnstat,tdtrnncaj,tdtrnb037,tdtrnb035,tdtrnplaz,tdtrnfpro,tdtrnhora) VALUES ('E54829 ','600017638          ',4,'0202120650',300.00,1,NULL,300.00,1,0.00,NULL,212465,'OILAN TEJERINA N.1TARIJA         BO     TRJ161              ',0,'TRJ161  ',4432,'5242910210190390=270422010977875        ',30,'2025-02-02','12:05:48');
