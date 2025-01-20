-- CAJAS DE AHORRO
SELECT *
FROM camca 
WHERE camcacage = 359160;

SELECT *
FROM capig
WHERE capigncta = 3051913664--3051920851
AND capigstat = 0
ORDER BY 2

SELECT *
FROM catrn
WHERE catrnncta =  3051920851--3051920851--3051913664
ORDER BY 2 DESC;

SELECT *
FROM catcn
WHERE catcnncta = 3051913664--3051920851
AND catcnftra >= '2022-08-01'
ORDER BY 1 DESC;

-- CUENTAS CORRIENTES
SELECT *
FROM ccmcc
WHERE ccmcccage = 359160

UPDATE ccmcc
SET ccmccstat = 1
WHERE ccmccncta = 3041000059


---1150.00
UPDATE camca
SET camcasact = '-50000'
WHERE camcancta = 3051920851
--
UPDATE camca
SET camcatpca = 1
WHERE camcancta = 3051920851

--
SELECT *FROM tdpan WHERE tdpanntrj = 600009048 
-- BK
--INSERT INTO tdpan (tdpanntrj,tdpanpane,tdpanpano) VALUES ('600009048          ','0HOP/AAAAIA9k1At5F2ApUoSrwF1O/d7dONYtgccMPvRvwp9Wc8GwPC+Zrp2NwUFQ==                                                                                                                                     ','524291XXXXXX8188   ');
--DELETE 
--DELETE tdpan WHERE tdpanntrj = 600009048

SELECT *
FROM tdmtd
WHERE tdmtdcage = 730446;

--600010623          
SELECT tdagentrj, tdagetipo, tdageplaz, tdageagen, tdageuser, tdagehora, tdagefpro 
FROM tdage WHERE tdagentrj IN (600010623, 600009048);


SELECT tdatcline, tdatcfech, tdatcstat FROM tdatc;
SELECT tdautnaut, tdautfaut, tdauthaut, tdauttipo, tdautntrj, tdautdlog, tdautuope, tdauthope, tdautfope, tdautuser, tdauthora, tdautfpro FROM tdaut;
SELECT tdavcncta, tdavcmont FROM tdavc;
SELECT tdbinnbin, tdbindesc, tdbinstat, tdbinuser, tdbinhora, tdbinfpro FROM tdbin;
SELECT tdbunncaj, tdbunncom, tdbuncsuc, tdbunfech, tdbunhora, tdbunncta, tdbunttra, tdbuntrac, tdbuncodt, tdbunauto, tdbunmdes, tdbuncmon, tdbuncodr, tdbuncres, tdbunnbin, tdbunccgo, tdbunstat FROM tdbun;
SELECT tdcajncaj, tdcajplaz, tdcajubic, tdcajagen, tdcajreta, tdcajntar, tdcajhor1, tdcajhor2, tdcajhor3, tdcajhor4 FROM tdcaj;
SELECT tdcaunroc, tdcaunrop, tdcaucbco, tdcaunomb, tdcauttrn, tdcauttpo, tdcaucgoc, tdcaucgop, tdcaucgnf, tdcauuser, tdcauhora, tdcaufpro FROM tdcau;
SELECT tdcbrnblq, tdcbrntrj, tdcbrmrcb, tdcbruser, tdcbrhora, tdcbrfpro FROM tdcbr;
SELECT tdccontrj, tdccofech, tdccouser, tdccohora, tdccofpro FROM tdcco;
SELECT tdcecnbin, tdcecnroc, tdceccgoc, tdceccgnf, tdcecuser, tdcechora, tdcecfpro FROM tdcec;
SELECT tdcgontrj, tdcgottrj, tdcgonbin, tdcgotope, tdcgoimpt, tdcgouser, tdcgohora, tdcgofpro FROM tdcgo;
SELECT tdconpref, tdconcorr, tdcondesc, tdconabre FROM tdcon;
SELECT tdcornroe, tdcoruser, tdcorhora, tdcorfpro FROM tdcor;
SELECT tdctandoc, tdctantrj, tdctanbin, tdctammtr, tdctactrd, tdctattrd, tdctactrp, tdctattrp, tdctadper, tdctacapt, tdctacatm, tdctacpos, tdctacibc, tdctacfvi, tdctacfvp, tdctacpvi, tdctacccj, tdctaccpp, tdctaccic, tdctanser, tdctantra, tdctafulc, tdctatnfi, tdctadvco, tdctacdvo FROM tdcta;
SELECT tdctlndoc, tdctlntrj, tdctlnbin, tdctlmmtr, tdctlctrd, tdctlttrd, tdctlctrp, tdctlttrp, tdctldper, tdctlcapt, tdctlcatm, tdctlcpos, tdctlcibc, tdctlcfvi, tdctlcfvp, tdctlcpvi, tdctlcccj, tdctlccpp, tdctlccic, tdctlnser, tdctlntra, tdctlfulc, tdctltnfi, tdctldvco, tdctlcdvo, tdctlnano, tdctlcprd, tdctltprd, tdctlcprp, tdctltprp, tdctlcwrd, tdctltwrd, tdctlcwrp, tdctltwrp FROM tdctl;
SELECT tddesntra, tddesftra, tddescage, tddesnpre, tddesnlcr, tddesncta, tddesmsol, tddescmos, tddesmdes, tddescmod, tddescbio, tddesstat, tddesndes, tddesntrj, tddesnt11, tddesuser, tddeshora, tddesfpro FROM tddes;
SELECT tderrfech, tderrhora, tderrnaut, tderrncta, tderrntrj, tderrmoti FROM tderr;
SELECT tdfacntra, tdfacftra, tdfacnruc, tdfacnmod, tdfaccdes, tdfacimpt, tdfacstat, tdfacbi32, tdfacuser, tdfachora, tdfacfpro FROM tdfac;
SELECT tdgphgptj, tdgphnrop, tdgphdesc, tdgphhabi, tdgphuser, tdgphhora, tdgphfpro FROM tdgph;
-- 600010623
SELECT *FROM tdhce ORDER BY tdhcefpro DESC 
SELECT *FROM tdmtd WHERE tdmtdc
SELECT tdhcentrj, tdhcefech, tdhcesant, tdhcesact, tdhceclav, tdhcedesc, tdhceuser, tdhcehora, tdhcefpro 
FROM tdhce WHERE tdhcentrj IN (600007803, 600009048);
UPDATE tdhce
SET tdhcefech = '2021-09-17'
WHERE tdhcentrj = '600009048'        
INSERT INTO tdhce (tdhcentrj,tdhcefech,tdhcesant,tdhcesact,tdhceclav,tdhcedesc,tdhceuser,tdhcehora,tdhcefpro) VALUES ('600007803          ','2020-02-03',99,1,NULL,'INICIAL                                                                                   ','PGC','17:57:13','2020-02-03');
UPDATE tdhce
SET tdhcentrj = 600009048
WHERE tdhcentrj = 600007803          

SELECT tdhctntrj, tdhctncta, tdhctnmod, tdhctprel, tdhctuser, tdhcthora, tdhctfpro 
FROM tdhct WHERE tdhctntrj IN (600007803, 600009048);
SELECT tdhtdntrj, tdhtdtipo, tdhtdcage, tdhtdtitu, tdhtdnomb, tdhtdapel, tdhtdfapt, tdhtdnano, tdhtdfexp, tdhtdfipe, tdhtdctrp, tdhtdttrp, tdhtdctrd, tdhtdttrd, tdhtdcren, tdhtdfreg, tdhtdstat, tdhtdfemb, tdhtdmemb, tdhtdmdeb, tdhtduaut, tdhtdfaut, tdhtdhaut, tdhtduser, tdhtdhora, tdhtdfpro, tdhtdgptj, tdhtdcprp, tdhtdtprp, tdhtdcprd, tdhtdtprd, tdhtdlote, tdhtdcwrp, tdhtdtwrp, tdhtdcwrd, tdhtdtwrd 
FROM tdhtd WHERE tdhtdntrj IN (600007803, 600009048);

SELECT tdisofech, tdisobit1, tdisobit2, tdisobit3, tdisobit4, tdisobit5, tdisobit6, tdisobit7, tdisobit9, tdisobit10, tdisobit11, tdisobit12, tdisobit13, tdisobit14, tdisobit15, tdisobit16, tdisobit18, tdisobit19, tdisobit22, tdisobit24, tdisobit25, tdisobit26, tdisobit32, tdisobit33, tdisobit35, tdisobit37, tdisobit38, tdisobit39, tdisobit41, tdisobit42, tdisobit43, tdisobit45, tdisobit48, tdisobit49, tdisobit50, tdisobit51, tdisobit52, tdisobit54, tdisobit60, tdisobit61, tdisobit62, tdisobit63, tdisobit70, tdisobit90, tdisobit95, tdisobit102, tdisobit103 FROM tdiso;
SELECT tdlincodt, tdlinncta, tdlinnref, tdlinftra, tdlinmdes, tdlincmon, tdlinmfte, tdlincmof, tdlinncom, tdlinccom, tdlinpcom, tdlincate, tdlincuso, tdlintliq, tdlinauto, tdlinccgo, tdlinfech, tdlinstat FROM tdlin;
SELECT tdmaentja, tdmaentrj, tdmaetipo, tdmaecage, tdmaetitu, tdmaenomb, tdmaeapel, tdmaefapt, tdmaenano, tdmaefexp, tdmaefipe, tdmaectrp, tdmaettrp, tdmaectrd, tdmaettrd, tdmaecren, tdmaefreg, tdmaestat, tdmaefemb, tdmaencta FROM tdmae;
SELECT tdmaxntrj, tdmaxtopr, tdmaxctrd, tdmaxttrd, tdmaxctrp, tdmaxttrp, tdmaxdesc, tdmaxmrcb, tdmaxuser, tdmaxhora, tdmaxfpro, tdmaxfini, tdmaxffin FROM tdmax;
SELECT tdmpcplaz, tdmpccten, tdmpcncen, tdmpcdapr, tdmpcdmpr, tdmpcaprd, tdmpcdpto, tdmpcloca, tdmpcnred, tdmpcntri, tdmpcntrc, tdmpcntrs, tdmpcntrn, tdmpcmtrn, tdmpcntde, tdmpcntce, tdmpcntpe, tdmpcnchb, tdmpcnchm, tdmpcncat, tdmpcncac, tdmpcncap, tdmpcnret, tdmpcnrec, tdmpcnrep, tdmpcmchb, tdmpcmche, tdmpcmcat, tdmpcmcac, tdmpcmacp, tdmpcmret, tdmpcmrec, tdmpcmrep, tdmpcuser, tdmpchora, tdmpcfpro FROM tdmpc;
SELECT tdmsaagen, tdmsastot, tdmsastin, tdmsastut, tdmsastmi FROM tdmsa;

SELECT tdmtdntrj, tdmtdtipo, tdmtdcage, tdmtdtitu, tdmtdnomb, tdmtdapel, tdmtdfapt, tdmtdnano, tdmtdfexp, tdmtdfipe, tdmtdctrp, tdmtdttrp, tdmtdctrd, tdmtdttrd, tdmtdcren, tdmtdfreg, tdmtdstat, tdmtdfemb, tdmtdmemb, tdmtdmdeb, tdmtduaut, tdmtdfaut, tdmtdhaut, tdmtduser, tdmtdhora, tdmtdfpro, tdmtdgptj, tdmtdcprp, tdmtdtprp, tdmtdcprd, tdmtdtprd, tdmtdlote, tdmtdcwrp, tdmtdtwrp, tdmtdcwrd, tdmtdtwrd 
FROM tdmtd WHERE tdmtdntrj IN (600007803, 600009048);
INSERT INTO tdmtd (tdmtdntrj,tdmtdtipo,tdmtdcage,tdmtdtitu,tdmtdnomb,tdmtdapel,tdmtdfapt,tdmtdnano,tdmtdfexp,tdmtdfipe,tdmtdctrp,tdmtdttrp,tdmtdctrd,tdmtdttrd,tdmtdcren,tdmtdfreg,tdmtdstat,tdmtdfemb,tdmtdmemb,tdmtdmdeb,tdmtduaut,tdmtdfaut,tdmtdhaut,tdmtduser,tdmtdhora,tdmtdfpro,tdmtdgptj,tdmtdcprp,tdmtdtprp,tdmtdcprd,tdmtdtprd,tdmtdlote,tdmtdcwrp,tdmtdtwrp,tdmtdcwrd,tdmtdtwrd) VALUES ('600009048          ',0,0,NULL,'               ','               ','2021-02-01',4,'2025-01-31',NULL,0,0.00,0,0.00,0,'2021-04-07',99,'2021-04-07',NULL,NULL,NULL,NULL,NULL,'RET','12:25:38','2021-04-07',1,0,0.00,0,0.00,4,0,0.00,0,0.00);
INSERT INTO tdmtd (tdmtdntrj,tdmtdtipo,tdmtdcage,tdmtdtitu,tdmtdnomb,tdmtdapel,tdmtdfapt,tdmtdnano,tdmtdfexp,tdmtdfipe,tdmtdctrp,tdmtdttrp,tdmtdctrd,tdmtdttrd,tdmtdcren,tdmtdfreg,tdmtdstat,tdmtdfemb,tdmtdmemb,tdmtdmdeb,tdmtduaut,tdmtdfaut,tdmtdhaut,tdmtduser,tdmtdhora,tdmtdfpro,tdmtdgptj,tdmtdcprp,tdmtdtprp,tdmtdcprd,tdmtdtprd,tdmtdlote,tdmtdcwrp,tdmtdtwrp,tdmtdcwrd,tdmtdtwrd) VALUES ('600010623          ',1,359160,'SR  ','ADOLFO         ','ALDANA         ','2022-05-01',1,'2023-04-30','2022-10-11',0,0.00,0,0.00,0,'2022-05-23',1,'2022-05-23',NULL,NULL,NULL,NULL,NULL,'AMY','13:57:13','2022-10-10',1,0,0.00,0,0.00,NULL,0,0.00,0,0.00);

UPDATE tdmtd
SET tdmtdfapt = '2021-02-01',
tdmtdnano = 4,
tdmtdntrj = 600009048,
tdmtdfreg = '2021-04-07',
tdmtdfemb = '2021-04-07',
tdmtdfpro = '2021-04-07',
tdmtdlote = 4
WHERE tdmtdcage = 359160

SELECT *FROM tdmtd WHERE tdmtdtipo = 1 ORDER BY tdmtdfpro DESC 

UPDATE tdmtd
SET tdmtdntrj = '600009048XXX'
WHERE tdmtdcage = 0
AND tdmtdntrj = '600009048'

SELECT tdofinofi, tdofidesc, tdofictbl, tdofiadic, tdofihost, tdofipais, tdofidpto, tdoficprv, tdoficiud, tdofizona, tdofidire, tdofiplaz, tdofimcen, tdofimrcb, tdofides1, tdofides2, tdofides3, tdofides4, tdofipref FROM tdofi;


SELECT tdpanntrj, tdpanpane, tdpanpano 
FROM tdpan WHERE tdpanntrj IN (600007803, 600009048);

SELECT tdpigntra, tdpigitem, tdpigftra, tdpigttrn, tdpigmdes, tdpigcdes, tdpignpig, tdpigimpt, tdpigcmon, tdpigcbio, tdpigimpo, tdpigmone, tdpigicrg, tdpigstat, tdpigajus, tdpigiitf, tdpigtcgo, tdpigicr1 
FROM tdpig WHERE tdpigcdes = 3051636967;

SELECT tdpmtntrj, tdpmtimpt, tdpmtanio, tdpmtnmes, tdpmtmrcb, tdpmtuser, tdpmthora, tdpmtfpro FROM tdpmt;
SELECT tdregnser, tdregcage, tdregntrj, tdregmoti, tdreguser, tdregfpro, tdreghora FROM tdreg;
SELECT tdrennren, tdrenntrj, tdrenfina, tdrenffia, tdrenfpro FROM tdren;
SELECT tdsemnsol, tdsemftra, tdsemtsol, tdsemntrj, tdsemmdeb, tdsemuaut, tdsemfaut, tdsemnmod, tdsemncta, tdsemtorg, tdsemimpt, tdsemcmon, tdsemstat, tdsemfeem, tdsemmrcb, tdsemagen, tdsemuser, tdsemhora, tdsemfpro FROM tdsem;
SELECT tdsercmpo, tdserncor, tdsermrcb FROM tdser;
SELECT tdsrltabl, tdsrlcorr FROM tdsrl;
SELECT tdtadntrj, tdtadntja FROM tdtad;
SELECT tdtblntrj, tdtblfech, tdtblmrcb, tdtbluser, tdtblhora, tdtblfpro FROM tdtbl;
--CUENTAS ASIGNADAS
SELECT tdtctntrj, tdtctncta, tdtctnmod, tdtctprel 
FROM tdtct WHERE tdtctntrj IN (600007803, 600009048);

INSERT INTO tdtct (tdtctntrj,tdtctncta,tdtctnmod,tdtctprel) VALUES ('600010623          ','3041000059',4,2);
INSERT INTO tdtct (tdtctntrj,tdtctncta,tdtctnmod,tdtctprel) VALUES ('600010623          ','3051920851',5,1);

UPDATE tdtct
SET tdtctntrj = 600009048
WHERE tdtctntrj = 600010623

SELECT tdtctntrj, tdtctncta, tdtctnmod, tdtctprel 
FROM tdtctt WHERE tdtctntrj IN (600010623, 600009048);

SELECT tdtdtntra, tdtdtitem, tdtdtmorg, tdtdtcorg, tdtdtmdes, tdtdtcdes, tdtdttorg, tdtdttdes, tdtdtimpt, tdtdtcmon, tdtdtimpo, tdtdtmone, tdtdtstat FROM tdtdt;
SELECT tdtnfcodt, tdtnfncta, tdtnfrefe, tdtnfftra, tdtnfcmon, tdtnfsald, tdtnfccgo, tdtnfstat 
FROM tdtnf WHERE tdtnfncta = '600009048';
SELECT tdtpcntrj, tdtpcncta, tdtpcfreg, tdtpcpref, tdtpccorr, tdtpcimpo, tdtpcmrcb, tdtpcuser, tdtpchora, tdtpcfpro FROM tdtpc;
SELECT tdtpentra, tdtpemorg, tdtpeclie, tdtpecapo, tdtpectao, tdtpectad, tdtpeimpt, tdtpecmon, tdtpefech, tdtpehora, tdtpefirm, tdtpestat, tdtpetran, tdtpeiitf, tdtpentrn FROM tdtpe;
SELECT tdtrnntra, tdtrnntrj, tdtrnttrn, tdtrnftra, tdtrniorg, tdtrnmorg, tdtrniaju, tdtrnimpt, tdtrncmon, tdtrntcam, tdtrnicbk, tdtrntorg, tdtrnacep, tdtrnstat, tdtrnncaj, tdtrnb037, tdtrnb035, tdtrnplaz, tdtrnfpro, tdtrnhora 
FROM tdtrn WHERE tdtrnntra = '600009048';
SELECT tdtrnntra, tdtrnntrj, tdtrnttrn, tdtrnftra, tdtrniorg, tdtrnmorg, tdtrniaju, tdtrnimpt, tdtrncmon, tdtrntcam, tdtrnicbk, tdtrntorg, tdtrnacep, tdtrnstat, tdtrnncaj, tdtrnb037, tdtrnb035, tdtrnplaz, tdtrnfpro, tdtrnhora FROM tdtrn_tmp;
SELECT tdtrrntra, tdtrrntrj, tdtrrftra, tdtrrfrev, tdtrrhora, tdtrruser, tdtrrcrev FROM tdtrr;
SELECT tdtrtntra, tdtrtplao, tdtrtageo, tdtrtplad, tdtrtaged, tdtrtcant, tdtrtntri, tdtrtntrf, tdtrtlote, tdtrtmrcb, tdtrtuser, tdtrthora, tdtrtfpro FROM tdtrt;
SELECT tdwebntrj, tdwebctrd, tdwebttrd, tdwebctrp, tdwebttrp, tdwebdesc, tdwebmrcb, tdwebuser, tdwebhora, tdwebfpro, tdwebfini, tdwebffin, tdwebfinp, tdwebffip FROM tdweb;

/* 1 */
SELECT *
FROM tdmtd
WHERE tdmtdcage = 39139

SELECT *
FROM tdmtd
WHERE tdmtdntrj = '600007803'

unload TO tdpan_600007803.unl
SELECT *
FROM tdpan
WHERE tdpanntrj = 600007803
-- 524291XXXXXX8033   
UPDATE tdpan
SET tdpanpano = '524291XXXXXX9919'
WHERE tdpanntrj = 600007803

/* ENVIADOS POR AXON */
SELECT *
FROM catmv
WHERE catmvpref = 15
AND catmvcorr = 63

LOAD FROM catmv63.unl INSERT INTO catmv;
LOAD FROM catmv64.unl INSERT INTO catmv;

INSERT INTO catmv (catmvpref,catmvcorr,catmvdesc,catmvctbl,catmvadic,catmvuser,catmvhora,catmvfpro) 
VALUES (15,63,'REV.EPOSITO DE EFECT.CUENTA PROPIA','',NULL,'RET','10:53:14','2022-05-15');
INSERT INTO catmv (catmvpref,catmvcorr,catmvdesc,catmvctbl,catmvadic,catmvuser,catmvhora,catmvfpro) 
VALUES (16,63,'DEPOSITO DE EFECT.CUENTA PROPIA','21104101',NULL,'RET','10:53:14','2022-05-15');
INSERT INTO catmv (catmvpref,catmvcorr,catmvdesc,catmvctbl,catmvadic,catmvuser,catmvhora,catmvfpro) 
VALUES (15,64,'REV.EPOSITO DE EFECT.CTA.TERCEROS','',NULL,'RET','10:53:14','2022-05-15');
INSERT INTO catmv (catmvpref,catmvcorr,catmvdesc,catmvctbl,catmvadic,catmvuser,catmvhora,catmvfpro) 
VALUES (16,64,'DEPOSITO DE EFECT.CUENTA TERCEROS','21104101',NULL,'RET','10:53:14','2022-05-15');

SELECT *
FROM cctmv
ORDER BY 1
WHERE catmvpref = 15
AND catmvcorr = 63

LOAD FROM cctmv63.unl INSERT INTO cctmv;
LOAD FROM cctmv64.unl INSERT INTO cctmv;

INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) 
VALUES (15,63,'REV.EPOSITO DE EFECT.CUENTA PROPIA','',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) 
VALUES (16,63,'DEPOSITO DE EFECT.CUENTA PROPIA','21104101',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) 
VALUES (15,64,'REV.EPOSITO DE EFECT.CTA.TERCEROS','',NULL);
INSERT INTO cctmv (cctmvpref,cctmvcorr,cctmvdesc,cctmvctbl,cctmvadic) 
VALUES (16,64,'DEPOSITO DE EFECT.CUENTA TERCEROS','21104101',NULL);


SELECT *
FROM tetrn
ORDER BY tetrnfpro DESC 

SELECT *
FROM catrn
ORDER BY catrnfpro DESC 