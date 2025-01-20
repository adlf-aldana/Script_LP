--600008819 ULTIMO

SELECT *FROM tdmtd WHERE tdmtdntrj = '600009048'

SELECT *FROM tdmtd WHERE tdmtdntrj = '600009048'
SELECT *FROM tdpan WHERE tdpanntrj = '600009048';

--8819
SELECT *FROM tdtct WHERE tdtctntrj = '600008819';

SELECT *FROM catmv ORDER BY 1,2

unload TO tdpan_contact.txt
SELECT *
FROM tdpan
WHERE tdpanpano LIKE '%8188%'

--3051913664
UPDATE tdtct
SET tdtctncta = '3051913664'
WHERE tdtctntrj = '600008819'

SELECT *FROM camca WHERE camca
SELECT *FROM ccmcc 

--30/04/2023
UPDATE tdmtd
SET tdmtdfexp = '2025-01-31'--'2025-01-31'
WHERE tdmtdntrj = '600009048'

unload TO tdpan.txt
SELECT *FROM tdpan WHERE tdpanntrj = 600009048

--524291XXXXXX0440
UPDATE tdpan
SET tdpanpano = '524291XXXXXX8188'
WHERE tdpanntrj = 600009048

SELECT *FROM camca WHERE camcacage = 359160
SELECT sum(catrnimpo) FROM catrn WHERE catrnncta = 3051920851

/* GUMIEL */
SELECT *FROM camca WHERE camcacage = 39139
SELECT sum(catrnimpo) FROM catrn WHERE catrnncta = 3051636967
--600009048          
UPDATE tdmtd
SET tdmtdntrj = '600019048'
WHERE tdmtdntrj = '600009048'          
--BK
SELECT *FROM tdmtd WHERE tdmtdntrj = '600007803'          --tdmtdcage = 39139
INSERT INTO tdmtd (tdmtdntrj,tdmtdtipo,tdmtdcage,tdmtdtitu,tdmtdnomb,tdmtdapel,tdmtdfapt,tdmtdnano,tdmtdfexp,tdmtdfipe,tdmtdctrp,tdmtdttrp,tdmtdctrd,tdmtdttrd,tdmtdcren,tdmtdfreg,tdmtdstat,tdmtdfemb,tdmtdmemb,tdmtdmdeb,tdmtduaut,tdmtdfaut,tdmtdhaut,tdmtduser,tdmtdhora,tdmtdfpro,tdmtdgptj,tdmtdcprp,tdmtdtprp,tdmtdcprd,tdmtdtprd,tdmtdlote,tdmtdcwrp,tdmtdtwrp,tdmtdcwrd,tdmtdtwrd) 
VALUES ('600007803          ',1,39139,'SR  ','CRISTIAN       ','GUMIAL         ','2019-12-01',5,'2024-12-31','2021-09-13',1,28.69,0,0.00,0,'2020-02-03',1,'2019-12-27',NULL,NULL,NULL,NULL,NULL,'CPA','16:12:55','2019-12-27',1,0,0.00,0,0.00,NULL,0,0.00,0,0.00);

SELECT *FROM ccmcc WHERE ccmccncta = 3041000102
SELECT *FROM cctrn WHERE cctrnncta = 3041000102
SELECT *FROM ccpig WHERE ccpigncta = 3041000102
/*
 * 600000895          
 * 01/07/2017
 * 5
 * 31/07/2022
 * */
/*
SET tdmtdntrj = '600009048',
tdmtdfapt = '2021-02-01',
tdmtdnano = 4,
tdmtdfexp = '2025-01-31'
*/
UPDATE tdmtd
SET tdmtdntrj = '600009048',
tdmtdfapt = '2021-02-01',
tdmtdnano = 4,
tdmtdfexp = '2025-01-31'
WHERE tdmtdntrj = '600007803'

SELECT *FROM tdpan WHERE tdpanntrj = 600000895

/* relaciones */
SELECT tdtctntrj, tdtctncta, tdtctnmod, tdtctprel 
FROM tdtct WHERE tdtctntrj IN (600010623, 600009048);
--BK
INSERT INTO tdtct (tdtctntrj,tdtctncta,tdtctnmod,tdtctprel) VALUES ('600009048          ','3041000059',4,2);
INSERT INTO tdtct (tdtctntrj,tdtctncta,tdtctnmod,tdtctprel) VALUES ('600009048          ','3051920851',5,1);

DELETE tdtct 
WHERE tdtctntrj IN ('600009048');

SELECT *FROM camca WHERE camcacage =359160;
SELECT *FROM ccmcc WHERE ccmcccage = 359160;

/* CAJAS DE AHORRO DOLARES */
SELECT *FROM camca WHERE camcacmon = 2 AND camcastat = 2 AND camcasact < '-1000'
/*
NUEVOS DOLARES
*/
SELECT *FROM catrn WHERE catrnncta = 3052921034
SELECT *FROM catrn WHERE catrnncta = 3052921046


/*
 * PASADOS
 * */
SELECT *FROM catrn WHERE catrnncta = 3052921034 ORDER BY 2
SELECT *FROM catcn WHERE catcnncta = 3052921034

SELECT *FROM cactl
SELECT *FROM ccctl

UPDATE cactl
SET cactlfcie = '2022-05-20'

SELECT *FROM catrn WHERE catrnncta = 3051920851

/* CAJAS DE AHORRO
 3051913664 - 1
3052921034 - 2
3052921046 - 3
*/
UPDATE camca
SET camcasact = '0'
WHERE camcancta IN (
3051913664,
3052921034,
3052921046,
8051260225
)
SELECT b.* FROM camca a, gbage b WHERE camcacage = gbagecage AND camcancta = 3052921046
SELECT *FROM camca WHERE camcancta = 3052921034
SELECT *FROM catrn WHERE catrnncta = 3052921034 ORDER BY catrnfpro, catrnhora
SELECT *FROM capig WHERE capigncta = 3052921034

/* CUENTAS CORRIENTES
 * 3041000102
 * 3041000114
 * */
SELECT *FROM ccmcc WHERE ccmccncta = 3052921034
									 250122019519358

SELECT *FROM catrn WHERE catrnncta = 3052921034 ORDER BY catrnfpro

SELECT *FROM uitrp ORDER BY uitrpfpro DESC 
SELECT *FROM uifou ORDER BY uifoufpro DESC ;

select *FROM adreg;
SELECT *FROM admod
SELECT *FROM informix.uicon ORDER BY 1,2

SELECT *FROM uitrp WHERE uitrpnopr = 3052921034
SELECT *FROM uifou WHERE uifounopr = 3052921034 ORDER BY uifoufpro DESC ;
SELECT *FROM uitrp WHERE uitrpmorg = 24

SELECT *FROM catrn WHERE catrnncta = 3051920851 ORDER BY 5
SELECT *FROM catcn WHERE catcnncta = 3051920851
SELECT *FROM tetrn ORDER BY tetrnfpro DESC 
