-- 64298
SELECT *FROM prmpr WHERE prmprcage = 64298
SELECT *FROM prtdt WHERE prtdtnpre = 10043203 ORDER BY 5;

--1ro septiembre prorrateo, 1ro octubre primer pago 18007986 - cambio de fecha de un credito reprogramado -434 prorrate freg -> prorrateo
SELECT prautnaut, prautusau, prautfeau, prauthoau, prautusso, prautagso, prautplso, prautfeso, prauthoso, prautttrn, prauttipo, prautcage, prautftra, prautfvto, prautimpt, prautcmon, prautnpre, prautstat, prautfsta, prautmrcb, prautfpro, prautplaz, prautagen, prauttcta, prautnmod, prautglos
FROM praut WHERE prautnpre IN (10043203);-- WHERE prautnpre = 10042629;

SELECT prblqnpre, prblqfblq, prblqtblq, prblqcaut, prblqndoc, prblqglos, prblqstat, prblqfsta, prblquser, prblqhora, prblqrusr, prblqrhor, prblqfpro 
FROM prblq WHERE prblqnpre IN (10043203);-- WHERE prblqnpre = 10042629;

SELECT prcadnpre, prcadnmes, prcadncuo 
FROM prcad WHERE prcadnpre IN (10043203);-- WHERE prcadnpre = 10042629;

SELECT prmprnpre,prmprfdes
FROM prmpr
 INNER JOIN ecmso ON ecmsonsol = prmprconv 
WHERE prmprnpre IN (10040751, 10044488, 10041668);

SELECT *
FROM ecmso
ORDER BY ecmsofpro DESC 

 INNER JOIN prmpr ON ecmsonsol = prmprconv 
WHERE prmprnpre IN (10043203);

SELECT *
FROM ecmso
--ORDER BY 5 DESC;
WHERE ecmsonpre = 10043203; LIKE '%2717028LP%';
WHERE ecmsondid LIKE '%2717028LP%';
WHERE ecmsonsol IN (10043203, 10044488, 10041668);

SELECT *FROM prmpr WHERE prmprnpre = 10043203
UPDATE prmpr SET prmprcrpg = 1 WHERE prmprnpre = 10043203

SELECT prcasfech, prcasnpre, prcasagen, prcasplaz, prcascarg, prcasstat, prcascmon, prcastcre, prcassald, prcascalf, prcasmrcb, prcasuser, prcashora, prcasfpro 
FROM prcas WHERE prcasnpre IN (10043203);
--CAMBIO ESTADO /Afecta cierre diario pr380
SELECT prcesnpre, prcesnces, prcesfech, prcesform, prceseant, prcesfant, prceseact, prcesuser, prceshora, prcesfpro, prcespref, prcescorr, prcesglos
FROM prces WHERE prcesnpre IN (10043203) ORDER BY 3;-- WHERE prcesnpre = 10042629;

--CARGOS / Afecta cierre diario pr380
SELECT prcgcnpre, prcgccarg, prcgcmont, prcgcntra, prcgcmrcb, prcgcuser, prcgchora, prcgcfpro, prcgcmblq
FROM prcgc WHERE prcgcnpre IN (10043203);--,10048051,10048128) ORDER BY 1;-- WHERE prcgcnpre = 10042629;
--CAMBIO TASA
SELECT prctsnpre, prctsftra, prctsplzo, prctsfcam, prctstsex, prctssprd, prctsstat, prctsfsta, prctstpro, prctsmrcb, prctsuser, prctshora, prctsfpro, prctstcta
FROM prcts WHERE prctsnpre IN (10043203) ORDER BY 1,2;--,10048051,10048128) ORDER BY 1;-- WHERE prctsnpre = 10042629;
SELECT *FROM prsor WHERE prsornpre = 15410120
--
SELECT prdacnpre, prdaccuot, prdacpmic, prdacctes, prdacprod 
FROM prdac WHERE prdacnpre IN (10043203);-- WHERE prdacnpre = 10042629;

SELECT prdccntra, prdccnpre, prdccftra, prdccitem, prdccccar, prdccdesc, prdccimpo, prdccimpc, prdccimpp, prdccmont, prdccmrcb, prdccuser, prdcchora, prdccfpro
FROM prdcc WHERE prdccnpre IN (10043203);-- WHERE prdccnpre = 10042629;

SELECT prdcontra, prdconpre, prdcoftra, prdcoitem, prdcodesc, prdcofvig, prdcotvig, prdcomrcb, prdcouser, prdcohora, prdcofpro
FROM prdco WHERE prdconpre IN (10043203);-- WHERE prdconpre =10042629;

-- PRELIQUIDACION
SELECT prddcnpre, prddcftra, prddcuser, prddccarg, prddcccon, prddcicob, prddcstat
FROM prddc WHERE prddcnpre IN (10043203);-- WHERE prddcnpre = 10042629;

SELECT prdebnpre, prdebftra, prdebdesc, prdebsegu, prdebimpt, prdebmrcb, prdebuser, prdebfpro, prdebmusr, prdebmhor, prdebmfec 
FROM prdeb WHERE prdebnpre IN (10043203);-- WHERE prdebnpre = 10042629;

SELECT prdesnpre, prdesddes, prdesplaz, prdesagen, prdesuser, prdeshora, prdesfpro
FROM prdes WHERE prdesnpre IN (10043203);-- WHERE prdesnpre = 10042629;

SELECT prdeunpre, prdeucage, prdeutres, prdeuuser, prdeuhora, prdeufpro 
FROM prdeu WHERE prdeunpre IN (10043203);-- WHERE prdeunpre = 10042629;

SELECT prdevnpre, prdevstat, prdevcarg, prdevfreg, prdevpref, prdevccon, prdevcmon, prdevcuot, prdevmrcb, prdevplaz, prdevagen, prdevuser, prdevhora, prdevglos, prdevviac, prdevctac 
FROM prdev WHERE prdevnpre IN (10043203);

SELECT prdifnpre, prdiffreg, prdifcarg, prdifmori, prdifmapr, prdifcuot, prdifsald, prdiffulp, prdifglos, prdifreve, prdifmrcb, prdiffmrc, prdifumrc, prdifplaz, prdifagen, prdifuser, prdifhora, prdiffpro, prdiffapl, prdifccap
FROM prdif WHERE prdifnpre = 10043203;

SELECT prdionpre, prdiocarg, prdiofpag, prdiocuot, prdiofreg, prdiopref, prdioccon, prdiomrcb, prdiofmrc, prdioumrc, prdioplaz, prdioagen, prdiouser, prdiohora, prdiofpro, prdiotasa, prdioidev, prdioidan, prdiompag, prdiofdev, prdiontra, prdiointe 
FROM prdio WHERE prdionpre = 10043203 ORDER BY 2,3;

SELECT prdipnpre, prdipcarg, prdipfpag, prdipcuot, prdipfreg, prdippref, prdipccon, prdipmrcb, prdipfmrc, prdipumrc, prdipplaz, prdipagen, prdipuser, prdiphora, prdipfpro, prdiptasa, prdipidev, prdipidan, prdipmpag, prdipfdev, prdipntra, prdipinte 
FROM prdip WHERE prdipnpre = 10043203 ORDER BY 2,3;

SELECT prdipnpre, prdipcarg, prdipfpag, prdipcuot, prdipfreg, prdippref, prdipccon, prdipmrcb, prdipfmrc, prdipumrc, prdipplaz, prdipagen, prdipuser, prdiphora, prdipfpro, prdiptasa, prdipidev, prdipidan, prdipmpag, prdipfdev, prdipntra, prdipinte 
FROM prdip_h  WHERE prdipnpre = 10043203 ORDER BY 15;

SELECT prdpgcodi, prdpgnpre, prdpgnpag, prdpgfech, prdpgcapi, prdpginte, prdpgtota, prdpgcarg 
FROM prdpg WHERE prdpgnpre = 10043203;

SELECT prdrhntra, prdrhftra, prdrhtcri, prdrhtcrf, prdrhclfi, prdrhclff, prdrhfini, prdrhcant, prdrhnpre, prdrhcapi, prdrhinte, prdrhmrcb, prdrhplaz, prdrhagen, prdrhuser, prdrhhora, prdrhfpro
FROM prdrh WHERE prdrhnpre = 10043203;

-- COBRO AUTOMATICO
SELECT prerrfech, prerrnpre, prerrprog, prerrdesc, prerrctac, prerrerro, prerrdisp, prerrimpt, prerrcmon, prerrplaz, prerragen, prerruser, prerrhora, prerrfpro 
FROM prerr WHERE prerrnpre = 10043203 ORDER BY 1 DESC;--
-- historico de cargos
SELECT prhcgnpre, prhcgcarg, prhcgmont, prhcgntra, prhcguser, prhcghora, prhcgfpro, prhcgausr, prhcgahor, prhcgafch
FROM prhcg WHERE prhcgnpre = 10043203;

-- Pretamos comerciales/Autorizaciones/Aut. Solicitud Cond. Int/Cargo
SELECT prhcontra, prhconpre, prhcoftra, prhcofreg, prhcoiori, prhcoicob, prhcotaju, prhcostat, prhcomrcb, prhcoplaz, prhcoagen, prhcouser, prhcohora, prhcouaut, prhcoalog, prhcofaut, prhcohaut, prhcofpro, prhcocori, prhcoccob, prhcotipo, prhcodesc, prhconprg, prhcorest, prhcoresi, prhcodinc, prhcocalf, prhcostap, prhcomtvo, prhcorifa, prhcoreif 
FROM prhco WHERE prhconpre IN (10043203);

SELECT prhctnpre, prhctplzo, prhctfcam, prhcttsex, prhctsprd, prhctstat, prhctfsta, prhcttpro, prhctuser, prhcthora, prhctfpro, prhctausr, prhctahor, prhctafpr, prhcttcta 
FROM prhct WHERE prhctnpre IN (10043203);

SELECT prhdvfdia, prhdvnpre, prhdvtcre, prhdvcmon, prhdvstat, prhdvsald, prhdvfdvg, prhdvpdvg, prhdvpsus, prhdvafdv, prhdvasta, prhdvapdv, prhdvapsu, prhdvtotp, prhdvtotr, prhdvming, prhdvplaz, prhdvagen, prhdvuser, prhdvhora, prhdvfpro 
FROM prhdv WHERE prhdvnpre = 10043203 AND prhdvfdia > '2022-01-01' ORDER BY 1;

SELECT prhofntra, prhofnpre, prhofftra, prhofndoc, prhofrsea, prhofrsen, prhofsald, prhofmdes, prhofplaz, prhofagen, prhofuser, prhofhora, prhoffpro 
FROM prhof WHERE prhofnpre = 10043203;
-- REPROGRAMACION MANUAL
SELECT prhtcnpre, prhtcfreg, prhtctcan, prhtctcac, prhtcreso, prhtcnmod, prhtccrpg, prhtcfrpg, prhtcuser, prhtchora, prhtcfpro, prhtctipo
FROM prhtc WHERE prhtcnpre = 10043203;

SELECT prhtrntra, prhtrnpre, prhtrftra, prhtrttrn, prhtrtcob, prhtrndoc, prhtrcvia, prhtrnvia, prhtrimpt, prhtrmvia, prhtrtcam, prhtrimpo, prhtrcmon, prhtrmdes, prhtrtdes, prhtrfreg, prhtrtcof, prhtrmpag, prhtrreve, prhtrusra, prhtrfaut, prhtrmrcb, prhtrplaz, prhtragen, prhtruser, prhtrhora, prhtrfpro, prhtrcage, prhtrnomb, prhtrndid, prhtrtres, prhtrglos, prhtrstat, prhtrfrev 
FROM prhtr WHERE prhtrnpre = 10043203 ORDER BY 3;

SELECT prmprnpre, prmprcage, prmprfreg, prmprnctr, prmprlncr, prmprreso, prmprtcre, prmprorgr, prmprautp, prmprrseg, prmprconv, prmprrubr, prmprciiu, prmprdest, prmprddes, prmprcmon, prmprmapt, prmprplzo, prmpruplz, prmprtsex, prmprfpag, prmprppgk, prmprppgi, prmprgrac, prmpruppg, prmprdiap, prmprfprp, prmpriupg, prmprsald, prmprkven, prmprmdes, prmprmseg, prmprstat, prmprfsta, prmprfpvc, prmprfvac, prmprfvor, prmprstan, prmprfsan, prmprfdes, prmprfulp, prmprfcal, prmprcalf, prmprviad, prmprctad, prmprviac, prmprctac, prmprdeba, prmprcrpg, prmprfrpg, prmprpdvg, prmprpsus, prmprfdev, prmprmcpd, prmprreve, prmprusrr, prmprmrcb, prmprplaz, prmpragen, prmpruser, prmprhora, prmprfpro, prmprcclf, prmprcpac, prmprnlex, prmprnmod, prmprfinc, prmprnatu, prmprnprp, prmprctpp, prmprcbnq, prmprnrpg, prmprpais, prmprdpto, prmprcprv, prmprciud, prmprzona, prmprcmun, prmprambg, prmprcgta, prmprugps, prmprlong, prmprlati, prmprnfam 
FROM prmpr WHERE prmprnpre = 10043203;

SELECT prmprnpre, prmprcage 
FROM prmprdif WHERE prmprnpre = 10043203;

SELECT prnconpre, prncofreg, prncomrcb, prncofmrc, prncoplaz, prncoagen, prncouser, prncohora, prncofpro 
FROM prnco WHERE prnconpre = 10043203;

--AVISOS
SELECT prnotnpre, prnotfech, prnotdesc, prnotuser, prnothora, prnotfpro 
FROM prnot WHERE prnotnpre = 10043203 ORDER BY 2;

SELECT prpagnpre, prpagcage, prpagporc, prpagmrcb, prpaguser, prpagfpro, prpaghora
FROM prpag WHERE prpagnpre = 10043203;

SELECT prpcintra, prpcinpre, prpcicarg, prpciftra, prpcimont, prpcifcal, prpcifpla, prpcifulp, prpcifinc, prpcikimp, prpcikpla, prpcidias, prpciimpp
FROM prpci WHERE prpcinpre = 10043203 ORDER BY 4;

SELECT prpgscgru, prpgscsub, prpgsnpre 
FROM prpgs WHERE prpgsnpre = 10043203;

SELECT prppgnpre, prppgfech, prppgnpag, prppgcapi, prppginte, prppggral, prppgsegu, prppgotro, prppgcarg, prppgtota, prppgahor, prppgmpag 
FROM prppg WHERE prppgnpre = 10043203 ORDER BY 2;

SELECT prpponpre, prppofech, prpponpag, prppocapi, prppointe, prppogral, prpposegu, prppootro, prppocarg, prppotota, prppoahor, prppompag 
FROM prppo WHERE prpponpre = 10043203;
-- RENOVACIONES / REPROGRAMACION
SELECT prrnvnrnv, prrnvnpre, prrnvndoc, prrnvfreg, prrnvcaut, prrnvfvac, prrnvfvan, prrnvplaz, prrnvagen, prrnvuser, prrnvhora, prrnvfpro, prrnvtrnv, prrnvcrpg, prrnvtcre, prrnvtcrn, prrnvsald, prrnvmdes, prrnvimpt, prrnvmoti
FROM prrnv WHERE prrnvnpre = 10043203;--10043203 ;

 -- ING. DATOS NORMATIVA 669/2021 - prm081
SELECT prsornpre, prsorcage, prsorfsol, prsortrnv, prsorfipr, prsorpror, prsorffpr, prsorfper, prsorfreg, prsorgrac, prsorplzo, prsorfvto, prsormont, prsoripro, prsorsald, prsorkdif, prsoridif, prsorstat, prsorplaz, prsoragen, prsoruser, prsorhora, prsorfpro, prsornrnv, prsorcant, prsorfprp, prsorntra, prsorftra, prsormoti
FROM prsor WHERE prsornpre = 10043203;

SELECT prtcnndoc, prtcnitem, prtcnftra, prtcnnpre, prtcnttrn, prtcnntra, prtcnpref, prtcnccon, prtcndesc, prtcncctb, prtcnadic, prtcnimpi, prtcnimpc, prtcntcam, prtcnpost, prtcnplaz, prtcnagen, prtcnuser, prtcnhora, prtcnfpro, prtcnnrle, prtcncbnq
FROM prtcn WHERE prtcnnpre = 10043203 ORDER BY 3;

SELECT *FROM prdif WHERE prdifnpre = 10043203;

SELECT *FROM prdip WHERE prdipnpre = 10043203 ORDER BY 2,3;

SELECT *FROM prppg WHERE prppgnpre = 10043203 ORDER BY 3,2;

SELECT prtftnpre, prtfttsex, prtftfreg, prtftsprd, prtftplzo, prtftfcam, prtftfulc, prtftglos, prtftmrcb, prtftplaz, prtftagen, prtftuser, prtfthora, prtftfpro
FROM prtft WHERE prtftnpre = 10043203;
-- TASA PRESTAMO
SELECT prtsanpre, prtsafvig, prtsatbas, prtsasprd, prtsauser, prtsahora, prtsafpro, prtsamblq
FROM prtsa WHERE prtsanpre = 10043203;

SELECT prtshnpre, prtshfvig, prtshtbas, prtshsprd, prtshuser, prtshhora, prtshfpro, prtshausr, prtshahor, prtshafch 
FROM prtsh WHERE prtshnpre = 10043203;
-- PRELIQUIDACION 
SELECT prcodnpre, prcodftra, prcoduser, prcodicob, prcodstat, prcodspro, prcodipro 
FROM prcod WHERE prcodnpre IN ( 10043203) ;

SELECT prconpref, prconcorr, prcondesc, prconabre 
FROM prcon;

SELECT prauscusr, prauspref, prauscorr, praususer, praushora, prausfpro 
FROM praus ORDER BY prausfpro DESC;

SELECT prcornroe, prcoruser, prcorhora, prcorfpro 
FROM prcor;

SELECT prctlndoc, prctlgest, prctlnser, prctlprco, prctlcdpc, prctlcadc, prctlcdfc, prctlfcie, prctlfcia, prctlfulb, prctlfalb, prctlcgmn, prctlcgme, prctlcgfv, prctlfchv, prctlrepr, prctlcpen, prctlfcor, prctldfdp, prctlfccg, prctlccvg, prctlacvg, prctlccvn, prctlacvn, prctlccej, prctlacej, prctlcrvg, prctlarvg, prctlcrvn, prctlarvn, prctlcrej, prctlarej, prctldmor, prctlcmcr, prctlpacr, prctldmmr, prctlnmxr 
FROM prctl;
--
SELECT prdsgcarg, prdsgcarn, prdsgcant, prdsgfmrc, prdsgmrcb, prdsguser, prdsghora, prdsgfpro 
FROM prdsg;

SELECT pretocclf, pretodest, pretouser, pretohora, pretofpro
FROM preto;

SELECT prgcctipo, prgcctgia, prgccccre, prgccmont, prgcccmon, prgccuser, prgcchora, prgccfpro 
FROM prgcc;

SELECT prgrucgru, prgrudesc 
FROM prgru;

SELECT prnpragen, prnprnser, prnprprco 
FROM prnpr;

SELECT prpcocmon, prpcokold, prpcokola, prpcohora, prpcouser, prpcofpro 
FROM prpco;
--
SELECT prpddcmon, prpddknor, prpddinor, prpddkrep, prpddirep, prpddplaz, prpddagen, prpdduser, prpddhora, prpdhfpro, prpddtcre, prpddinpr, prpddirpr 
FROM prpdd;

SELECT prpdhcvia, prpdhfech, prpdhffin, prpdhfult, prpdhplaz, prpdhagen, prpdhuser, prpdhhora, prpdhfpro 
FROM prpdh;

SELECT prregvtok, prregvtoi, prregvtog, prregdtol, prregfcal, prregfpen, prregcrpg 
FROM prreg;
--
SELECT prpsgcarg, prpsgcarn, prpsgcant, prpsgfmrc, prpsgmrcb, prpsguser, prpsghora, prpsgfpro 
FROM prpsg;

SELECT prsrltabl, prsrlcorr 
FROM prsrl;

SELECT prsubcgru, prsubcsub, prsubdesc 
FROM prsub;
--
SELECT prtcctcre, prtcccmon, prtcccclf, prtccplzi, prtccplzf, prtccmoni, prtccmonf, prtccuser, prtcchora, prtccfpro, prtccptin 
FROM prtcc;

SELECT prtcctcre, prtcccmon, prtcccclf, prtccplzi, prtccplzf, prtccmoni, prtccmonf, prtccuser, prtcchora, prtccfpro, prtccfprc, prtccusrl, prtccdate, prtccevto 
FROM prtcc_h;

SELECT prtcitama, prtcicclf, prtciubaj, prtcihbaj, prtcifbaj, prtcimrcb, prtciuser, prtcihora, prtcifpro 
FROM prtci;
-- TIPO DE CREDITO
SELECT prtcrtcre, prtcrdesc, prtcrfmpg, prtcrdcas, prtcrvctc, prtcrdsal, prtcrdlpz, prtcrdpv2, prtcrdtol, prtcrtano, prtcrreve, prtcrusra, prtcruser, prtcrhora, prtcrfpro, prtcrpeja, prtcrdeje, prtcrnatu, prtcremin, prtcremax, prtcrcgte, prtcrmodn 
FROM prtcr
ORDER BY 1;

SELECT prtehtsex, prtehfvig, prtehhora, prtehtant, prtehuser 
FROM prteh;

SELECT prtextsex, prtexfvig, prtextasa, prtexuser, prtexhora, prtexfpro, prtexmarc, prtexuaut, prtexfaut 
FROM prtex ORDER BY prtexfpro DESC ;

SELECT prtpmtcre, prtpmcmon, prtpmtbas, prtpmtvto, prtpmkcvg, prtpmkavg, prtpmkcvl, prtpmacvl, prtpmkcvn, prtpmkavn, prtpmkcv2, prtpmacv2, prtpmkcej, prtpmkaej, prtpmkcca, prtpmkaca, prtpmkcad, prtpmkcaa, prtpmpcvg, prtpmpavg, prtpmpcvn, prtpmpavn, prtpmpcej, prtpmpaej, prtpmpccg, prtpmpacg, prtpmicvg, prtpmiavg, prtpmicvn, prtpmiavn, prtpmicej, prtpmiaej, prtpmiccg, prtpmiacg, prtpmsdvg, prtpmsavg, prtpmsdvn, prtpmsdej, prtpmsavn, prtpmsaej, prtpmpcv2, prtpmpav2, prtpmicv2, prtpmiav2, prtpmsdv2, prtpmsav2, prtpmkrec, prtpmkare, prtpmorec, prtpmoare, prtpmkcv1, prtpmkav1, prtpmpcv1, prtpmpav1, prtpmicv1, prtpmacv1, prtpmsdv1, prtpmsav1 
FROM prtpm;

SELECT prtretcrr, prtretcre, prtreuser, prtrehora, prtrefpro 
FROM prtre;

SELECT prtuscusr, prtuspref, prtuscorr, prtususer, prtushora, prtusfpro 
FROM prtus;
-- VIA
SELECT prviacvia, prviadesc, prviaabre, prviacctb, prviaadib, prviacctd, prviaadid 
FROM prvia ORDER BY 1;

SELECT przbabaro, przbadbar, przbauser, przbafpro 
FROM przba;

SELECT przcozona, przcobaro, przcouser, przcofpro 
FROM przco;

SELECT przdezona, przdedesc, przdeuser, przdefpro
FROM przde;

SELECT prznazona, prznacage, prznauser, prznafpro 
FROM przna;

SELECT npre 
FROM puente;
-- CARGOS
SELECT prcgpcarg, prcgpdesc, prcgptipo, prcgpdias, prcgpttrn, prcgpfapl, prcgpbapl, prcgpfcob, prcgpcmon, prcgpmont, prcgpcctb, prcgpadic, prcgpmiva, prcgptcre, prcgpmodn, prcgpteac, prcgpprel, prcgpcctv, prcgpccte, prcgpadi2, prcgpadi3 
FROM prcgp ORDER BY 1,2;

/*VACIAS*/
SELECT prnrpnpre, prnrptcre, prnrpfreg, prnrpmrcb, prnrpplaz, prnrpagen, prnrpuser, prnrphora, prnrpfpro 
FROM prnrp;

SELECT procgntra, procgnpre, procgftra, procgttrn, procgfcal, procgpref, procgcorr, procgimpp 
FROM procg;

SELECT prfarmodn, prfarform, prfardesc, prfarnarc, prfaruser, prfarhora, prfarfpro 
FROM prfar;

SELECT prfdtnfus, prfdtfreg, prfdtnpre, prfdttcre, prfdttrel, prfdtmdes, prfdtfdes, prfdtsald, prfdtcmon, prfdttcam, prfdtfpag, prfdtplzo, prfdtfvto, prfdtcrpg, prfdtntra, prfdtstat, prfdtmrcb, prfdtuser, prfdthora, prfdtrusr, prfdtrhor, prfdtfpro, prfdtplaz, prfdtagen, prfdtfact, prfdtkapi, prfdtnmod 
FROM prfdt;

SELECT prfernpre, prfercage, prferplaz, prferagen, prferuser, prferhora, prferfpro 
FROM prfer;

SELECT prfhdnfus, prfhdfreg, prfhdnpre, prfhdcage, prfhdcaut, prfhdfvto, prfhdmdes, prfhdsald, prfhdcmon, prfhdplzo, prfhdcrpg, prfhdtcre, prfhdtcrn, prfhdfpag, prfhdstat, prfhdmrcb, prfhduser, prfhdhora, prfhdrusr, prfhdrhor, prfhdfpro, prfhdplaz, prfhdagen, prfhdtrnv, prfhdcapi 
FROM prfhd;

SELECT prforagen, prforcodi, prforcorr, prfortipo, prfordesc 
FROM prfor;

SELECT prfrenpre, prfreopan, prfrentra, prfreimpt, prfreinte, prfrecgos, prfrecmon, prfreindv, prfrefcan, prfremrcb, prfreuser, prfrehora, prfrefpro 
FROM prfre;

SELECT prgprnpre, prgprcgas, prgprfech, prgprdesc, prgprmont, prgprcmon, prgprmbaj, prgpruser, prgprhora, prgprfpro, prgprntra, prgprfcob 
FROM prgpr;

SELECT prgtpcgtp, prgtpdesc, prgtpccxp, prgtpacxp, prgtpccxc, prgtpacxc, prgtpcgas, prgtpagas, prgtpcprv, prgtpaprv, prgtpcing, prgtpaing, prgtpdcas 
FROM prgtp;

SELECT prhaucfua, prhaucfun, prhaufreg, prhaunmod, prhauoper, prhauuser, prhauhora, prhaufpro 
FROM prhau;

SELECT prhcanrec, prhcanpre, prhcafech, prhcatipo, prhcatcam, prhcaimpo, prhcaflib, prhcaslib, prhcatlib, prhcantra, prhcamrcb, prhcareve, prhcaplaz, prhcaagen, prhcauser, prhcahora, prhcafpro 
FROM prhca;

SELECT prdtctcre, prdtccmon, prdtccclf, prdtcdest 
FROM prdtc;

SELECT prequcnta, prequctad, prequctaa 
FROM prequ;

SELECT prcpocclf, prcpocmon, prcpocsec, prcpoplzo, prcpoplza, prcpomrcb, prcpouser, prcpohora, prcpofpro 
FROM prcpo;

SELECT prcsgcarg, prcsgfblq, prcsgdesc, prcsgmrcb, prcsguser, prcsgfpro, prcsgmusr, prcsgmhor, prcsgmfec 
FROM prcsg;

SELECT prcsnnpre, prcsnfreg, prcsncarg, prcsncarn, prcsncmon, prcsndias, prcsnmont, prcsnimpt, prcsnstat, prcsnfsta, prcsnmrcb, prcsnuser, prcsnhora, prcsnfpro, prcsnplaz, prcsnagen 
FROM prcsn;

SELECT prctacdki, prctaadki, prctacaki, prctaaaki, prctacdkp, prctaadkp, prctacakp, prctaaakp, prctaccar 
FROM prcta;

SELECT prctlndoc, prctlgest, prctlnser, prctlprco, prctlcdpc, prctlcadc, prctlcdfc, prctlfcie, prctlfcia, prctlfulb, prctlfalb, prctlcgmn, prctlcgme, prctlcgfv, prctlfchv, prctlrepr, prctlcpen, prctlfcor, prctldfdp, prctlfccg, prctlccvg, prctlacvg, prctlccvn, prctlacvn, prctlccej, prctlacej, prctlcrvg, prctlarvg, prctlcrvn, prctlarvn, prctlcrej, prctlarej, prctldmor, prctlcmcr, prctlpacr, prctldmmr, prctlnmxr 
FROM prctl1;

SELECT prctlndoc, prctlgest, prctlnser, prctlprco, prctlcdpc, prctlcadc, prctlcdfc, prctlfcie, prctlfcia, prctlfulb, prctlfalb, prctlcgmn, prctlcgme, prctlcgfv, prctlfchv, prctlrepr, prctlcpen, prctlfcor, prctldfdp, prctlfccg, prctlccvg, prctlacvg, prctlccvn, prctlacvn, prctlccej, prctlacej, prctlcrvg, prctlarvg, prctlcrvn, prctlarvn, prctlcrej, prctlarej, prctldmor, prctlcmcr, prctlpacr, prctldmmr, prctlnmxr, prctlfprc, prctlusrl, prctldate, prctlevto 
FROM prctl_h;

SELECT prctocmon, prctoacre, prctoaacr, prctodeud, prctoadeu, prctostat, prctofsta, prctousra, prctouser, prctohora, prctofpro, prctotcre 
FROM prcto;

SELECT prctpnmod, prctptcre, prctpcant, prctpuser, prctphora, prctpfpro 
FROM prctp;

SELECT prcgcnpre, prcgccarg, prcgcmont, prcgcntra, prcgcmrcb, prcgcuser, prcgchora, prcgcfpro, prcgcmblq, prcgcusrl, prcgcdate, prcgcevto 
FROM prcgc_h;

SELECT prcgdntra, prcgdfech, prcgdnpre, prcgdtipo, prcgdtrxo, prcgdnmod, prcgdimpt, prcgdcmon, prcgdtcam, prcgdstat, prcgdntrp, prcgdntrj, prcgduser, prcgdhora, prcgdfpro 
FROM prcgd;

SELECT prcaccarg, prcacmrcb, prcacuser, prcachora, prcacfpro, prcacmblq 
FROM prcac;

SELECT prccgtcre, prccgcmon, prccggest, prccgccad, prccgccaa, prccgmrcb, prccghora, prccguser, prccgfpro 
FROM prccg;

SELECT prcdinpre, prcdifech, prcdinpag, prcdimont, prcdifa15, prcdiotro 
FROM prcdi;

SELECT prcgecarg, prcgetcre, prcgecarn, prcgetcrn, prcgeuser, prcgehora, prcgefpro 
FROM prcge;

SELECT prcgpcarg, prcgpdesc, prcgptipo, prcgpdias, prcgpttrn, prcgpfapl, prcgpbapl, prcgpfcob, prcgpcmon, prcgpmont, prcgpcctb, prcgpadic, prcgpmiva, prcgptcre, prcgpfpro, prcgpusrl, prcgpdate, prcgpevto 
FROM prcgp_h;

SELECT prcidciiu, prciddest, prcidubaj, prcidhbaj, prcidfbaj, prcidmrcb, prciduser, prcidhora, prcidfpro 
FROM prcid;

SELECT prckctcre, prckccmon, prckckcad, prckckcaa 
FROM prckc;

SELECT prdcanrec, prdcaitem, prdcacbco, prdcancta, prdcanchq, prdcaimpt, prdcacmon, prdcaflib, prdcamrcb 
FROM prdca;

SELECT prdchnpre, prdchcarg, prdchtcar, prdchcmon, prdchfreg, prdchtdev, prdchfact, prdchmont, prdchmdia, prdchmdev, prdchmpag, prdchfini, prdchffin, prdchfdev, prdchtcam, prdchscar, prdchmrcb, prdchuser, prdchhora, prdchfpro, prdchndev 
FROM prdch;

SELECT prdclcage, prdclfdem, prdclfinv, prdclfeau, prdclfcco, prdclfcpa, prdclfile, prdclfdat, prdclfise, prdclfvin, prdclfdju, prdclflin, prdclfreg, prdclplaz, prdclagen, prdcluser, prdclhora, prdclfpro
FROM prdcl;

SELECT prdepnpre, prdepcmon, prdepcage, prdepnomb, prdepfdes, prdepfulp, prdepsald, prdepamor, prdepinte, prdepsegu, prdepmitf, prdepncuo, prdepncfa, prdeptota, prdeprseg, prdepfchi, prdepfpro 
FROM prdep;

SELECT prdopcage, prdopnpre, prdopffca, prdopfiga, prdopfaga, prdopfiri, prdopficr, prdopfreg, prdopplaz, prdopagen, prdopuser, prdophora, prdopfpro 
FROM prdop;

SELECT prdortcre, prdorcmon, prdorcvgd, prdorcvga, prdorcvnd, prdorcvna, prdorcejd, prdorceja, prdoruser, prdorhora, prdorfpro 
FROM prdor;

SELECT prdpldest, prdplplzi, prdplplzf, prdplubaj, prdplhbaj, prdplfbaj, prdplmrcb, prdpluser, prdplhora, prdplfpro 
FROM prdpl;

SELECT prhmbfdia, prhmbnpre, prhmbtcre, prhmbcmon, prhmbstat, prhmbsalc, prhmbsald, prhmbsalb, prhmbigpr, prhmbfidv, prhmbidvg, prhmbidvc, prhmbctad, prhmbctaa, prhmbmrcb, prhmbplaz, prhmbagen, prhmbuser, prhmbhora, prhmbfpro 
FROM prhmb;

SELECT prhmiftra, prhminpre, prhmittrn, prhmintco, prhmintde, prhmiimpt, prhmiglos, prhmimrcb, prhmiuser, prhmihora, prhmifpro, prhmiagen, prhmiplaz 
FROM prhmi;

SELECT prhmpfech, prhmpfcie, prhmptcam, prhmpagen, prhmpplaz, prhmpambg, prhmparea, prhmpnpre, prhmpcage, prhmpcalf, prhmptcre, prhmpcclf, prhmpcmon, prhmpnmod, prhmprseg, prhmpcanp, prhmpcanc, prhmpmdes, prhmpsald, prhmpmora, prhmpmrpg, prhmpmrps, prhmpstat, prhmpfinc, prhmpfpvc, prhmpdmor, prhmpmde1, prhmpsal1, prhmpmor1, prhmpmrp1, prhmpmrs1 
FROM prhmp;

SELECT prhpgnpre, prhpgfech, prhpgnpag, prhpgcapi, prhpginte, prhpggral, prhpgsegu, prhpgotro, prhpgcarg, prhpgtota, prhpgahor, prhpgmpag, prhpgnego, prhpgntra, prhpgftra, prhpguser
FROM prhpg;

SELECT prhppnpre, prhppfech, prhppnpag, prhppcapi, prhppinte, prhppgral, prhppsegu, prhppotro, prhppcarg, prhpptota, prhppnfus 
FROM prhpp;

SELECT prindfech, prindanio, prindnmes, prindndia, prindcage, prindnpre, prindtcre, prindrseg, prindcmon, prindmapt, prindmdes, prindsald, prindplzo, prindstat, prinddsta, prindfreg, prindfdes, prindfvor, prindfvac, prindfinc, prindfsta, prindfcan, prindplaz, prindagen 
FROM prind;

SELECT prinrnpre, prinrfreg, prinrcodi, prinrcaut, prinrndoc, prinrglos, prinrstat, prinrfsta, prinruser, prinrhora, prinrrusr, prinrrhor, prinrfpro 
FROM prinr;

SELECT prlccnser, prlccfreg, prlccfile, prlccstat, prlccuser, prlcchora, prlccfpro 
FROM prlcc;

SELECT prlcdnser, prlcdnpre, prlcdnmod, prlcddmor, prlcdstat, prlcdnope, prlcdmrcb, prlcdglos, prlcduser, prlcdhora, prlcdfpro 
FROM prlcd;

SELECT prmbvnpre, prmbvcodi, prmbvnpar, prmbvdesc, prmbvdire, prmbvcmon, prmbvivta, prmbvigpr, prmbvsald, prmbvidev, prmbvfdev, prmbvfreg, prmbvmrcb, prmbvstat, prmbvplaz, prmbvagen, prmbvuser, prmbvhora, prmbvfpro, prmbvmdes, prmbvmvlb, prmbvmcxp, prmbvmant, prmbvcurb, prmbvcxci, prmbvgxrb, prmbvingr, prmbvurcb, prmbvhrcb, prmbvfrcb 
FROM prmbv;

SELECT prmdenpre, prmdeitem, prmdemont, prmdecdes, prmdecact, prmdecant, prmdeucan, prmdefuti 
FROM prmde;

SELECT prmfunpre 
FROM prmfu;

SELECT prmidnpre, prmidftra, prmidntco, prmidntde, prmidsalt, prmidintc, prmidintk, prmidinda, prmidsald, prmidcant, prmidindv, prmidfudv, prmidmrcb, prmiduser, prmidagen, prmidplaz, prmidhora, prmidfpro 
FROM prmid;

SELECT prmrvcvia, prmrvttrn, prmrvcmon, prmrvimpt, prmrvagen, prmrvuser, prmrvhora, prmrvfpro 
FROM prmrv;

SELECT prmtrnpre, prmtrnrot, prmtrnlac, prmtrptim, prmtrutim, prmtrstat, prmtruser, prmtrfpro, prmtrhora 
FROM prmtr;

SELECT prnccnpre, prnccfvig, prnccnpag, prnccfcuo, prncccarg, prnccimpt, prnccimpc, prnccmora, prncccmon, prncccage, prnccuser, prncchora, prnccfpro, prnccmrcb 
FROM prncc;

SELECT prpbvtcre, prpbvcmon, prpbvcgvg, prpbvagvg, prpbvcgvn, prpbvagvn, prpbvcgej, prpbvagej, prpbvccos, prpbvacos, prpbvcvta, prpbvavta, prpbvcpbv, prpbvapbv, prpbvcvlb, prpbvavlb, prpbvcxpg, prpbvaxpg, prpbvcanb, prpbvaanb, prpbvcxci, prpbvaxci, prpbvcive, prpbvaive, prpbvciej, prpbvaiej 
FROM prpbv;

SELECT prpcatcre, prpcatpca, prpcatipo, prpcapref, prpcacorr, prpcacagi, prpcacmoi, prpcamrcb, prpcauser, prpcahora, prpcafpro 
FROM prpca;

SELECT prpcscarg, prpcsdias, prpcscarn, prpcsfmrc, prpcsmrcb, prpcsuser, prpcshora, prpcsfpro 
FROM prpcs;

SELECT prpidtcre, prpidcmon, prpidctid, prpidctpd, prpidcvia, prpiddias 
FROM prpid;

SELECT prppbnpre, prppbfech, prppbnpag, prppbcapi, prppbinte, prppbgral, prppbsegu, prppbotro, prppbcarg, prppbtota 
FROM prppb;

SELECT prppdntra, prppdnpre, prppdfech, prppdnpag, prppdcapi, prppdinte, prppdgral, prppdsegu, prppdotro, prppdcarg, prppdtota 
FROM prppd;

SELECT prppfnpre, prppffech, prppfnpag, prppfcapi, prppfinte, prppfgral, prppfsegu, prppfotro, prppfcarg, prppftota, prppfnfus 
FROM prppf;

SELECT prppsnpre, prppscage, prppsfech, prppsnpag, prppscapi, prppsinte, prppsgral, prppssegu, prppsotro, prppscarg, prppstota 
FROM prpps;

SELECT prptpcclf, prptpcmon, prptptpre, prptptasa, prptpmrcb 
FROM prptp;

SELECT prrafagen, prrafform, prrafuser, prrafhora, prraffpro, prrafmodn 
FROM prraf;

SELECT prrancarg, prrancorr, prranrani, prranranf, prranmont, prranporc 
FROM prran;

SELECT prrancarg, prrancorr, prranrani, prranranf, prranmont, prranporc, prranfpro, prranusrl, prrandate, prranevto 
FROM prran_h;

SELECT prreaopea, prreanpre, prreacage 
FROM prrea;

SELECT prrefnpra, prrefnpre 
FROM prref;

SELECT prrpantra, prrpanpre, prrpafech, prrpanpag, prrpacapi, prrpainte, prrpagral, prrpasegu, prrpaotro, prrpacarg, prrpatota, prrpaahor, prrpampag 
FROM prrpa;

SELECT prrsgcseg, prrsgcmon, prrsgcarg, prrsguser, prrsghora, prrsgfpro 
FROM prrsg;

SELECT prrtctcre, prrtccmon, prrtccclf, prrtctcr2, prrtcccl2, prrtcmmin, prrtcmmax 
FROM prrtc;

SELECT prsolnpre, prsolcage, prsolimpt, prsolporc, prsoluser, prsolhora, prsolfpro
FROM prsol;

SELECT prstenpre, prsteftra, prstecage, prsteente, prstemoti, prstestan, prstefsan, prstestat, prstefsta, prsteplza, prsteagen, prsteglos, prstehora, prsteuser, prstefpro, prstemrcb, prstefecb, prsteusrb 
FROM prste;

SELECT prtcatcre, prtcaagen, prtcauser, prtcahora, prtcafpro 
FROM prtca;

SELECT prtcatcre, prtcaagen, prtcauser, prtcahora, prtcafpro, prtcafprc, prtcausrl, prtcadate, prtcaevto 
FROM prtca_h;

SELECT prtcgtcre, prtcgcmon, prtcgtgia, prtcgrela, prtcguser, prtcghora, prtcgfpro 
FROM prtcg;

SELECT prtcgtcre, prtcgcmon, prtcgtgia, prtcgrela, prtcguser, prtcghora, prtcgfpro, prtcgfprc, prtcgusrl, prtcgdate, prtcgevto 
FROM prtcg_h;

SELECT prtcpctpp, prtcpdesc, prtcpcmon, prtcpplzo, prtcpuplz, prtcptasa, prtcpfatd, prtcpppag, prtcpuppa, prtcpiicc, prtcpuser, prtcphora, prtcpfpro, prtcppahi, prtcppahd, prtcpbgmi, prtcpbgmx, prtcpbpmi, prtcpbpmx, prtcpgpmi, prtcpgpmx, prtcpgphp, prtcppbhp, prtcptcre, prtcptcrs, prtcptcrt, prtcptpri, prtcpdiap, prtcpfapl, prtcpcmoa, prtcpmpin, prtcpmpi2, prtcpmpi3, prtcpcild, prtcpfap2, prtcpfap3, prtcpfapc, prtcpgrac, prtcpcaho 
FROM prtcp;

SELECT prtcpctpp, prtcpdesc, prtcpcmon, prtcpplzo, prtcpuplz, prtcptasa, prtcpfatd, prtcpppag, prtcpuppa, prtcpiicc, prtcpuser, prtcphora, prtcpfpro, prtcppahi, prtcppahd, prtcpbgmi, prtcpbgmx, prtcpbpmi, prtcpbpmx, prtcpgpmi, prtcpgpmx, prtcpgphp, prtcppbhp, prtcptcre, prtcptcrs, prtcptcrt, prtcptpri, prtcpdiap, prtcpfapl, prtcpcmoa, prtcpmpin, prtcpmpi2, prtcpmpi3, prtcpcild, prtcpfap2, prtcpfap3, prtcpfapc, prtcpfprc, prtcpusrl, prtcpdate, prtcpevto 
FROM prtcp_h;

SELECT prtcrtcre, prtcrdesc, prtcrfmpg, prtcrdcas, prtcrvctc, prtcrdsal, prtcrdlpz, prtcrdpv2, prtcrdtol, prtcrtano, prtcrreve, prtcrusra, prtcruser, prtcrhora, prtcrfpro, prtcrpeja, prtcrdeje, prtcrnatu, prtcremin, prtcremax, prtcrcgte, prtcrfprc, prtcrusrl, prtcrdate, prtcrevto 
FROM prtcr_h;

SELECT prtcttcre, prtcttipc, prtctuser, prtcthora, prtctfpro 
FROM prtct;

SELECT prtinnpre, prtinfreg, prtinnpai, prtinnpaf, prtintasa, prtinmrcb, prtinfmrc, prtinumrc, prtinplaz, prtinagen, prtinuser, prtinhora, prtinfpro 
FROM prtin;

SELECT prtpintra, prtpinpre, prtpinpag, prtpiftra, prtpiimpc, prtpiimpp, prtpisald, prtpistat, prtpimrcb 
FROM prtpi;

SELECT prtpotcre, prtpocmon, prtpokcvd, prtpokcva, prtpokcnd, prtpokcna, prtpokced, prtpokcea, prtpopcvg, prtpoicvg, prtpopcvn, prtpoicvn, prtpopcej, prtpoicej, prtpouser, prtpohora, prtpofpro, prtpokcde, prtpokade 
FROM prtpo;

SELECT prtppctpp, prtppcmon, prtppplzo, prtppnpag, prtppuplz, prtppppag, prtppupag, prtpppcuo 
FROM prtpp;

SELECT prtskcodi, prtsktabl, prtskcp01, prtskcp02, prtskcp03, prtskcp04, prtskcp05, prtskcp06, prtskcp07, prtskcp08, prtskcp09, prtskcp10, prtskcp11, prtskcp12, prtskcp13, prtskcp14, prtskcp15, prtskcp16, prtskcp17, prtskcp18, prtskcp19, prtskcp20, prtskcp21, prtskcp22, prtskcp23, prtskcp24, prtskcp25 
FROM prtsk;

SELECT prtsrntra, prtsrnpre, prtsrftra, prtsrcvia, prtsrcbcs, prtsrnvia, prtsrndoc, prtsrtcam, prtsrmvia, prtsrimpt, prtsrcodi, prtsrmimp, prtsrmrcb 
FROM prtsr;

SELECT prttactpp, prttatpin, prttaplaz, prttaunid, prttatasa 
FROM prtta;

SELECT prttactpp, prttatpin, prttaplaz, prttaunid, prttatasa, prttafprc, prttausrl, prttadate, prttaevto 
FROM prtta_h;

SELECT prttrntra, prttrnpre, prttrtcob, prttrnego, prttrtneg, prttrmrcb, prttruser, prttrhora, prttrfpro 
FROM prttr;

SELECT ctent, ncent, dgocr, nocrd, cccnt, darpr, dmrpr, ddrpr, mcntr, mccmp, cttrn 
FROM prueb;

SELECT nopr, sald 
FROM prueb1;

SELECT campo1 
FROM prueba;

SELECT col1, col2 
FROM prueba1;

SELECT prurbcurb, prurbcmon, prurbctbl, prurbadic, prurbmrcb, prurbcanb, prurbaanb 
FROM prurb;

SELECT prvennpre, prvenmrcb, prvenfmrc, prvenplaz, prvenagen, prvenuser, prvenhora, prvenfpro 
FROM prven;

SELECT prviacvia, prviadesc, prviaabre, prviacctb, prviaadib, prviacctd, prviaadid, prviafprc, prviausrl, prviadate, prviaevto 
FROM prvia_h;

SELECT *FROM prcgc WHERE prcgccarg IN (93,94)

-- 10047603 9624