SELECT *
FROM adamr;
SELECT *
FROM adapd;
SELECT *
FROM adaut
ORDER BY adautfpro DESC ;
SELECT *
FROM adcol;
SELECT *
FROM adcry;
SELECT *
FROM adcry_h;
SELECT *
FROM adctl;
SELECT *
FROM adepo;
SELECT *
FROM adeqc;
SELECT *
FROM adeus;
SELECT *
FROM adgar;
SELECT *
FROM adhcu;
SELECT *
FROM adhpu;
SELECT *
FROM adhru;
SELECT *
FROM adhuu;
SELECT *
FROM adkey;
SELECT *
FROM adles;
SELECT *
FROM adlog;
SELECT *
FROM admar;
SELECT *
FROM admdq;
SELECT *
FROM admdt;
SELECT *
FROM admod;
SELECT *
FROM admop;
SELECT *
FROM admoq;
SELECT *
FROM admpq;
SELECT *
FROM admpr;
SELECT *
FROM admus;
SELECT *
FROM adpma;
SELECT *
FROM adprn;
SELECT *
FROM adriu;
SELECT *
FROM adrsw;
SELECT *
FROM adser;
SELECT *
FROM adtab;
SELECT *
FROM adtiu;
SELECT *
FROM adtrm;
SELECT *
FROM aduam;
SELECT *
FROM aduec;
SELECT *
FROM adugr;
SELECT *
FROM adulo;
SELECT *
FROM adulr;
SELECT *
FROM adupd;
SELECT *
FROM adusd;
SELECT *
FROM adusr;
SELECT *
FROM afaco;
SELECT *
FROM afcae;
SELECT *
FROM afcla
ORDER BY 1,2,3;
SELECT *
FROM afcon;
SELECT *
FROM afctl;
SELECT *
FROM afcxr;
SELECT *
FROM afdcg WHERE afdcgcodi = '03-03554';
SELECT *
FROM afded WHERE afdedcodi in ('03-02841');--,'03-03555','03-03556','03-03222','03-03272');
SELECT *
FROM afdep WHERE afdepcodi in ('03-02841');--,'03-03555','03-03556','03-03222','03-03272');
SELECT *
FROM afdtr WHERE afdtrcodi in ('03-02841');--,'03-03555','03-03556','03-03222','03-03272') ORDER BY 4;

/*
SELECT afevaneva, afevaftra, afevandoc, afevacodi, afevastat, afevavidr, afevavlrn, afevavlre, afevadamn, afevadgmn, afevadame, afevadgme, afevafuld, afevardgb, afevardab, afevauneg, afevaccos, afevacpry, afevacprg, afevacfin, afevacres, afevastan, afevaglsa, afevaceva, afevacarg, afevafpev, afevatcam, afevatufv, afevamrcb, afevauser, afevahora, afevafpro
FROM afeva;
SELECT afglpnpol, afglpnade, afglpline, afglpglsa
FROM afglp;
*/
SELECT *
FROM afhcg;
SELECT *
FROM afhtr;
SELECT *
FROM afmac;
SELECT *
FROM afmae WHERE afmaecodi in ('03-02841');--,'03-03555','03-03556','03-03222','03-03223','03-03272');

SELECT *FROM afmae WHERE afmaefreg >= '2022-09-01'

SELECT afpdacodi, afpdauneg, afpdaccos, afpdapdis
FROM afpda;
SELECT afpevtipo, afpevstat, afpevpeva
FROM afpev;
SELECT afpmtmesd, afpmtanod, afpmtfrvl, afpmtccir, afpmtadir, afpmtcajt, afpmtccos, afpmtccpp, afpmtuges
FROM afpmt;
SELECT afppapini, afppapfin, afppappon
FROM afppa;
SELECT afprvcage
FROM afprv;
SELECT afpsenpol, afpsefreg, afpsecreg, afpseuneg, afpsencon, afpsecase, afpsefinc, afpseffic, afpsehinc, afpsehfic, afpsecmon, afpseimpo, afpseimpa, afpsemrcb, afpseuser, afpsehora, afpsefpro
FROM afpse;
SELECT afrepntra, afrepcodi, afrepfreg, afreptrep, afrepvlmn, afrepvlme, afreptcam, afrepdsc1, afrepdsc2, afrepdsc3, afrepuser, afrephora, afrepfpro, afrepuneg
FROM afrep WHERE afrepcodi = '03-03556';
SELECT afresresp, afresnomb
FROM afres;
SELECT afrevfrvl, afrevcodi, afrevuneg, afrevccos, afrevtipo, afrevvalr, afrevdprr, afrevtact, afrevfreg, afrevcorr, afrevuser, afrevhora, afrevfpro, afrevvagr, afrevvaar, afrevdpgr, afrevdpar, afrevcpry, afrevcprg, afrevcfin
FROM afrev;
SELECT aftiptipo, aftipdscr, aftipvida, aftipccvl, aftipadvl, aftipcgrp, aftipagrp, aftipcgdp, aftipagdp, aftipccda, aftipadda, aftipdprc, aftipcodi
FROM aftip;
SELECT indtrntra, indtritem, indtrftra, indtrndoc, indtruneg, indtrcalm, indtrpref, indtrcorr, indtrcord, indtrnord, indtrcart, indtrcant, indtrcmap, indtrcmac, indtrimpt, indtrimpc, indtrmrcb, indtrmorg, indtrtorg, indtruser, indtrfreg, indtrhora, indtrfpro
FROM b_indtr;
SELECT vtnvantra, vtnvatnve, vtnvaftra, vtnvauneg, vtnvaccos, vtnvacloc, vtnvazona, vtnvaitem, vtnvacart, vtnvacven, vtnvacent, vtnvapuvt, vtnvaivti, vtnvaivtc, vtnvacost, vtnvapdsc, vtnvadscb, vtnvadscd, vtnvaiice, vtnvatcam, vtnvavend, vtnvapcom, vtnvaacof, vtnvafaex, vtnvamsto, vtnvatart, vtnvastat, vtnvantrb
FROM b_vtnva;
SELECT vtnvhntra, vtnvhndoc, vtnvhtnve, vtnvhcmon, vtnvhftra, vtnvhcage, vtnvhnomb, vtnvhiart, vtnvhirec, vtnvhpdsc, vtnvhidsc, vtnvhpefe, vtnvhptrj, vtnvhpchq, vtnvhpcte, vtnvhpcre, vtnvhpcxc, vtnvhncte, vtnvhncre, vtnvhnfac, vtnvhiice, vtnvhiehd, vtnvhtcam, vtnvhuneg, vtnvcccos, vtnvhcloc, vtnvhzona, vtnvhcalm, vtnvhncja, vtnvhcven, vtnvhpcom, vtnvhicdv, vtnvhtcdv, vtnvhnot1, vtnvhnot2, vtnvhnot3, vtnvhstat, vtnvhtorg, vtnvhuser, vtnvhhora, vtnvhfpro, vtnvhiliq, vtnvhnliq, vtnvhmrev, vtnvhhanu, vtnvhfanu, vtnvhfpra, vtnvhntri, vtnvhntrb
FROM b_vtnvh;
SELECT beglontra, begloitem, begloglo1, begloglo2, begloglo3, begloglo4
FROM beglo;
SELECT ccconpref, ccconcorr, cccondesc
FROM cccon;
SELECT ccctlndoc, ccctlcdif, ccctlccos, ccctlnmes
FROM ccctl;
SELECT ccmccncta, ccmcccage, ccmcccmon, ccmcctpcc, ccmccuneg, ccmccsant, ccmccsact, ccmcctpsd, ccmccmpig, ccmccfapt, ccmccfcst, ccmccstat, ccmccuser, ccmcchora
FROM ccmcc;
SELECT cctcatpcc, cctcacage
FROM cctca;
SELECT cctiptpcc, cctipdesc, cctipctb1, cctipctb2
FROM cctip;
SELECT cctitncta, cctitcage, cctititem, cctitctit
FROM cctit;
SELECT cctmvpref, cctmvcorr, cctmvdesc, cctmvctbl, cctmvadic
FROM cctmv;
SELECT cctrantra, cctraftra, cctrauneo, cctracorg, cctratorg, cctrauned, cctracdes, cctratdes, cctraimpt, cctracmon, cctracbio, cctrandoc, cctragls1, cctragls2, cctragls3, cctrastat, cctrauser, cctrahora, cctrafpro
FROM cctra;
SELECT cctrnntra, cctrnftra, cctrnuneg, cctrnncta, cctrnndoc, cctrnmorg, cctrntorg, cctrnpref, cctrncorr, cctrnimpo, cctrnimpt, cctrncbio, cctrncmon, cctrngls1, cctrngls2, cctrngls3, cctrnstat, cctrnuser, cctrnhora, cctrnfpro
FROM cctrn;
SELECT cjcamntra, cjcamftra, cjcamnomb, cjcamuneg, cjcamncja, cjcamntri, cjcamntre, cjcamimpt, cjcamcmon, cjcamcbio, cjcamndoc, cjcamgls1, cjcamgls2, cjcamgls3, cjcamstat, cjcamuser, cjcamhora, cjcamfpro, cjcamtcpi, cjcamtcpe, cjcammorg, cjcamnopr, cjcamtorg
FROM cjcam;
SELECT cjccuuneg, cjccutipo, cjccuncja, cjccuuser, cjccuhora, cjccufpro
FROM cjccu;
SELECT cjcefncja, cjcefftra, cjcefcmon, cjcefimpt, cjcefglos, cjcefuser, cjcefhora, cjceffpro
FROM cjcef;
SELECT cjconpref, cjconcorr, cjcondesc
FROM cjcon;
SELECT cjcorcmon, cjcorcodi, cjcordesc, cjcorcort
FROM cjcor;
SELECT cjctlndoc, cjctlcdif, cjctlccos, cjctlcmn1, cjctlcmn2, cjctlnmes
FROM cjctl;
SELECT cjdefncja, cjdefftra, cjdefpref, cjdefcorr, cjdefcort, cjdefcant, cjdefimpt, cjdefuser, cjdefhora, cjdeffpro
FROM cjdef;
SELECT cjhucusrn, cjhucncja, cjhucuser, cjhuchora, cjhucfpro
FROM cjhuc;
SELECT cjmcancja, cjmcacpry, cjmcacprg, cjmcacfin
FROM cjmca;
SELECT cjmcjncja, cjmcjdesc, cjmcjuneg, cjmcjresp, cjmcjsan1, cjmcjsac1, cjmcjsan2, cjmcjsac2, cjmcjfapt, cjmcjuser, cjmcjhora, cjmcjibpt, cjmcjcmon
FROM cjmcj;
SELECT cjpcmcmon, cjpcmctbl, cjpcmcdif, cjpcmuser, cjpcmhora, cjpcmfpro
FROM cjpcm;
SELECT cjrcrusrn, cjrcrcorr, cjrcrnres, cjrcrcnta
FROM cjrcr;
SELECT cjsldncja, cjsldcmon, cjsldsant, cjsldsald, cjsldfult
FROM cjsld;
SELECT cjtgtncja, cjtgtmodn, cjtgtcorr, cjtgtapli, cjtgtmont, cjtgtcmon, cjtgtuser, cjtgthora, cjtgtfpro
FROM cjtgt ORDER BY cjtgtfpro DESC;
SELECT cjtmvpref, cjtmvcorr, cjtmvdesc, cjtmvctbl, cjtmvadic
FROM cjtmv;
SELECT cjtrantra, cjtraftra, cjtrauneo, cjtracorg, cjtratorg, cjtrauned, cjtracdes, cjtratdes, cjtraimpt, cjtracmon, cjtracbio, cjtrandoc, cjtragls1, cjtragls2, cjtragls3, cjtrastat, cjtrauser, cjtrahora, cjtrafpro
FROM cjtra;

SELECT cjtrnntra, cjtrnftra, cjtrnuneg, cjtrnncja, cjtrnndoc, cjtrnmorg, cjtrntorg, cjtrnpref, cjtrncorr, cjtrnimpo, cjtrncbio, cjtrncmon, cjtrnnomb, cjtrngls1, cjtrngls2, cjtrngls3, cjtrnstat, cjtrnuser, cjtrnhora, cjtrnfpro
FROM cjtrn WHERE cjtrnuser = 'DBR' ORDER BY cjtrnfpro DESC ;

SELECT cjtrnntra, cjtrnftra, cjtrnuneg, cjtrnncja, cjtrnndoc, cjtrnmorg, cjtrntorg, cjtrnpref, cjtrncorr, cjtrnimpo, cjtrncbio, cjtrncmon, cjtrnnomb, cjtrngls1, cjtrngls2, cjtrngls3, cjtrnstat, cjtrnuser, cjtrnhora, cjtrnfpro
FROM cjtrn WHERE cjtrnuser = 'ZIC' ORDER BY cjtrnfpro DESC ;


SELECT cnapttipo, cnaptntra, cnaptmorg
FROM cnapt;
SELECT cncacccat, cncacdesc, cncacctip
FROM cncac;
SELECT cnccoccos, cnccodesc, cnccocsup
FROM cncco;
SELECT cnclpcpry, cnclpccli, cnclpitem, cnclpndoc, cnclpivta, cnclptimp, cnclpporc, cnclpiimp, cnclpivtn, cnclpffac, cnclpplaz
FROM cnclp;
SELECT cnconpref, cnconcorr, cncondesc, cnconabre
FROM cncon;
SELECT cncrvnive, cncrvcini, cncrvcfin, cncrvcufv, cncrvaufv
FROM cncrv;
SELECT cncsucsup, cncsudesc, cncsuccat
FROM cncsu;
SELECT cndcdnrep, cndcdnfil, cndcdcolu, cndcditem, cndcdcini, cndcdcfin, cndcdmmon, cndcdmval, cndcdcmon
FROM cndcd;
SELECT cnddiitem, cnddidcta, cnddidcon, cnddicnta, cnddincon, cndditipo, cnddiporc
FROM cnddi;
SELECT cndgpmodn, cndgpcapl, cndgpnpld, cndgpuser, cndgphora, cndgpfpro
FROM cndgp;
SELECT cndidntra, cndidcnta, cndiduneg, cndidccos, cndidporc
FROM cndid;
SELECT cndihntra, cndihcnta, cndihuneg, cndihccos, cndihfreg, cndihuser, cndihhora, cndihfpro
FROM cndih;
SELECT cndrpnrep, cndrpnfil, cndrpcolu, cndrpanch, cndrpclas, cndrpglos, cndrpform, cndrpfini, cndrpffin
FROM cndrp;
SELECT cndtantra, cndtatdoc, cndtandoc, cndtafdoc, cndtamorg, cndtaitem, cndtacnta, cndtaglos, cndtaimpi, cndtacmon, cndtacamb, cndtaimpc, cndtauneg, cndtaccos, cndtatcon, cndtancon, cndtamrcb
FROM cndta;
SELECT cndtpinst, cndtpntra, cndtptdoc, cndtpndoc, cndtpfdoc, cndtpmorg, cndtpitem, cndtpcnta, cndtpglos, cndtpimpi, cndtpcmon, cndtpcamb, cndtpimpc, cndtpuneg, cndtpccos, cndtptcon, cndtpncon, cndtpmrcb
FROM cndtp;
SELECT cndtrntra, cndtrtdoc, cndtrndoc, cndtrfdoc, cndtrmorg, cndtritem, cndtrcnta, cndtrglos, cndtrimpi, cndtrcmon, cndtrcamb, cndtrimpc, cndtruneg, cndtrccos, cndtrtcon, cndtrncon, cndtrmrcb, cndtrgest, cndtrcper, cndtrnhtr
FROM cndtr;
SELECT cnducuneo, cnducccoo, cnducperi, cnducuned, cnducccod, cnducpdis, cnducuser, cnduchora, cnducfpro
FROM cnduc;
SELECT cnglantra, cnglaitem, cnglaglo1, cnglaglo2, cnglaglo3, cnglaglo4
FROM cngla;
SELECT cnglontra, cngloitem, cngloglo1, cngloglo2, cngloglo3, cngloglo4
FROM cnglo;
SELECT cnglpinst, cnglpntra, cnglpitem, cnglpglo1, cnglpglo2, cnglpglo3, cnglpglo4
FROM cnglp;
SELECT cnhcngest, cnhcntcon, cnhcnncon, cnhcndesc
FROM cnhcn;
SELECT cnhdicnta, cnhdincon, cnhdiuser, cnhdihora, cnhdifpro
FROM cnhdi;
SELECT cnhdtgest, cnhdtntra, cnhdttdoc, cnhdtndoc, cnhdtfdoc, cnhdtmorg, cnhdtitem, cnhdtcnta, cnhdtglos, cnhdtimpi, cnhdtcmon, cnhdtcamb, cnhdtimpc, cnhdtuneg, cnhdtccos, cnhdttcon, cnhdtncon, cnhdtmrcb, cnhdtgsti, cnhdtcper, cnhdtnhtr
FROM cnhdt;
SELECT cnhglgest, cnhglntra, cnhglitem, cnhglglo1, cnhglglo2, cnhglglo3, cnhglglo4
FROM cnhgl;
SELECT cnhhtgest, cnhhtntra, cnhhttdoc, cnhhtndoc, cnhhtfdoc, cnhhtmorg, cnhhtmrcb, cnhhtuser, cnhhthora, cnhhtfpro, cnhhtgsti, cnhhtcper, cnhhtnhtr
FROM cnhht;
SELECT cnhmcanio, cnhmcnmes, cnhmccnta, cnhmcnomb, cnsldcmon, cnsldsdb1, cnsldshb1, cnsldsdb2, cnsldshb2
FROM cnhmc;
SELECT cnhprgest, cnhprpmes, cnhprumes, cnhprfini, cnhprffin, cnhprncp1, cnhprncp2, cnhprncp3, cnhprncp4, cnhprncp5, cnhprncp6, cnhprncp7, cnhprncp8, cnhprncp9, cnhprcres, cnhprcrea, cnhprcaju, cnhprccos, cnhprfdes, cnhprmcre, cnhprfsld, cnhprfcii, cnhprcpog
FROM cnhpr;
SELECT cnhtantra, cnhtatdoc, cnhtandoc, cnhtafdoc, cnhtamorg, cnhtamrcb, cnhtauser, cnhtahora, cnhtafpro
FROM cnhta;
SELECT cnhtcgest, cnhtctcon, cnhtcdesc
FROM cnhtc;
SELECT cnhtinpld, cnhticdis, cnhtitemp, cnhtimodn, cnhtittra, cnhtintra, cnhticapl, cnhtiimpt
FROM cnhti;
SELECT cnhtpinst, cnhtpntra, cnhtptdoc, cnhtpndoc, cnhtpfdoc, cnhtpmorg, cnhtpmrcb, cnhtpuser, cnhtphora, cnhtpfpro
FROM cnhtp;
SELECT cnhtrntra, cnhtrtdoc, cnhtrndoc, cnhtrfdoc, cnhtrmorg, cnhtrmrcb, cnhtruser, cnhtrhora, cnhtrfpro, cnhtrgest, cnhtrcper, cnhtrnhtr
FROM cnhtr;
SELECT cnmrpnrep, cnmrpdesc, cnmrpanch, cnmrptpag, cnmrpmcom, cnmrpuser, cnmrphora, cnmrpfpro
FROM cnmrp;
SELECT cnnbkhost
FROM cnnbk;
SELECT cnobgcobg, cnobgdesc, cnobgclsg
FROM cnobg;
SELECT cnpcccnta, cnpccnomb, cnpcccorp, cnpccctai, cnpccctaf
FROM cnpcc;
SELECT cnpchgest, cnpchcnta, cnpchnomb, cnpchcmon, cnpchmcco, cnpchtcon, cnpchuser, cnpchhora, cnpchfpro
FROM cnpch;
SELECT cnplanpld, cnplacodi, cnplapdis
FROM cnpla;
SELECT cnpldnpld, cnplduneg, cnpldccos, cnpldpdis
FROM cnpld;
SELECT cnplhnpld, cnplhdesc, cnplhcdis, cnplhtemp, cnplhuser, cnplhhora, cnplhfpro
FROM cnplh;
SELECT cnpltnpld, cnplttact
FROM cnplt;
SELECT cnprmncp1, cnprmncp2, cnprmncp3, cnprmncp4, cnprmncp5, cnprmncp6, cnprmncp7, cnprmncp8, cnprmncp9, cnprmcres, cnprmcrea, cnprmcaju, cnprmccos, cnprmfdes, cnprmmcre, cnprmfsld, cnprmfcii, cnprmcpog
FROM cnprm;
SELECT cnprpcpry, cnprpcprv, cnprpitem, cnprpndoc, cnprpcost, cnprptimp, cnprpporc, cnprpiimp, cnprpcdim, cnprpffac, cnprpplaz
FROM cnprp;
SELECT cnprycpry, cnprydpry, cnpryftra, cnpryndoc, cnpryuneg, cnprycven, cnprycmon, cnpryctot, cnprycodi, cnprypmut, cnpryimut, cnprypiue, cnpryiiue, cnprypiva, cnpryiiva, cnprypoit, cnpryimit, cnprypotr, cnpryiotr, cnprypvrf, cnprytvtn, cnpryglos, cnprystat, cnpryfsta, cnprymrcb, cnpryuser, cnpryhora, cnpryfpro
FROM cnpry;
SELECT cnrarntra, cnrarcnta, cnrarnres, cnrarntur
FROM cnrar;
SELECT cnrcocobg, cnrcocnta
FROM cnrco;
SELECT cnrcscsig, cnrcscnta
FROM cnrcs;
SELECT cnrmcmodn, cnrmcndoc, cnrmcntra, cnrmcgest, cnrmcmrcb
FROM cnrmc;
SELECT cnrpcctao, cnrpcctas
FROM cnrpc;
SELECT cnrpdnreg, cnrpdfreg, cnrpditem, cnrpdmodn, cnrpdttra, cnrpdntra, cnrpdimpt, cnrpdcmon, cnrpdcpry
FROM cnrpd;
SELECT cnrpgnpld, cnrpgcnta, cnrpguser, cnrpghora, cnrpgfpro
FROM cnrpg;
SELECT cnrptnreg, cnrptfreg, cnrptuser, cnrpthora, cnrptfpro
FROM cnrpt;
SELECT cnrrtmodn, cnrrtttra, cnrrtntra, cnrrtcapl, cnrrtitem, cnrrtnres, cnrrtntur
FROM cnrrt;
SELECT cnrucuneg, cnrucccos
FROM cnruc;
SELECT cnsaihost
FROM cnsai;
SELECT cnsldcnta, cnsldinst, cnsldcmon, cnsldsmat, cnsldsmed, cnsldsmeh, cnsldsdat, cnsldsdid, cnsldsdih, cnsldsldb, cnsldsldd
FROM cnsld;
SELECT cntaamodn, cntaattra, cntaantra, cntaaftra, cntaacapl, cntaaitem, cntaacodi, cntaapdis, cntaaimpt, cntaacmon
FROM cntaa;

SELECT cntacmodn, cntacttra, cntacntra, cntaccapl, cntacctac
FROM cntac;

SELECT cntcandoc, cntcaitem, cntcamodn, cntcacpry, cntcacprg, cntcacfin
FROM cntca;
SELECT cntcnndoc, cntcnitem, cntcnfreg, cntcnpref, cntcncorr, cntcncctb, cntcnuneg, cntcnccos, cntcnccta, cntcnscaa, cntcndesc, cntcnimpi, cntcnimpc, cntcntcam, cntcnpost, cntcnmodn, cntcnnopr, cntcnntra, cntcnftra, cntcncdin, cntcnuser, cntcnhora, cntcnfpro
FROM cntcn;
SELECT cntcnndoc, cntcnitem, cntcnfreg, cntcnpref, cntcncorr, cntcncctb, cntcnuneg, cntcnccos, cntcnccta, cntcnscaa, cntcndesc, cntcnimpi, cntcnimpc, cntcntcam, cntcnpost, cntcnmodn, cntcnnopr, cntcnntra, cntcnftra, cntcncdin, cntcnuser, cntcnhora, cntcnfpro
FROM cntcn_rep;
SELECT cntdbmodn, cntdbttra, cntdbntra, cntdbcapl, cntdbitem, cntdbuneg, cntdbpdis, cntdbimpt, cntdbcmon, cntdbcage, cntdbftra, cntdbtipo
FROM cntdb;
SELECT cntdctdoc, cntdcdesc
FROM cntdc;
SELECT cntdimodn, cntdittra, cntdintra, cntdicapl, cntdiitem, cntdiuneg, cntdiccos, cntdipdis, cntdiimpt, cntdicmon, cntdicage, cntdiftra, cntditipo
FROM cntdi;
SELECT cnticctip, cnticdesc
FROM cntic;
SELECT coaarnrec, coaaritem, coaarcapl, coaarimpt
FROM coaar;
SELECT coadcntra, coadcauto, coadceane, coadceanr, coadctdoc, coadcnrau, coadcnups, coadcproc, coadcnavi, coadcfgen, coadcfdes, coadcfent, coadcctra, coadctctr, coadccpro, coadctcpr, coadccrec, coadctcre, coadcccom, coadctcco, coadctumj, coadcnord, coadcnfac, coadcplac, coadcnomb, coadcnumc, coadcarch, coadcnrec, coadcstat
FROM coadc;
SELECT coaddntra, coaddcfab, coaddtipo, coaddcenv, coaddcant, coaddumed, coaddstat
FROM coadd;
SELECT coaegcgas, coaegcart, coaegfreg
FROM coaeg;
SELECT coaiuuneg, coaiuacre, coaiuuser, coaiuhora, coaiufpro
FROM coaiu;
SELECT coaprnant, coaprftra, coaprnord, coapruneg, coaprcpvd, coaprncpc, coaprcvia, coaprtdes, coaprcaja, coaprncta, coaprbank, coaprncbk, coaprnchq, coaprimpt, coaprcmon, coaprimpo, coaprvmon, coaprtcam, coaprgls1, coaprgls2, coaprgls3, coaprgls4, coaprmpag, coaprmrcb, coapruser, coaprhora, coaprfpro
FROM coapr;
SELECT cocbpcpvd, cocbpcbco, cocbpncta, cocbpcmon
FROM cocbp;
SELECT coccotipo, coccontra, coccoccla, coccomrcb
FROM cocco;
SELECT coconpref, coconcorr, cocondesc, coconabre
FROM cocon;
SELECT cocpdntra, cocpditem, cocpdftra, cocpduneg, cocpdtipo, cocpdcart, cocpdcfab, cocpdcano, cocpdcarn, cocpdcfan, cocpdcant, cocpdumcp, cocpdrlum, cocpdpuni, cocpdimpt, cocpdcmon, cocpdpdfu, cocpdidfu, cocpdpdpr, cocpdidpr, cocpdcpvd, cocpdnrec, cocpdmrcb
FROM cocpd;
SELECT cocphntra, cocphftra, cocphndoc, cocphnord, cocphuneg, cocphcpvd, cocphcmon, cocphtcam, cocphnrec, cocphgls1, cocphgls2, cocphgls3, cocphmrcb, cocphuser, cocphhora, cocphfpro
FROM cocph;
SELECT cocpvcpvd, cocpvcfab, cocpvcart, cocpvdesc, cocpvplzo, cocpvcmon, cocpvpunt, cocpvstat, cocpvmiep, cocpvsdev
FROM cocpv;
SELECT coct1reco, coct1obse
FROM coct1;
SELECT coctlnmes, coctlflim, coctlndoc, coctlpcja, coctlcdif, coctlccos, coctltcca, coctlacca, coctltccd, coctlaccd, coctltcpc, coctlacpc, coctltcpg, coctlacpg, coctltdeb, coctlmtra, coctldeco, coctlcadc, coctlciva, coctlcdpr, coctlccdp, coctlimpn, coctlimpp, coctlpunn, coctlpunp, coctldscn, coctldscp, coctlumpe, coctlumvo, coctlmcba, coctlmso1, coctlmso2, coctlmso3, coctlmsr1, coctlmsr2, coctlmsr3, coctliaer
FROM coctl;
SELECT codaonord, codaotocw
FROM codao;
SELECT coddonord, coddoftra, coddocpvd, coddocmon, coddopdfu, coddoidfu, coddopdpr, coddoidpr
FROM coddo;
SELECT coddrnrec, coddrnord, coddrftra, coddrcpvd, coddrcmon, coddriart, coddridfu, coddridpr
FROM coddr;
SELECT coddvndev, coddvitem, coddvftra, coddvuneg, coddvcpvd, coddvcart, coddvcfab, coddvcmon, coddvtcam, coddvcant, coddvumcp, coddvrlum, coddvpuni, coddvimpt, coddvcost, coddvmrcb
FROM coddv;
SELECT codipcoip, codipcreg, codiptcpc
FROM codip;
SELECT codnrnrec, codnritem, codnrftra, codnrnord, codnruneg, codnrcpvd, codnrcart, codnrcfab, codnrcmon, codnrtcam, codnrcant, codnrumcp, codnrrlum, codnrpuni, codnrimpt, codnrpdfu, codnridfu, codnrpdpr, codnridpr, codnrigas, codnriiva, codnrcost, codnrpdie, codnrviep, codnrmrcb
FROM codnr;
SELECT codornord, codoritem, codortord, codorftra, codoruneg, codorcart, codorcfab, codorcant, codorcent, codorumcp, codorrlum, codorpuni, codorpgas, codorigas, codorpdfu, codoridfu, codorpdpr, codoridpr, codorimpt, codorient, codorcmon, codorcpvd, codormiep, codormrcb
FROM codor;
SELECT codpvnord, codpvfreg, codpvnemb, codpvfemb, codpvnorp, codpvnfac, codpvffac, codpvtent, codpvctra, codpvglos, codpvifac, codpvmfac
FROM codpv;
SELECT codrpntra, codrpitem, codrpcfab, codrpcart, codrpcenv, codrpcant, codrpumcp, codrpstat, codrpmrcb
FROM codrp;
SELECT coeqcuneg, coeqcttra, coeqcnorg, coeqcndes, coeqcntra, coeqcftor
FROM coeqc;
SELECT cofprnreg, cofprnord, cofpruneg, cofprftra, cofprnomb, cofprnruc, cofprafac, cofprnfac, cofprnodf, cofprcctl, cofprtdoc, cofprcmon, cofprtcam, cofpritot, cofpriice, cofprexen, cofprvcrf, cofprtiva, cofprfreg, cofprmrcb, cofpruser, cofprhora, cofprfpro, cofpridsc, cofprtcom, cofprcesp, cofpriehd, cofpriipj, cofprtasa, cofproimp, cofprtas0, cofprgift
FROM cofpr;
SELECT cogapcgas, cogapdesc, cogapfdis
FROM cogap;
SELECT cogarnrec, cogarcgas, cogarftra, cogarimpt, cogarcmon, cogarfdis, cogarmrcb, cogaruser, cogarhora, cogarfpro
FROM cogar;
SELECT cogasnord, cogascgas, cogasftra, cogascmon, cogasimpt, cogasfdis
FROM cogas;
SELECT coglacalm, coglacgln
FROM cogla;
SELECT coglpcpvd, coglpcgln
FROM coglp;
SELECT cogponord, cogpocgas, cogpoitem, cogpoftra, cogpocart, cogpocfab, cogpopdis, cogpoidis, cogpocmon, cogpouser, cogpohora, cogpofpro
FROM cogpo;
SELECT cogprnrec, cogprcgas, cogpritem, cogprftra, cogprcart, cogprcfab, cogprpdis, cogpridis, cogprcmon, cogprning, cogprmrcb
FROM cogpr;
SELECT cogrdngas, cogrdftra, cogrdnord, cogrduneg, cogrdcgas, cogrdimpt, cogrdcmon, cogrdtcam, cogrdimpo, cogrdvmon, cogrddocf, cogrdnrec, cogrdmrcb
FROM cogrd;
SELECT cogrengas, cogreftra, cogrenord, cogreuneg, cogreacrd, cogrecvia, cogretdes, cogrecaja, cogrencta, cogrebank, cogrencbk, cogrenchq, cogrencpg, cogrectcp, cogreimpt, cogrecmon, cogretcam, cogreimpo, cogrevmon, cogrempag, cogredocf, cogreimpf, cogreexen, cogreiice, cogrecrdf, cogregls1, cogregls2, cogregls3, cogrenrec, cogremrcb, cogreuser, cogrehora, cogrefpro, cogrendoc
FROM cogre;
SELECT cohdvndev, cohdvndoc, cohdvftra, cohdvuneg, cohdvcpvd, cohdvcmon, cohdvcalm, cohdvglos, cohdvtcam, cohdvitot, cohdvmnta, cohdvfreg, cohdvncpc, cohdvnegr, cohdvtpos, cohdvmrcb, cohdvuser, cohdvhora, cohdvfpro
FROM cohdv;
SELECT cohnrnrec, cohnrnord, cohnruneg, cohnrndoc, cohnrftra, cohnrcalm, cohnrtcam, cohnrcpvd, cohnracre, cohnrfpag, cohnrplzo, cohnruplz, cohnrnamo, cohnrcmon, cohnriart, cohnridsc, cohnritot, cohnrfing, cohnrning, cohnrncpp, cohnrmfac, cohnrfreg, cohnrtpos, cohnrtiep, cohnrmrcb, cohnruser, cohnrhora, cohnrfpro, cohnrgls1, cohnrgls2, cohnrgls3
FROM cohnr;
SELECT cohornord, cohortord, cohorftra, cohorndoc, cohoruneg, cohorcpvd, cohorfgob, cohornped, cohorcffv, cohorcenv, cohormedt, cohoricot, cohorlugc, cohorfent, cohorcalm, cohordire, cohordent, cohormfac, cohorfpag, cohorplzo, cohoruplz, cohornamo, cohoracre, cohorcres, cohortcam, cohorcmon, cohoriant, cohorpdsc, cohoridsc, cohorigas, cohoriart, cohorimpt, cohorstat, cohorstan, cohorfsta, cohortsta, cohorstra, cohortiva, cohornegr, cohorgls1, cohorgls2, cohorgls3, cohoriiep, cohormrcb, cohoruser, cohorhora, cohorfpro
FROM cohor;
SELECT cohrpntra, cohrpnord, cohrpuneg, cohrpndoc, cohrpftra, cohrpcalm, cohrpcpvd, cohrpnrec, cohrpstat, cohrpmrcb, cohrpuser, cohrphora, cohrpfpro, cohrprent, cohrpndid
FROM cohrp;
SELECT coipduneg, coipdntra, coipditem, coipdftra, coipdttra, coipdcart, coipdcant, coipdcent
FROM coipd;
SELECT coiphntra, coiphftra, coiphuneg, coiphndoc, coiphttra, coiphcalm, coiphades, coiphfent, coiphgls1, coiphgls2, coiphgls3, coiphtorg, coiphuneo, coiphstra, coiphfsta, coiphmrcb, coiphuser, coiphhora, coiphfpro
FROM coiph;
SELECT colnrnrec, colnritem, colnrcart, colnrlote, colnrcant
FROM colnr;
SELECT conotnota, conotnord, conotasun, conotglos, conotfcom, conotfreg, conotmrcb, conotuser, conothora, conotfpro
FROM conot;
SELECT cooccnord, cooccccos, cooccscco, cooccuaut, cooccfaut
FROM coocc;
SELECT cooconcpg, cooconord, coocoimpt, coococmon, coocotcam, coocoimpo, coococmco
FROM cooco;
SELECT coodpcpvd, coodptpvd, coodpdsrv, coodpaexp, coodpfalt, coodpstat, coodparet
FROM coodp;
SELECT cooennord, cooencant
FROM cooen;
SELECT cooipcoip, cooipdesc, cooiptitu, cooipposi, cooipuser, cooiphora, cooipfpro
FROM cooip;
SELECT copcpfult
FROM copcp;
SELECT copglglne
FROM copgl;
SELECT copvdcpvd, copvdnrtb, copvdfpag, copvdplzo, copvduplz, copvdnamo, copvdcmon, copvdlicr, copvdpdes, copvdiiep
FROM copvd;
SELECT cordfnreg, cordffreg, cordfngas, cordftdoc, cordfcmon, cordftcam, cordfimpt, cordfiice, cordfexen, cordfmrcb, cordfuser, cordfhora, cordffpro, cordfidsc, cordfiehd, cordfiipj, cordftasa, cordfoimp, cordftas0, cordfgift
FROM cordf;
SELECT cordintra, cordintri, cordicart, cordiitem, cordiitei
FROM cordi;
SELECT coreonord, coreocmre, coreoporc
FROM coreo;
SELECT cormcnreg, cormcfreg, cormctipo, cormccpvd, cormccfab, cormccarn, cormccara, cormcdesn, cormcdesa, cormcplzn, cormcplza, cormcpunn, cormcpuna, cormccmon, cormccmoa, cormcuser, cormchora, cormcfpro
FROM cormc;
SELECT corpannit, corpacage, corpacrub, corpacreg
FROM corpa;
SELECT corpvcpvd, corpvrpvd, corpvtipo
FROM corpv;
SELECT corrccrub, corrccgru, corrcsubg, corrcccla, corrccscl
FROM corrc;
SELECT corrgcrub, corrgcgru
FROM corrg;
SELECT cortbnrtb, cortbdesc, cortbmnof
FROM cortb;
SELECT cortintra, cortintri, corticart, cortiitem, cortiitei
FROM corti;
SELECT cospvcpvd, cospvtsol, cospvspvd
FROM cospv;
SELECT cotmapref, cotmacorr
FROM cotma;
SELECT cotortord, cotordesc, cotorabre, cotorctcp, cotormbon, cotoruser, cotorhora, cotorfpro
FROM cotor;
SELECT cotowcodi, cotowdesc, cotowaboc, cotowabas
FROM cotow;
SELECT coviacvia, coviadesc, coviacctb, coviaadic
FROM covia;
SELECT covnrnrec, covnritem, covnrcart, covnrcant, covnrfvto
FROM covnr;
SELECT covppcvia
FROM covpp;
SELECT cpaacntra, cpaacitem, cpaaccodi, cpaacporc, cpaacfreg
FROM cpaac;
SELECT cpaconcto, cpacoitem, cpacocodi, cpacoporc, cpacofreg
FROM cpaco;
SELECT cpacpclsc, cpacpncpg, cpacpcapl, cpacpitem, cpacpcage, cpacpfreg, cpacpimpt, cpacpcmon, cpacpcprv, cpacpfact
FROM cpacp;
SELECT cpactccrg, cpactctcp
FROM cpact;
SELECT cpaplclsc, cpaplcapl, cpapldesc, cpapltapl, cpaplcctb, cpapladic, cpaplgexe
FROM cpapl;
SELECT cpavencpg, cpavettro, cpavetorg, cpavecloc, cpavemfac, cpavemfmn, cpavemrcb, cpaveccos
FROM cpave;
SELECT cpcacncto, cpcacfech, cpcacimpt, cpcaccmon, cpcacmpag, cpcacnant, cpcacuser, cpcachora, cpcacfpro
FROM cpcac;
SELECT cpcarcagp, cpcarcagr
FROM cpcar;
SELECT cpcgcccrg, cpcgcdesc, cpcgctipo, cpcgcfapl, cpcgccmon, cpcgcmont, cpcgctope, cpcgccctb, cpcgcadic, cpcgcmiva
FROM cpcgc;
SELECT cpcgpclsc, cpcgpccrg, cpcgpdesc, cpcgpcctb, cpcgpadic
FROM cpcgp;
SELECT cpcmrcnta
FROM cpcmr;
SELECT cpcnpncto, cpcnpnruc, cpcnpnomb, cpcnpconc, cpcnpglsa
FROM cpcnp;
SELECT cpcomccob, cpcomuneg, cpcomntra, cpcomftra, cpcomfpag, cpcompcom, cpcomimpt, cpcomicom, cpcomicop, cpcomcmon, cpcompcoa, cpcomicoa, cpcommpag, cpcomuser, cpcomhora, cpcomfpro
FROM cpcom;
SELECT cpconpref, cpconcorr, cpcondesc, cpconabre
FROM cpcon;
SELECT cpcpcncto, cpcpccage, cpcpcncpg, cpcpcclsc, cpcpcfreg, cpcpctipo, cpcpcimpt, cpcpccmon, cpcpcstat, cpcpcfsta, cpcpcuser, cpcpchora, cpcpcfpro
FROM cpcpc;
SELECT cpcrcncor, cpcrccage, cpcrcfcor, cpcrcccor, cpcrcgloc, cpcrcncuo, cpcrcfrco, cpcrccrco, cpcrcglor, cpcrcstat, cpcrcuser, cpcrchora, cpcrcfpro
FROM cpcrc;
SELECT cpctlnmes, cpctlflim, cpctlndoc, cpctlpcja, cpctlcdif, cpctlccos, cpctlcchb, cpctlachb, cpctlcchd, cpctlachd, cpctlciva, cpctlarre, cpctlaren, cpctltabo, cpctltdeb, cpctltcrf, cpctlaprf, cpctltcom, cpctlacom, cpctlmres, cpctltccm, cpctlaccm, cpctltcpm, cpctlacpm, cpctltcra
FROM cpctl;
SELECT cpctrntra, cpctrttra, cpctrftra, cpctrclsc, cpctrncpg, cpctrccrg, cpctrimpt, cpctrcmon, cpctrtcam, cpctrmrcb
FROM cpctr;
SELECT cpcvrntra, cpcvrntal, cpcvrnrec, cpcvrccob
FROM cpcvr;
SELECT cpdacncpg, cpdacfini, cpdacffin, cpdacncon, cpdacbanc, cpdactcom
FROM cpdac;
SELECT cpdapntra, cpdapmodn, cpdapcapl, cpdapcmon, cpdapcorr, cpdappdis, cpdapimpt
FROM cpdap;
SELECT cpdarncpg, cpdaridtz
FROM cpdar;
SELECT cpdcantra, cpdcauneg, cpdcaccos, cpdcapdis
FROM cpdca;
SELECT cpdccncto, cpdccuneg, cpdccccos, cpdccpdis
FROM cpdcc;
SELECT cpdlcnrpm, cpdlcntra
FROM cpdlc;
SELECT cpdopntra, cpdopttra, cpdopftra, cpdopclsc, cpdopncpg, cpdopimpt, cpdopimcg, cpdopcmon, cpdoptcam, cpdopmrcb
FROM cpdop;
SELECT cpdpmntra, cpdpmclsc, cpdpmncpg, cpdpmfreg, cpdpmctcp, cpdpmimpt, cpdpmsald, cpdpmcmon, cpdpmcreg, cpdpmuneg, cpdpmvncd, cpdpmmrcb
FROM cpdpm;

SELECT *FROM sucon
SELECT *FROM suctm
--ok
SELECT cpdtrntra, cpdtrttra, cpdtrftra, cpdtrclsc, cpdtrncpg, cpdtrimpt, cpdtrimcg, cpdtrcmon, cpdtrtcam, cpdtrmrcb
FROM cpdtr WHERE cpdtrntra = 1571;
SELECT cpfacnreg, cpfacfreg, cpfacncpg, cpfacuneg, cpfactdoc, cpfaccmon, cpfactcam, cpfacimpt, cpfaciice, cpfacexen, cpfacmrcb, cpfacuser, cpfachora, cpfacfpro, cpfaccapl, cpfacitem, cpfacidsc, cpfaciehd, cpfaciipj, cpfactasa, cpfacoimp, cpfactas0, cpfacgift
FROM cpfac;
SELECT cphcccorr, cphccncto, cphccstat, cphccfsta, cphccuser, cphcchora, cphccfpro
FROM cphcc;
SELECT cphopntra, cphopttra, cphopftra, cphopndoc, cphopuneg, cphopcsol, cphopcage, cphopnord, cphopnfac, cphopfemi, cphopipag, cphopcmon, cphoptcam, cphopfpag, cphopbank, cphopncbk, cphopglos, cphopstat, cphopfsta, cphopmrcb, cphopuser, cphophora, cphopfpro, cphoptpag, cphopbnef, cphoptreq
FROM cphop;
SELECT cphpmntra, cphpmftra, cphpmcage, cphpmcmon, cphpmtcam, cphpmmpag, cphpmnrpm, cphpmmrcb, cphpmuser, cphpmhora, cphpmfpro, cphpmttra, cphpmnemp
FROM cphpm;
--ok
SELECT cphtrntra, cphtrttra, cphtrftra, cphtrndoc, cphtruneg, cphtrccos, cphtrcage, cphtrcvia, cphtrtdes, cphtrcaja, cphtrncta, cphtrbank, cphtrncbk, cphtrnchq, cphtripag, cphtricob, cphtrimpt, cphtrcmon, cphtrtcam, cphtrccob, cphtrpcom, cphtrgls1, cphtrgls2, cphtrgls3, cphtrmpag, cphtrmrcb, cphtruser, cphtrhora, cphtrfpro
FROM cphtr WHERE cphtrntra = 1571;
SELECT cpliqnliq, cpliqfliq, cpliqccob, cpliquneg, cpliqpcom, cpliqpcoa, cpliqimpt, cpliqcmon, cpliqtcam, cpliqntra, cpliqftra, cpliqcage, cpliqncpg, cpliqmrcb, cpliquser, cpliqhora, cpliqfpro
FROM cpliq;
SELECT cpmcancpg, cpmcacpry, cpmcacprg, cpmcacfin
FROM cpmca;
SELECT cpmconcto, cpmcoclsc, cpmcotcon, cpmcondoc, cpmcouneg, cpmcofreg, cpmcofcon, cpmcocage, cpmconrlc, cpmcotprv, cpmcodprv, cpmcoctcp, cpmcocapl, cpmcocdis, cpmcoccos, cpmcoimpt, cpmcosald, cpmcocmon, cpmcotcam, cpmcofini, cpmcoplzo, cpmcouplz, cpmcofvto, cpmconamo, cpmcofppg, cpmcodfij, cpmcostat, cpmcostan, cpmcofsta, cpmcogls1, cpmcogls2, cpmcogls3, cpmcofact, cpmcomrcb, cpmcouser, cpmcohora, cpmcofpro, cpmconpld, cpmcotemp, cpmconres
FROM cpmco;
SELECT cpmcpclsc, cpmcpncpg, cpmcpctcp, cpmcpndoc, cpmcpuneg, cpmcpcage, cpmcpnrlc, cpmcpfreg, cpmcpmorg, cpmcptorg, cpmcpimpt, cpmcpsald, cpmcpcmon, cpmcptcam, cpmcpfpag, cpmcpfvto, cpmcpgls1, cpmcpgls2, cpmcpgls3, cpmcpgls4, cpmcpfact, cpmcpmrcb, cpmcpuser, cpmcphora, cpmcpfpro
FROM cpmcp;
SELECT cpmcsclsc, cpmcsncpg, cpmcsctcp, cpmcscapl, cpmcsunea, cpmcsccoa, cpmcsndoc, cpmcsuneg, cpmcscage, cpmcsnrlc, cpmcsfreg, cpmcsmorg, cpmcstorg, cpmcsimpt, cpmcssald, cpmcscmon, cpmcstcam, cpmcsfpag, cpmcsfvto, cpmcsgls1, cpmcsgls2, cpmcsgls3, cpmcsgls4, cpmcsfact, cpmcsmrcb, cpmcsuser, cpmcshora, cpmcsfpro
FROM cpmcs;
SELECT cpmmcntra, cpmmcclsc, cpmmcndoc, cpmmcfreg, cpmmcncto, cpmmcimpa, cpmmcimpt, cpmmcsala, cpmmcsald, cpmmccmon, cpmmcfvta, cpmmcfvto, cpmmcplzo, cpmmcuplz, cpmmcnamo, cpmmcfppg, cpmmcdfij, cpmmcfaca, cpmmcfact, cpmmccdia, cpmmccdis, cpmmcmrcb, cpmmcuser, cpmmchora, cpmmcfpro, cpmmcnpla, cpmmcnpld, cpmmctema, cpmmctemp, cpmmcnrea, cpmmcnres
FROM cpmmc;
SELECT cpmrcnrpm, cpmrcftra, cpmrccreg, cpmrcfvto, cpmrccmon, cpmrctcam, cpmrcgls1, cpmrcgls2, cpmrcmrcb, cpmrcuser, cpmrchora, cpmrcfpro, cpmrcttra, cpmrctipo, cpmrctdeu
FROM cpmrc;
SELECT cpnecncpg, cpnecccrg, cpnecmont, cpneccmon, cpnecfvig, cpnecfapl, cpnecuser, cpnechora, cpnecfpro
FROM cpnec;
SELECT cpopcntra, cpopcftra, cpopcndoc, cpopcncto, cpopcuneg, cpopcprdo, cpopccage, cpopcimpt, cpopccmon, cpopctcam, cpopcncpg, cpopcgls1, cpopcgls2, cpopcgls3, cpopcmrcb, cpopcuser, cpopchora, cpopcfpro
FROM cpopc;
SELECT cppacntra, cppaccage, cppacfech, cppacimpt, cppaccmon, cppacmgen, cppacfgen, cppacncpg
FROM cppac;
SELECT cppdvncpg, cppdvfech, cppdvimpt, cppdvcmon, cppdvmdev, cppdvfdev, cppdvuser, cppdvhora, cppdvfpro
FROM cppdv;
SELECT cppfictcp, cppficapl, cppficvi1, cppficvi2
FROM cppfi;
SELECT cpplantra, cpplancpg, cpplafpag, cpplaimpt, cpplauser, cpplahora, cpplafpro
FROM cppla WHERE cpplantra = 1571;
SELECT cpppantra, cpppacage, cpppafech, cpppaiest, cpppaiprv, cpppastat, cpppauaju, cpppafaju, cpppammov
FROM cpppa;
SELECT cpppcncto, cpppccage, cpppcfech, cpppcimpt, cpppccmon, cpppcmgen, cpppcfgen, cpppcncpg, cpppcuser, cpppchora, cpppcfpro
FROM cpppc;
SELECT cpppgncpg, cpppgfpag, cpppgimpt, cpppguser, cpppghora, cpppgfpro
FROM cpppg;
SELECT cppppncto, cppppuneg, cppppcage, cppppfech, cpppptprv, cppppcmon, cppppiest, cppppiprv, cpppppiva, cpppppivb, cppppirea, cppppstat, cppppuaju, cppppfaju, cppppuprv, cppppfprv, cppppuord, cppppford, cppppntra, cppppuser, cpppphora, cppppfpro
FROM cpppp;
SELECT cprcantra, cprcacmre, cprcaporc
FROM cprca WHERE cprcantra = 1571;
SELECT cprconcto, cprcocmre, cprcoporc
FROM cprco;
SELECT cprcpccrg, cprcpdias, cprcprani, cprcpranf, cprcpmont, cprcpfapl
FROM cprcp;
SELECT cprepntal, cprepnrec, cprepfreg, cprepccob, cprepgls1, cprepgls2, cprepgls3, cprepmrcb, cprepuser, cprephora, cprepfpro
FROM cprep;
SELECT cprfcnord, cprfcnfac, cprfcncpg, cprfcftra, cprfcndoc
FROM cprfc;
SELECT cptaantra, cptaaftra, cptaacapl, cptaaitem, cptaacodi, cptaapdis, cptaaimpt, cptaacmon
FROM cptaa;
SELECT cptacncto, cptactact
FROM cptac;
SELECT cptanntra, cptantact
FROM cptan;
SELECT cptcantal, cptcaccob
FROM cptca;
SELECT cptcpclsc, cptcpctcp, cptcpdesc, cptcpabre, cptcpctai, cptcpanai, cptcpctac, cptcpanac, cptcpapld, cptcpctdi, cptcpandi, cptcpctdc, cptcpandc, cptcpccos
FROM cptcp;
SELECT cptcrnrpm, cptcrclsc, cptcrctcp, cptcrttra, cptcruser
FROM cptcr;
SELECT cptcsntra, cptcsndoc, cptcscloc, cptcsuneg, cptcscage, cptcsndid, cptcstipo, cptcscvia, cptcscmon, cptcsimpt, cptcsimp1, cptcsimp2, cptcsimpf, cptcsntco, cptcsncx1, cptcsncx2, cptcsnord, cptcsnfac, cptcsmrcb, cptcsuser, cptcshora, cptcsfpro, cptcsnomc, cptcsimp3
FROM cptcs;
SELECT cptpmnrpm, cptpmuneg, cptpmcvia, cptpmntra, cptpmttra, cptpmcage
FROM cptpm;
SELECT cptrental, cptrefent, cptreccob, cptrereci, cptrerecf, cptrestat, cptregls1, cptregls2, cptregls3, cptreuser, cptrehora, cptrefpro
FROM cptre;
SELECT cpviaclsc, cpviacvia, cpviadesc, cpviacctb, cpviaadic
FROM cpvia;
SELECT ctcgcncre, ctcgcccrg, ctcgcmont, ctcgcmbaj, ctcgcntra, ctcgcuser, ctcgchora, ctcgcfpro
FROM ctcgc;
SELECT ctcgpccrg, ctcgpdesc, ctcgptpcg, ctcgpttra, ctcgpdias, ctcgpfapl, ctcgpbapl, ctcgpfcob, ctcgpcmon, ctcgpmont, ctcgpcctb, ctcgpadic, ctcgpmfac
FROM ctcgp;
SELECT ctconpfij, ctconcorr, ctcondscr, ctconabre
FROM ctcon;
SELECT ctctlcorr, ctctlcprb, ctctlcprd, ctctldctb, ctctldctd, ctctldpcb, ctctldpcd, ctctlpteb, ctctlpted, ctctlcdfc, ctctlccos, ctctlscco, ctctltave, ctctldeje, ctctldcas, ctctlpprv
FROM ctctl;
SELECT ctdeuncre, ctdeucage, ctdeutres, ctdeuuser, ctdeuhora, ctdeufpro
FROM ctdeu;
SELECT ctgcrncre, ctgcrtgar, ctgcrndoc, ctgcrmont, ctgcrcmon, ctgcrfven, ctgcrdsc1, ctgcrdsc2, ctgcrdsc3, ctgcruser, ctgcrhora, ctgcrfpro
FROM ctgcr;
SELECT ctmcrncre, ctmcrcage, ctmcrnlcr, ctmcrtcre, ctmcrcaut, ctmcrrseg, ctmcrdest, ctmcrrubr, ctmcrcmon, ctmcrmapt, ctmcrplzo, ctmcrgrac, ctmcrppgk, ctmcrppgi, ctmcrfpgk, ctmcrfpgi, ctmcrdpag, ctmcrstat, ctmcrfvca, ctmcrfvco, ctmcrfpvc, ctmcrfreg, ctmcrsald, ctmcruser, ctmcrhora, ctmcrfpro
FROM ctmcr;
SELECT ctobjcodi, ctobjdesc
FROM ctobj;
SELECT ctppgncre, ctppgfech, ctppgcapi, ctppginte, ctppguser, ctppghora, ctppgfpro
FROM ctppg;
SELECT ctpponcre, ctppofech, ctppocapi, ctppointe, ctppouser, ctppohora, ctppofpro
FROM ctppo;
SELECT ctrnvncre, ctrnvndoc, ctrnvfreg, ctrnvfvct, ctrnvcaut, ctrnvuser, ctrnvhora, ctrnvfpro
FROM ctrnv;
SELECT cttcnndoc, cttcnncre, cttcnntra, cttcnitem, cttcnfech, cttcnttrn, cttcnpref, cttcnccon, cttcndesc, cttcncctb, cttcnadic, cttcnimpi, cttcnimpc, cttcntcam, cttcnpost, cttcnftor, cttcnuser, cttcnhora, cttcnfpro
FROM cttcn;
SELECT cttcrtcre, cttcrdesc, cttcrccos, cttcrscco, cttcrfpgk, cttcrfpgi, cttcrkvib, cttcrkveb, cttcrkejb, cttcrkvid, cttcrkved, cttcrkejd, cttcrpvib, cttcrpveb, cttcrpejb, cttcrpvid, cttcrpved, cttcrpejd, cttcrigpb, cttcrigpd, cttcrdcas, cttcrtano, cttcrmfac
FROM cttcr;
SELECT cttdtntra, cttdtfech, cttdtncre, cttdtttrn, cttdtpref, cttdtccon, cttdtdesc, cttdtimpp, cttdtmrcb, cttdtuser, cttdthora, cttdtfpro
FROM cttdt;
SELECT cttgttgrt, cttgtdesc
FROM cttgt;
SELECT ctthdncre, ctthdfech, ctthdttrn, ctthdntra, ctthdndoc, ctthdcvia, ctthdcbco, ctthdctab, ctthdcchq, ctthdncja, ctthdncta, ctthdcmon, ctthdcbio, ctthdimpt, ctthdmrcb, ctthduser, ctthdhora, ctthdfpro
FROM ctthd;
SELECT cttsancre, cttsafvig, cttsatasa, cttsauser, cttsahora, cttsafpro
FROM cttsa;
SELECT epconpref, epconcorr, epcondesc, epconabre
FROM epcon;
SELECT epctlcmon, epctlfulp
FROM epctl;
SELECT epctpcpry, epctpcprg, epctpcpar, epctpcnta, epctpdesc, epctpfreg, epctpuser, epctphora, epctpfpro
FROM epctp;
SELECT epparcpar, eppardesc, epparfreg, epparuser, epparhora, epparfpro
FROM eppar;
SELECT eppodcpry, eppodcprg, eppodcobj, eppodgest, eppodnmes, eppodcfin, eppoduneg, eppodccos, eppodcmon, eppodmpre, eppodmrcb, eppodfreg, eppodfsta, eppoduser, eppodhora, eppodfpro
FROM eppod;
SELECT eppohcpry, eppohcprg, eppohcobj, eppohgest, eppohcfin, eppohuneg, eppohccos, eppohcnta, eppohporc, eppohmrcb, eppohfreg, eppohfsta, eppohuser, eppohhora, eppohfpro, eppohimpo
FROM eppoh;
SELECT eppppcpry, eppppcprg, eppppcpar, eppppcnta, eppppcfin, eppppcreg, eppppuneg, eppppccos, eppppanio, eppppnmes, eppppcmon, eppppmpre, eppppmres, eppppmeje, eppppfreg, eppppuser, epppphora, eppppfpro
FROM epppp;
SELECT eprednres, epredfreg, epreditem, epredcpry, epredcprg, epredcpar, epredcnta, epredcfin, epredcreg, epreduneg, epredccos, epredapli, epredcmon, epredmres, epredmuti, epredfdis, epredstat, epredmrcb, epreduser, epredhora, epredfpro, epredmlib
FROM epred;
SELECT eprehnres, eprehfreg, eprehdesc, eprehareg, eprehaune, eprehacco, eprehamod, eprehausr, eprehcmon, eprehmres, eprehmuti, eprehstat, eprehmrcb, eprehuser, eprehhora, eprehfpro, eprehuncf, eprehgls1, eprehgls2, eprehgls3, eprehmlib, eprehtres, eprehtdoc
FROM epreh;
SELECT epretnres, epretftra, epretmodn, epretnopr, eprettorg, epretcmnt, epretimpt, epretcmon, epretmuti
FROM epret;
SELECT epsrltabl, epsrlcorr
FROM epsrl;
SELECT eptppntra, eptppttrn, eptppnres, eptppcpry, eptppcprg, eptppcpar, eptppcnta, eptppcfin, eptppcreg, eptppuneg, eptppccos, eptppanio, eptppnmes, eptppfreg, eptpptfin, eptppcmon, eptppmeje, eptppmdis, eptppmodn, eptppnopr, eptpptorg, eptppccon, eptppglos, eptppftra, eptppcmnt, eptppimpt, eptpptcam, eptppmrcb, eptppfmrc, eptppumrc, eptppuser, eptpphora, eptppfpro
FROM eptpp;
SELECT feafctent, feafcentg, feafctdoc, feafcitem, feafcnnit, feafccafc, feafcstat
FROM feafc;
SELECT fecdfnnit, fecdftent, fecdfentg, fecdfgest, fecdfcorr, fecdffulf
FROM fecdf;
SELECT feconpref, feconcorr, fecondesc, feconabre, feconmrcb
FROM fecon;
SELECT fecpsnnit, fecpscimp, fecpsdesc, fecpscaco
FROM fecps;
SELECT fedattipo, fedatntra, fedattdoi, fedatcomp, fedatmrev, fedatcdse, fedatcley, fedatcpai, fedatnmes, fedatnano, fedatnest, fedatmrcb
FROM fedat;
SELECT fedconnit, fedconomb, fedcotipo, fedcofife, fedcourlq
FROM fedco;
SELECT fedfeiddf, fedfeitem, fedfeaeco, fedfecpsi, fedfecpro, fedfedesc, fedfecant, fedfeumed, fedfepuni, fedfemdes, fedfestot, fedfecdtr, fedfenser, fedfeimei, fedfectha, fedfecnan, fedfecdia, fedfemice, fedfeaciv, fedfepnic, fedfeaesp, fedfeapor, fedfemaes, fedfemicp, fedfecnic, fedfeporc, fedfeespe, fedfeedet, fedfenqso, fedfeemed, fedfename, fedfenifm, fedfenofm, fedfefmed, fedfepdid, fedfenaci, fedfemrcb, fedfestat
FROM fedfe;
SELECT fedsecodi, fedsedesc, fedsetdof, fedsetitu, fedsesubt, fedsecley, fedsestat
FROM fedse;
SELECT feeaetent, feeaeentg, feeaetdoc, feeaeitem, feeaennit, feeaecodi, feeaetipf, feeaestat
FROM feeae;
SELECT feeistent, feeisentg, feeisnnit, feeisfini
FROM feeis;
SELECT fehfeiddf, fehfenemi, fehfersem, fehfemuni, fehfetelf, fehfenfac, fehfenacf, fehfenncd, fehfefefa, fehfemtor, fehfemtde, fehfemdcd, fehfemecd, fehfeccuf, fehfecufd, fehfecsuc, fehfedire, fehfecpve, fehfefemi, fehfersoc, fehfectdi, fehfendoc, fehfecomp, fehfeccli, fehfecmpa, fehfentar, fehfemtot, fehfemtsi, fehfemgca, fehfedadi, fehfecafc, fehfecmon, fehfetcam, fehfemtmo, fehfemdpb, fehfeinad, fehfeleye, fehfeusua, fehfecdse, fehfeciud, fehfezona, fehfenmed, fehfefreg, fehfehora, fehfegest, fehfemmes, fehfenest, fehfeteve, fehfeleve, fehfefeve, fehfeaeve, fehfensal, fehfedsal, fehfemser, fehfedoco, fehfedico, fehfenpre, fehfemtaf, fehfemled, fehfel317, fehfemtoj, fehfemtsl, fehfemdes, fehfepfac, fehfecpai, fehfepveh, fehfetenv, fehfemice, fehfemtpo, fehfenpro, fehfenrle, fehfecpag, fehfepent, fehfechue, fehfechab, fehfecmay, fehfecmen, fehfefiho, fehfenotu, fehfersot, fehfe1886, fehfeckwh, fehfecmcu, fehfedley, fehfemdtd, fehfetase, fehfetalu, fehfeansi, fehfeopni, fehfeidca, fehfemtpu, fehfeomon, fehfeinco, fehfeincd, fehfepdes, fehfeldes, fehfecgna, fehfegnfo, fehfetffr, fehfetgin, fehfemode, fehfecgin, fehfepvbr, fehfegtfr, fehfesfro, fehfemtfr, fehfemsin, fehferemi, fehfecons, fehfelapu, fehfeidbd, fehfemrcb, fehfestat, fehfecsta, fehfecres, fehfetres, fehfeifee, fehfecont, fehfelote, fehfeidlo, fehfeufac, fehfectip, fehfemodn, fehfenopr, fehfentra, fehfefsta, fehfeusrr, fehfesest, fehfescre, fehfeslme, fehfesfre, fehfeshre, fehfesler, fehfesval, fehfestva, fehfepnfe, fehfepnfc, fehfepnft, fehfevfva, fehfevfco, fehfevhva, fehfevhco, fehfeecdf, fehfecedo, fehfecsis, fehfectio, fehfetcof, fehfegesc, fehfecmot, fehfefuli, fehfeevid, fehfeccon
FROM fehfe;
SELECT feidscodi, feidsfini
FROM feids;
SELECT felvtnnit, felvtnfac, felvtfuli, felvtccuf, felvtcafc, felvtcdse, felvtftra, felvthtra, felvttdoc, felvtnruc, felvtcomp, felvtnomb, felvtnauc, felvtemai, felvtnufg, felvtimpt, felvtiice, felvtiehd, felvtexen, felvtsiva, felvtideb, felvttiva, felvtuneg, felvtcloc, felvtcpos, felvtmodn, felvtnopr, felvtntra, felvtstat, felvtfsta, felvtsimp, felvtilot, felvtuser, felvthora, felvtfpro, felvtita0, felvtidbr, felvtibon, felvtgfac, felvtsenv
FROM felvt;
SELECT fentannit, fentannta, fentafuli, fentaccuf, fentacafc, fentatdoc, fentacdse, fentaftra, fentahtra, fentatdoi, fentanruc, fentacomp, fentanomb, fentanauc, fentaemai, fentanufg, fentaimpt, fentaiice, fentaiehd, fentaneto, fentaifis, fentativa, fentauneg, fentacloc, fentamorg, fentatorg, fentastat, fentafsta, fentacufo, fentanfao, fentamoro, fentatoro, fentandev, fentauser, fentahora, fentafpro
FROM fenta;
SELECT fepcstipo, fepcspref
FROM fepcs;
SELECT fepfffini, fepffucli, fepffsucc, fepffurlq, fepffmffa, fepffccef, fepffmoco, fepffcsis, fepffema1
FROM fepff;
SELECT fepsitipo, fepsicimp, fepsidesc
FROM fepsi;
SELECT fepvtnnit, fepvtcpos, fepvtdesc, fepvtcsuc
FROM fepvt;
SELECT fercinnit, fercitipo, fercicsai, fercicimp, fercifreg
FROM ferci;
SELECT fercpncja, fercpnnit, fercpcpos
FROM fercp;
SELECT feresnemi, feresccuf, feresifee, feresiddf, feresfemi, feresctip, ferescdse, feresoper, feresmoda, feresform, ferescodi, ferescrec, feresdesc, feresslme
FROM feres;
SELECT ferfcnnit, ferfccafc, ferfcfreg, ferfccdse, ferfcfaci, ferfcfacf, ferfcflem, ferfccsuc, ferfccpos, ferfcuser, ferfchora, ferfcfpro
FROM ferfc;
SELECT fersitipo, fersicsai, fersicimp
FROM fersi;
SELECT ftlvtafac, ftlvtnfac, ftlvtnord, ftlvtcctl, ftlvtftra, ftlvtnruc, ftlvtnomb, ftlvtimpt, ftlvtiice, ftlvtiehd, ftlvtexen, ftlvtsiva, ftlvtideb, ftlvttiva, ftlvtuneg, ftlvtcloc, ftlvtmodn, ftlvtnopr, ftlvtntra, ftlvtstat, ftlvtfsta, ftlvtsimp, ftlvtilot, ftlvtuser, ftlvthora, ftlvtfpro, ftlvtita0, ftlvtidbr, ftlvtibon, ftlvtcesp, ftlvtgfac, ftlvtnnit, ftlvtcage
FROM ftlvt;
SELECT gbadtcage
FROM gbadt;
SELECT gbagecage, gbagenomb, gbagetper, gbagesexo, gbagefnac, gbagenaci, gbageeciv, gbageprof, gbagetdid, gbagendid, gbagecorg, gbagenruc, gbagezona, gbagepais, gbagedpto, gbageciud, gbagedir1, gbagedir2, gbagetlfd, gbagetlfo, gbageintr, gbagetlex, gbagenfax, gbagencas, gbagecoe1, gbagecoe2, gbagepweb, gbagerubr, gbageact1, gbageact2, gbagerepr, gbageobs1, gbageobs2, gbagefreg, gbagevias, gbagestat, gbagefsta, gbageuser, gbagehora, gbagefpro, gbageappa, gbageapma, gbagenoms, gbagenoml, gbagehcli, gbageuneg, gbageapca, gbagecnae, gbagetipo, gbagecate
FROM gbage;
SELECT gbarucrut, gbarudvis, gbarucage, gbaruorec, gbaruhvis
FROM gbaru;
SELECT gbcbacage, gbcbacbco, gbcbancta, gbcbacmon
FROM gbcba;
SELECT gbccbccnv, gbccbncta, gbccbmarc
FROM gbccb;
SELECT gbcfmcres, gbcfmtres, gbcfmmoni, gbcfmmonf, gbcfmfact
FROM gbcfm;
SELECT gbciupais, gbciudpto, gbciuciud, gbciudesc, gbciuabre
FROM gbciu;
SELECT gbcnvcbco, gbcnvcreg, gbcnvccnv
FROM gbcnv;
SELECT gbcobcage, gbcobpcom, gbcobcmon, gbcobfpag, gbcobflqc, gbcobflqp, gbcobstat
FROM gbcob;
SELECT gbcomcage, gbcomcomp
FROM gbcom;
SELECT gbconpfij, gbconcorr, gbcondesc, gbconabre
FROM gbcon;
SELECT gbdacinst, gbdacdins, gbdacfult
FROM gbdac;
SELECT gbdagcage, gbdagdpag, gbdagmems, gbdagcmon
FROM gbdag;
SELECT gbdbacage, gbdbacbco, gbdbaccli
FROM gbdba;
SELECT gbdfagfam, gbdfafami, gbdfasfam
FROM gbdfa;
SELECT gbdfccage, gbdfcnnit, gbdfcnomf
FROM gbdfc;
SELECT gbdfetipo, gbdfenent, gbdfefdia, gbdfefmes, gbdfefano, gbdfedesc
FROM gbdfe;
SELECT gbdircage, gbdiritem, gbdirtdir, gbdirpais, gbdirdpto, gbdirciud, gbdirzona, gbdircmun, gbdirubn1, gbdirubn2, gbdirubn3, gbdirubn4, gbdirrefu, gbdirubn5, gbdirubn6, gbdirnroc, gbdirdire, gbdirrefe, gbdirpost, gbdircsvp, gbdircdom, gbdirredo, gbdirnrdo, gbdirugps, gbdirlong, gbdirlati, gbdirambg, gbdirmpri, gbdiruser, gbdirhora, gbdirfpro
FROM gbdir;
SELECT gbdoccage, gbdocndid, gbdoccorg, gbdocfvid, gbdocnruc, gbdocfvru, gbdocfreg, gbdocuser, gbdochora, gbdocfpro
FROM gbdoc;
SELECT gbdomcdom, gbdomndom, gbdomtdom, gbdompais, gbdomdpto, gbdomciud, gbdomzona
FROM gbdom;
SELECT gbdptpais, gbdptdpto, gbdptdesc
FROM gbdpt;
SELECT gbdstntra, gbdsttbla, gbdstitem, gbdstcl01, gbdstcl02, gbdstcl03, gbdstcl04, gbdstcl05, gbdstcl06, gbdstcl07, gbdstcl08, gbdstcl09, gbdstcl10, gbdstcl11, gbdstcl12, gbdstcl13, gbdstcl14, gbdstcl15, gbdstcl16, gbdstcl17, gbdstcl18, gbdstcl19, gbdstcl20, gbdstcl21, gbdstcl22, gbdstcl23, gbdstcl24, gbdstcl25, gbdstcl26, gbdstcl27, gbdstcl28, gbdstcl29, gbdstcl30, gbdstcl31, gbdstcl32, gbdstcl33, gbdstcl34, gbdstcl35, gbdstcl36, gbdstcl37, gbdstcl38, gbdstcl39, gbdstcl40, gbdstcl41, gbdstcl42, gbdstcl43, gbdstcl44, gbdstcl45, gbdstcl46, gbdstcl47, gbdstcl48, gbdstcl49, gbdstcl50, gbdstcl51, gbdstcl52, gbdstcl53, gbdstcl54, gbdstcl55, gbdstcl56, gbdstcl57, gbdstcl58, gbdstcl59, gbdstcl60, gbdstcl61, gbdstcl62, gbdstcl63, gbdstcl64, gbdstcl65, gbdstcl66, gbdstcl67, gbdstcl68, gbdstcl69, gbdstcl70, gbdstcl71, gbdstcl72, gbdstcl73, gbdstcl74, gbdstcl75, gbdstcl76, gbdstcl77, gbdstcl78, gbdstcl79, gbdstcl80, gbdstcl81, gbdstcl82, gbdstcl83, gbdstcl84, gbdstcl85, gbdstcl86, gbdstcl87, gbdstcl88, gbdstcl89, gbdstcl90, gbdstcl91, gbdstcl92, gbdstcl93, gbdstcl94, gbdstcl95, gbdstcl96, gbdstcl97, gbdstcl98, gbdstcl99, gbdstcl100
FROM gbdst;
SELECT gbemacage, gbemaitem, gbematema, gbemamail, gbemampri, gbemauser, gbemahora, gbemafpro
FROM gbema;
SELECT gbeqcinst, gbeqcmodu, gbeqcntps, gbeqcntsa, gbeqcmrcb
FROM gbeqc;
SELECT gberrcerr, gberrdesc
FROM gberr;
SELECT gbfconvta, gbfcofser, gbfcoocom, gbfcotcop, gbfcotcov, gbfconomb
FROM gbfco;
SELECT gbfrmcfun, gbfrmnomb, gbfrmcarg, gbfrmnaut, gbfrmmont
FROM gbfrm;
SELECT gbgltntab, gbgltntra, gbgltitem, gbgltglos
FROM gbglt;
SELECT gbhstntra, gbhstuser, gbhsthora, gbhstfpro
FROM gbhst;
SELECT gbhtcfech, gbhtctcof, gbhtctcco, gbhtctcve, gbhtcuser, gbhtchora, gbhtcfpro
FROM gbhtc;
SELECT gbhtmfech, gbhtmcmon, gbhtmtcof, gbhtmtcco, gbhtmtcve, gbhtmuser, gbhtmhora, gbhtmfpro
FROM gbhtm;
SELECT gblabcage, gblabitem, gblabcemp, gblabnemp, gblabtelf, gblabinte, gblabtcar, gblabcarg, gblabfcar, gblabtgan, gblabcmon, gblaboing, gblabobsv, gblabfing, gblabfreg, gblabcane, gblabtneg, gblabtten, gblabmrcb, gblabfmrc, gblabuser, gblabhora, gblabfpro
FROM gblab;
SELECT gblpccage, gblpccgru, gblpccsub, gblpcccla, gblpccscl
FROM gblpc;
SELECT gbmestorg, gbmesstat, gbmesmens, gbmestdes
FROM gbmes;
SELECT gbmoncmon, gbmondesc, gbmonabre, gbmontcof, gbmontcco, gbmontcve, gbmonscam, gbmonmbas, gbmonmefe, gbmonmcam, gbmonshab, gbmonfhab
FROM gbmon;
SELECT gbmuncmun, gbmundesc, gbmunambg, gbmunpais, gbmundpto
FROM gbmun;
SELECT gbnotnota, gbnottnot, gbnotcage, gbnotasun, gbnotglos, gbnotfcom, gbnotfreg, gbnotmrcb, gbnotuser, gbnothora, gbnotfpro
FROM gbnot;
SELECT gbodacage, gbodanoco, gbodafvid, gbodatmto, gbodanedu, gbodatten, gbodatviv, gbodamerg, gbodacmoe, gbodanopv, gbodatepv, gbodacont, gbodarep1, gbodatrp1, gbodarep2, gbodatrp2, gbodamtvo, gbodauser, gbodahora, gbodafpro, gbodacrel, gbodagsan
FROM gboda;
SELECT gbodenomc
FROM gbode;
SELECT gbodicorg, gbodidesc
FROM gbodi;
SELECT gbpaipais, gbpaidesc
FROM gbpai;
SELECT gbpdvcage, gbpdvdini, gbpdvdfin, gbpdvporc
FROM gbpdv;
SELECT gbplaccnv, gbplatipo, gbplancta, gbplacmon, gbplanpla, gbplacreg, gbplacvia, gbplafini, gbplaffin, gbplafsol, gbplafvto, gbplaimpt
FROM gbpla;
SELECT gbpldnpla, gbpldcage, gbpldncta, gbpldfapl, gbpldimpa
FROM gbpld;
SELECT gbplzcplz, gbplzdesc
FROM gbplz;
SELECT gbpmtnser, gbpmtnomb, gbpmtdir1, gbpmtdir2, gbpmttelf, gbpmtnfax, gbpmttlex, gbpmtnruc, gbpmtpmes, gbpmtumes, gbpmtgest, gbpmtfini, gbpmtffin, gbpmtfdia, gbpmttcof, gbpmttcco, gbpmttcve, gbpmtmimp, gbpmtmcon, gbpmtiiva, gbpmtitra, gbpmtcusr, gbpmtfcod, gbpmtdex1, gbpmtdex2, gbpmtdex3, gbpmtcnae, gbpmtcaco, gbpmtdir3, gbpmtdir4
FROM gbpmt;
SELECT gbposcpos, gbposdesc, gbposcloc, gbposcalm, gbposncja, gbposnsuc, gbposcreg, gbposlpre, gbposmlpr, gbposmrep, gbposmodc, gbposmcar, gbposmica, gbposflem, gbposcvta, gbpostmpo, gbpostuno, gbposmarq, gbposcdie, gbposcdid, gbposnomb, gbposcsal, gbposhost, gbposport, gbposemaf, gbposclav, gbposcerr, gbposcbsb, gbposncsb, gbposcbab, gbposncab, gbposcbsd, gbposncsd, gbposcbad, gbposncad, gbposmvta
FROM gbpos;
SELECT gbrcbcbco, gbrcbcbas
FROM gbrcb;
SELECT gbrelcage, gbrelcagr, gbreltrel, gbrelmdep, gbrelitem, gbreluser, gbrelhora, gbrelfpro
FROM gbrel;
SELECT gbrescage, gbrescres, gbrestres, gbresfreg, gbresmrcb, gbresuser, gbreshora, gbresfpro
FROM gbres;
SELECT gbrmcmodn, gbrmcpfij, gbrmccorr
FROM gbrmc;
SELECT gbrnesneg, gbrnempre, gbrnempca, gbrnepvpn, gbrnepvpp, gbrnemdes, gbrnemdca, gbrnepvdn, gbrnepvdp, gbrnempct, gbrnemcca, gbrnepvcn, gbrnepvcp, gbrneaapv, gbrneaact, gbrneifpf, gbrneidcf, gbrneiief, gbrnemvta, gbrnedaco, gbrnerauv, gbrneiehd, gbrnevias, gbrnectrg, gbrnecgca, gbrnepvgp, gbrnecimp, gbrnedpre, gbrnefgob, gbrneicet, gbrneicia, gbrnecdpv, gbrnedprv, gbrnefajp, gbrnecade, gbrnetdpp, gbrneupse, gbrnemcfi, gbrnecpos, gbrneaart, gbrnelcba, gbrneccro, gbrnecslp, gbrnecsld, gbrneiicv, gbrnedofe, gbrnemare, gbrnefcpv, gbrnemiip, gbrnebdgr, gbrnencsc, gbrnedtpt, gbrnesnco, gbrnencfc, gbrneiaef, gbrneilef, gbrneidsf
FROM gbrne;
SELECT gbrnggest, gbrngadmf
FROM gbrng;
SELECT gbrnisnet, gbrnictrc, gbrniiloi, gbrninllc, gbrniarec, gbrniavco, gbrnicscl, gbrniindv, gbrnimtpc, gbrnicpca, gbrnicodm, gbrnicemp, gbrniidav, gbrnicdti, gbrniauda, gbrnipmov, gbrnifisn, gbrniicft, gbrnicaes, gbrnidcpt, gbrniiccv, gbrnigcpl, gbrnicdpc, gbrnictpo, gbrnitrri, gbrnipiia, gbrniraeg, gbrnicufv, gbrnicetc, gbrnicspa, gbrnicopr
FROM gbrni;
SELECT gbrptmodn, gbrptopci, gbrptttra, gbrptftra, gbrptnope, gbrptntra, gbrptndoc
FROM gbrpt;
SELECT gbrswnser, gbrswttor, gbrswtorg, gbrswtdes
FROM gbrsw;
SELECT gbrubrubr, gbrubdesc
FROM gbrub;
SELECT gbrutcrut, gbrutdesc, gbrutpais, gbrutdpto, gbrutciud, gbrutcage, gbrutmpri
FROM gbrut;
SELECT gbsuccsuc, gbsucdesc, gbsuccplz
FROM gbsuc;
SELECT gbtdemodn, gbtdettra, gbtdentra, gbtdedest
FROM gbtde;
SELECT gbtlfcage, gbtlfitem, gbtlfttlf, gbtlfntlf, gbtlfmpri, gbtlfuser, gbtlfhora, gbtlffpro
FROM gbtlf;
SELECT gbucvusrn, gbucvuser, gbucvhora, gbucvfpro
FROM gbucv;
SELECT gbuhccage, gbuhcuneg, gbuhcubic
FROM gbuhc;
SELECT gbvcvcage, gbvcvvias
FROM gbvcv;
SELECT gbvencage, gbvenpcom, gbvencmon, gbvenfpag, gbvenfulq, gbvenstat
FROM gbven;
SELECT gbvzlcage, gbvzlzona, gbvzlcgru, gbvzlcsub, gbvzlccla, gbvzlcscl
FROM gbvzl;
SELECT gbzonzona, gbzondesc, gbzonpais, gbzondpto, gbzonciud, gbzonzsup, gbzondvis
FROM gbzon;
SELECT gbzsuzsup, gbzsudesc
FROM gbzsu;
SELECT hoarcntra, hoarcpref, hoarccorr, hoarctdes
FROM hoarc;
SELECT hotrnntra, hotrnnfol, hotrnuneg, hotrnuneh, hotrnnhab, hotrnnhpd, hotrnftra, hotrnndoc, hotrnpref, hotrncorr, hotrnimpt, hotrncmon, hotrntcam, hotrngls1, hotrngls2, hotrngls3, hotrnmorg, hotrntorg, hotrnmrcb, hotrntliq, hotrnmcar, hotrnuser, hotrnhora, hotrnfpro
FROM hotrn;
SELECT htblquneg, htblqbloq, htblqdesc
FROM htblq;
SELECT htcoanage, htcoacomi
FROM htcoa;
SELECT htconpref, htconcorr, htcondesc, htconabre
FROM htcon;
SELECT htcpccage, htcpcplzo
FROM htcpc;
SELECT htctlndoc, htctlntra, htctlshab, htctlcthn, htctlathn, htctlcthe, htctlathe, htctlcpcj, htctlcdif, htctlccod, htctlmare, htctlcare, htctlaare, htctlcchn, htctlcche, htctlctjc, htctltcce, htctlacce, htctlitra, htctlatra, htctliiva, htctlaiva, htctlgtra, htctlagtr, htctlgiva, htctlagiv, htctltper, htctlcgch, htctlccph, htctlcpse, htctlhorl, htctlnmes, htctlfulp, htctlccdc, htctlcdev, htctlcdae, htctlcdes, htctlccde
FROM htctl;
SELECT htcununeg, htcunfcie
FROM htcun;
SELECT htfhhnfol, htfhhuneg, htfhhnhab, htfhhnhpd, htfhhitem, htfhhthpd, htfhhfing, htfhhfsal, htfhhhing, htfhhhsal, htfhhpcia, htfhhstat, htfhhuser, htfhhhora, htfhhfpro
FROM htfhh;
SELECT htfolnfol, htfolfreg, htfoluneg, htfolcage, htfolfing, htfolhing, htfolfsal, htfolnres, htfolmcte, htfolmefe, htfolmtrj, htfolntrj, htfolttrj, htfolfexp, htfolndid, htfolrubr, htfolncia, htfolnage, htfolfliq, htfolnham, htfolgls1, htfolgls2, htfolgls3, htfolnadu, htfolnmen, htfolstat, htfolmrcb, htfoluser, htfolhora, htfolfpro, htfolshab
FROM htfol;
SELECT hthabuneg, hthabnhab, hthabdesc, hthabthab, hthabbloq, hthabpiso, hthabstat, hthabsgob, hthabnfol, hthabgls1, hthabgls2, hthabgls3, hthabfmin, hthabfmfi, hthabstdo
FROM hthab;
SELECT hthafnfol, hthafuneg, hthafnhab, hthaffing, hthaffsal, hthafthab, hthaftrfa, hthafitar, hthafimpt, hthafcmon, hthafstat, hthafnhpd, hthafuser, hthafhora, hthaffpro
FROM hthaf;
SELECT hthpdnhpd, hthpdnomb, hthpdndid, hthpdcbss, hthpddir1, hthpddir2, hthpdtelf, hthpdfnac, hthpdsexo, hthpdeciv, hthpdprof, hthpdnaci, hthpdgls1, hthpdgls2, hthpdgls3, hthpdcalf
FROM hthpd;
SELECT htncdntra, htncdftra, htncdmesa, htncdcmon, htncditem, htncdcart, htncdcant, htncdpvta, htncdstat
FROM htncd;
SELECT htncontra, htncondoc, htncoftra, htncouneg, htncocloc, htncocser, htncomesa, htncocmon, htncotcam, htnconvta, htncostat, htncouser, htncohora, htncofpro
FROM htnco;
SELECT htortnord, htortfaci, htortfacf, htortfreg, htortfaut, htortdval, htortflem, htortuneg, htortnsuc, htortstat
FROM htort;
SELECT htprcpcia, htprcdesc
FROM htprc;
SELECT htpseuneg, htpsecser, htpseimpt, htpsecmon, htpsepvin, htpsepvip
FROM htpse;
SELECT htpsicser, htpsiuser, htpsihora, htpsifpro
FROM htpsi;
SELECT htpsouneg, htpsobloq, htpsopiso, htpsodesc
FROM htpso;
SELECT htresnres, htresfreg, htresuneg, htrescage, htresnomb, htresncia, htresdcia, htrespcia, htresfing, htresfsal, htresnadu, htresnmen, htresnhab, htresmcte, htresmefe, htresmtrj, htresntrj, htresttrj, htresfexp, htresndid, htrestres, htresvres, htresresr, htresnage, htresdage, htrespcom, htresdire, htrestelf, htresnfax, htresgls1, htresgls2, htresgls3, htresstat, htresfsta, htresmrcb, htresuser, htreshora, htresfpro, htresshab
FROM htres;
SELECT htroonres, htroouneg, htroofing, htroohing, htroofsal, htrooitem, htroonomb, htroonhab, htroothab, htrootrfa, htroonfol, htroostat, htroouser, htroohora, htroofpro
FROM htroo;
SELECT htrsfnres, htrsfuneg, htrsfcser, htrsfnfol
FROM htrsf;
SELECT htslccloc, htslccser, htslccmon, htslcporc
FROM htslc;
SELECT httarntra, httarftra, httarnres, httarndoc, httaruneg, httarimar, httarmare, httarimpt, httarcmon, httartcam, httarpefe, httarncja, httarpchq, httarptrj, httargls1, httargls2, httargls3, httarstat, httarmrcb, httaruser, httarhora, httarfpro
FROM httar;
SELECT htthathab, htthadesc, htthaabre
FROM httha;
SELECT htthrnres, htthruneg, htthrthab, htthrtrfa, htthrfing, htthrfsal, htthrcant, htthritar, htthrimpt, htthrcmon, htthrstat, htthruser, htthrhora, htthrfpro
FROM htthr;
SELECT httmvpref, httmvcorr, httmvdesc, httmvccos, httmvctbl, httmvadic, httmvmfis
FROM httmv;
SELECT httrantra, httraftra, httrauneg, httrahabo, httratrfo, httraimpo, httracmoo, httrahabd, httratrfd, httraimpd, httracmod, httranhpd, httranfol, httrafing, httrafsal, httragls1, httragls2, httragls3, httrauser, httrahora, httrafpro
FROM httra;
SELECT httrnntra, httrnnfol, httrnuneg, httrnuneh, httrnnhab, httrnnhpd, httrnftra, httrnndoc, httrnpref, httrncorr, httrnimpt, httrncmon, httrntcam, httrngls1, httrngls2, httrngls3, httrnmorg, httrntorg, httrnmrcb, httrntliq, httrnmcar, httrnuser, httrnhora, httrnfpro
FROM httrn;
SELECT httrtthab, httrttrfa, httrtdesc, httrtimpt, httrtcmon, httrtmdno, httrtpvtn, httrtpvtp
FROM httrt;
SELECT htuhtuser, htuhtuneg, htuhtcloc, htuhtcser, htuhtcalm, htuhtcven
FROM htuht;
SELECT htvtrntra, htvtrftra, htvtruneg, htvtrpref, htvtrcorr, htvtrpefe, htvtrncja, htvtrpchq, htvtrptrj, htvtrpcte, htvtrncte, htvtrphab, htvtrnhab, htvtrpxce, htvtrnxce, htvtrcmon, htvtrtcam, htvtrnfol, htvtrmrcb, htvtriliq, htvtrnliq, htvtrpdsc, htvtridsc
FROM htvtr;
SELECT *
FROM ilasa;
SELECT *
FROM ilasf;
SELECT *
FROM ilauc;
SELECT *
FROM ilaut;
SELECT *
FROM ilavc;
SELECT *
FROM ilben;
SELECT *
FROM ilbtc;
SELECT *
FROM ilbtl;
SELECT *
FROM ilbtr;
SELECT *
FROM ilcag;
SELECT *
FROM ilcar;
SELECT *
FROM ilcba;
SELECT *
FROM ilcbc;
SELECT *
FROM ilcdd;
SELECT *
FROM ilcdi;
SELECT *
FROM ilcdl;
SELECT *
FROM ilcdu;
SELECT *
FROM ilcep;
SELECT *
FROM ilces;
SELECT *
FROM ilcev;
SELECT *
FROM ilcfi;
SELECT *
FROM ilcgc;
SELECT *
FROM ilcge;
SELECT *
FROM ilcgp;
SELECT *
FROM ilcgr;
SELECT *
FROM ilclm;
SELECT *
FROM ilclo;
SELECT *
FROM ilcoe;
SELECT *
FROM ilcom;
SELECT *
FROM ilcon;

SELECT *
FROM ilcop;
SELECT *
FROM ilctl;
SELECT *
FROM ildae;
SELECT *
FROM ildar;
SELECT *
FROM ildca;
SELECT *
FROM ildcp;
SELECT *
FROM ildep;
SELECT *
FROM ilder;
SELECT *
FROM ildeu;
SELECT *
FROM ildlm;
SELECT *
FROM ildlo;
SELECT *
FROM ildom;
SELECT *
FROM ildop;
SELECT *
FROM ildph;
SELECT *
FROM ildtf;
SELECT ilequcoda, ilequnpre
FROM ilequ;
SELECT ilfessta0, ilfesstat
FROM ilfes;
SELECT ilfidnfid, ilfiduneg, ilfidcban, ilfidncta, ilfidfini, ilfidffin, ilfiddesc, ilfidpaau, ilfidcpau, ilfidapau, ilfidkcvg, ilfidccvg, ilfidkavg, ilfidkcin, ilfidccin, ilfidkain, ilfidkcvn, ilfidccvn, ilfidkavn, ilfidkcej, ilfidccej, ilfidkaej, ilfididif, ilfidcidi, ilfidaidi, ilfididin, ilfidciin, ilfidaiin, ilfididiv, ilfidcidv, ilfidaidv, ilfididie, ilfidcide, ilfidaide, ilfidrgpa, ilfidcrpa, ilfidarpa, ilfidopcc, ilfidcocc, ilfidaocc, ilfidctpp, ilfidccpp, ilfidacpp, ilfidmrcb, ilfiduser, ilfidhora, ilfidfpro
FROM ilfid;
SELECT ilfoluneg, ilfolubn2, ilfolubn3, ilfolnlot, ilfolnins, ilfolfins, ilfolnesp, ilfolfesp, ilfolsfol, ilfoluser, ilfolhora, ilfolfpro
FROM ilfol;
SELECT ilfortcon, ilforuneg, ilforcodv, ilforstat, ilforuser, ilforhora, ilforfpro
FROM ilfor;
SELECT ilgrpcgrp, ilgrptipo, ilgrpmrcb, ilgrpuser, ilgrphora, ilgrpfpro
FROM ilgrp;
SELECT ilgrucgru, ilgruuneg, ilgrumrcb, ilgruuser, ilgrufreg
FROM ilgru;
SELECT ilhaentra, ilhaenfid, ilhaeagen, ilhaeuneg, ilhaetipo, ilhaeftra, ilhaecreg, ilhaeimpe, ilhaestat, ilhaearch, ilhaemrcb, ilhaeuser, ilhaehora, ilhaefpro
FROM ilhae;
SELECT ilharntra, ilharcban, ilharftra, ilharcreg, ilharimpe, ilharstat, ilharmrcb, ilharuser, ilharhora, ilharfpro, ilharuneg, ilhararch
FROM ilhar;
SELECT ilhblncta, ilhblfblq, ilhblstan, ilhblstaa, ilhbldesc, ilhbluser, ilhblhora, ilhblfpro
FROM ilhbl;
SELECT ilhcantra, ilhcauneg, ilhcatpro, ilhcaccat, ilhcadesc, ilhcacmon, ilhcacmoc, ilhcacini, ilhcauser, ilhcahora, ilhcafpro, ilhcatcin
FROM ilhca;
SELECT ilhcmntra, ilhcmtpag, ilhcmfreg, ilhcmfini, ilhcmffin, ilhcmmpag, ilhcmmrcb, ilhcmuser, ilhcmhora, ilhcmfpro
FROM ilhcm;
SELECT ilhctncon, ilhctnpre, ilhctcage, ilhctacag, ilhctuser, ilhcthora, ilhctftra
FROM ilhct;
SELECT ilhdcftra, ilhdcuser, ilhdcfpro, ilhdchora
FROM ilhdc;
SELECT ilhlmncar, ilhlmnomb, ilhlmnomc, ilhlmcoli, ilhlmftra, ilhlmcant, ilhlmtsup, ilhlmtcos, ilhlmmrcb, ilhlmuser, ilhlmhora, ilhlmfpro
FROM ilhlm;
SELECT ilhprntra, ilhprnpre, ilhprftra, ilhprttrn, ilhprmext, ilhprimpt, ilhprpcap, ilhprfpcp, ilhprmpcp, ilhprmkc1, ilhprncuo, ilhprfcuo, ilhprcmon, ilhprmpls, ilhprpdsc, ilhprmdsc, ilhprncap, ilhprfreg, ilhprmpag, ilhprmrcb, ilhprplaz, ilhpragen, ilhpruser, ilhprhora, ilhprfpro, ilhprcapp, ilhprinpp, ilhprcgpp, ilhprtcob
FROM ilhpr;
SELECT ilhtrntra, ilhtrnpre, ilhtrftra, ilhtrttrn, ilhtrtcob, ilhtrndoc, ilhtrcvia, ilhtrnvia, ilhtrimpt, ilhtrmvia, ilhtrtcam, ilhtrimpo, ilhtrcmon, ilhtrmdes, ilhtrtdes, ilhtrfreg, ilhtrtcof, ilhtrmpag, ilhtrreve, ilhtrusra, ilhtrfaut, ilhtrmrcb, ilhtrplaz, ilhtragen, ilhtruser, ilhtrhora, ilhtrfpro, ilhtrcban, ilhtruneg
FROM ilhtr;
SELECT iliaanpre, iliaacorr, iliaafreg, iliaaglos, iliaaimpt, iliaamrcb, iliaauser, iliaahora, iliaafpro
FROM iliaa;
SELECT illfinfid, illfiftra, illfiuneg, illfinpre, illfiimpf, illfiimpp, illfidesc, illfimrcb, illfiuser, illfihora, illfifpro
FROM illfi;
SELECT illirntra, illirftra, illirncta, illircage, illirmoti, illirdesc, illirstan, illirstaa, illiracta, illirdevo, illirmdev, illiruser, illirhora, illirfpro, illirmrcb
FROM illir;
SELECT illotuneg, illotubn1, illotubn2, illotubn3, illotnlot, illotdesc, illotfreg, illotcosu, illotsupf, illotccat, illotcmon, illotcmoc, illotcost, illotprec, illotprcc, illotrecl, illotcini, illottasa, illotplzo, illotuplz, illottpro, illotstat, illotfsta, illotstaa, illotfsaa, illotnins, illotfins, illotfesp, illotnesp, illotcage, illotuser, illothora, illotfpro, illotaprc, illotacos, illotcapp, illotinpp, illotcgpp, illotnfid, illotpmt2, illotppgk, illotuppg
FROM illot;
SELECT ilmcancta, ilmcacage, ilmcatpca, ilmcacagp, ilmcauneg, ilmcaubn2, ilmcaubn3, ilmcanlot, ilmcacmon, ilmcatvta, ilmcaprec, ilmcacini, ilmcacuot, ilmcasact, ilmcafapt, ilmcafvto, ilmcafini, ilmcafumv, ilmcastat, ilmcafsta, ilmcauser, ilmcaagen, ilmcahora, ilmcafpro, ilmcaplot, ilmcadsct, ilmcadiap, ilmcacapp, ilmcainpp, ilmcacgpp, ilmcaaugv, ilmcafvt2
FROM ilmca;
SELECT ilmccncar, ilmccntra, ilmccnpre, ilmccftra, ilmccimpt, ilmccmvia, ilmcctcam, ilmccimpo, ilmccmrcb
FROM ilmcc;
SELECT ilmclncar, ilmcluneg, ilmclubn1, ilmclubn2, ilmclubn3, ilmclnlot, ilmcldesc, ilmclfreg, ilmclcosu, ilmclsupf, ilmclccat, ilmclcmon, ilmclcmoc, ilmclcost, ilmclprcc, ilmclcini, ilmcltasa, ilmclplzo, ilmcltpro, ilmclstat, ilmclfsta, ilmclstaa, ilmclfsaa, ilmclaprc, ilmclacos, ilmclpmt2, ilmclmrcb
FROM ilmcl;
SELECT ilmconcon, ilmconpre, ilmcouneg, ilmcoftra, ilmcotcon, ilmcostat, ilmcofven, ilmcousgc, ilmcomrcb, ilmcohora, ilmcofpro, ilmcouser
FROM ilmco;
SELECT ilmcpncar, ilmcpnpre, ilmcpcage, ilmcpncta, ilmcpuneg, ilmcpubn2, ilmcpubn3, ilmcpnlot, ilmcpcagp, ilmcpfreg, ilmcpcmon, ilmcpcini, ilmcpplzo, ilmcpmdes, ilmcpsald, ilmcpstat, ilmcpfsta, ilmcprcos, ilmcpmrcb
FROM ilmcp;
SELECT ilmcrncar, ilmcrncta, ilmcrcage, ilmcrtpca, ilmcrcagp, ilmcruneg, ilmcrubn2, ilmcrubn3, ilmcrnlot, ilmcrcmon, ilmcrtvta, ilmcrprec, ilmcrcini, ilmcrsact, ilmcrfapt, ilmcrfvto, ilmcrstat, ilmcrfsta, ilmcrdsct, ilmcragen, ilmcrmrcb
FROM ilmcr;
SELECT ilmdlncar, ilmdluneg, ilmdlubn2, ilmdlubn3, ilmdlnlot, ilmdlitem, ilmdltcom, ilmdlsupf, ilmdlcost, ilmdlcmoc, ilmdlpmt2, ilmdlsupe, ilmdluser, ilmdlhora, ilmdlfpro
FROM ilmdl;
SELECT ilmedcgrp, ilmeduneg, ilmedubn2, ilmedubn3, ilmednlot, ilmedcorr, ilmedtipo, ilmedfreg, ilmedplzo, ilmedfvto, ilmeddesc, ilmednpar, ilmednpro, ilmedcmon, ilmedimpt, ilmedacre, ilmedfolr, ilmednesc, ilmednota, ilmeduser, ilmedhora, ilmedfpro
FROM ilmed;
SELECT ilmejnmej, ilmejuneg, ilmejubn2, ilmejubn3, ilmejnlot, ilmejtipo, ilmejfmej, ilmejglos, ilmejmrcb, ilmejuser, ilmejhora, ilmejfpro
FROM ilmej;
SELECT ilmhcncar, ilmhcuneg, ilmhcubn2, ilmhcubn3, ilmhcnlot, ilmhcncln, ilmhcorie, ilmhcdesc, ilmhcdist, ilmhctcln, ilmhcuser, ilmhchora, ilmhcfpro, ilmhcmrcb
FROM ilmhc;
SELECT ilmhincar, ilmhindep, ilmhifech, ilmhincta, ilmhiimpt, ilmhicmon, ilmhicbio, ilmhiimpo, ilmhinomb, ilmhimrcb
FROM ilmhi;
SELECT ilmhlncar, ilmhlnomb, ilmhlnoml, ilmhlnomc, ilmhlftra, ilmhlcant, ilmhltsup, ilmhltcos, ilmhlmrcb, ilmhluser, ilmhlhora, ilmhlfpro
FROM ilmhl;
SELECT ilmhpncar, ilmhpnomb, ilmhpnomp, ilmhpnomc, ilmhpftra, ilmhpcant, ilmhptcin, ilmhptpre, ilmhpmrcb, ilmhpuser, ilmhphora, ilmhpfpro
FROM ilmhp;
SELECT ilmhrncar, ilmhrnomb, ilmhrnomc, ilmhrftra, ilmhrcant, ilmhrtsup, ilmhrtcos, ilmhrmrcb, ilmhruser, ilmhrhora, ilmhrfpro
FROM ilmhr;
SELECT ilmocntra, ilmocttrn, ilmocftra, ilmocnpre, ilmocdesc, ilmocstat, ilmocmont, ilmocporc, ilmocmnet, ilmocncta, ilmocuser, ilmochora, ilmocfpro, ilmocmrcb, ilmocmdeo, ilmoccino, ilmocpcuo, ilmocfpco, ilmocucuo, ilmocfuco, ilmoccano, ilmocuneo, ilmocub2o, ilmocub3o, ilmocnlto, ilmocsupo, ilmoccpgo, ilmocipgo, ilmoccago, ilmoccedo, ilmocnomo, ilmocglso, ilmocmded, ilmoccind, ilmocpcud, ilmocfpcd, ilmocucud, ilmocfucd, ilmoccand, ilmocuned, ilmocub2d, ilmocub3d, ilmocnltd, ilmocsupd, ilmoccpgd, ilmocipgd, ilmoccagd, ilmoccedd, ilmocnomd, ilmocglsd, ilmocncon, ilmoctorg, ilmoccoro, ilmoccord
FROM ilmoc;
SELECT ilmppncar, ilmppnpre, ilmppfech, ilmppnpag, ilmppcapi, ilmppinte, ilmppcarg, ilmpptota, ilmppmpag, ilmppntra, ilmppfpag, ilmppcdif, ilmppmrcb
FROM ilmpp;
SELECT ilmprnpre, ilmprcage, ilmprncta, ilmpruneg, ilmprubn2, ilmprubn3, ilmprnlot, ilmprcagp, ilmprfreg, ilmprtcre, ilmprcmon, ilmprmapr, ilmprcini, ilmprfdes, ilmprplzo, ilmprfvor, ilmprfvac, ilmprmdes, ilmprsald, ilmprcost, ilmprrcos, ilmprstat, ilmprfsta, ilmprstan, ilmprfsan, ilmprfinc, ilmprfpvc, ilmprcrpg, ilmprfrpg, ilmprreve, ilmprusrr, ilmprmrcb, ilmpragen, ilmpruser, ilmprhora, ilmprfpro, ilmprcapp, ilmprinpp, ilmprcgpp, ilmprttrn, ilmprcdif, ilmpruplz, ilmprppgk, ilmpruppg, ilmprdiap
FROM ilmpr;
SELECT ilmrincon, ilmrinpre, ilmriuser, ilmriftra, ilmrihora, ilmrifpro
FROM ilmri;
SELECT ilmtfntra, ilmtfftra, ilmtfcage, ilmtfcag2, ilmtfcmon, ilmtfimpt, ilmtfpret, ilmtfmret, ilmtfmtrf, ilmtfmrcb, ilmtfplaz, ilmtfagen, ilmtfuser, ilmtfhora, ilmtffpro
FROM ilmtf;
SELECT ilncvuneg, ilncvncon, ilncvtcon, ilncvanio
FROM ilncv;
SELECT ilnotntra, ilnotuneg, ilnotubn2, ilnotubn3, ilnotnlot, ilnottipo, ilnotglos, ilnotuser, ilnothora, ilnotfpro
FROM ilnot;
SELECT ilntauneg, ilntaubn2, ilntaubn3, ilntanlot, ilntaglos, ilntauser, ilntahora, ilntafpro
FROM ilnta;
SELECT ilopctpro, ilopccmon, ilopcpaau, ilopccpau, ilopcapau, ilopccofi, ilopcccfi, ilopcacfi, ilopccofd, ilopcccfd, ilopcacfd, ilopcbcos, ilopccbco, ilopcabco, ilopccppu, ilopcccpu, ilopcacpu, ilopcopcc, ilopccocc, ilopcaocc, ilopccrpa, ilopcccrp, ilopcacrp
FROM ilopc;
SELECT ilpartpar, ilpardato, ilpardesc, ilparmrcb
FROM ilpar;
SELECT ilpccsini, ilpccsfin, ilpccmini, ilpccmfin, ilpcctsfi, ilpcctsrg, ilpcctmfi, ilpcctmrg, ilpccdret, ilpccting, ilpcctegr, ilpcccpap, ilpcccptp, ilpcccanp, ilpccancc, ilpccanaa, ilpcccfcl, ilpcccfcc, ilpcccfaa, ilpccfcsi, ilpccfcsf, ilpccfcmi, ilpccfcmf
FROM ilpcc;
SELECT ilpcdcodi, ilpcddesc, ilpcdporc
FROM ilpcd;
SELECT ilpcences, ilpcesta0, ilpcesta1, ilpcefvto, ilpcestat, ilpcemrcb, ilpceuser, ilpcehora, ilpcefpro
FROM ilpce;
SELECT ilpdocodv, ilpdotipv, ilpdonomb, ilpdotabl, ilpdocamp, ilpdodat1, ilpdodat2, ilpdouser, ilpdohora, ilpdofpro
FROM ilpdo;
SELECT ilpgcnpag, ilpgcftra, ilpgccage, ilpgcuneg, ilpgcimpt, ilpgcimpr, ilpgccmon, ilpgctpag, ilpgcsepg, ilpgcstap, ilpgcmpag, ilpgcncpg, ilpgcuser, ilpgchora, ilpgcfpro
FROM ilpgc;
SELECT ilpmraitb, ilpmrccos, ilpmradic, ilpmrfulr
FROM ilpmr;
SELECT ilpmtncta, ilpmtndoc, ilpmtctab, ilpmtccob, ilpmtaacb, ilpmtctad, ilpmtccod, ilpmtaacd, ilpmtcdif, ilpmtccos, ilpmtadif, ilpmtfcie, ilpmtdsvt, ilpmtdvto, ilpmtcdpp, ilpmtctpp, ilpmtcppc, ilpmtcppa, ilpmtivnc, ilpmtivcc, ilpmtivaa, ilpmtgpre, ilpmtgpcc, ilpmtgpaa, ilpmtdpco, ilpmtdvt2, ilpmtppct, ilpmtitra, ilpmtptec
FROM ilpmt;
SELECT ilppanpre, ilppanopr, ilppanpag, ilppafant, ilppacapi, ilppainte, ilppacarg, ilppatota
FROM ilppa;
SELECT ilppgnpre, ilppgfech, ilppgnpag, ilppgcapi, ilppginte, ilppgcarg, ilppgtota, ilppgmpag, ilppgntra, ilppgfpag, ilppgcdif
FROM ilppg;
SELECT ilpphncon, ilpphnpre, ilpphfech, ilpphnpag, ilpphcapi, ilpphinte, ilpphcarg, ilpphtota, ilpphmpag, ilpphntra, ilpphfpag, ilpphcdif, ilpphtorg
FROM ilpph;
SELECT ilpponpre, ilppofech, ilpponpag, ilppocapi, ilppointe, ilppocarg, ilppotota
FROM ilppo;
SELECT ilpppntrp, ilpppnpre, ilpppfech, ilpppnpag, ilpppcapi, ilpppinte, ilpppcarg, ilppptota, ilpppmpag, ilpppntra, ilpppfpag, ilpppcdif
FROM ilppp;
SELECT ilpqlcpqt, ilpqluneg, ilpqlubn2, ilpqlubn3, ilpqlnlot, ilpqlcuin, ilpqlsupf, ilpqlcost, ilpqlprcc, ilpqlprec, ilpqluser, ilpqlhora, ilpqlfpro
FROM ilpql;
SELECT ilpqtcpqt, ilpqtdesc, ilpqtuneg, ilpqtcuin, ilpqtplzo, ilpqtuplz, ilpqtnlmi, ilpqtfvig, ilpqttasa, ilpqtstat, ilpqtfsta, ilpqtmrcb, ilpqtuser, ilpqthora, ilpqtfpro
FROM ilpqt;
SELECT ilrancarg, ilrancorr, ilranrani, ilranranf, ilranmont, ilranporc
FROM ilran;
SELECT ilrdlfech, ilrdluneg, ilrdlubn2, ilrdlubn3, ilrdlnlot, ilrdlcosu, ilrdlcost, ilrdlcmoc, ilrdlcosn, ilrdldifb, ilrdluser, ilrdlhora, ilrdlfpro
FROM ilrdl;
SELECT ilrecntra, ilrecftra, ilrecnpre, ilrectorg, ilrecmont, ilrecmrcb, ilrecuser, ilrechora, ilrecfpro
FROM ilrec;
SELECT ilreluneg, ilrelcage, ilrelnins, ilrelnota, ilrelfini, ilrelpdnt, ilrelpdds, ilrelmand, ilrelffin, ilrelmrcb, ilreluser, ilrelhora, ilrelfpro
FROM ilrel;
SELECT ilretuneg, ilretccar, ilrettret, ilretcodi, ilretdesc, ilretporc, ilretftra, ilretmrcb, ilretuser, ilretfpro
FROM ilret;
SELECT ilrevntra, ilrevuser, ilrevhora, ilrevfpro, ilrevtrev, ilrevmoti, ilrevmrcb
FROM ilrev;
SELECT ilrnvnrnv, ilrnvnpre, ilrnvfreg, ilrnvfvac, ilrnvfvan, ilrnvuser, ilrnvhora, ilrnvfpro
FROM ilrnv;
SELECT ilrvlfech, ilrvluneg, ilrvlubn2, ilrvlubn3, ilrvlnlot, ilrvlcosu, ilrvltufv, ilrvlcost, ilrvldiff, ilrvldifb, ilrvlmrcb, ilrvluser, ilrvlhora, ilrvlfpro
FROM ilrvl;
SELECT ilsaccaco, ilsaccsuc, ilsacdesc, ilsacmrcb, ilsacuser, ilsachora, ilsacfpro
FROM ilsac;
SELECT ilsupcgru, ilsupcage, ilsupccar, ilsupmrcb, ilsupuser, ilsuphora, ilsupfpro
FROM ilsup;
SELECT iltabccar, iltabuneg, iltabtpag, iltabtpro, iltabtven, iltabfpag, iltabcmon, iltabrini, iltabrfin, iltabicom, iltabuser, iltabhora, iltabfpro
FROM iltab;
SELECT iltcotpro, iltcoterl, iltcoctrl, iltcoatrl, iltcoterc, iltcoctrc, iltcoatrc, iltcocpvn, iltcoccpv, iltcoaapv, iltcoamct, iltcocamc, iltcoaamc, iltcoiven, iltcocive, iltcoaive, iltcogavn, iltcocgpv, iltcoagpv, iltcouser, iltcohora, iltcofpro
FROM iltco;
SELECT iltcrtcre, iltcrdesc, iltcrdven, iltcrdeje, iltcrdpct, iltcruser, iltcrhora, iltcrfpro
FROM iltcr;
SELECT iltcvntra, iltcvnpre, iltcvcatr, iltcvccom, iltcviatr, iltcvicom, iltcvdife, iltcvtipo, iltcvplus, iltcvstac, iltcvstat, iltcvauto, iltcvnopr, iltcvmrcb, iltcvuser, iltcvhora, iltcvfpro, iltcvftra
FROM iltcv;
SELECT iltdtntra, iltdtitem, iltdtttrn, iltdtnpre, iltdtftra, iltdtpref, iltdtccon, iltdtdesc, iltdtimpp, iltdtcmon, iltdtmrcb, iltdtuser, iltdthora, iltdtfpro, iltdtuneg
FROM iltdt;
SELECT iltmvpref, iltmvcorr, iltmvdesc, iltmvctbl, iltmvccos, iltmvadic
FROM iltmv;
SELECT iltnvcini, iltnvcfin, iltnvcpag, iltnvuser, iltnvhora, iltnvfpro
FROM iltnv;
SELECT iltpmtcre, iltpmcmon, iltpmkcvg, iltpmccvg, iltpmkavg, iltpmkcin, iltpmccin, iltpmkain, iltpmkcvn, iltpmccvn, iltpmkavn, iltpmkcej, iltpmccej, iltpmkaej, iltpmidif, iltpmcidi, iltpmaidi, iltpmidin, iltpmciin, iltpmaiin, iltpmidiv, iltpmcidv, iltpmaidv, iltpmidie, iltpmcide, iltpmaide
FROM iltpm;
SELECT iltptntra, iltptitem, iltptttrn, iltptnpre, iltptftra, iltptpref, iltptccon, iltptdesc, iltptimpp, iltptcmon, iltptmrcb, iltptuser, iltpthora, iltptfpro
FROM iltpt;
SELECT iltrlntra, iltrlftra, iltrluneg, iltrlubn2, iltrlubn3, iltrlnlot, iltrlndoc, iltrlmorg, iltrltorg, iltrlpref, iltrlcorr, iltrlimpo, iltrlimpt, iltrlcbio, iltrlcmon, iltrliprc, iltrlglos, iltrlstat, iltrluser, iltrlhora, iltrlfpro
FROM iltrl;
SELECT iltrnntra, iltrnftra, iltrnncta, iltrnndoc, iltrnmorg, iltrntorg, iltrnpref, iltrncorr, iltrnimpo, iltrnimpt, iltrncbio, iltrncmon, iltrnglos, iltrnstat, iltrnuser, iltrnhora, iltrnfpro, iltrncban, iltrnplaz, iltrnagen, iltrnuneg
FROM iltrn;

SELECT iluapusrn, iluaptope, iluapstop, iluapporc, iluapuser, iluapfpro, iluaphora
FROM iluap;
SELECT ilubnuneg, ilubndesc, ilubnmcom, ilubnmrcb, ilubnuser, ilubnfreg
FROM ilubn;
SELECT iluconpre, ilucouser
FROM iluco;
SELECT ilufvuneg, ilufvmodv
FROM ilufv;
SELECT ilulouneg, iluloubn2, iluloubn3, ilulonlot, ilulouser
FROM ilulo;
SELECT ilurbuneg, ilurbdire, ilurbrefe, ilurbtasa, ilurbplzo, ilurbuplz, ilurbfini, ilurbsupu, ilurbcost, ilurbcmon, ilurbloca, ilurbmodv, ilurbtsmi, ilurbtsma, ilurbuser, ilurbhora, ilurbfpro, ilurbssup, ilurbppgk, ilurbuppg
FROM ilurb;
SELECT ilurencta, ilureuser
FROM ilure;
SELECT ilusrccar, ilusrcage, ilusrvend, ilusrstat, ilusrmrcb, ilusruser, ilusrfreg, ilusrusrn
FROM ilusr;
SELECT ilviacvia, ilviadesc, ilviaabre, ilviacctb, ilviaccob, ilviaadib, ilviacctd, ilviaccod, ilviaadid
FROM ilvia;
SELECT inaaluneg, inaalcalm, inaalcart, inaallote, inaalsant, inaalstot, inaalscom, inaalback, inaalfuin, inaalfusa, inaalfvto, inaalntra, inaalitem
FROM inaal;
SELECT inacicart, inaciuneg, inacifreg, inacicgru, inacicsub, inacitant, inacisant, inacicuin, inacictot, inacidife, inacitcam, inaciuser, inacihora, inacifpro
FROM inaci;
SELECT inacocart, inacocarc, inacodesc
FROM inaco;
SELECT inadacalm, inadacart, inadauser, inadahora, inadafpro
FROM inada;
SELECT inalmcalm, inalmdesc, inalmmlot, inalmuneg, inalmccos, inalmtalm, inalmsmie, inalmsmae, inalmdcor
FROM inalm;
SELECT inalolote, inalocart, inaloffab, inalofvto, inalogls1, inalogls2, inalogls3, inalocmaq, inalocuni, inalostot, inaloctot, inalontra
FROM inalo;
SELECT inalwcalm, inalwuser, inalwhora, inalwfpro
FROM inalw;
SELECT inaodcart, inaodmice, inaodcdec, inaodcomb, inaoddcor, inaodcemb, inaoddtgt, inaodmvda, inaoduvda, inaodctec
FROM inaod;
SELECT inaprcodi, inaprnrep, inaprdrep, inaprcal1, inapraal1, inaprcal2, inapraal2, inaprcal3, inapraal3, inaprcal4, inapraal4, inaprcal5, inapraal5, inaprcal6, inapraal6, inaprcal7, inapraal7, inaprcal8, inapraal8, inaprcal9, inapraal9
FROM inapr;
SELECT inarauneg, inaracalm, inaracart, inaraubic, inaraabpv, inaraabcv, inaraabce, inarasmin, inarasmax, inarasant, inarastot, inarascom, inaraback, inarafuin, inarafusa, inaracgru, inaracsub, inaraccla, inaracscl
FROM inara;
SELECT inarccart, inarcldsc
FROM inarc;
SELECT inaretent, inareentg, inarecart, inarefreg
FROM inare;
SELECT inartcart, inarttart, inartmsto, inartdesc, inartcgru, inartcsub, inartccla, inartcscl, inartcfab, inartmarc, inartumut, inartumcp, inartrlum, inartabpv, inartabcv, inartabce, inartsmin, inartsmax, inartsant, inartcoan, inartstot, inartscom, inartstra, inartback, inartcuin, inartcusa, inartctot, inartfuin, inartfusa, inartprop, inartcpro, inartcfun, inartcmar, inartproc, inartgtia, inartfcre, inartstat, inartfsta
FROM inart;
SELECT inaruuneg, inarucart, inarusmin, inarusmax, inarusant, inarucoan, inarustot, inaruscom, inarustra, inaruback, inarucuin, inarucusa, inaructot, inarufuin, inarufusa, inarucgru, inarucsub, inaruccla, inarucscl
FROM inaru;
SELECT inarwcgru, inarwcsub, inarwccla, inarwcscl, inarwcart, inarwuser, inarwhora, inarwfpro
FROM inarw;
SELECT inatrftra, inatrcart, inatrcgru, inatrcsub, inatrpvta, inatrpvt1, inatrpvt2, inatrpvt3, inatrpvt4, inatrmven, inatrstat, inatruser, inatrhora, inatrfpro
FROM inatr;
SELECT inbascbas, inbasdesc
FROM inbas;
SELECT inbqacalm, inbqacart, inbqafpro, inbqahora, inbqanreq
FROM inbqa;
SELECT incaacalm, incaacart, incaacgru, incaacsub, incaaconp, incaacpro, incaasact, incaamvta, incaaconv, incaaclas, incaasmax, incaasmin
FROM incaa;
SELECT incarcart, incarumeq, incarrlum, incarmfra, incarmven, incarmexe, incarmeco, incarmlot, incarpart, incarumpe, incarvart, incarumvo, incardes1, incardes2, incardes3, incardes4, incarpnet, incarpepc, incarudim, incaralto, incarlarg, incaranch
FROM incar;
SELECT incbacart, incbacbar, incbadesc, incbafreg
FROM incba;
SELECT incfacart, incfapref, incfaclas
FROM incfa;
SELECT inclacgru, inclacsub, inclaccla, incladesc
FROM incla;
SELECT inclocart, inclocor1, inclocor2, inclocor3, inclocor4, inclocor5
FROM inclo;
SELECT incmacart, incmacalm, incmanano, incmanmes, incmaconm
FROM incma;
SELECT incndinst, incndcart, incndstot, incndctot, incndcgru, incndcsub
FROM incnd;
SELECT incnsntra, incnsttra, incnsnomb, incnsitem, incnscart, incnsnser, incnsgtia, incnsffga, incnsgls1, incnsgls2, incnsgls3
FROM incns;
SELECT incoccart, incoccarc, incoccant, incocporc
FROM incoc;
SELECT inconpref, inconcorr, incondesc, inconabre
FROM incon;
SELECT incpacart, incpacgru, incpacsub, incpaconp, incpacpro, incpacuin, incpasact, incpamvta, incpaconv, incpaclas, incpasmax, incpasmin
FROM incpa;
SELECT incprnrec, incprtipo, incprcart, incprcmon, incprpant, incprpcom, incprfact, incprpact, incprstat
FROM incpr;
SELECT incsantra, incsacalm, incsacart, incsalote, incsastot, incsacgru, incsacsub, incsaccla, incsacscl, incsacmar, incsacfun, incsastat, incsacprv
FROM incsa;
SELECT inctlnmes, inctlflim, inctlmcos, inctlndoc, inctlicom, inctliain, inctliprv, inctlnreg, inctlndec, inctlcnre, inctlumpe, inctlumvo, inctlfcns, inctlfcod, inctlcart, inctlcari, inctlccos, inctlcmtr
FROM inctl;
SELECT inctpfini, inctpffin, inctpfgen
FROM inctp;
SELECT incvacgru, incvacsub
FROM incva;
SELECT indacndoc, indacfdoc, indacntra, indacftra, indacuneg, indaccalm, indacpref, indaccorr, indacitem, indaccart, indaccant, indaccoan, indaccoac, indacimpt, indaccmon, indactcam, indacuser, indachora, indacfpro
FROM indac;
SELECT indaecage, indaecart, indaedesc
FROM indae;
SELECT indatcart, indatcbas, indatcoef, indatnomb, indatpepc, indatpres, indatlabt
FROM indat;
SELECT indienegr, indiefegr, indiening, indiefing, indiealmo, indieuneo, indierego, indiealmd, indieuned, indieregd, indiecart, indiecant, indiecost
FROM indie;
SELECT indnsntra, indnsitem, indnscorr, indnsnser
FROM indns;
SELECT indrantra, indratipo, indraftra, indrauneg, indracalm, indraitem, indracart, indracant, indrastat, indramrcb
FROM indra;
SELECT indsdcage, indsdtipo
FROM indsd;
SELECT indsucart, indsuumsu, indsusupe
FROM indsu;
SELECT indtantra, indtaftra, indtaccos, indtacalm, indtapref, indtacorr, indtacmon, indtaitem, indtacart, indtaimpt, indtaimpc, indtamrcb
FROM indta;
SELECT indtlntra, indtlitem, indtlcart, indtllote, indtlftra, indtluneg, indtlcalm, indtlpref, indtlcorr, indtlcpvd, indtlcant
FROM indtl;
SELECT indtpntra, indtpitem, indtpftra, indtpndoc, indtpuneg, indtpcalm, indtppref, indtpcorr, indtpcord, indtpnord, indtpcart, indtpcant, indtpcmap, indtpcmac, indtpimpt, indtpimpc, indtpmrcb
FROM indtp;
--ok
SELECT indtrntra, indtritem, indtrftra, indtrndoc, indtruneg, indtrcalm, indtrpref, indtrcorr, indtrcord, indtrnord, indtrcart, indtrcant, indtrcmap, indtrcmac, indtrimpt, indtrimpc, indtrmrcb
FROM indtr WHERE indtrntra = 1571;
SELECT indtrntra, indtritem, indtrftra, indtrndoc, indtruneg, indtrcalm, indtrpref, indtrcorr, indtrcord, indtrnord, indtrcart, indtrcant, indtrcmap, indtrcmac, indtrimpt, indtrimpc, indtrmrcb
FROM indtr_rep;
SELECT indtvntra, indtvftra, indtvuneg, indtvcalm, indtvcpvd, indtvitem, indtvcart, indtvcant, indtvfvto
FROM indtv;
SELECT inenacart, inenacare, inenarece, inenacaca, inenareca, inenaumen
FROM inena;
SELECT ineuacart, ineuaumed, ineuarlum
FROM ineua;
SELECT ingrucgru, ingrudesc, ingrumsto, ingrucing, ingruaing, ingruapvt, ingrudiva, ingruaiva, ingruitra, ingruatra, ingruccos, ingrucpvt, ingrudeiv, ingruadei, ingrudeit, ingruadit, ingrucivt, ingruaivt, ingrucitt, ingruaitt, ingrucind, ingruaind
FROM ingru;
SELECT inguicdgo, inguinomb, inguitelf, inguinruv
FROM ingui;
SELECT inharcart, inhardesc, inharnano, inharnmes, inharuneg, inharcalm, inharpref, inharcorr, inharcord, inharnord, inharcant, inharcost
FROM inhar;
SELECT inhnsntra, inhnsitem, inhnscart, inhnsgtia, inhnsffga, inhnsnomb, inhnsgls1, inhnsgls2, inhnsgls3
FROM inhns;
SELECT inhrantra, inhratipo, inhraftra, inhrauneg, inhracalm, inhracpvd, inhramorg, inhratorg, inhrastat, inhramrcb, inhrauser, inhrahora, inhrafpro
FROM inhra;
SELECT inhtinpld, inhticdis, inhtitemp, inhtimodn, inhtittra, inhtintra, inhticapl, inhtiimpt
FROM inhti;
SELECT inhtpntra, inhtpstat, inhtpfsta
FROM inhtp;
--ok
SELECT inhtrntra, inhtrftra, inhtrndoc, inhtruneg, inhtrcalm, inhtrmorg, inhtrtorg, inhtrpref, inhtrcorr, inhtrcord, inhtrnord, inhtrcomp, inhtrcmon, inhtrtcam, inhtrglos, inhtrmrcb, inhtruser, inhtrhora, inhtrfpro
FROM inhtr WHERE inhtrntra = 1571;
SELECT inhtrntra, inhtrftra, inhtrndoc, inhtruneg, inhtrcalm, inhtrmorg, inhtrtorg, inhtrpref, inhtrcorr, inhtrcord, inhtrnord, inhtrcomp, inhtrcmon, inhtrtcam, inhtrglos, inhtrmrcb, inhtruser, inhtrhora, inhtrfpro
FROM inhtr_rep;
SELECT inhuacalm, inhuausrn, inhuauser, inhuahora, inhuafpro
FROM inhua;
SELECT inhurcalm, inhurusrn, inhuruser, inhurhora, inhurfpro
FROM inhur;
SELECT inhvacalm, inhvacart, inhvafmod, inhvasmax, inhvafsma, inhvasmin, inhvafsmi, inhvaabcd, inhvafabc, inhvacpro, inhvafcpr, inhvappar, inhvafppa, inhvadest, inhvafdes, inhvapped, inhvafppe, inhvacano, inhvafcan, inhvamrcb, inhvauser, inhvahora, inhvafpro
FROM inhva;
SELECT iniarcart, iniaritem, iniarfile, iniarubic, iniarprio, iniarmrcb, iniaruser, iniarhora, iniarfpro
FROM iniar;
SELECT inifcnaju, inifcntra, inifccalm, inifccart, inifclote, inifccant, inifcfcon, inifcuser, inifchora, inifcfpro, inifcubic, inifcorde, inifcreco, inifccprv
FROM inifc;
SELECT inifdnaju, inifdntra, inifdcalm, inifdcart, inifdlote, inifdcant, inifdcntr, inifdstot, inifdimpt, inifdcgru, inifdcsub, inifdccla, inifdcscl, inifdcmar, inifdcfun, inifdstat, inifdcprv
FROM inifd;
SELECT inifhnaju, inifhntra, inifhuneg, inifhcalm, inifhfaju, inifhtcam, inifhsobr, inifhfalt, inifhnord, inifhglos, inifhincl, inifhuser, inifhhora, inifhfpro, inifhcprv
FROM inifh;
SELECT inifscage, inifsfifs, inifscsab, inifsbach, inifsbal1, inifsbal2, inifsbal3, inifsbal4, inifsstat, inifsnped, inifsuser, inifshora, inifsfpro
FROM inifs;
SELECT iniftnaju, iniftntra, iniftntri, iniftpref
FROM inift;
SELECT inifuntra, inifucalm, inifucart, inifulote, inifuubic, inifucant, inifucntr, inifureco, inifucprv
FROM inifu;
SELECT inimgcart, inimgsdes, inimgfcre, inimgtimg, inimgfile, inimguser, inimghora, inimgfpro
FROM inimg;
SELECT inincntra, ininccalm, ininccart, ininclote, ininccant, inincfcon, inincuser, ininchora, inincfpro, inincubic, inincorde, inincreco, ininccprv
FROM ininc;
SELECT ininfntra, ininfcalm, ininfcart, ininflote, ininfcant, ininfcntr, ininfdife, ininfmaju, ininfcgru, ininfcsub, ininfccla, ininfcscl, ininfcmar, ininfcfun, ininfstat, ininfcprv
FROM ininf WHERE ininfntra = 1571;
SELECT ininhntra, ininhftra, ininhuneg, ininhcalm, ininhcgri, ininhcgrf, ininhcsui, ininhcsuf, ininhccli, ininhcclf, ininhcsci, ininhcscf, ininhcmai, ininhcmaf, ininhcfui, ininhcfuf, ininhgls1, ininhgls2, ininhgls3, ininhades, ininhiinv, ininhmaju, ininhuser, ininhhora, ininhfpro, ininhcprv
FROM ininh;
SELECT inintcori, inintcore, inintnord, inintcalm, inintarch
FROM inint;
SELECT inmpacart, inmpaitem, inmpacmpa, inmpacant, inmpaoimp
FROM inmpa;
SELECT innrecnre, innremorg, innretorg, innrefnre, innremtvo, innreafac, innrecorr, innredpda, innrendes, innreddes, innrerdes, innrentpt, innredtpt, innrertpt, innrepveh, innrestat, innrefsta, innrentra, innreuneg, innreuser, innrehora, innrefpro
FROM innre;
SELECT inpaacodi, inpaadesc, inpaauser, inpaahora, inpaafpro
FROM inpaa;
SELECT inparcart, inparcnae, inparcpar
FROM inpar;
SELECT inpcacage, inpcacart, inpcapvta, inpcacmon, inpcafvig, inpcauser, inpcahora, inpcafpro, inpcatent, inpcaentg
FROM inpca;
SELECT inpfwcalm, inpfwcorr, inpfwcorg, inpfwcor1, inpfwcdes, inpfwccos, inpfwajua
FROM inpfw;
SELECT inplacart, inplanpal, inplaumep, inplarlum, inplaccpa, inplacfpa, inplaalpa
FROM inpla;
SELECT inpmatent, inpmaentg, inpmacart, inpmalbas, inpmacini, inpmacfin, inpmapdsc, inpmapvta, inpmafmod, inpmauser, inpmahora, inpmafpro
FROM inpma;
SELECT inpmvtent, inpmventg, inpmvcgri, inpmvcgrf, inpmvcsui, inpmvcsuf, inpmvccli, inpmvcclf, inpmvcsci, inpmvcscf, inpmvmarg, inpmvmar1, inpmvmar2, inpmvmar3, inpmvmar4, inpmvmefn
FROM inpmv;
SELECT inppmtent, inppmentg, inppmcgru, inppmcsub, inppmccla, inppmcscl, inppmcini, inppmcfin, inppmpdsc
FROM inppm;
SELECT inprstmes, inprsalmr
FROM inprs;
SELECT inpvatent, inpvaentg, inpvacart, inpvamven, inpvafulc, inpvapvta, inpvapvt1, inpvapvt2, inpvapvt3, inpvapvt4, inpvamarg, inpvamar1, inpvamar2, inpvamar3, inpvamar4, inpvamefn, inpvauneg
FROM inpva;
SELECT inpvrtent, inpvrentg, inpvrcart, inpvrcgru, inpvrcsub, inpvrccla, inpvrcscl, inpvrnrec, inpvrmven, inpvrfreg, inpvrpvaa, inpvrpva1, inpvrpva2, inpvrpva3, inpvrpva4, inpvrpvna, inpvrpvn1, inpvrpvn2, inpvrpvn3, inpvrpvn4, inpvrmarg, inpvrmar1, inpvrmar2, inpvrmar3, inpvrmar4, inpvrmefn, inpvrbcal, inpvrbcci, inpvruneg, inpvruser, inpvrhora, inpvrfpro
FROM inpvr;
SELECT inraecart, inraedesc, inraefreg
FROM inrae;
SELECT inrblcbaa, inrbllote, inrbluser, inrblhora, inrblfpro
FROM inrbl;
SELECT inrpdcalt, inrpdtipo, inrpdproc, inrpdcart, inrpdcpar, inrpdcalc
FROM inrpd;
SELECT inrpmcpar, inrpmapli
FROM inrpm;
SELECT inrsacage, inrsacalm
FROM inrsa;
SELECT inrumumin, inrumpref, inrumcorr
FROM inrum;
SELECT insabcsab
FROM insab;
SELECT insaruneg, insarcart, insarstot, insarctot, insarcusa
FROM insar;
SELECT insbecart, insbeitem, insbecsbe, insbedesc, insbeuimg, insbeccla, insbecorr, insbecant, insbecanp, insbeumsb, insbepvta, insbecmon, insbepofe, insbefini, insbeffin, insbestat, insbefreg
FROM insbe;
SELECT insclcgru, insclcsub, insclccla, insclcscl, inscldesc
FROM inscl;
SELECT insgscage, insgscsab, insgscbal, insgscums, insgsuser, insgshora, insgsfpro
FROM insgs;
SELECT inspdcgru, inspdcsub, inspdpdsc
FROM inspd;
SELECT insrlnhtr
FROM insrl;
SELECT insubcgru, insubcsub, insubdesc
FROM insub;
SELECT insuccgru, insuccsub, insuccctb
FROM insuc;
SELECT intcbtcba
FROM intcb;
SELECT intclpref, intcltipo
FROM intcl;
SELECT intcnftra, intcnndoc, intcnpref, intcncorr, intcndesc, intcnitem, intcncctb, intcnadic, intcnimpi, intcnimpc, intcncbio, intcnpost, intcnntra, intcnftor, intcnuser, intcnhora, intcnfpro, intcncalm, intcncord, intcnnord
FROM intcn;
SELECT intdimodn, intdittra, intdintra, intdicapl, intdiitem, intdiuneg, intdiccos, intdipdis, intdiimpt, intdicmon, intdicage, intdiftra, intditipo
FROM intdi;
SELECT intdopref, intdocorr
FROM intdo;
SELECT intlontra
FROM intlo;
SELECT intmvpref, intmvcorr, intmvdesc, intmvctbl, intmvadic
FROM intmv;
SELECT intpentra, intpetipo, intpetorg
FROM intpe;
SELECT intrafrpc, intrantra
FROM intra;
SELECT intrcfrpc, intrcntra
FROM intrc;
SELECT inubacalm, inubaubic, inubacart, inubalote
FROM inuba;
SELECT inucbcart, inucbcbar, inucbumeq
FROM inucb;
SELECT inumepref, inumecorr, inumedesc, inumeabre, inumevumb, inumeumba
FROM inume;
SELECT inuneuneg, inunecctb, inuneadic
FROM inune;
SELECT invaacalm, invaacart, invaafmod, invaasmax, invaafsma, invaasmin, invaafsmi, invaaabcd, invaafabc, invaacpro, invaafcpr, invaappar, invaafppa, invaadest, invaafdes, invaapped, invaafppe, invaacano, invaafcan, invaamrcb, invaauser, invaahora, invaafpro
FROM invaa;
SELECT ipacocaco, ipacodesc, ipacompri
FROM ipaco;
SELECT ipadrtres, ipadrcres, ipadrtdoc, ipadrnord, ipadrpord, ipadritem, ipadrstat, ipadrtfco
FROM ipadr;
SELECT ipadstfac, ipadscorg, ipadstdoc, ipadsnord, ipadspord, ipadsitem, ipadsstat, ipadstfco
FROM ipads;
SELECT ipccfinor, ipccfinfa, ipccficct, ipccffnor, ipccffnfa, ipccffcct, ipccfmodn, ipccfntra, ipccfftra, ipccfuneg, ipccfgls1, ipccfgls2, ipccfgls3, ipccfuser, ipccfhora, ipccffpro
FROM ipccf;
SELECT ipcnsinst, ipcnstlib, ipcnsafac, ipcnsnfac, ipcnsnord, ipcnscctl, ipcnstdoc, ipcnsuneg, ipcnsftra, ipcnsprov, ipcnsnruc, ipcnsimpt, ipcnsiice, ipcnsiehd, ipcnsexen, ipcnscrdf, ipcnsstat, ipcnsfsta, ipcnssiva, ipcnstiva, ipcnscloc, ipcnsmorg, ipcnstorg
FROM ipcns;
SELECT ipconpref, ipconcorr, ipcondesc, ipconabre
FROM ipcon;
SELECT ipctlmfac, ipctlnord, ipctlcctl, ipctlafac, ipctlnfac, ipctlfaci, ipctlfacf, ipctlproc, ipctlnorn, ipctlafan, ipctlnnta, ipctlntai, ipctlntaf, ipctlmnta, ipctlcrdi, ipctldebi, ipctliiva, ipctlaiva, ipctlgiva, ipctlagiv, ipctlitra, ipctlatra, ipctlgtra, ipctlagtr, ipctliice, ipctlaice, ipctliehd, ipctlaieh, ipctlimra, ipctlimcn, ipctllctr, ipctlilim, ipctlfini, ipctlcrtp, ipctlrtpp, ipctlisfe, ipctlvsfe
FROM ipctl;
SELECT ipdafnord, ipdafnfac, ipdaftcam, ipdaficop
FROM ipdaf;
SELECT ipdvhnord, ipdvhnfac, ipdvhtveh, ipdvhplac, ipdvhpais, ipdvhreci, ipdvhabre, ipdvhnaut, ipdvhcant, ipdvhdesc, ipdvhpuvt, ipdvhabru
FROM ipdvh;
SELECT ipedfcsuc, ipedfrgnl, ipedfnomb, ipedfnnit, ipedfdire, ipedftelf, ipedfdalc, ipedflgar, ipedfuser, ipedfhora, ipedffpro, ipedfcaco
FROM ipedf;
SELECT ipefptfac, ipefpcorg, ipefpcfpa, ipefpffac, ipefpitem
FROM ipefp;
SELECT ipfadnord, ipfadnfac, ipfadcctl, ipfadcart, ipfaddesc, ipfadcant, ipfadpuni, ipfadsubt, ipfadpdsc, ipfadidsc, ipfadimpt
FROM ipfad;
SELECT ipfahnord, ipfahnfac, ipfahcctl, ipfahftra, ipfahnruc, ipfahnomb, ipfahimpt, ipfahiice, ipfahiehd, ipfahexen, ipfahsiva, ipfahideb, ipfahtiva, ipfahpefe, ipfahncja, ipfahpchq, ipfahptrj, ipfahpcte, ipfahncte, ipfahphab, ipfahnhab, ipfahpxce, ipfahnxce, ipfahcmon, ipfahtcam, ipfahmrcb, ipfahuser, ipfahhora, ipfahfpro
FROM ipfah;
SELECT ipfcenarc, ipfcensec, ipfcenord, ipfcenfac, ipfceffac, ipfcefemi, ipfcennit, ipfcenomf, ipfcecctl, ipfceuser, ipfceuneg, ipfcecsuc, ipfcemorg, ipfceporg, ipfcetorg, ipfcefpro, ipfcehora
FROM ipfce;
SELECT ipftuafac, ipftunfac, ipftunord, ipftunadm, ipftufing, ipftufsal
FROM ipftu;
SELECT ipfzfperi, ipfzffact
FROM ipfzf;
SELECT iplconruc, iplcoafac, iplconfac, iplconord, iplcocctl, iplcotdoc, iplcoftra, iplcoprov, iplcoimpt, iplcoiice, iplcoexen, iplconeto, iplcocrdf, iplcotiva, iplcouneg, iplcomodn, iplconopr, iplcontra, iplcouser, iplcohora, iplcofpro, iplcoidsc, iplcoiexe, iplcotcom, iplcocesp, iplcotdse, iplcoccuf, iplcoiehd, iplcoiipj, iplcotasa, iplcooimp, iplcotas0, iplcogift
FROM iplco;
SELECT iplpfclpf, iplpfdesc
FROM iplpf;
SELECT iplvdafac, iplvdnfac, iplvdnord, iplvdftra, iplvddesc, iplvdimpt, iplvdstat
FROM iplvd;
SELECT iplvtafac, iplvtnfac, iplvtnord, iplvtcctl, iplvtftra, iplvtnruc, iplvtnomb, iplvtimpt, iplvtiice, iplvtiehd, iplvtexen, iplvtsiva, iplvtideb, iplvttiva, iplvtuneg, iplvtcloc, iplvtmodn, iplvtnopr, iplvtntra, iplvtstat, iplvtfsta, iplvtsimp, iplvtilot, iplvtuser, iplvthora, iplvtfpro, iplvtita0, iplvtidbr, iplvtibon, iplvtcesp, iplvtgfac
FROM iplvt;
SELECT ipmrecmre, ipmredesc, ipmretipo, ipmreporc, ipmrecret, ipmrearet
FROM ipmre;
SELECT ipnifnnit, ipnifnano, ipnifnmes, ipniffper, ipnifimpt
FROM ipnif;
SELECT ipntanord, ipntaafac, ipntannta, ipntacctl, ipntatdoc, ipntaftra, ipntanruc, ipntanomb, ipntaimpt, ipntaiice, ipntaiehd, ipntaneto, ipntaifis, ipntativa, ipntauneg, ipntacloc, ipntamorg, ipntatorg, ipntastat, ipntafsta, ipntanoro, ipntaafao, ipntanfao, ipntamoro, ipntatoro, ipntandev, ipntauser, ipntahora, ipntafpro
FROM ipnta;
SELECT ipntdnord, ipntdafac, ipntdnnta, ipntditem, ipntddesc, ipntdimpt
FROM ipntd;
SELECT ipoplcloc, ipoplnord
FROM ipopl;
SELECT ipordtdoc, ipordnord, iporddesc, ipordcctl, ipordafac, ipordfaci, ipordfacf, ipordnfac, ipordnsuc, ipordnreg, ipordffac, ipordfreg, ipordfaut, iporddval, ipordflem, ipordllad, ipordvecc, ipordstat, ipordnorf, iporduser, ipordhora, ipordfpro, ipordtipf, ipordcaco, ipordclpf, ipordfmfc
FROM ipord;
SELECT ippolnpol, ippolcfor, ippolntte, ippolpimp, ippolfpag, ippolnruc, ippolnomb, ippolftra, ippoliimp, ippoligac, ippoligas, ippolneto, ippoldiva, ippoldice, ippoltiva, ippoltice, ippoltasa, ippoltcam, ippoluneg, ippolmorg, ippolnopr, ippoltorg, ippoluser, ippolhora, ippolfpro, ippoltcom
FROM ippol;
SELECT ipprnpres
FROM ipprn;
SELECT ipraunord, ipraunfac, iprautipo, iprautfac, iprauttra, ipraumodn, iprauntra, iprauftra, iprauuneg, iprauimpt, ipraunruc, ipraunomb, ipraumodt, ipraundoc, iprautdoc, iprauipag, ipraufpag, iprauncta, ipraunref, iprauuser, iprauhora, ipraufpro
FROM iprau;
SELECT ipretmorg, iprettorg, ipretfret, ipretcage, ipretnomb, ipretcmre, ipretporc, ipretimpt, ipretcmon, iprettcam, ipretuneg, ipretmrcb, ipretuser, iprethora, ipretfpro, ipretcapl, ipretnpag
FROM ipret;
SELECT iprslnsuc, iprslcloc
FROM iprsl;
SELECT iprsunsuc, iprsuuneg, iprsumpri
FROM iprsu;
SELECT iprtnnnit, iprtntipo, iprtnfreg
FROM iprtn;
SELECT iprtrmodn, iprtrcorr, iprtrauto, iprtrcmre
FROM iprtr;
SELECT iprtvcreg, iprtvdesc, iprtvmnof
FROM iprtv;
SELECT ipsucnsuc, ipsucnomb, ipsucdire, ipsuctelf, ipsucdalc, ipsuclgar, ipsuccres, ipsucnres, ipsucndid, ipsuccorg, ipsucdpto, ipsucnnit
FROM ipsuc;
SELECT iptdctdoc, iptdcdesc
FROM iptdc;
SELECT iptimtimp, iptimdesc, iptimporc, iptimbaco
FROM iptim;
SELECT ipusuuser, ipusunsuc
FROM ipusu;
SELECT lcconpref, lcconcorr, lccondesc, lcconabre
FROM lccon;
SELECT lcdasntra, lcdassald
FROM lcdas;
SELECT lcdlccage, lcdlcitem, lcdlccgte, lcdlcuser, lcdlchora, lcdlcfpro
FROM lcdlc;
SELECT lcglccage, lcglcitem, lcglctgar, lcglcndoc, lcglcfven, lcglcimpt, lcglccmon, lcglcdsc1, lcglcdsc2, lcglcdsc3, lcglcuser, lcglchora, lcglcfpro
FROM lcglc;
SELECT lcmlccage, lcmlcnrlc, lcmlctlcr, lcmlcuneg, lcmlcfreg, lcmlccmon, lcmlcmapr, lcmlcmsob, lcmlcmutb, lcmlcmutd, lcmlcfini, lcmlcfven, lcmlcplzo, lcmlcuplz, lcmlcfvco, lcmlcnemp, lcmlcnamo, lcmlcplzs, lcmlcupls, lcmlcdfij, lcmlccmop, lcmlctasp, lcmlcttas, lcmlcmmod, lcmlcmcmx, lcmlccmax, lcmlccaut, lcmlcrseg, lcmlcstat, lcmlcmblq, lcmlcgls1, lcmlcgls2, lcmlcgls3, lcmlcmrcb, lcmlcuser, lcmlchora, lcmlcfpro, lcmlctpre, lcmlcdtpm
FROM lcmlc;
SELECT lcrnvntra, lcrnvcage, lcrnvnrlc, lcrnvuneg, lcrnvftra, lcrnvimpt, lcrnvimpa, lcrnvcmon, lcrnvfvac, lcrnvfvan, lcrnvcaut, lcrnvrseg, lcrnvgls1, lcrnvgls2, lcrnvgls3, lcrnvmrcb, lcrnvuser, lcrnvhora, lcrnvfpro
FROM lcrnv;
SELECT lcsbgntra, lcsbgcage, lcsbgnrlc, lcsbguneg, lcsbgftra, lcsbgimpt, lcsbgcmon, lcsbgcaut, lcsbgrseg, lcsbggls1, lcsbggls2, lcsbggls3, lcsbgmrcb, lcsbguser, lcsbghora, lcsbgfpro
FROM lcsbg;
SELECT lctrnntra, lctrncage, lctrnnrlc, lctrnuneg, lctrnftra, lctrnimpt, lctrncmon, lctrntcam, lctrnmorg, lctrnnopr, lctrntorg, lctrnmrcb, lctrnuser, lctrnuaut, lctrnhora, lctrnfpro
FROM lctrn;
SELECT lctsgntra, lctsgftra, lctsguneg, lctsgnosg, lctsgtorg, lctsgcage, lctsgcmon, lctsgimpt, lctsgmrcb, lctsguser, lctsghora, lctsgfpro
FROM lctsg;
SELECT nbcxpntra, nbcxpftra, nbcxpcage, nbcxpagen, nbcxptcxp, nbcxpcapl, nbcxpfvto, nbcxpgsla, nbcxpcmon, nbcxpimpt, nbcxpncpg, nbcxpuser, nbcxphora, nbcxpfpro
FROM nbcxp;
SELECT otasecart, otasetipo, otasestat, otaseuser, otasehora, otasefpro
FROM otase;
SELECT otcesnces, otcesnord, otcestces, otcesfcam, otcesejan, otcesejnu, otcesesan, otcesesnu, otcesuser, otceshora, otcesfpro
FROM otces;
SELECT otconpref, otconcorr, otcondesc, otconabre
FROM otcon;
SELECT otctlclde
FROM otctl;
SELECT otdetntra, otdetimut, otdetitem, otdetnord, otdettipo, otdetcart, otdetcade, otdetcant, otdetccli
FROM otdet;
SELECT otdtrntra, otdtridtr, otdtritem, otdtrnord, otdtrftra, otdtrtipo, otdtrcart, otdtrcade, otdtrcanp, otdtrcane, otdtrcanf, otdtrcant, otdtruneg, otdtrcalm, otdtreasi, otdtrmrcb
FROM otdtr;
SELECT otejecage, otejestat, otejeuser, otejehora, otejefpro
FROM oteje;
SELECT othmunord, othmuitem, othmuimut, othmufreg, othmutipo, othmucart, othmucaru, othmucmon, othmutcam, othmucant, othmucane, othmucand, othmupvta, othmuimpb, othmuimb2, othmupdsc, othmuidsc, othmuidc2, othmuimpn, othmuimn2, othmuccli, othmuacof, othmumrcb
FROM othmu;
SELECT othotnord, othotfreg, othotcloc, othotuneg, othotfrec, othothrec, othotfent, othotcage, othotnomb, othottelf, othotcmon, othottcam, othotimpm, othotimpc, othotimpv, othotcven, othotdire, othotglos, othotnvta, othotstat, othotscom, othotmrcb, othotuser, othothora, othotfpro
FROM othot;
SELECT othsonord, othsoitem, othsofreg, othsocart, othsoeasi, othsodser, othsocven, othsocmon, othsocant, othsopvta, othsoimpb, othsoimb2, othsopdsc, othsoidsc, othsoidc2, othsoimpn, othsoimn2, othsoimpm, othsoimm2, othsoimpv, othsoimv2, othsotcam, othsomrcb
FROM othso;
SELECT othtrntra, othtrnord, othtrftra, othtrtipo, othtritem, othtrcart, othtreasi, othtruneg, othtrcalm, othtrcage, othtrglos, othtrmrcb, othtruser, othtrhora, othtrfpro
FROM othtr;
SELECT otmotnord, otmotfreg, otmotcloc, otmotuneg, otmotfrec, otmothrec, otmotfent, otmotcage, otmotnomb, otmottelf, otmotcmon, otmottcam, otmotimpm, otmotimpc, otmotimpv, otmotcven, otmotdire, otmotglos, otmotnvta, otmotstat, otmotscom, otmotmrcb, otmotuser, otmothora, otmotfpro
FROM otmot;
SELECT otmutnord, otmutitem, otmutimut, otmutfreg, otmuttipo, otmutcart, otmutcaru, otmutcmon, otmuttcam, otmutcant, otmutcane, otmutcand, otmutpvta, otmutimpb, otmutimb2, otmutpdsc, otmutidsc, otmutidc2, otmutimpn, otmutimn2, otmutccli, otmutacof, otmutmrcb
FROM otmut;
SELECT otndantra, otndattra, otndaitem, otndaimut, otndacart, otndacpza, otndamlgo, otndamanc, otndablgo, otndabanc, otndamblg, otndamban
FROM otnda;
SELECT otsotnord, otsotitem, otsotfreg, otsotcart, otsoteasi, otsotdser, otsotcven, otsotcmon, otsotcant, otsotpvta, otsotimpb, otsotimb2, otsotpdsc, otsotidsc, otsotidc2, otsotimpn, otsotimn2, otsotimpm, otsotimm2, otsotimpv, otsotimv2, otsottcam, otsotmrcb
FROM otsot;
SELECT otsrlnord, otsrlnces, otsrlntra
FROM otsrl;
SELECT pcagecage
FROM pcage;
SELECT pccadnpre, pccadnmes, pccadncuo
FROM pccad;
SELECT pccagcage, pccagcarg, pccagimpt, pccagcmon, pccagfvig
FROM pccag;
SELECT pccesnpre, pccesnces, pccesfech, pccesform, pcceseant, pccesfant, pcceseact, pccesuser, pcceshora, pccesfpro
FROM pcces;
SELECT pccgencon, pccgenpre, pccgetcon, pccgecodv, pccgedesc, pccgestat, pccgeuser, pccgehora, pccgefpro
FROM pccge;
SELECT pccgpcarg, pccgpdesc, pccgpttrn, pccgptipo, pccgpccos, pccgpfapl, pccgpbapl, pccgpfcob, pccgpmont, pccgpcmon, pccgpcctb, pccgpadic, pccgpmiva, pccgptcre
FROM pccgp;
SELECT pccomccob, pccomntra, pccomftra, pccomfpag, pccompcom, pccomimpt, pccomicom, pccomicop, pccomcmon, pccompcoa, pccomicoa, pccommpag, pccomcreg, pccomuneg, pccomuser, pccomhora, pccomfpro
FROM pccom;
SELECT pcconpref, pcconcorr, pccondesc, pcconabre
FROM pccon;
SELECT pcctlndoc, pcctlpcaj, pcctlcdfc, pcctlccos, pcctladif, pcctlccve, pcctlacve, pcctltcpa, pcctlacpa, pcctltabo, pcctlfcie, pcctlfcia, pcctlccxc, pcctlacxc, pcctltcrf, pcctltcom, pcctlacom, pcctlopcp
FROM pcctl;
SELECT pcctpcarg, pcctpitem, pcctptpre, pcctpuser, pcctphora, pcctpfpro
FROM pcctp;
SELECT pcdoptcon, pcdopccon, pcdopcsin, pcdopuser, pcdophora, pcdopfpro
FROM pcdop;
SELECT pcdtcntra, pcdtcnpre, pcdtcnpag, pcdtcitem, pcdtccarg, pcdtcitec, pcdtcftra, pcdtcdesc, pcdtcimpt, pcdtciptc, pcdtccmon, pcdtccreg, pcdtcuneg, pcdtcmrcb, pcdtcuser, pcdtchora, pcdtcfpro
FROM pcdtc;
SELECT pcdtdntra, pcdtdnpre, pcdtdftra, pcdtdcapi, pcdtdtcrg, pcdtdtotd, pcdtdcmon, pcdtdcreg, pcdtduneg, pcdtdmrcb, pcdtduser, pcdtdhora, pcdtdfpro
FROM pcdtd;
SELECT pcdtrntra, pcdtrnpre, pcdtrnpag, pcdtritem, pcdtrftra, pcdtrcapi, pcdtrinte, pcdtripti, pcdtrcarg, pcdtriptc, pcdtrcmon, pcdtrcreg, pcdtruneg, pcdtrmrcb, pcdtruser, pcdtrhora, pcdtrfpro
FROM pcdtr;
SELECT pcfortcon, pcforcodv, pcforstat, pcforuser, pcforhora, pcforfpro
FROM pcfor;
SELECT pcgarnpre, pcgaritem, pcgarcage, pcgartgar, pcgarndoc, pcgarfven, pcgarimpt, pcgarcmon, pcgardsc1, pcgardsc2, pcgardsc3, pcgaruser, pcgarhora, pcgarfpro
FROM pcgar;
SELECT pcgprnpre, pcgpritem, pcgprcage, pcgpruser, pcgprhora, pcgprfpro
FROM pcgpr;
SELECT pchtcntra, pchtccarg, pchtcitem, pchtcftra, pchtcimpt, pchtcmvia, pchtciptc, pchtccreg, pchtcuneg, pchtcmrcb
FROM pchtc;
SELECT pchtrntra, pchtrcage, pchtrftra, pchtrttrn, pchtrtcob, pchtrndoc, pchtrcvia, pchtrcaja, pchtrncta, pchtrbank, pchtrncbk, pchtrnchq, pchtrimpt, pchtrmvia, pchtrtcam, pchtrtcuo, pchtrtcrg, pchtriado, pchtrcxpa, pchtriliq, pchtrnliq, pchtrmdes, pchtrtdes, pchtrfreg, pchtrtcof, pchtrccob, pchtrpcom, pchtrglos, pchtrmpag, pchtrreve, pchtrusra, pchtrfaut, pchtrcreg, pchtruneg, pchtrmrcb, pchtruser, pchtrhora, pchtrfpro, pchtrccos
FROM pchtr;
SELECT pcliqnliq, pcliqfliq, pcliqccob, pcliqpcom, pcliqpcoa, pcliqimpt, pcliqcmon, pcliqtcam, pcliqntra, pcliqftra, pcliqcage, pcliqncpg, pcliqcreg, pcliquneg, pcliqmrcb, pcliquser, pcliqhora, pcliqfpro
FROM pcliq;
SELECT pcmcpncar, pcmcpcage, pcmcplcre, pcmcptcre, pcmcpautp, pcmcprseg, pcmcpcven, pcmcpcobr, pcmcprubr, pcmcpdest, pcmcpcmon, pcmcpmdes, pcmcpplzo, pcmcptasa, pcmcpppgk, pcmcpdiap, pcmcpftra, pcmcpncre, pcmcptcam, pcmcpcvia, pcmcpmodn, pcmcpcreg, pcmcpuneg, pcmcpuser, pcmcpfppa, pcmcpmorg, pcmcptorg, pcmcpnemp
FROM pcmcp;
SELECT pcmhpncar, pcmhpnomb, pcmhpnomp, pcmhpftra, pcmhpcant, pcmhpcanp, pcmhptpre, pcmhpmrcb, pcmhpuser, pcmhphora, pcmhpfpro
FROM pcmhp;
SELECT pcmpcnpre, pcmpcnapr, pcmpccage, pcmpcfreg, pcmpclncr, pcmpcreso, pcmpctcre, pcmpcautp, pcmpcrseg, pcmpccven, pcmpccobr, pcmpcrubr, pcmpcdest, pcmpcddes, pcmpccmon, pcmpcmdes, pcmpcplzo, pcmpcuplz, pcmpctasa, pcmpctase, pcmpcfpag, pcmpccudb, pcmpcppgk, pcmpcgrac, pcmpcuppg, pcmpcdiap, pcmpcfprp, pcmpccalf, pcmpcfdes, pcmpcfulp, pcmpcsald, pcmpckven, pcmpccuvn, pcmpcstan, pcmpcfsan, pcmpcstat, pcmpcfsta, pcmpcfpvc, pcmpcfvac, pcmpcfvor, pcmpccrpg, pcmpcfrpg, pcmpcstaf, pcmpcpdvg, pcmpcpsus, pcmpcfdev, pcmpcmcpd, pcmpcreve, pcmpcusrr, pcmpccreg, pcmpcuneg, pcmpcmrcb, pcmpcuser, pcmpchora, pcmpcfpro, pcmpcnemp, pcmpcmorg, pcmpctorg
FROM pcmpc;
SELECT pcmplncar, pcmplncre, pcmplncuo, pcmplfech, pcmplcmon, pcmplcapi, pcmplinte
FROM pcmpl;
SELECT pcnotnpre, pcnotfech, pcnotdesc, pcnotfpag, pcnotuser, pcnothora, pcnotfpro
FROM pcnot;
SELECT pcpcgnpre, pcpcgnpag, pcpcgcarg, pcpcgimpt, pcpcgcmon, pcpcgfvig, pcpcgcage, pcpcguser, pcpcghora, pcpcgfpro
FROM pcpcg;
SELECT pcpdocodv, pcpdotipv, pcpdonomb, pcpdotabl, pcpdocamp, pcpdodat1, pcpdodat2, pcpdouser, pcpdohora, pcpdofpro
FROM pcpdo;
SELECT pcppgnpre, pcppgnpag, pcppgcage, pcppgfech, pcppgtasa, pcppgcmon, pcppgcapi, pcppginte, pcppgipto, pcppgcarg, pcppgtota, pcppgmpag, pcppgfpag, pcppgntra, pcppgcreg, pcppguneg
FROM pcppg;
SELECT pcppttcre, pcpptfini, pcpptffin, pcpptpgra, pcpptmrcb, pcpptuser, pcppthora, pcpptfpro
FROM pcppt;
SELECT pcprenpre, pcprecage, pcprestat
FROM pcpre;
SELECT pcrcpcarg, pcrcpdias, pcrcprani, pcrcpranf, pcrcpmont, pcrcpfapl
FROM pcrcp;
SELECT pcrettpre, pcretcage, pcretuser, pcrethora, pcretfpro
FROM pcret;
SELECT pcrnvnrnv, pcrnvnpre, pcrnvndoc, pcrnvfreg, pcrnvcaut, pcrnvfvac, pcrnvfvan, pcrnvcreg, pcrnvuneg, pcrnvuser, pcrnvhora, pcrnvfpro
FROM pcrnv;
SELECT pctcrtcre, pctcrdesc, pctcrccos, pctcrfmpg, pctcrdcas, pctcrvctc, pctcrdsal, pctcrdtol, pctcrecup, pctcrtano, pctcrdlpz, pctcrdsv2, pctcrteje, pctcrdeje, pctcrstaf, pctcrtcii, pctcrcsde, pctcrtran, pctcrreve, pctcrusra, pctcruser, pctcrhora, pctcrfpro
FROM pctcr;
SELECT pctpmtcre, pctpmcmon, pctpmckvc, pctpmakvc, pctpmckvl, pctpmakvl, pctpmckm1, pctpmakm1, pctpmckm2, pctpmakm2, pctpmckej, pctpmakej, pctpmckca, pctpmakca, pctpmcpvg, pctpmapvg, pctpmcpvn, pctpmapvn, pctpmcpej, pctpmapej, pctpmcpcg, pctpmapcg, pctpmcivg, pctpmaivg, pctpmcivn, pctpmaivn, pctpmciej, pctpmaiej, pctpmcicg, pctpmaicg, pctpmsdvn, pctpmsavn, pctpmsdej, pctpmsaej
FROM pctpm;
SELECT pctrnntra
FROM pctrn;
SELECT pcttptcre, pcttpcmon, pcttprani, pcttpranf, pcttptasa, pcttpporc
FROM pcttp;
SELECT pcviacvia, pcviadesc, pcviaabre, pcviacctb, pcviaadib, pcviacctd, pcviaadid
FROM pcvia;
SELECT pdalpcart, pdalpuser, pdalphora, pdalpfpro
FROM pdalp;
SELECT pdapdntra, pdapdcprc, pdapdprod, pdapdnrec, pdapdordp, pdapdcalm, pdapdccos, pdapdfini, pdapdffin, pdapdcrec, pdapdcent, pdapdcrch, pdapdmotv, pdapdndoc, pdapdcins, pdapdcpro, pdapdimpa, pdapdcoia, pdapdcopa, pdapdcair, pdapdcapr, pdapduser, pdapdhora, pdapdfpro
FROM pdapd;
SELECT pdcmdncon, pdcmdftra, pdcmduneg, pdcmdcalm, pdcmditem, pdcmdprod, pdcmdcant, pdcmdcanr, pdcmdnrec, pdcmdumed, pdcmdrlum, pdcmdcost, pdcmdmrcb, pdcmdcosp, pdcmdcosm
FROM pdcmd;
SELECT pdcmhncon, pdcmhndoc, pdcmhftra, pdcmhtoco, pdcmhtorg, pdcmhuneg, pdcmhccos, pdcmhcalm, pdcmhnegr, pdcmhtcam, pdcmhgls1, pdcmhgls2, pdcmhgls3, pdcmhstat, pdcmhfmrc, pdcmhmrcb, pdcmhuser, pdcmhhora, pdcmhfpro, pdcmhnegm, pdcmhtipo, pdcmhtaju, pdcmhcapt
FROM pdcmh;
SELECT pdcmincon, pdcmiprod, pdcmiitep, pdcmicprc, pdcmiitei, pdcmiinsu, pdcmicant, pdcmicost, pdcmicanp, pdcmicanm, pdcmicosp, pdcmicosm
FROM pdcmi;
SELECT pdcmpncon, pdcmpprod, pdcmditep, pdcmpcprc
FROM pdcmp;
SELECT pdconpref, pdconcorr, pdcondesc, pdconabre
FROM pdcon;
SELECT pdctlndoc, pdctlnmes, pdctlflim, pdctlctap, pdctlctam, pdctlctcm, pdctlcdfc, pdctltcop, pdctlocap, pdctlaccm, pdctlcppr, pdctlcbpr, pdctlmprr, pdctlcdvc, pdctlincl, pdctltmem
FROM pdctl;
SELECT pddpttipo, pddptntra, pddptftra, pddptprod, pddptnrec, pddptitem, pddptcprc, pddptcepr, pddptumed, pddptvume, pddptcosr, pddptcost
FROM pddpt;
SELECT pdeprcprc, pdeprcepr, pdeprumed, pdeprvume, pdeprcost
FROM pdepr;
SELECT pdfuncfun, pdfunnomb
FROM pdfun;
SELECT pdipdntra, pdipdndoc, pdipdftra, pdipdctur, pdipdcmaq, pdipdcpar, pdipdhini, pdipdhfin, pdipdcant, pdipdobs1, pdipdobs2, pdipdobs3, pdipdmrcb
FROM pdipd;
SELECT pdipmntra, pdipmndoc, pdipmftra, pdipmctur, pdipmcmaq, pdipmresp, pdipmraux, pdipmmrcb
FROM pdipm;
SELECT pdmaqcmaq, pdmaqdesc, pdmaqnser, pdmaqafab, pdmaqainc, pdmaqhdim, pdmaqcosh, pdmaqcmon
FROM pdmaq;
SELECT pdmprcprc, pdmprinsu, pdmpritem, pdmprcant
FROM pdmpr;
SELECT pdmtzcmtz, pdmtzdesc, pdmtzrtlo, pdmtzrub1, pdmtzrub2
FROM pdmtz;
SELECT pdopdordp, pdopdftra, pdopduneg, pdopdccos, pdopdprod, pdopdnrec, pdopdcanr, pdopdcanp, pdopdumed
FROM pdopd;
SELECT pdophordp, pdophndoc, pdophftra, pdophgls1, pdophgls2, pdophgls3, pdophfsta, pdophstat, pdophuser, pdophhora, pdophfpro, pdophfent, pdophnped, pdophcage
FROM pdoph;
SELECT pdparcmaq, pdparcpar, pdpardesc
FROM pdpar;
SELECT pdpccprod, pdpccnrec, pdpccuneg, pdpccccos, pdpccitem, pdpccuser, pdpcchora, pdpccfpro
FROM pdpcc;
SELECT pdpcocpco, pdpcodesc, pdpcortlo
FROM pdpco;
SELECT pdpemcmaq, pdpemcone, pdpemumed, pdpemvale, pdpemvama, pdpemvame
FROM pdpem;
SELECT pdpepprod, pdpepcone, pdpepumed, pdpepvale, pdpepvama, pdpepvame
FROM pdpep;
SELECT pdpetctar, pdpetcone, pdpetumed, pdpetvale, pdpetvama, pdpetvame
FROM pdpet;
SELECT pdpgpprod, pdpgpnano, pdpgpnmes, pdpgpcant, pdpgpumed
FROM pdpgp;
SELECT pdpipntra, pdpipprod, pdpipcprc, pdpipinsu, pdpipitem, pdpipcant
FROM pdpip;
SELECT pdpmantra, pdpmaprod, pdpmanrec, pdpmacmaq, pdpmaobs1, pdpmaobs2, pdpmaobs3
FROM pdpma;
SELECT pdpmpntra, pdpmpprod, pdpmpnrec, pdpmpcprc, pdpmpitem, pdpmpmate, pdpmpcuti, pdpmpcper, pdpmpcant
FROM pdpmp;
SELECT pdpmuntra, pdpmuprod, pdpmunrec, pdpmuneup, pdpmuitem, pdpmumate, pdpmucuti, pdpmucper, pdpmucant, pdpmucost, pdpmumrec, pdpmuobs1, pdpmuobs2, pdpmuobs3
FROM pdpmu;
SELECT pdppcntra, pdppcncon
FROM pdppc;
SELECT pdppdntra, pdppdftra, pdppduneg, pdppdccos, pdppdcalm, pdppdcalr, pdppdcale, pdppdordp, pdppdtcam, pdppdprod, pdppdnrec, pdppdcana, pdppdcanr, pdppdcant, pdppdumed, pdppdcosi, pdppdcosp, pdppdcoip, pdppdcoim
FROM pdppd;
SELECT pdppentra, pdppetipo, pdppecone, pdppecodi, pdppevlor
FROM pdppe;
SELECT pdpphntra, pdpphndoc, pdpphftra, pdpphctur, pdpphuneg, pdpphccos, pdpphcalm, pdpphcalr, pdpphcale, pdpphordp, pdpphtcam, pdpphcfu1, pdpphcfu2, pdpphcper, pdpphgls1, pdpphgls2, pdpphgls3, pdpphniac, pdpphnire, pdpphnieg, pdpphuser, pdpphhora, pdpphfpro, pdpphconm, pdpphfprd, pdpphnodc, pdpphnegm
FROM pdpph;
SELECT pdppintra, pdppiprod, pdppiinsu, pdppicant, pdppicost, pdppimdcg, pdppicanp, pdppicanm, pdppicosp, pdppicosm
FROM pdppi;
SELECT pdpppntra, pdpppprod, pdpppcprc, pdpppcost
FROM pdppp;
SELECT pdprccprc, pdprcdesc, pdprctipo, pdprccmon, pdprccost, pdprcclas, pdprcmcpd, pdprccacp
FROM pdprc;
SELECT pdprmprod, pdprmnrec, pdprmcmaq
FROM pdprm;
SELECT pdpupuser, pdpupuneg, pdpupccos, pdpupcalm, pdpupcalr, pdpupcale
FROM pdpup;
SELECT pdtmvcorr
FROM pdr008;
SELECT pdrcincon, pdrcintri, pdrciprod, pdrcicprc, pdrciinsu, pdrciitem, pdrciitei
FROM pdrci;
SELECT pdrinprod, pdrinnrec, pdrininsu, pdrincant, pdrinmerm, pdrinmdcg, pdrincest
FROM pdrin;
SELECT pdripprod, pdripnrec, pdripcprc, pdripinsu, pdripitem, pdripcant
FROM pdrip;
SELECT pdrmpcmaq, pdrmpprod, pdrmprenh
FROM pdrmp;
SELECT pdrpcprod, pdrpctprd, pdrpcnrec, pdrpcdesc, pdrpcnot1, pdrpcnot2, pdrpcnot3, pdrpccbas, pdrpccbar, pdrpcumre, pdrpcbtip, pdrpcpesp, pdrpcumpe, pdrpcumvo, pdrpcrpri, pdrpccest, pdrpcpmas, pdrpcpmen, pdrpcpvcn, pdrpcpvcp, pdrpctipo, pdrpcpcap
FROM pdrpc;
SELECT pdrpmprod, pdrpmnrec, pdrpmcmtz
FROM pdrpm;
SELECT pdrppprod, pdrppnrec, pdrppcpco
FROM pdrpp;
SELECT pdrprprod, pdrprnrec, pdrprcprc, pdrpruprc, pdrprsecp, pdrprmcpd
FROM pdrpr;
SELECT pdtapcapl
FROM pdtap;
SELECT pdtarctar, pdtardesc, pdtarrenh, pdtarhdim, pdtarcosh, pdtarcmon
FROM pdtar;
SELECT pdtmetprd, pdtmetume, pdtmeumed, pdtmecani, pdtmecanf, pdtmemerm
FROM pdtme;
SELECT pdtucuneg, pdtucccos, pdtucttlo
FROM pdtuc;
SELECT pdturctur, pdturdesc, pdturhini, pdturhfin
FROM pdtur;
SELECT pdumtcmtz, pdumtubi1, pdumtubi2
FROM pdumt;
SELECT ppcclcnta
FROM ppccl;
SELECT ppclaccla, ppcladesc
FROM ppcla;
SELECT ppctlcmon, ppctlfulp
FROM ppctl;
SELECT ppgrucgru, ppgrudesc
FROM ppgru;
SELECT ppmphcnta, ppmphuneg, ppmphccos, ppmphtcon, ppmphadic, ppmphcgru, ppmphdcta, ppmphdgru, ppmphanio, ppmphnmes, ppmphimpp, ppmphimpr, ppmphimpe
FROM ppmph;
SELECT ppmppcnta, ppmppcreg, ppmppuneg, ppmppccos, ppmpptcon, ppmppadic, ppmppcgru, ppmppanio, ppmppnmes, ppmppimpp, ppmppimpr, ppmppimpe, ppmppgest
FROM ppmpp;
SELECT pppprnpar, pppprdesc, pppprnatu, pppprcscl
FROM ppppr;
SELECT pprpcnpar, pprpccctb, pprpcadic
FROM pprpc;
SELECT ppsclcscl, ppscldesc, ppsclccla
FROM ppscl;
SELECT ppsupcnta, ppsupuneg, ppsupccos, ppsuptcon, ppsupadic, ppsupcgru, ppsupvar1, ppsupfact, ppsupgest
FROM ppsup;
SELECT pvapdntra, pvapdcrut, pvapdmrcb, pvapdnruc, pvapdnser, pvapdnaut
FROM pvapd;
SELECT pvconpref, pvconcorr, pvcondesc, pvconabre
FROM pvcon;
SELECT pvcpporde, pvcppcage, pvcppuser, pvcpphora, pvcppfpro
FROM pvcpp;
SELECT pvctltpdm
FROM pvctl;
SELECT pvdaittra, pvdaintra, pvdaiitem, pvdaicart, pvdaicven, pvdaicoap
FROM pvdai;
SELECT pvenbntra, pvenbftra, pvenbnped, pvenbitem, pvenbcart, pvenbcent, pvenbpvta, pvenbcmon, pvenbmrcb
FROM pvenb;
SELECT pvencntra, pvencccrg, pvenccmon, pvencimpt
FROM pvenc;
SELECT pvendntra, pvendftra, pvendnped, pvenditem, pvendcart, pvendcent, pvendpvta, pvendimpt, pvendpdsc, pvendidsc, pvendiice, pvendcmon, pvendacof, pvendmrcb
FROM pvend;
SELECT pvenhntra, pvenhftra, pvenhnped, pvenhcmon, pvenhcage, pvenhnomb, pvenhpcre, pvenhitot, pvenhiefe, pvenhncta, pvenhicre, pvenhplzo, pvenhpdsc, pvenhidsc, pvenhirec, pvenhiice, pvenhiehd, pvenhtcam, pvenhcven, pvenhzona, pvenhstat, pvenhdir1, pvenhdir2, pvenhcres, pvenhcalm, pvenhuneg, pvenhccos, pvenhcloc, pvenhmrcb, pvenhuser, pvenhhora, pvenhfpro, pvenhfreg
FROM pvenh;
SELECT pvlppnped, pvlpplpre
FROM pvlpp;
SELECT pvodpnped, pvodppefe, pvodppchq, pvodpptrj, pvodppcxc, pvodppcte, pvodpppre, pvodpgls1, pvodpgls2, pvodpgls3
FROM pvodp;
SELECT pvopdntra, pvopdftra, pvopduneg, pvopdcloc, pvopdcalm, pvopditem, pvopdcart, pvopdcanp, pvopdcanc, pvopdmrcb
FROM pvopd;
SELECT pvophntra, pvophndoc, pvophftra, pvophfent, pvophuneg, pvophcloc, pvophcalm, pvophresp, pvophplca, pvophchof, pvophayud, pvophvalt, pvophddpt, pvophdist, pvophdloc, pvophzona, pvophcrut, pvophfsta, pvophstat, pvophfmrc, pvophmrcb, pvophuser, pvophhora, pvophfpro, pvophzsup
FROM pvoph;
SELECT pvoppntra, pvoppitem, pvoppnped, pvoppcant, pvoppmrcb, pvoppmodd, pvopptdes, pvoppdcde, pvoppnord, pvoppnfac
FROM pvopp;
SELECT pvotaorde, pvotacalm
FROM pvota;
SELECT pvpdantra, pvpdansai301, pvpdaftra, pvpdacven
FROM pvpda;
SELECT pvpdbntra, pvpdbftra, pvpdbitem, pvpdbcart, pvpdbcped, pvpdbcent, pvpdbpvta, pvpdbcmon, pvpdbfent, pvpdbnot1, pvpdbnot2, pvpdbnot3, pvpdbmrcb
FROM pvpdb;
SELECT pvpddntra, pvpddftra, pvpdditem, pvpddcart, pvpddcped, pvpddcent, pvpddpvta, pvpddimpt, pvpddpdsc, pvpddidsc, pvpddiice, pvpddcmon, pvpddfent, pvpddnot1, pvpddnot2, pvpddnot3, pvpddacof, pvpddmrcb
FROM pvpdd;
SELECT pvpdhntra, pvpdhtipo, pvpdhndoc, pvpdhftra, pvpdhcmon, pvpdhcage, pvpdhnomb, pvpdhncta, pvpdhpcre, pvpdhplzo, pvpdhpdsc, pvpdhidsc, pvpdhiice, pvpdhiehd, pvpdhtcam, pvpdhcven, pvpdhuneg, pvpdhccos, pvpdhcloc, pvpdhzona, pvpdhfent, pvpdhstat, pvpdhdir1, pvpdhdir2, pvpdhnpro, pvpdhadbm, pvpdhscom, pvpdhmrcb, pvpdhuser, pvpdhhora, pvpdhfpro, pvpdhcalm, pvpdhnot1, pvpdhnot2, pvpdhnot3
FROM pvpdh;
SELECT pvpdlntra, pvpdlitem, pvpdlcart, pvpdllote, pvpdlcant
FROM pvpdl;
SELECT pvpdpntra, pvpdpitem, pvpdpcart, pvpdpcanp, pvpdpmrcb
FROM pvpdp;
SELECT pvpfecalm, pvpfecloc, pvpfecven, pvpfetped, pvpfettar
FROM pvpfe;
SELECT pvprbntra, pvprbftra, pvprbitem, pvprbcart, pvprbcant, pvprbpvta, pvprbcmon, pvprbmrcb
FROM pvprb;
SELECT pvprdntra, pvprdftra, pvprditem, pvprdcart, pvprdcant, pvprdpvta, pvprdimpt, pvprdpdsc, pvprdidsc, pvprdiice, pvprdcmon, pvprdacof, pvprdmrcb, pvprdnot1, pvprdnot2, pvprdnot3
FROM pvprd;
SELECT pvprontra, pvprondoc, pvproftra, pvprodvld, pvprofvld, pvprocmon, pvprocage, pvpronomb, pvprotelf, pvprodire, pvpronruc, pvproimpt, pvpropdsc, pvproidsc, pvproiice, pvproiehd, pvprotcam, pvprocven, pvprouneg, pvproccos, pvprocloc, pvprostat, pvpronot1, pvpronot2, pvpronot3, pvpromrcb, pvprouser, pvprohora, pvprofpro
FROM pvpro;
SELECT pvrescres, pvresnomb
FROM pvres;
SELECT pvrpvnped, pvrpvnpex, pvrpvfped, pvrpvnept, pvrpvfept, pvrpvnipt, pvrpvfipt, pvrpvnvta, pvrpvfnvt, pvrpvnord, pvrpvnfac, pvrpvstat
FROM pvrpv;
SELECT pvtpdtipo, pvtpddesc, pvtpdscom
FROM pvtpd;
SELECT pvvehplca, pvvehtveh, pvvehmveh, pvvehmode, pvvehccpe, pvvehccvo, pvvehnomt, pvvehnnit, pvvehchof, pvvehayud, pvvehviat, pvvehvalt, pvvehddpt, pvvehdist, pvvehdloc, pvvehstat, pvvehfsta, pvvehuser, pvvehhora, pvvehfpro
FROM pvveh;
SELECT qrsimcbqr, qrsimtipo, qrsimtiqr, qrsimcbob, qrsimctab, qrsimcbod, qrsimctad, qrsimwaha, qrsimwabl, qrsimwaco, qrsimwsai, qrsimware, qrsimabob, qrsimabod
FROM qrsim;
SELECT qrsqrnext, qrsqrtipo, qrsqrcsal, qrsqrncja, qrsqrfsol, qrsqrfven, qrsqrnnit, qrsqrnomb, qrsqretiq, qrsqrcmon, qrsqrimpt, qrsqrnsqr, qrsqridqr, qrsqridtz, qrsqridei, qrsqrceif, qrsqrncts, qrsqrcorp, qrsqrnito, qrsqrnomo, qrsqrpago, qrsqrstat
FROM qrsqr;
SELECT rcacsntra, rcacsuneg, rcacscart, rcacscant, rcacsstat
FROM rcacs;
SELECT rcaddntra, rcaddftra, rcadditem, rcaddttro, rcaddtorg, rcaddiorg, rcaddcart, rcaddumco, rcaddcanr, rcaddcanc, rcaddcmon, rcaddpuni, rcaddimpt, rcaddplzo, rcadduplz, rcaddstat, rcaddmrcb
FROM rcadd;
SELECT rcadhntra, rcadhftra, rcadhndoc, rcadhnreq, rcadhttro, rcadhtorg, rcadhprov, rcadhtreq, rcadhmexc, rcadhcaut, rcadhcmon, rcadhimpt, rcadhtcam, rcadhgls1, rcadhgls2, rcadhgls3, rcadhstat, rcadhmrcb, rcadhuser, rcadhhora, rcadhfpro, rcadhtpro, rcadhncpg
FROM rcadh;
SELECT rcadjnreq, rcadjccon, rcadjncon, rcadjcfac, rcadjnfac, rcadjnitf, rcadjdirs, rcadjdirf, rcadjdesc, rcadjmrcb, rcadjuser, rcadjfadj
FROM rcadj;
SELECT rcadsntra, rcadsftra, rcadsndoc, rcadsnsol, rcadsprov, rcadstipo, rcadstorg, rcadsmexc, rcadscaut, rcadscmon, rcadsimpt, rcadsdvig, rcadstcam, rcadsgls1, rcadsgls2, rcadsgls3, rcadsmrcb, rcadsuser, rcadshora, rcadsfpro, rcadstpro
FROM rcads;
SELECT rcasotaut, rcasocodi, rcasouser, rcasohora, rcasofpro
FROM rcaso;
SELECT rcatrtipo, rcatrtaut, rcatrcodi
FROM rcatr;
SELECT rccodntra, rccodnreq, rccodftra, rccodprov, rccoditem, rccodcart, rccodcreq, rccodccot, rccodpuni, rccodimpt, rccodplzo, rccoduplz
FROM rccod;
SELECT rccohntra, rccohnreq, rccohprov, rccohndoc, rccohftra, rccohcmon, rccohtcam, rccohgls1, rccohgls2, rccohgls3, rccohstat, rccohmrcb, rccohuser, rccohhora, rccohfpro
FROM rccoh;
SELECT rcconpref, rcconcorr, rccondesc, rcconabre
FROM rccon;
SELECT rccosntra, rccosftra, rccosndoc, rccosnsol, rccosprov, rccoscmon, rccosimpt, rccosdvig, rccosmrcb, rccosuser, rccoshora, rccosfpro, rccostpag, rccostpro, rccosglsa, rccostcam, rccosfpag
FROM rccos;
SELECT rccshntra, rccshnsol, rccshndoc, rccshprov, rccshftra, rccshimpt, rccshcmon, rccshtcam, rccshfcot, rccshplzo, rccshuplz, rccshdesc, rccshgls1, rccshgls2, rccshgls3, rccshstat, rccshmrcb, rccshuser, rccshhora, rccshfpro
FROM rccsh;
SELECT rcctdntra, rcctdftra, rcctdprov, rcctditem, rcctdcart, rcctdumco, rcctdcanr, rcctdcanc, rcctdcmon, rcctdpuni, rcctdimpt, rcctdplzo, rcctduplz, rcctdstat, rcctdtorg, rcctdiorg, rcctdmrcb
FROM rcctd;
SELECT rccthntra, rccthndoc, rccthftra, rccthmorg, rccthtorg, rccthprov, rccthcalm, rccthcmon, rccthimpt, rccthtcam, rccthtdes, rccthfdes, rccthudes, rccthstat, rccthmrcb, rccthuser, rccthhora, rccthfpro, rccthtpag, rccthtpro, rccthfent, rccthglsa, rccthfpag
FROM rccth;
SELECT rcctlcpvd, rcctltcss, rcctlmres
FROM rcctl;
SELECT rcdeacalm, rcdeacres, rcdeacffv, rcdeafvor, rcdeadenv, rcdeadenf
FROM rcdea;
SELECT rcdtensol, rcdtecart, rcdteumut, rcdteuneg, rcdtecant, rcdtetipo
FROM rcdte;
SELECT rcetrtipo, rcetrtaex, rcetrcodi
FROM rcetr;
SELECT rcmsecser, rcmsedesc, rcmseumut
FROM rcmse;
SELECT rcpoccpoc, rcpocnomb, rcpocfini, rcpocffin
FROM rcpoc;
SELECT rcpseprov, rcpsecser, rcpseumse, rcpsecuni
FROM rcpse;
SELECT rcraonreq, rcraontra, rcraonord
FROM rcrao;
SELECT rcrcdntra, rcrcdnrem, rcrcdnocm, rcrcdalmo, rcrcdalme, rcrcditem, rcrcdcart, rcrcdumut, rcrcdcreq, rcrcdcent, rcrcdcmon, rcrcdprov, rcrcdpuni, rcrcdimpt, rcrcdstat, rcrcdstan, rcrcdplzo, rcrcduplz, rcrcdmrcb
FROM rcrcd;
SELECT rcrchntra, rcrchnres, rcrchftra, rcrchndoc, rcrchcalm, rcrchimpt, rcrchcmon, rcrchtcam, rcrchstat, rcrchstan, rcrchgls1, rcrchgls2, rcrchgls3, rcrchmrcb, rcrchuser, rcrchhora, rcrchfpro
FROM rcrch;
SELECT rcrcpnreq, rcrcptreq, rcrcpncpg, rcrcpmoda, rcrcptora
FROM rcrcp;
SELECT rcredntra, rcredftra, rcreduner, rcreditem, rcredcorg, rcredcdes, rcredcart, rcredumut, rcredcans, rcredcana, rcredumcp, rcredcanc, rcredcmon, rcredpuni, rcredimpt, rcredtorg, rcredites, rcrednaud, rcredfaud, rcredprov, rcredcatr, rcredstat, rcredmrcb
FROM rcred;
SELECT rcrehntra, rcrehndoc, rcrehftra, rcrehtreq, rcrehuner, rcrehcage, rcrehcres, rcrehcaut, rcrehuneg, rcrehcalm, rcrehcmon, rcrehimpt, rcrehtcam, rcrehmorg, rcrehttra, rcrehtorg, rcrehflim, rcrehgls1, rcrehgls2, rcrehgls3, rcrehstat, rcrehnaud, rcrehfaud, rcrehprov, rcrehcatr, rcrehnres, rcrehuaut, rcrehfaut, rcrehfdes, rcrehtipd, rcrehgld1, rcrehgld2, rcrehgld3, rcrehudes, rcrehfrec, rcrehtrec, rcrehglr1, rcrehglr2, rcrehglr3, rcrehurec, rcrehmrcb, rcrehuser, rcrehhora, rcrehfpro, rcrehncpg
FROM rcreh;
SELECT rcrocntra, rcrocnord, rcrocnres
FROM rcroc;
SELECT rcrpftipo, rcrpfnreq, rcrpfcpry, rcrpfcprg, rcrpfcfin, rcrpfporc
FROM rcrpf;
SELECT rcrqdntra, rcrqdnreq, rcrqdftra, rcrqdcalm, rcrqditem, rcrqdcart, rcrqdumut, rcrqdcped, rcrqdctra, rcrqdcreq, rcrqdcetr, rcrqdpuni, rcrqdimpt, rcrqdcmon, rcrqdflar, rcrqdstat, rcrqdmrcb
FROM rcrqd;
SELECT rcrqhntra, rcrqhtipo, rcrqhftra, rcrqhndoc, rcrqhcage, rcrqhnomb, rcrqhuneg, rcrqhcalm, rcrqhcmon, rcrqhtcam, rcrqhimpt, rcrqhflar, rcrqhcjef, rcrqhcfin, rcrqhcadq, rcrqhnres, rcrqhstat, rcrqhstan, rcrqhfsta, rcrqhgls1, rcrqhgls2, rcrqhgls3, rcrqhmrcb, rcrqhuser, rcrqhhora, rcrqhfpro
FROM rcrqh;
SELECT rcrscntra, rcrscdesc, rcrscmrcb
FROM rcrsc;
SELECT rcrshntra, rcrshftra, rcrshndoc, rcrshcsol, rcrshcaut, rcrshuneg, rcrshdesc, rcrshdabr, rcrshflim, rcrshstat, rcrshfrch, rcrshtrec, rcrshgls1, rcrshgls2, rcrshgls3, rcrshurch, rcrshfreq, rcrshcmon, rcrshiref, rcrshtreq, rcrshcres, rcrshureq, rcrshfapr, rcrshcmap, rcrshiapr, rcrshnres, rcrshuapr, rcrshnadj, rcrshfadj, rcrshcmad, rcrshiadj, rcrshprov, rcrshgla1, rcrshgla2, rcrshgla3, rcrshuadj, rcrshfrcp, rcrshcmrc, rcrshiarc, rcrshncpg, rcrshurec, rcrshfdes, rcrshtipd, rcrshgld1, rcrshgld2, rcrshgld3, rcrshudes, rcrshmrcb, rcrshuser, rcrshhora, rcrshfpro
FROM rcrsh;
SELECT rcrsrnreq, rcrsrnsol, rcrsrcart, rcrsrcate
FROM rcrsr;
SELECT rcrtrtipo, rcrtrtres, rcrtrcodi
FROM rcrtr;
SELECT rcsarnreq, rcsarnsol
FROM rcsar;
SELECT rcscontra, rcscondoc, rcscoftra, rcscomorg, rcscotreq, rcscotorg, rcscospvd, rcscotpag, rcscoglos, rcscorecc, rcscostat, rcscomrcb, rcscouser, rcscohora, rcscofpro
FROM rcsco;
SELECT rcscpntra, rcscpprov, rcscptpvd, rcscpcrep, rcscpmail, rcscpstat
FROM rcscp;
SELECT rcseantra, rcseanegr, rcseaitem, rcseauneg, rcseacalm, rcseanord, rcseacart, rcseacant, rcseatipo
FROM rcsea;
SELECT rcsodntra, rcsoditem, rcsodcart, rcsodumut, rcsodcans, rcsodcant, rcsodcanc, rcsodcana, rcsodstat, rcsodmrcb, rcsodtdes, rcsodtdea, rcsodides, rcsodidea, rcsodfdes, rcsodfdea, rcsodcmon, rcsodpuni, rcsodimpt
FROM rcsod;
SELECT rcsohntra, rcsohndoc, rcsohftra, rcsohcage, rcsohcres, rcsohcaut, rcsohuneg, rcsohcalm, rcsohflim, rcsohgls1, rcsohgls2, rcsohgls3, rcsohmorg, rcsohtorg, rcsohmdes, rcsohtdes, rcsohstat, rcsohfrec, rcsohtrec, rcsohmre1, rcsohmre2, rcsohmre3, rcsohurec, rcsohmrcb, rcsohuser, rcsohhora, rcsohfpro, rcsohcmon, rcsohimpt, rcsohtcam
FROM rcsoh;
SELECT rcssdntra, rcssdftra, rcssditem, rcssdccos, rcssdpdis, rcssdimpe, rcssdimpt, rcssdcmon, rcssdtcam, rcssdprov, rcssdfadj, rcssdmrcb
FROM rcssd;
SELECT rcsshntra, rcsshtipo, rcsshftra, rcsshndoc, rcsshcage, rcsshnomb, rcsshuneg, rcsshdesc, rcsshcapl, rcsshcmon, rcsshtcam, rcsshimpe, rcsshimpt, rcsshflas, rcsshcaut, rcsshnres, rcsshprov, rcsshncpg, rcsshstat, rcsshstan, rcsshfsta, rcsshgls1, rcsshgls2, rcsshgls3, rcsshglsa, rcsshglsf, rcsshmrcb, rcsshuser, rcsshhora, rcsshfpro
FROM rcssh;
SELECT rctesnsol, rctesndoc, rctesftra, rctescdes, rctestmo1, rctestmo2, rctesgls1, rctesuser, rcteshora, rctesfpro
FROM rctes;
SELECT rctretipo, rctredesc, rctrecmco, rctrecmon, rctrerini, rctrerfin, rctreafaa, rctreuser, rctrehora, rctrefpro
FROM rctre;
SELECT rctrqnreq, rctrqntra, rctrqitem, rctrqcart, rctrqcant
FROM rctrq;
SELECT rtaaccart, rtaacccpd, rtaaccaco
FROM rtaac;
SELECT rtacocaco, rtacodesc, rtacocloc, rtacocalm, rtacodimd, rtacodiec, rtacocpos, rtacoxmax, rtacoymax, rtaconimg, rtacostat, rtacofsta, rtacomrcb, rtacofmrc
FROM rtaco;
SELECT rtacpcart, rtacpccpd, rtacpcloc
FROM rtacp;
SELECT rtalbcart, rtalbcsme, rtalbnimg, rtalbmprd, rtalbmcom, rtalbmind, rtalbcbas, rtalbbcci, rtalbstat, rtalbfsta
FROM rtalb;
SELECT rtaptnfol, rtaptfapt, rtapttelf, rtaptnomb, rtaptcmon, rtaptimpt, rtaptncjr, rtaptncju, rtaptstat, rtaptfsta, rtaptuser, rtapthora, rtaptfpro
FROM rtapt;
SELECT rtcapcart, rtcapitem, rtcapccop, rtcapvume, rtcapumed, rtcapcost, rtcapcmon
FROM rtcap;
SELECT rtcdancom, rtcdaitem, rtcdacart, rtcdacant, rtcdapvta, rtcdaimpt, rtcdatcam, rtcdacmon, rtcdaglos, rtcdaestf, rtcdaeste, rtcdamrcb, rtcdafmrc, rtcdauser, rtcdahora, rtcdafpro, rtcdaccpd
FROM rtcda;
SELECT rtcdeitem, rtcdendid, rtcdentlf, rtcdeapel, rtcdenoms, rtcdenici, rtcdenomf, rtcdedent, rtcderefe, rtcdezona, rtcdelong, rtcdelati, rtcdecage
FROM rtcde;
SELECT rtciancom, rtciaitem, rtciacart, rtciacins, rtciacant, rtciamdcg, rtciaccpd, rtciacost
FROM rtcia;
SELECT rtcicncom, rtcicitem, rtciccart, rtciccins, rtciccinc, rtciccant, rtcicmdcg, rtcicccpd, rtciccost
FROM rtcic;
SELECT rtciqncom, rtciqitem, rtciqcart, rtciqcins, rtciqcant, rtciqccpd
FROM rtciq;
SELECT rtcohncom, rtcohfcom, rtcohndoc, rtcohnfol, rtcohncta, rtcohcaco, rtcohmesa, rtcohtelf, rtcohcven, rtcohimpt, rtcohglos, rtcohesco, rtcohfesc, rtcohesde, rtcohfesd, rtcohnpei, rtcohmrcb, rtcohfmrc, rtcohuser, rtcohhora, rtcohfpro
FROM rtcoh;
SELECT rtconpref, rtconcorr, rtcondesc, rtconabre, rtconmmod
FROM rtcon;
SELECT rtcopccop, rtcopdesc, rtcopumed, rtcopctac, rtcopanac
FROM rtcop;
SELECT rtcpdccpd, rtcpddesc, rtcpdcres, rtcpdcloc, rtcpdcalm, rtcpdmimp, rtcpddimp, rtcpdmrcb, rtcpdfmrc
FROM rtcpd;
SELECT rtctcncom, rtctcitem, rtctccart, rtctcitxt
FROM rtctc;
SELECT rtctltpin, rtctltphb, rtctlaumr, rtctltmei, rtctlccpd, rtctldimd, rtctldimt, rtctldied, rtctldiet, rtctltesc, rtctlcarc, rtctlpcom, rtctlmcom, rtctlmcca, rtctlpvcn, rtctlpvcp, rtctlmcat, rtctltaem, rtctltesp, rtctlfcci, rtctlcmci, rtctlccci, rtctlmcme, rtctlmcma, rtctlccca, rtctlcsci, rtctltlip, rtctlparq, rtctlpant, rtctlcpxc, rtctlnori, rtctlnorf, rtctlmpsb, rtctlmpsd, rtctlmpfb, rtctlmpfd, rtctlcpde, rtctlccco
FROM rtctl;
SELECT rtctpinst, rtctptcnx, rtctpserv, rtctpbase, rtctppath, rtctpdisw
FROM rtctp;
SELECT rtdcpnpei, rtdcpnvta, rtdcpcart, rtdcpccop, rtdcpcost, rtdcpcmon
FROM rtdcp;
SELECT rtdeinpei, rtdeinvta, rtdeinegr
FROM rtdei;
SELECT rtesmestm, rtesmnimg
FROM rtesm;
SELECT rtfocnfol, rtfocncta, rtfocnomb, rtfocnruc, rtfocndid, rtfoccage, rtfocffol, rtfocfent, rtfochent, rtfocimpt, rtfocpcom, rtfocicom, rtfocpdsc, rtfocidsc, rtfocneto, rtfoctcam, rtfoccmon, rtfocestc, rtfocnvta, rtfocmrcb, rtfocfmrc
FROM rtfoc;
SELECT rtfolnfol, rtfolffol, rtfoltped, rtfolcaco, rtfolmesa, rtfolccom, rtfoltelf, rtfoldent, rtfolcalm, rtfolcloc, rtfolnreg, rtfolcven, rtfolzond, rtfolglos, rtfolestf, rtfolfesf, rtfolmrcb, rtfolfmrc, rtfoluser, rtfolhora, rtfolfpro
FROM rtfol;
SELECT rtheinpei, rtheifech, rtheifein, rtheicloc, rtheimrcb, rtheiuser, rtheihora, rtheifpro
FROM rthei;
SELECT rtinacart, rtinacins, rtinaitem, rtinacina, rtinacant, rtinamerm
FROM rtina;
SELECT rtinscart, rtinsitem, rtinscins, rtinscant, rtinsmerm, rtinsmdcg
FROM rtins;
SELECT rtmdtmodn, rtmdtmprn, rtmdtmdtn, rtmdtordn, rtmdtdesc, rtmdtnprg, rtmdtttra, rtmdtnimg, rtmdtstat, rtmdttama
FROM rtmdt;
SELECT rtmodmodn, rtmoddesc, rtmoddisp, rtmodnimg, rtmodnser
FROM rtmod;
SELECT rtmprmodn, rtmprmprn, rtmprdesc, rtmprnimg
FROM rtmpr;
SELECT rtmsamesa, rtmsadesc, rtmsaccom, rtmsacaco, rtmsaposx, rtmsaposy, rtmsaestm, rtmsafesm, rtmsanfol, rtmsastat, rtmsafsta, rtmsamrcb, rtmsafmrc
FROM rtmsa;
SELECT rtsmecsme, rtsmedesc, rtsmenimg, rtsmestat, rtsmefsta
FROM rtsme;
SELECT rtsrlnfol, rtsrlncom, rtsrlnpei, rtsrlitem, rtsrlvprv
FROM rtsrl;
SELECT rttconcom, rttcopref, rttcocorr
FROM rttco;
SELECT rttsmpref, rttsmcorr, rttsmcsme
FROM rttsm;
SELECT rttxpcart, rttxpitem, rttxptext
FROM rttxp;
SELECT rttxtpref, rttxtcorr, rttxtcapl, rttxttext, rttxtccpd
FROM rttxt;
SELECT rturtuser, rturtnimg, rturttphb, rturttpin, rturtcaco, rturtnreg
FROM rturt;
SELECT smadmcmed, smadmcbco, smadmncta
FROM smadm;
SELECT smamdntra, smamdftra, smamdnpln, smamdcoem, smamditem, smamdcart, smamdcpac, smamdcmon, smamdivti, smamdpcae, smamdicae, smamdpcaa, smamdicaa, smamdpche, smamdiche, smamdpcha, smamdicha, smamdpcee, smamdicee, smamdpcea, smamdicea, smamdmsto, smamdcgru, smamdfcov, smamdstat
FROM smamd;
SELECT smamhtipo, smamhntra, smamhftra, smamhnpln, smamhcoem, smamhcpac, smamhnfor, smamhtate, smamhtsol, smamhmcos, smamhmint, smamhpcae, smamhpcaa, smamhpche, smamhpcha, smamhpcee, smamhpcea, smamhieme, smamhstat, smamhnpol, smamhfdis, smamhimpt, smamhcmon, smamhimpa, smamhimpc, smamhnomd, smamhcesp, smamhdiag, smamhcase, smamhnase
FROM smamh;
SELECT smasgnpln, smasgcage, smasgfafl, smasgfigu, smasgcasg, smasgstat, smasguser, smasghora, smasgfpro
FROM smasg;
SELECT smcfmctrc, smcfmiloi
FROM smcfm;
SELECT smcomcmed, smcomcloc, smcomuneg, smcomntra, smcomftra, smcomfpag, smcomimpo, smcompcom, smcomicot, smcomicoc, smcomicop, smcomcmon, smcompcoa, smcomicoa, smcommpag, smcomncxc, smcomuser, smcomhora, smcomfpro
FROM smcom;
SELECT smconpref, smconcorr, smcondesc, smconabre
FROM smcon;
SELECT smcopnpln, smcoptipo, smcopcart, smcoppcae, smcoppcaa, smcoppche, smcoppcha, smcoppcee, smcoppcea, smcopuser, smcophora, smcopfpro
FROM smcop;
SELECT smdaenenv, smdaeftra, smdaecemp, smdaenpln, smdaentra, smdaenser, smdaetipo, smdaecart, smdaecpac, smdaendip, smdaefate, smdaecmed, smdaendim, smdaemoti, smdaecint, smdaetate, smdaetsol, smdaecreg, smdaeuneg, smdaecant, smdaeiase, smdaeivti, smdaestat
FROM smdae;
SELECT smdlcnliq, smdlccmed, smdlcctdf, smdlccart, smdlcimpo, smdlccmon, smdlcuneg, smdlcccos, smdlcuser, smdlchora, smdlcfpro
FROM smdlc;
SELECT smdpmncpg, smdpmcgru, smdpmuneg, smdpmccos, smdpmcmon, smdpmimpt, smdpmpdis
FROM smdpm;
SELECT smendnenv, smendftra, smendcemp, smendnpln, smendtipo, smendntra, smendstat
FROM smend;
SELECT smenhnenv, smenhftra, smenhcemp, smenhnpln, smenhffin, smenhcreg, smenhstat, smenhgls1, smenhgls2, smenhgls3, smenhnord, smenhnfac, smenhmrcb, smenhuser, smenhhora, smenhfpro
FROM smenh;
SELECT smgjicgru
FROM smgji;
SELECT smhohnhis, smhohftra, smhohmtvo, smhohnors, smhohfreg, smhohntra, smhohttra, smhohitem, smhohcart, smhohimpt, smhohides, smhohtota, smhohcmon, smhohcpac, smhohcmed, smhohndoc, smhohncsu, smhohhatn, smhohglos, smhohstat, smhohfsta, smhohhsta, smhohusta, smhohcreg, smhohuneg, smhohccos, smhohuser, smhohhora, smhohfpro
FROM smhoh;
SELECT smhopnhis, smhopftra, smhopnors, smhopitem, smhoptrol, smhopite1, smhopfreg, smhopnnvt, smhopttra, smhopcart, smhopcpac, smhopcmed, smhopimpt, smhopporc, smhopicbr, smhopides, smhopicom, smhopcmon, smhopcreg, smhopuneg, smhopccos
FROM smhop;
SELECT smlcanliq, smlcaftra, smlcacmed, smlcacloc, smlcauneg, smlcandoc, smlcancxc, smlcancxp, smlcaimpo, smlcacmon, smlcamrcb, smlcauser, smlcahora, smlcafpro
FROM smlca;
SELECT smmpafvig, smmpatrno, smmpacart, smmpacmed, smmpauneg, smmpapcom, smmpamont, smmpacmon, smmpaapli
FROM smmdr;
SELECT smmedcmed, smmedtmed, smmedtesp, smmeddesp, smmedmatr, smmedfreg, smmedlgar, smmedthor, smmedcoem, smmeduneg, smmedccos, smmedpcom, smmedcmon, smmedfpag, smmedctdf, smmedfulq, smmedstat, smmeduser, smmedhora, smmedfpro
FROM smmed;
SELECT smmpafvig, smmpatrno, smmpacart, smmpacmed, smmpauneg, smmpapcom, smmpamont, smmpacmon, smmpaapli
FROM smmpa;
SELECT smmprcmed, smmpruneg, smmprtrol, smmpruser, smmprhora, smmprfpro
FROM smmpr;
SELECT smnfmcmed, smnfmnfic
FROM smnfm;
SELECT smoshnors, smoshfreg, smoshntra, smoshttra, smoshitem, smoshcart, smoshimpt, smoshides, smoshtota, smoshcmon, smoshcpac, smoshcmed, smoshndoc, smoshncsu, smoshhatn, smoshglos, smoshstat, smoshfsta, smoshhsta, smoshusta, smoshcreg, smoshuneg, smoshccos, smoshuser, smoshhora, smoshfpro
FROM smosh;
SELECT smospnors, smospitem, smosptrol, smospite1, smospfreg, smospnnvt, smospttra, smospcart, smospcpac, smospcmed, smospimpt, smospporc, smospicbr, smospides, smospicom, smospcmon, smospcreg, smospuneg, smospccos
FROM smosp;
SELECT smpasntra, smpasitem, smpascart, smpasttra, smpascpac, smpasnomb, smpasuneg, smpasccos
FROM smpas;
SELECT smpdccart, smpdctrol, smpdcuneg, smpdcpcom, smpdcicom, smpdccmon, smpdcapli, smpdcuser, smpdchora, smpdcfpro
FROM smpdc;
SELECT smprccart, smprcthrc, smprcpdrc
FROM smprc;
SELECT smpssnpln, smpssnomb, smpsstipo, smpsscemp, smpssfini, smpssffin, smpsspcae, smpsspcaa, smpsspche, smpsspcha, smpsspcee, smpsspcea, smpssccob, smpssstat, smpssuser, smpsshora, smpssfpro, smpssffac, smpssfdis, smpssimpt, smpsscmon, smpsstcxc
FROM smpss;
SELECT smraecart, smraecare, smraeuser, smraehora, smraefpro
FROM smrae;
SELECT smraocart, smraocose
FROM smrao;
SELECT smsatcart, smsatuser, smsathora, smsatfpro
FROM smsat;
SELECT smspacart
FROM smspa;
SELECT smsrlnosh
FROM smsrl;
SELECT smthdntra, smthdftra, smthdnpln, smthdcage, smthdtipo, smthdgls1, smthdgls2, smthdgls3, smthdmrcb, smthduser, smthdhora, smthdfpro
FROM smthd;
SELECT smturtrno, smturdesc, smturhini, smturhfin, smturdias, smturuser, smturhora, smturfpro
FROM smtur;
SELECT smueauneg, smueacodi
FROM smuea;
SELECT *
FROM suaca;
SELECT *
FROM suaco;
SELECT *
FROM suacs;
SELECT *
FROM suads;
SELECT *
FROM suaes;
SELECT *
FROM suafd;
SELECT *
FROM suafp;
SELECT *
FROM suant;
SELECT *
FROM suasb;
SELECT *
FROM suava;
SELECT *
FROM subem;
SELECT *
FROM subon;
SELECT *
FROM sucam;
SELECT *
FROM sucar;
SELECT *
FROM sucma;
SELECT *
FROM sucmo;

SELECT sucontcon, suconcorr, sucondesc, suconabre
FROM sucon WHERE sucontcon = 14;

SELECT sucpefech, sucpecodi, sucpecemp, sucpencpg
FROM sucpe;
SELECT sucteclae, suctetemp
FROM sucte;
SELECT suctmuneg, suctmccos, suctmpref, suctmcorr, suctmncta, suctmadic, suctmnct1, suctmadi1
FROM suctm;
SELECT sudaecemp, sudaecala, sudaehtpm, sudaemdis, sudaemtpd, sudaetico
FROM sudae;
SELECT sudalcemp, sudalnemp, sudalfech, sudalfing, sudalfret, sudaltemp, sudalcseg, sudalcnua, sudaltsue, sudalcniv, sudalcmon, sudalsuel, sudalttra, sudalcafp, sudalafpl, sudalafpp, sudalccaa, sudalhgco, sudaltgco, sudaldtco, sudaltmco, sudaltema
FROM sudal;
SELECT sudapcdle, sudapporc, sudapimpt, sudapctac, sudapadic, sudapbapl, sudapfapl, sudapstat, sudaptope, sudapdren
FROM sudap;
SELECT sudbbfech, sudbbcemp, sudbbtcon, sudbbcorr, sudbbcmon, sudbbimpo, sudbbimpf, sudbbrgnl, sudbbuneg, sudbbccos, sudbbstat, sudbbmrcb, sudbbuser, sudbbhora, sudbbfpro
FROM sudbb;
SELECT sudbdcbon, sudbdtipo, sudbdcarg
FROM sudbd;
SELECT sudbhcbon, sudbhatc1, sudbhapl2, sudbhatn2, sudbhporc, sudbhactc, sudbhuser, sudbhhora, sudbhfpro
FROM sudbh;
SELECT sudcafech, sudcacemp, sudcantra, sudcatcon, sudcacorr, sudcancpg, sudcaccrg, sudcaimpt
FROM sudca;
SELECT sudcsngsu, sudcsncxp, sudcsmmon
FROM sudcs;
SELECT sudcufech, sudcucemp, sudcuntra, sudcutcon, sudcucorr, sudcuncpg, sudcuctcp, sudcucmon, sudcuuneg, sudcuimpt
FROM sudcu;
SELECT sudecnins, sudecfech, sudeccemp, sudectipo, sudeccant, sudecfini, sudecffin, sudecglos, sudcemrcb
FROM sudec;
SELECT sudemcdle, sudemcemp, sudemntmb
FROM sudem;
SELECT sudepcemp, sudepcdep, sudepndep, sudepfnac, sudepcsub, sudepfsub, sudepstat
FROM sudep;
SELECT sudfintra, sudficemp, sudfiftra, sudfitmov, sudfitcon, sudficorr, sudfidesc, sudfiimpt, sudfistat, sudfimrcb
FROM sudfi;
SELECT sudicfech, sudictcon, sudiccorr, sudiccemp, sudicimpt, sudicuneg, sudicccos, sudicporc, sudicimpd, sudicstat, sudicuser, sudichora, sudicfpro
FROM sudic;
SELECT sudlatipo, sudlacodi, sudladian, sudlamarc, sudlauser, sudlahora, sudlafpro
FROM sudla;
SELECT sudlecdle, sudleporc, sudleimpt, sudlectac, sudleadic, sudlebapl, sudlefapl, sudlestat, sudletope, sudledren
FROM sudle;
SELECT sudlicemp, sudlifech, sudlitmov, sudlifapl, sudlitcon, sudlicorr, sudlidesc, sudliimpt, sudlintra
FROM sudli;
SELECT sudlrfech, sudlrnres, sudlrcemp, sudlrtipo, sudlrpref, sudlrcorr, sudlrcfin, sudlruneg, sudlrccos, sudlrimpt, sudlrntra, sudlrcpry, sudlrcprg
FROM sudlr;

SELECT sudmentra, sudmecemp, sudmefech, sudmetcon, sudmecorr, sudmeimpt, sudmegls1, sudmentmb, sudmeuneg, sudmeccos, sudmefreg
FROM sudme WHERE sudmentra >= 38130;

SELECT sudorcemp, sudorcdor, sudorfrec, sudorglos, sudoruser, sudorhora, sudorfpro
FROM sudor;
SELECT sudpcnrei, sudpcperi, sudpccemp, sudpctmov, sudpctcon, sudpccorr, sudpcdesc, sudpcimpt
FROM sudpc;
SELECT sudpddpdh, sudpddpdm
FROM sudpd;
SELECT sudpecdpe, sudpecemp, sudpemone, sudpemese, sudpeimpt, sudpeides, sudpendes
FROM sudpe;
SELECT sudpecdpe, sudpecemp, sudpemone, sudpemese, sudpeimpt, sudpeides, sudpendes
FROM sudpe_c;
SELECT sudpptent, sudppentg, sudppnnit, sudppnpss, sudppnemt, sudppnrpl, sudppndor, sudpporir, sudpplugp, sudppdire, sudpptelf, sudppemai
FROM sudpp;
SELECT sudretipo, sudrecemp, sudrefech, sudreuneg, sudreccos, sudreimpa, sudreimpb, sudreimpc, sudreimpd, sudreimpe, sudreimpf, sudreimpg, sudreimph, sudreimpi, sudreimpj, sudreimpk, sudreimpl, sudreimpm, sudreimpn, sudreimpo, sudrefcal, sudreimpp, sudreimpq, sudreimpr, sudreimps, sudreimpt, sudreimpu, sudreimpw
FROM sudre;
SELECT sudrpnrei, sudrpperi, sudrpftra, sudrpcemp, sudrpcmco, sudrptemp, sudrprgnl, sudrpuneg, sudrpccos, sudrpccar, sudrpicmo, sudrpihba, sudrpcmon, sudrphbas, sudrpfing, sudrpfret, sudrptgan, sudrptdes, sudrpstat, sudrpperp, sudrpfpag
FROM sudrp;
SELECT sudrsgesi, sudrsfech, sudrsperi, sudrsperf, sudrsftra, sudrscemp, sudrstcon, sudrscorr, sudrsdesc, sudrscmon, sudrsimpt, sudrsnrei
FROM sudrs;
SELECT sudrtgesi, sudrtfech, sudrtperi, sudrtperf, sudrtftra, sudrtcemp, sudrttmov, sudrttcon, sudrtcorr, sudrtdesc, sudrtimpt, sudrtnrei
FROM sudrt;
SELECT sudsecemp, sudsergnl, sudseuneg, sudseccos, sudseporc
FROM sudse;
SELECT sudsrtcon, sudsrcorr, sudsrdesc
FROM sudsr;
SELECT sudsufech, sudsucemp, sudsutipo, sudsucsub, sudsummon, sudsuntra, sudsundob, sudsuorib, sudsunobe, sudsunpag, sudsucant, sudsucmon, sudsuimpt, sudsungsu
FROM sudsu;
SELECT sudtrnrei, sudtrtrei, sudtrentg
FROM sudtr;
SELECT sudvfcemp, sudvftcon, sudvfcorr, sudvfimpt
FROM sudvf;
SELECT sudvmcemp, sudvmfech, sudvmtcon, sudvmcorr, sudvmimpt
FROM sudvm;
SELECT sueadcodi, sueadtipo, sueadccon
FROM suead;
SELECT sueaecodi, sueaecemp, sueaeuser, sueaehora, sueaefpro
FROM sueae;
SELECT sueafcdle, sueafcemp, sueaffreg, sueaffbaj
FROM sueaf;
SELECT sueahcodi, sueahdesc, sueahuser, sueahhora, sueahfpro
FROM sueah;
SELECT suebacemp, suebacbba, suebauser, suebahora, suebafpro
FROM sueba;
SELECT suecacemp, suecacdle, suecauser, suecahora, suecafpro
FROM sueca;
SELECT suecefech, suecefcie, suececemp, suecemodn, sueceubig, suececant, suececmon, suecetcam, sueceides, sueceicar, sueceimor, sueceimre, sueceuser, suecehora, suecefpro
FROM suece;
SELECT suedlcdle, suedlcemp
FROM suedl;
SELECT suedpcdle, suedpcemp
FROM suedp;
SELECT sueelceel, sueelnomb, sueelsgla, sueelrubr
FROM sueel;
SELECT sueescemp, sueesuser, sueeshora, sueesfpro
FROM suees;
SELECT suehmnhmh, suehmnhmm, suehmmoda, suehmcodi, suehmuser, suehmhora, suehmfpro
FROM suehm;
SELECT suelecemp, sueleceel, suelecrgo, sueleglos, sueleperi, sueleperf, sueleuser, suelehora, suelefpro
FROM suele;
SELECT suempcemp, suempitem, suempcont, suempnemp, suempinic, suempdemp, suemptelf, suempnaci, suempruni, suempprof, suempfnac, suempeciv, suempsexo, suempcseg, suempcnua, suempcban, suempncta, suemptsue, suemptemp, suemprgnl, suempuneg, suempccos, suempcarg, suempfing, suempfrec, suempaant, suempmant, suempdant, suempcniv, suempcmon, suempsuel, suemppoan, suempafac, suempmfac, suempgant, suempgpen, suempgult, suempstat, suempttra, suempimpa, suempcmco, suempffin, suemptipt, suempcder
FROM suemp;
SELECT suepfcemp, suepfnemp, suepfstat
FROM suepf;
SELECT suerccemp, suercrgnl, suercuser, suerchora, suercfpro
FROM suerc;
SELECT suesacesa, suesanaca, suesadesc, suesaabre
FROM suesa;
SELECT suesbcbon, suesbcgru, suesbambg, suesbrini, suesbrfin, suesbimpt, suesbuser, suesbhora, suesbfpro
FROM suesb;
SELECT suexetipo, suexecemp, suexeuser, suexehora, suexefpro
FROM suexe;
SELECT sufaecemp, sufaeciac, sufaecesa, sufaeglos, sufaeperi, sufaeperf, sufaeuser, sufaehora, sufaefpro
FROM sufae;
SELECT suflatipo, suflacodi, suflafech, suflagls1, suflauser, suflahora, suflafpro
FROM sufla;
SELECT sufrsnrei, sufrsnord, sufrsnfac, sufrsfreg, sufrsopci
FROM sufrs;
SELECT sugrenrei, sugreftra, sugregest, sugrefech, sugreperi, sugreperf, sugretrei, sugreaplt, sugreauca, sugrestat, sugrefgen, sugregls1, sugregls2, sugregls3, sugremrcb, sugreuser, sugrehora, sugrefpro, sugreperp, sugrefpag
FROM sugre;
SELECT sugrsnrei, sugrsftra, sugrsgest, sugrsfech, sugrsperi, sugrsperf, sugrsauca, sugrsstat, sugrsfgen, sugrsgls1, sugrsgls2, sugrsgls3, sugrsmrcb, sugrsuser, sugrshora, sugrsfpro
FROM sugrs;
SELECT sugrtcgru, sugrtdesc, sugrtabre, sugrtuser, sugrthora, sugrtfpro
FROM sugrt;
SELECT sugsungsu, sugsuftra, sugsufech, sugsucsui, sugsucsuf, sugsurgnl, sugsuuneg, sugsunord, sugsunfac, sugsufreg, sugsuopci, sugsugls1, sugsugls2, sugsugls3, sugsustat, sugsumrcb, sugsuuser, sugsuhora, sugsufpro
FROM sugsu;
SELECT suhadntra, suhadftra, suhadcemp, suhadcsub, suhadndob, suhadorib, suhadnobe, suhaditem, suhadnomh
FROM suhad;
SELECT suhasntra, suhasftra, suhascemp, suhascsub, suhasndob, suhasorib, suhasnobe, suhasitem, suhasnomh
FROM suhas;
SELECT suhcanins, suhcafech, suhcacemp, suhcadpen, suhcadvac, suhcadenf, suhcadsgh, suhcahext, suhcafsli, suhcahrec, suhcamrcb, suhcauser, suhcahora, suhcafpro
FROM suhca;
SELECT suhfintra, suhfitipo, suhfindoc, suhfiftra, suhficemp, suhfifing, suhfining, suhfinbaj, suhfifini, suhfiffin, suhfinano, suhfinmes, suhfindia, suhfinapa, suhfinmpa, suhfindpa, suhficana, suhficmea, suhficdia, suhfidvac, suhfiitem, suhficont, suhfianti, suhfieciv, suhfiuneg, suhficcos, suhficarg, suhfisuel, suhfimfac, suhfitgan, suhfitcam, suhfimes1, suhfimes2, suhfimes3, suhficant, suhfidesh, suhfiinde, suhfiagui, suhfiduva, suhfioing, suhfiodes, suhfitotg, suhfitotd, suhfiliqp, suhfigls1, suhfigls2, suhfigls3, suhfistat, suhfindco, suhfifmrc, suhfimrcb, suhfiuser, suhfihora, suhfifpro, suhficmli, suhficdli
FROM suhfi WHERE suhfintra >=  38130;
SELECT suhflfliq, suhfltipo, suhflpliq, suhflufvl, suhfltcal, suhflflia, suhflufva, suhfltcaa, suhflfdia, suhfluser, suhflhora, suhflfpro
FROM suhfl;
SELECT suhgefech, suhgecemp, suhgecdle
FROM suhge;
SELECT suhvacemp, suhvafech, suhvaddof, suhvadatr, suhvadfcl, suhvadfsl
FROM suhva;
SELECT suhvfcemp, suhvfntra, suhvfmret, suhvffret, suhvfdtrb, suhvfdenf, suhvfdvac, suhvfdamo, suhvfhext, suhvfhrec, suhvffact, suhvfcot1, suhvfcot2, suhvfcot3, suhvffult
FROM suhvf;
SELECT suhvinins, suhvicemp, suhvifech, suhvidtrb, suhvidenf, suhvidvac, suhvidamo, suhvifdom, suhvihext, suhvihrec
FROM suhvi;
SELECT suhvmcemp, suhvmfech, suhvmdtrb, suhvmdenf, suhvmdvac, suhvmdamo, suhvmfdom, suhvmhext, suhvmhrec, suhvmfact
FROM suhvm;
SELECT suiacciac, suiactipo, suiacnomb, suiacsgla, suiacorig, suiacodat
FROM suiac;
SELECT suidmcemp, suidmcidm, suidmplee, suidmpesc, suidmphab, suidmuser, suidmhora, suidmfpro
FROM suidm;
SELECT suinentra, suinendoc, suineftra, suinefing, suinecemp, suineitem, suinergnl, suineuneg, suineccos, suineccar, suinetsue, suinecniv, suinecmon, suinehbas, suinegls1, suinegls2, suinegls3, suinestat, suinefmrc, suinemrcb, suineuser, suinehora, suinefpro, suinefult, suinecmco, suinencon, suineffin, suineinic, suinedant, suinemant, suineaant, suinetemp, suinepoan, suineimpa, suinemfac, suinettra, suinecder
FROM suine WHERE suinentra >= 38130;
SELECT sulactipo, sulactcon, sulaccorr, sulaccodi, sulaccage
FROM sulac;
SELECT suliccemp, sulictipm, sulicnlic, sulicfcad, sulicuser, sulichora, sulicfpro
FROM sulic;
SELECT suliqcemp, suliqfech, suliqitem, suliqcont, suliqanti, suliqeciv, suliqrgnl, suliquneg, suliqccos, suliqcarg, suliqsuel, suliqhext, suliqhrec, suliqafac, suliqmfac, suliqtgan, suliqtcam, suliqfreg, suliqcmoc, suliqcnio, suliqtgca
FROM suliq;
SELECT sulpatipo, sulpaperi, sulpaftra, sulpafpri, sulpafant, sulpames1, sulpames2, sulpames3, sulpastat, sulpauser, sulpafpro, sulpahora
FROM sulpa;
SELECT sulprtipo, sulprcemp, sulprperi, sulprfpri, sulpritem, sulprcont, sulpranti, sulpreciv, sulpruneg, sulprccos, sulprcarg, sulprafac, sulprmfac, sulprgant, sulprgpen, sulprgult, sulprprom, sulprvduo, sulpriren, sulpripri, sulprtcam, sulpruser, sulprhora, sulprfpro, sulprstat, sulprfreg, sulprfech
FROM sulpr;
SELECT sulregesi, sulrefech, sulreperi, sulreperf, sulreftra, sulrecemp, sulrecmco, sulretemp, sulrergnl, sulreuneg, sulreccos, sulreccar, sulreicmo, sulreihba, sulrecmon, sulrehbas, sulrefing, sulrefret, sulrestat, sulretgan, sulretdes, sulrenrei, sulreperp, sulrefpag
FROM sulre;
SELECT sulrsgesi, sulrsfech, sulrsperi, sulrsperf, sulrsftra, sulrscemp, sulrscmco, sulrstemp, sulrsrgnl, sulrsuneg, sulrsccos, sulrsccar, sulrscmba, sulrshbas, sulrsfing, sulrsfret, sulrsstat, sulrscmon, sulrstgan, sulrsnrei
FROM sulrs;
SELECT sulsufech, sulsucemp, sulsutipo, sulsucsub, sulsummon, sulsucant, sulsuvsub, sulsucmon, sulsuimpt, sulsuftra, sulsutcam, sulsucreg, sulsuuneg, sulsuccos, sulsucarg, sulsutemp, sulsufing, sulsufret, sulsunemp, sulsustat, sulsungsu
FROM sulsu;
SELECT sumcocodi, sumcodesc, sumcomffc
FROM sumco;
SELECT sumhentra, sumheftra, sumhecemp, sumhefhex, sumheihoi, sumheihof, sumheitoh, sumhefhoi, sumhefhof, sumheftoh, sumheglsa, sumhemrcb, sumheuser, sumhefpro, sumhehora
FROM sumhe;
SELECT summbntra, summbtcon, summbcorr, summbfech, summbrgnl, summbuneg, summbccos, summbcarg, summbimpt, summbgls1, summbfmrc, summbmrcb, summbuser, summbhora, summbfpro
FROM summb;
SELECT sumrecodi, sumredesc, sumremdes
FROM sumre;
SELECT sunivcniv, sunivdesc, sunivcmon, sunivimpt
FROM suniv;
SELECT supakcins, supakcban, supakcmon, supakexta
FROM supak;
SELECT supascdof, supasbadf, supascatr, supascfcl, supascfsl, supasbape
FROM supas;
SELECT supclgcpa, supclunps, supcltcpl, supclapll, supclmodl, supclforg
FROM supcl;
SELECT supdldian, supdlmarc, supdluser, supdlhora, supdlfpro
FROM supdl;
SELECT supgbnano, supgbnmes, supgbndia, supgbfcab, supgbcmon
FROM supgb;
SELECT supgotipo, supgotcon, supgocorr, supgotcxp, supgocapl, supgoforg, supgounpc
FROM supgo;
SELECT supgscmon, supgspulp, supgscepe, supgstcpe, supgscape, supgstces, supgscaes, supgsmrfa, supgsgcpa, supgstcxp, supgscapl, supgscdis, supgscfpo, supgsunps
FROM supgs;
SELECT supiprgnl, supipitem, supipdesc
FROM supip;
SELECT supmbcgru, supmbcbon, supmbpomi
FROM supmb;
--SUELDOS - PARAMETROS INICIALES
SELECT supmttipo, supmttcam, supmtsmin, supmtmnim, supmtctaq, supmtanaq, supmtcant, supmtpoan, supmtpoad, supmtbaan, supmtcban, supmtbaba, supmtcren, supmtcrnc, supmtctas, supmtanas, supmtcsob, supmtbahe, supmtfult, supmtcmon, supmtpded, supmtccbp, supmtcamn, supmtcdte, supmtadte, supmtcppr, supmtappr, supmtcppp, supmtappp, supmtcapr, supmtaapr, supmtcapp, supmtaapp, supmtcpta, supmtapta, supmtndoc, supmtphrh, supmtphrm, supmthtmh, supmthtmm, supmtbdom, supmtbcdo, supmthdva, supmthdmu, supmtfdva, supmtfdmu, supmtvlht, supmtpbpd, supmtcbpd, supmteres, supmtcapa, supmtaapa, supmtcpap, supmtapap, supmtcind, supmtaind, supmtcpin, supmtapin, supmtfaag, supmtfain, supmtcdsh, supmtadsh, supmtcvac, supmtavac, supmtcfpp, supmtafpp, supmtcsab, supmtcohe, supmtcaso, supmtctmu, supmtcasm, supmtfapa, supmtcopa, supmtfapi, supmtcopi, supmtcgpr, supmtagpr, supmtcprp, supmtaprp, supmtfppr, supmtccpr, supmtacpr, supmtacfm, supmtdduo, supmtcgeb, supmtageb, supmtcpeb, supmtapeb, supmtppeb, supmtccaa, supmtndci, supmtdddn, supmtcdtm, supmtcfpm
FROM supmt;
SELECT suposnpos, suposfpos, suposndid, suposcrgo, suposmapr, suposnota, suposglos, suposuser, suposhora, suposfpro
FROM supos;
SELECT suptendid, suptecorg, suptenomb, supteprof, suptedire, supteciud, suptetelf, suptemail, suptenaci, suptefnac, suptelnac, supteeciv, suptesexo, supteglos, supteuser, suptehora, suptefpro
FROM supte;
SELECT suraentra, suraendoc, suraeftra, suraefret, suraecemp, suraening, suraetipo, suraegls1, suraegls2, suraegls3, suraefmrc, suraemrcb, suraeuser, suraehora, suraefpro, suraecreg, suraeuneg, suraeccos, suraeccar, suraeitem, suraetemp
FROM surae WHERE suraentra >= 38130;
SELECT surasimpt, surasporc
FROM suras;
SELECT suratntra, suratnccl
FROM surat;
SELECT suravrini, suravrfin, suravdvac
FROM surav;
SELECT surcintra, surcicemp, surcifech, surcindoc, surciimpt, surcipiva, surcitcam, surciicrd, surcistat, surcimrcb
FROM surci WHERE surcintra >= 38130;
SELECT surcopref, surcocorr, surcocor1
FROM surco;
SELECT surdctcon, surdccorr, surdctcta, surdcvcob
FROM surdc;
SELECT surdenreg, surdetreg, surdefreg, surdecemp, surdedesc, surdeglos, surdeuser, surdehora, surdefpro
FROM surde;
SELECT surebntra, surebftra, surebcemp, surebcema, surebmind, surebperi, surebperf, surebgls1, surebgls2, surebgls3, surebmrcb, surebuser, surebhora, surebfpro
FROM sureb;
SELECT surecnrei, sureccemp, surectcon, sureccorr, surecporc, sureccmon, surecimpt
FROM surec;
SELECT suredntra, suredftra, suredcemp, suredcbon, suredacab, suredcmon, suredimpt, suredmrcb
FROM sured;
SELECT sureenrei, sureecemp, sureegls1, sureegls2, sureegls3, sureemrcb, sureeuser, sureehora, sureefpro
FROM suree;
SELECT sureggest, suregtipo, suregtcon, suregcorr, suregnres
FROM sureg;
SELECT surercemp, surernres, surergesi, surermesi, surergesf, surermesf
FROM surer;
SELECT surgccgru, surgccarg
FROM surgc;
SELECT surgpcgru, surgptpre
FROM surgp;
SELECT surhecemp, surheftra, surhehori, surhehorf, surhetoth, surheglsa, surhemrcb, surheuser, surhefpro, surhehora, surhegls1, surhegls2
FROM surhe;
SELECT surnpnaci, surnppais
FROM surnp;
SELECT surrtnrei, surrtntra
FROM surrt;
SELECT surssntra, surssftra, sursscemp, sursscsub, surssntas, surssperi, surssperf, sursspeii, sursspefi, surssgls1, surssgls2, surssgls3, surssmrcb, surssuser, sursshora, surssfpro
FROM surss;
SELECT susiicemp, susiisald, susiifreg, susiiuser, susiihora, susiifpro
FROM susii;
SELECT susubcsub, susubmmon, susubcana, susubcare, susubvsub, susubrhij, susubuser, susubhora, susubfpro
FROM susub;
SELECT susvecemp, susvesald
FROM susve;
SELECT susvecemp, susvesald
FROM susve_c;
SELECT sutcanins, sutcattra, sutcantra, suctamrcb, sutcauser, sutcahora, sutcafpro
FROM sutca;
SELECT sutcpfech, sutcpfpri, sutcptcam
FROM sutcp;
--
SELECT sutrentra, sutreftra, sutrendoc, sutreftrf, sutrecemp, sutreiitm, sutreirgn, sutreiune, sutreicco, sutreicar, sutreitsa, sutreiniv, sutreicmo, sutreihba, sutreitem, sutrergnl, sutreuneg, sutreccos, sutrecarg, sutretsue, sutrecniv, sutrecmon, sutrehbas, sutregls1, sutregls2, sutregls3, sutrestat, sutrefmrc, sutremrcb, sutreuser, sutrehora, sutrefpro, sutreicmc, sutreiffi, sutrecmoc, sutreffin, sutreansi, sutretipo
FROM sutre WHERE sutrentra = 38142;
SELECT suueiuneg, suueiuser, suueihora, suueifpro
FROM suuei;
SELECT suufvfech, suufvvufv
FROM suufv;
SELECT suuncuneg, suuncuser, suunchora, suuncfpro
FROM suunc;
SELECT suupscreg, suupsuneg, suupsuser, suupshora, suupsfpro
FROM suups;
SELECT suvacntra, suvacndoc, suvacfreg, suvaccemp, suvactipo, suvacfini, suvacffin, suvacmoda, suvaccant, suvacgls1, suvacgls2, suvacgls3, suvacfmrc, suvacmrcb, suvacuser, suvachora, suvacfpro
FROM suvac WHERE suvacntra = 38142;
SELECT suvacntra, suvacndoc, suvacfreg, suvaccemp, suvactipo, suvacfini, suvacffin, suvacmoda, suvaccant, suvacgls1, suvacgls2, suvacgls3, suvacfmrc, suvacmrcb, suvacuser, suvachora, suvacfpro
FROM suvac_c;
SELECT suvadntra, suvadtipo, suvadgesi, suvadgesf, suvadcant, suvadstat
FROM suvad WHERE suvadntra = 38142;
SELECT suvadntra, suvadtipo, suvadgesi, suvadgesf, suvadcant, suvadstat
FROM suvad_c;
SELECT suvainins, suvaicemp, suvaifech, suvaiddof, suvaidatr, suvaidfcl, suvaidfsl
FROM suvai;
SELECT suvamfech, suvamcemp, suvamhoex, suvamhdof, suvamhfer
FROM suvam;
SELECT suvegcemp, suveggesi, suveggesf, suvegdvac, suvegdvat, suvegstat, suveguntm, suvegning, suvegnret, suvegnfin, suvegfing, suvegtipo, suveghora, suvegfpro, suveguser, suvegdvco
FROM suveg;
SELECT suvegcemp, suveggesi, suveggesf, suvegdvac, suvegdvat, suvegstat, suveguntm, suvegning, suvegnret, suvegnfin, suvegfing, suvegtipo, suveghora, suvegfpro, suveguser
FROM suveg_c;
SELECT suvhecemp, suvhevlht
FROM suvhe;
SELECT imenuname, itemnum, mtext, mtype, progname
FROM sysmenuitems;
SELECT menuname, title
FROM sysmenus;
SELECT tmpcngest, tmpcnfini, tmpcnffin
FROM tmpcn;
SELECT smospnors, smospitem, smosptrol, smospite1, smospfreg, smospnnvt, smospttra, smospcart, smospcpac, smospcmed, smospimpt, smospporc, smospicbr, smospides, smospicom, smospcmon, smospcreg, smospuneg, smospccos
FROM tmpsmosp;
SELECT vtnvamorg, vtnvatorg, vtnvaitem, vtnvacart, vtnvacven, vtnvapuvt, vtnvaivti, vtnvapdsc, vtnvaidsc, vtnvaiice, vtnvavend, vtnvastat
FROM trg_vtnva;
SELECT vtnvhmorg, vtnvhtorg, vtnvhndoc, vtnvhftra, vtnvhcmon, vtnvhcage, vtnvhnomb, vtnvhiart, vtnvhidsc, vtnvhirec, vtnvhiice, vtnvhiehd, vtnvhpefe, vtnvhptrj, vtnvhpcxc, vtnvhfven, vtnvhpchq, vtnvhpcre, vtnvhptre, vtnvhpbon, vtnvhpboe, vtnvhpdpp, vtnvhcloc, vtnvhcalm, vtnvhtcam, vtnvhcven, vtnvhncja, vtnvhfemi, vtnvhnord, vtnvhnfac, vtnvhnnit, vtnvhnomf, vtnvhcctl, vtnvhstat, vtnvhuser, vtnvhhora, vtnvhfpro
FROM trg_vtnvh;
SELECT vtrovmorg, vtrovtorg, vtrovntra
FROM trg_vtrov;
SELECT tsbicnreg, tsbiccuti
FROM tsbic;
SELECT tscbacbco, tscbancta, tscbacpry, tscbacprg, tscbacfin
FROM tscba;
SELECT tsccbcbco, tsccbncta, tsccbuneg, tsccbcmon, tsccbsald, tsccbsgro, tsccbcctb, tsccbadic, tsccbmcch, tsccbmlch, tsccbstat, tsccbncba
FROM tsccb;
SELECT tsccecbco, tsccencta, tsccenchq, tsccetchq, tsccefech, tscceimpo, tsccecmon, tsccetcam, tsccenomb, tsccecage, tsccencpc, tscceuneg, tsccemorg, tsccetorg, tscceftra, tsccestat, tsccestan, tsccefsta, tsccesent, tsccefent, tsccenent, tsccedent, tscceautr, tsccegls1, tsccegls2, tsccegls3, tscceuser, tsccehora, tsccefpro, tsccecbcn, tsccenctn, tsccenoca, tsccenchn
FROM tscce;
SELECT tscchcbco, tscchncta, tscchnchq, tscchfcer, tscchfemi, tscchfdep, tscchcmon, tscchimpt, tscchmrcb, tscchuser, tscchhora, tscchfpro
FROM tscch;
SELECT tscdccbco, tscdcncta, tscdcnchq, tscdccbcd, tscdcnctd
FROM tscdc;
SELECT tscficfin, tscficbco, tscfincta
FROM tscfi;
SELECT tscgecreg, tscgenchq, tscgecmon, tscgefech, tscgeimpo, tscgetcam, tscgenomb, tscgendid, tscgecage, tscgeuneg, tscgemorg, tscgetorg, tscgeftra, tscgestat, tscgestan, tscgefsta, tscgegls1, tscgegls2, tscgemrcb, tscgeuser, tscgehora, tscgefpro
FROM tscge;
SELECT tschacbco, tschancta, tschanchq, tschatchq, tschafech, tschaimpo, tschacmon, tschatcam, tschanomb, tschacage, tschancpc, tschauneg, tschamorg, tschatorg, tschaftra, tschastat, tschastan, tschafsta, tschasent, tschafent, tschanent, tschadent, tschaautr, tschagls1, tschagls2, tschagls3, tschauser, tschahora, tschafpro
FROM tscha;
SELECT tschccbco, tschcncta, tschcnchq, tschcnoca
FROM tschc;
SELECT tscmnnrec, tscmnfech, tscmntipo, tscmnitem, tscmnnreg
FROM tscmn;
SELECT tsconpref, tsconcorr, tscondesc, tsconabre
FROM tscon;
SELECT tscpuusrn, tscpunoca, tscpuuser, tscpuhora, tscpufpro
FROM tscpu;
SELECT tsctlndoc, tsctlnmes, tsctlflim, tsctlmcec, tsctlcchb, tsctlachb, tsctlcchd, tsctlachd, tsctlcpcj, tsctlctcr, tsctlcpbj, tsctlcdif, tsctlccos, tsctlscco, tsctltbdc, tsctlabdc
FROM tsctl;
SELECT tsdbccbco, tsdbcdire
FROM tsdbc;
SELECT tsdccntra, tsdcccbco, tsdccncta, tsdccnchq, tsdccfech, tsdccimpo, tsdcccmon, tsdccmrcb
FROM tsdcc;
SELECT tsdchntra, tsdchfdoc, tsdchcbco, tsdchncta, tsdchnchq, tsdchimpt, tsdchcmon
FROM tsdch;
SELECT tsdecnreg, tsdecfreg, tsdeccbco, tsdecncta, tsdeccmon, tsdecitem, tsdecftra, tsdecndob, tsdecdtmv, tsdecdebe, tsdechabe, tsdecsald, tsdecmcon, tsdecnrec, tsdecitec
FROM tsdec;
SELECT tsdepntra, tsdeptdep, tsdepftra, tsdepndoc, tsdepfdoc, tsdepuneg, tsdepcbco, tsdepncta, tsdepcmon, tsdeptcam, tsdepiefe, tsdepichq, tsdepimpt, tsdepimpo, tsdepmcta, tsdepgls1, tsdepgls2, tsdepgls3, tsdepmrcb, tsdepuser, tsdephora, tsdepfpro
FROM tsdep;
SELECT tsdesnreg, tsdesfreg, tsdescbco, tsdesncta, tsdescmon, tsdesitem, tsdesftra, tsdesndob, tsdesdtmv, tsdesdtmb, tsdesntra, tsdesdebe, tsdeshabe, tsdessald, tsdesmcon
FROM tsdes;
SELECT tsfauuneg, tsfaucbco, tsfauncta, tsfaucage
FROM tsfau;
SELECT tsfcbfmto, tsfcbdesc
FROM tsfcb;
SELECT tshccntra, tshccndoc, tshccuneg, tshccftra, tshcctcam, tshcccbco, tshccncta, tshccnchq, tshccgls1, tshccgls2, tshccgls3, tshccmrcb, tshccuser, tshcchora, tshccfpro
FROM tshcc;
SELECT tsichcbco, tsichncta, tsichlbco, tsichlmic, tsichplza, tsichfmto
FROM tsich;
SELECT tsmecnreg, tsmecfreg, tsmecndoc, tsmeccbco, tsmecncta, tsmeccmon, tsmecarch, tsmecfini, tsmecffin, tsmecsini, tsmecsfin, tsmecsins, tsmecsfis, tsmecmcon
FROM tsmec;
SELECT tsocanoca, tsocadesc, tsocafreg, tsocacbco, tsocancta, tsocaccrl, tsocamlch, tsocafmto, tsocaplza, tsocanini, tsocanfin, tsocapnch, tsocastat, tsocafsta, tsocauser, tsocahora, tsocafpro
FROM tsoca;
SELECT tspaqcbab, tspaqctab, tspaqcbad, tspaqctad, tspaqtiqr, tspaqtiab
FROM tspaq;
SELECT tsrcacbco, tsrcancta, tsrcanchq, tsrcaftra, tsrcafanl, tsrcamorg, tsrcatorg, tsrcaimpo, tsrcanomb, tsrcagls1, tsrcagls2, tsrcagls3, tsrcauser, tsrcahora, tsrcafpro, tsrcatipo
FROM tsrca;
SELECT tsrdmcbco, tsrdmitem, tsrdmdbco, tsrdmdexs
FROM tsrdm;
SELECT tssrlntdc, tssrlnmec
FROM tssrl;
SELECT tstcfntra, tstcftcam
FROM tstcf;
SELECT tstcnftra, tstcnndoc, tstcnpref, tstcncorr, tstcndesc, tstcnitem, tstcncctb, tstcnadic, tstcnimpi, tstcnimpc, tstcncbio, tstcnpost, tstcnntra, tstcnftor, tstcnuser, tstcnhora, tstcnfpro
FROM tstcn;
SELECT tstdcntra, tstdcftra, tstdcndoc, tstdcfdoc, tstdcuneg, tstdccbco, tstdcncta, tstdcpref, tstdccorr, tstdcimpt, tstdccmon, tstdctcam, tstdcimpo, tstdccmoc, tstdcmorg, tstdctorg, tstdcgls1, tstdcgls2, tstdcgls3, tstdcmrcb, tstdcuser, tstdchora, tstdcfpro
FROM tstdc;
SELECT tstdrntra, tstdrcbco, tstdrncta, tstdrnchq, tstdrimpt, tstdrcmon, tstdrmrcb
FROM tstdr;
SELECT tsthtttar, tsthtuser, tsththora, tsthtfpro
FROM tstht;
SELECT tstmvpref, tstmvcorr, tstmvdesc, tstmvctbl, tstmvadic
FROM tstmv;
SELECT tstrjntrj, tstrjttrj, tstrjndid, tstrjimpo, tstrjcmon, tstrjtcam, tstrjuneg, tstrjmorg, tstrjtorg, tstrjftra, tstrjuser, tstrjhora, tstrjfpro, tstrjitem, tstrjnout
FROM tstrj;
SELECT vpctlcalm, vpctlcloc, vpctlcbar, vpctlndec, vpctlcmon, vpctlscaj, vpctlcarm, vpctlmfac, vpctlmimp, vpctlmica, vpctlfant, vpctlfcie, vpctlclie
FROM vpctl;
SELECT vpnvantra, vpnvaftra, vpnvacmon, vpnvaitem, vpnvacart, vpnvacven, vpnvapvta, vpnvaivti, vpnvaivtc, vpnvadscb, vpnvadscd, vpnvatcam, vpnvanven, vpnvafaex, vpnvauser, vpnvastat
FROM vpnva;
SELECT vpnvhntra, vpnvhndoc, vpnvhtnve, vpnvhcmon, vpnvhftra, vpnvhcage, vpnvhnomb, vpnvhiart, vpnvhpdsc, vpnvhidsc, vpnvhpefe, vpnvhptrj, vpnvhntrj, vpnvhttrj, vpnvhndid, vpnvhpchq, vpnvhpcte, vpnvhncte, vpnvhtcam, vpnvhcloc, vpnvhcalm, vpnvhncja, vpnvhnord, vpnvhcctl, vpnvhafac, vpnvhcorr, vpnvhnreg, vpnvhnruc, vpnvhstat, vpnvhuser, vpnvhhora, vpnvhfpro
FROM vpnvh;
SELECT vpnvsntra, vpnvscase, vpnvspcob, vpnvsiase, vpnvsnord, vpnvsafac, vpnvsnfac, vpnvsnruc
FROM vpnvs;
SELECT vtaaantra, vtaaandoc, vtaaaftra, vtaaanaut, vtaaafeam, vtaaagls1, vtaaagls2, vtaaagls3, vtaaagls4, vtaaamrcb, vtaaauser, vtaaahora, vtaaafpro
FROM vtaaa;
SELECT vtacccage, vtacccart
FROM vtacc;
SELECT vtaduuneg, vtaducalm, vtaduuser, vtaduhora, vtadufpro
FROM vtadu;
SELECT vtagencta, vtagenomb, vtagetelf, vtagedire, vtagenruc
FROM vtage;
SELECT vtagsncta, vtagsfmod
FROM vtags;
SELECT vtaiecart, vtaietimp, vtaierela, vtaieumut, vtaiefimp, vtaietfac, vtaiecmon, vtaiefdec, vtaieuser, vtaiehora, vtaiefpro
FROM vtaie;
SELECT vtaitcart
FROM vtait;
SELECT vtajpntra, vtajpndoc, vtajpftra, vtajpcage, vtajpcloc, vtajpuneg, vtajpnaut, vtajptpun, vtajpgls1, vtajpgls2, vtajpgls3, vtajpgls4, vtajpmrcb, vtajpuser, vtajphora, vtajpfpro
FROM vtajp;
SELECT vtalatent, vtalaentg, vtalacart, vtalacaro, vtalacalt
FROM vtala;
SELECT vtanvntra, vtanvcage
FROM vtanv;
SELECT vtapcnaut, vtapccage, vtapcpacc
FROM vtapc;
SELECT vtapetent, vtapeentg, vtapecart, vtapetipo, vtapefini, vtapefven, vtapedofe, vtapepvta, vtapepvt1, vtapepvt2, vtapepvt3, vtapepvt4, vtapefreg, vtapefmod, vtapeuser, vtapehora, vtapefpro
FROM vtape;
SELECT vtasccase, vtascncob, vtasccart, vtascfreg, vtascmrcb
FROM vtasc;
SELECT vtasecase, vtasefini, vtaseffin, vtasepdsc, vtaselpre, vtasesfac, vtasestat, vtasefsta, vtasefreg, vtaseuser, vtasehora, vtasefpro, vtaseemai
FROM vtase;
SELECT vtasncalm, vtasnmaut, vtasnuser, vtasnhora, vtasnfpro
FROM vtasn;
SELECT vtbapfech, vtbapcage, vtbaptpun
FROM vtbap;
SELECT vtbbfntra, vtbbfnbon, vtbbfftra, vtbbfmtv1, vtbbfmtv2, vtbbfmtv3, vtbbfmrcb, vtbbfuser, vtbbfhora, vtbbffpro
FROM vtbbf;
SELECT vtbencage, vtbencben, vtbencase, vtbenncob, vtbennpol, vtbenfvto, vtbenctit, vtbenctte, vtbenstat, vtbenfsta, vtbenfreg, vtbenuser, vtbenhora, vtbenfpro
FROM vtben;
SELECT vtcapncje, vtcapcage, vtcapfcje, vtcaptcje, vtcappacu, vtcappcje, vtcapglos, vtcapnprf, vtcapmrcb
FROM vtcap;
SELECT vtcascase, vtcasncob, vtcasdesc, vtcaspcob, vtcasfreg
FROM vtcas;
SELECT vtccacage, vtccaporc, vtccauser, vtccahora, vtccafpro
FROM vtcca;
SELECT vtccpcage, vtccpfeca, vtccpndid, vtccpcomp, vtccpfnac, vtccpdire, vtccpcelu, vtccpemai, vtccpappa, vtccpapma, vtccpnoms, vtccpsexo, vtccppais, vtccpcdep, vtccpcciu, vtccpzona, vtccpanil, vtccpstat, vtccpuser, vtccphora, vtccpfpro
FROM vtccp;
SELECT vtccscage, vtccsffin
FROM vtccs;
SELECT vtcdmntra, vtcdmftra, vtcdmcage, vtcdmcsst, vtcdmcssp, vtcdmitem, vtcdmcart, vtcdmdmed, vtcdmfdur, vtcdmmrcb
FROM vtcdm;
SELECT vtcfancja, vtcfanord, vtcfacctl, vtcfaafac, vtcfafaci, vtcfafacf, vtcfacorr, vtcfanreg
FROM vtcfa;
SELECT vtcgfcage
FROM vtcgf;
SELECT vtcgpccrg, vtcgpdesc, vtcgpcctb, vtcgpcmon, vtcgpimpt
FROM vtcgp;
SELECT vtciantra, vtciaitem, vtciacart, vtciaciar
FROM vtcia;
SELECT vtclicage, vtclipdsc, vtclilpre, vtclicana, vtclitlis
FROM vtcli;
SELECT vtcnsinst, vtcnsnano, vtcnsnmes, vtcnscart, vtcnscven, vtcnsivti, vtcnsivtc, vtcnsdsci, vtcnsdscc, vtcnsiice, vtcnscgru, vtcnscsub
FROM vtcns;
SELECT vtcoacage, vtcoacart, vtcoapcom
FROM vtcoa;
SELECT vtcomcage, vtcomcloc, vtcomuneg, vtcomntra, vtcomftra, vtcomfpag, vtcomimpo, vtcompcom, vtcomicot, vtcomicoc, vtcomicop, vtcomcmon, vtcompcoa, vtcomicoa, vtcommpag, vtcomncre, vtcomuser, vtcomhora, vtcomfpro, vtcomivta, vtcomivtc, vtcomivtx, vtcomtiva, vtcomucob
FROM vtcom;
SELECT vtconpref, vtconcorr, vtcondesc, vtconabre
FROM vtcon;
SELECT vtcovcvis, vtcovntra, vtcovftra, vtcovfpag, vtcovimpo, vtcovpcom, vtcovicot, vtcovicoc, vtcovicop, vtcovcmon, vtcovpcoa, vtcovicoa, vtcovmpag, vtcovncre, vtcovuser, vtcovhora, vtcovfpro
FROM vtcov;
SELECT vtcpdncje, vtcpdcage, vtcpdfcje, vtcpdtcje, vtcpdntra, vtcpdtpun, vtcpdmrcb
FROM vtcpd;
SELECT vtcpvcage, vtcpvcgri, vtcpvcgrf, vtcpvcsui, vtcpvcsuf, vtcpvccli, vtcpvcclf, vtcpvcsci, vtcpvcscf, vtcpvpcom
FROM vtcpv;
SELECT vtctanaut, vtctatcli
FROM vtcta;
SELECT vtctfftra, vtctfntra
FROM vtctf;
SELECT vtctlnmes, vtctlflim, vtctlndoc, vtctltcve, vtctlcppg, vtctlcchb, vtctlcchd, vtctlctjc, vtctlcpcj, vtctlmens, vtctltcaa, vtctldiva, vtctladiv, vtctldeit, vtctladit, vtctlcvar, vtctlibon, vtctlcmbo, vtctlcadv, vtctlcivt, vtctlaivt, vtctlcitt, vtctlaitt, vtctlctje, vtctlcind, vtctlaind, vtctltabo
FROM vtctl;
SELECT vtcvacvis, vtcvazona, vtcvacart, vtcvapcom
FROM vtcva;
SELECT vtdaccart, vtdaccara, vtdactipo, vtdaccant, vtdacpdsc
FROM vtdac;
SELECT vtdaentra, vtdaepusa, vtdaedeme, vtdaefpag, vtdaeteco, vtdaemtra, vtdaetran, vtdaemrcb, vtdaeuser, vtdaehora, vtdaefpro, vtdaetota, vtdaecopa
FROM vtdae;
SELECT vtdaittra, vtdaintra, vtdaiitem, vtdaicart, vtdaicbar, vtdainpro, vtdainins
FROM vtdai;
SELECT vtdapttra, vtdapntra, vtdapitem, vtdapcari, vtdapitei, vtdapcarp, vtdapcant
FROM vtdap;
SELECT vtdavntra, vtdavitem, vtdavcart, vtdavdesc
FROM vtdav;
SELECT vtdcbnvta, vtdcbitem, vtdcbnboe, vtdcbcbon, vtdcbftra, vtdcbuneg, vtdcbcloc, vtdcbcmon, vtdcbimpt, vtdcbmrcb, vtdcbuser, vtdcbhora, vtdcbfpro
FROM vtdcb;
SELECT vtdclcloc, vtdclcage, vtdclpref, vtdclcorr, vtdclorde, vtdclporc, vtdcluser, vtdclhora, vtdclfpro
FROM vtdcl;
SELECT vtddpnvta, vtddpncxc, vtddpnvtd, vtddpfvtd, vtddpidpp, vtddppdpp, vtddpnodd, vtddpafad, vtddpnfad, vtddpncxd, vtddpivtd, vtddpcmod
FROM vtddp;
SELECT vtdevntra, vtdevnvta, vtdevncxp, vtdevicxp, vtdevncxc, vtdevicxc, vtdevmtvo, vtdevstat, vtdevtipo
FROM vtdev;
SELECT vtdlocloc, vtdlopref, vtdlocorr, vtdloorde, vtdloporc, vtdlouser, vtdlohora, vtdlofpro
FROM vtdlo;
SELECT vtdpatipo, vtdpanvta, vtdpaftra, vtdpauneg, vtdpacloc, vtdpacage, vtdpaitem, vtdpacart, vtdpacmar, vtdpaimpt, vtdpacmor, vtdpaimpr, vtdpacanp, vtdpatpun, vtdpastat, vtdpafsta, vtdpamrcb
FROM vtdpa;
SELECT vtdpcnliq, vtdpccage, vtdpcntra, vtdpcncob, vtdpcfcob, vtdpcicob, vtdpcfpla, vtdpcimpt, vtdpcicuo, vtdpcdpen, vtdpcicoc, vtdpcicpe, vtdpcppen, vtdpcuser, vtdpchora, vtdpcfpro
FROM vtdpc;
SELECT vtdppnvta, vtdppfvta, vtdppnord, vtdppafac, vtdppnfac, vtdppcage, vtdppiart, vtdppcmon, vtdpptcam, vtdppncxc, vtdppicxc, vtdppmcxc, vtdppntra, vtdppftra, vtdppddia, vtdpppdsc, vtdppidsc, vtdppsald, vtdppsant, vtdppstat, vtdppfsta, vtdppuser, vtdpphora, vtdppfpro
FROM vtdpp;
SELECT vtdsccgsc, vtdsccgru, vtdsccsub, vtdscccla, vtdsccscl, vtdsccart
FROM vtdsc;
SELECT vtdttntra, vtdttcttr, vtdttcori, vtdttcorf, vtdttmrcb
FROM vtdtt;
SELECT vtdvanvta, vtdvanano, vtdvanmes, vtdvaftra, vtdvacage, vtdvanaut, vtdvancxc
FROM vtdva;
SELECT vtdvonaut, vtdvocage, vtdvonano, vtdvonmes, vtdvonvta
FROM vtdvo;
SELECT vtebdcage, vtebdctcp, vtebdcapl
FROM vtebd;
SELECT vtebonbon, vtebofemi, vtebocage, vtebottro, vtebontro, vtebotpun, vteboimpt, vtebocmon, vtebostat, vtebontvu, vtebofuti, vtebouser, vtebohora, vtebofpro, vtebonaut, vtebofvig
FROM vtebo;
SELECT vtecftdoi, vtecfndoc, vtecfcomp, vtecfitem, vtecfemai
FROM vtecf;
SELECT vtedpcage, vtedpfini, vtedpffin, vtedpuser, vtedphora, vtedpfpro
FROM vtedp;
SELECT vteodnbon, vteodndoc, vteodluge, vteodcpre, vteodcant, vteodglos, vteoduser, vteodhora, vteodfpro
FROM vteod;
SELECT vtfacntra, vtfacftra, vtfacncja, vtfacnord, vtfaccctl, vtfacafac, vtfaccorr, vtfacnreg, vtfacnruc, vtfacstat
FROM vtfac;
SELECT vtfdcntra, vtfdccage, vtfdccloc, vtfdcffac, vtfdcnord, vtfdcnfac, vtfdcmrcb, vtfdcuser, vtfdchora, vtfdcfpro, vtfdcttra
FROM vtfdc;
SELECT vtfpantra, vtfpancxc, vtfpaphab, vtfpaptre, vtfpapboe, vtfpancbe, vtfpapdpp, vtfpancdp, vtfpapbon, vtfpapdpv, vtfpaidpv, vtfpanruc
FROM vtfpa;
SELECT vtfpentra, vtfpeppre, vtfpentrj, vtfpendit, vtfpenomt, vtfpecant, vtfpeddif, vtfpenpep, vtfpetotc, vtfpefppa, vtfpepaqr, vtfpetdqr, vtfpeidtz, vtfpepaco, vtfpencco, vtfpepvte, vtfpencvt, vtfpecevt, vtfpenide, vtfpentde, vtfpencxt, vtfpepaab
FROM vtfpe;
SELECT vtgcccgru, vtgcccsub, vtgccuser, vtgcchora, vtgccfpro
FROM vtgcc;
SELECT vtgsccgsc, vtgscdesc, vtgscsino, vtgscumeq, vtgsccmum, vtgscmrcb, vtgscuser, vtgschora, vtgscfpro
FROM vtgsc;
SELECT vthaccart, vthacmdim, vthacfreg, vthacfmod, vthacuser, vthachora, vthacfpro
FROM vthac;
SELECT vthaptent, vthapentg, vthapcart, vthaphini, vthaphfin, vthappvta, vthappvt1, vthappvt2, vthappvt3, vthappvt4
FROM vthap;
SELECT vthccuneg, vthcccage, vthccnomb, vthccnano, vthccnmes, vthccimpt
FROM vthcc;
SELECT vthdaftra, vthdacart, vthdauneg, vthdacloc, vthdacant, vthdacost, vthdaimpt, vthdaidsc, vthdaiice, vthdacgru, vthdacsub
FROM vthda;
SELECT vthfpuneg, vthfpnano, vthfpnmes, vthfppefe, vthfpptrj, vthfppcte, vthfppchq, vthfppcre, vthfppcxc
FROM vthfp;
SELECT vthlcuneg, vthlccloc, vthlcdesc, vthlcnano, vthlcnmes, vthlcimpt, vthlcirec
FROM vthlc;
SELECT vthoftent, vthofentg, vthofcart, vthofhini, vthofhfin
FROM vthof;
SELECT vthopnpro, vthophini, vthophfin
FROM vthop;
SELECT vthoutent, vthouentg, vthoucart, vthouumve, vthouhini, vthouhfin
FROM vthou;
SELECT vthttntra, vthttttra, vthttftra, vthttuneg, vthttusro, vthttusrd, vthttmhtr, vthttntre, vthttmrcb, vthttuser, vthtthora, vthttfpro
FROM vthtt;
SELECT vthuvuser
FROM vthuv;
SELECT vthvauneg, vthvacart, vthvadesc, vthvanano, vthvanmes, vthvacant, vthvacost, vthvaimpt
FROM vthva;
SELECT vthvvuneg, vthvvcage, vthvvnomb, vthvvnano, vthvvnmes, vthvvimpt, vthvvicom, vthvvidsc
FROM vthvv;
SELECT vtiaentra, vtiaetipo, vtiaeitem, vtiaedesc, vtiaeimpt
FROM vtiae;
SELECT vtipvntra, vtipvind1, vtipvind2, vtipvind3, vtipvind4, vtipvind5, vtipvind6, vtipvind7
FROM vtipv;
SELECT vtlbbnboe, vtlbbcage, vtlbbcbon, vtlbbndid, vtlbbcorg, vtlbbnomb, vtlbbsexo, vtlbbedad, vtlbbimpt, vtlbbcmon, vtlbbndit, vtlbbcort, vtlbbnomt, vtlbbnvta, vtlbbsald, vtlbbstat
FROM vtlbb;
SELECT vtlcdtipo, vtlcdcdgo, vtlcdimpt, vtlcdcmon
FROM vtlcd;
SELECT vtlchtipo, vtlchcmon, vtlchuser, vtlchhora, vtlchfpro
FROM vtlch;
SELECT vtlcvnliq, vtlcvftra, vtlcvcvis, vtlcvndoc, vtlcvncre, vtlcvimpo, vtlcvcmon, vtlcvmrcb, vtlcvuser, vtlcvhora, vtlcvfpro
FROM vtlcv;
SELECT vtleccloc, vtlecfpag, vtlectcxc, vtleccemp, vtleccalm
FROM vtlec;
SELECT vtlepnpro, vtleptent, vtlepcent
FROM vtlep;
SELECT vtloccloc, vtlocdesc, vtlocdir1, vtlocdir2, vtlocuneg, vtlocccos, vtloctcom, vtloctfac, vtlocnord, vtloccctl, vtlocafac, vtlocfaci, vtlocfacf, vtloccorr, vtlocmfac, vtlocnorn, vtlocafan, vtlocnnta, vtlocntai, vtlocntaf, vtlocmnta, vtlocivta, vtlocidvt, vtlocdvta, vtlocdevv, vtloccmec, vtloccmne, vtloccvta, vtlocartn, vtloctcre, vtloctcpc, vtlocacpc, vtloctdcv, vtlocadcv, vtlocvcpd, vtloctcpd, vtlocacpd, vtloctcop, vtlocacop, vtlociiva, vtlocaiva, vtlocgiva, vtlocagiv, vtlocitra, vtlocatra, vtlocgtra, vtlocagtr, vtlociice, vtlocaice, vtlociehd, vtlocaieh, vtloccser, vtlocaser, vtloccase, vtlocaase, vtloctcbe, vtlocapbe, vtloctcdp, vtlocapdp, vtlocdepv, vtloccbof, vtlocabof
FROM vtloc;
SELECT vtlppnpro, vtlppcpat
FROM vtlpp;
SELECT vtlqvnliq, vtlqvftra, vtlqvcage, vtlqvcloc, vtlqvuneg, vtlqvndoc, vtlqvncre, vtlqvimpo, vtlqvcmon, vtlqvmrcb, vtlqvuser, vtlqvhora, vtlqvfpro, vtlqvivta, vtlqvicob, vtlqvbcom
FROM vtlqv;
SELECT vtmbenboe, vtmbefreg, vtmbeuneg, vtmbecage, vtmbetipo, vtmbeimpt, vtmbecmon, vtmbecart, vtmbenvta, vtmbecind, vtmbeaind, vtmbepdsc, vtmbeidsc, vtmbeapld, vtmbemlib, vtmbetope, vtmbecmtd, vtmbefini, vtmbeffin, vtmbemrcb, vtmbeuser, vtmbehora, vtmbefpro, vtmbedesc, vtmbefacb
FROM vtmbe;
SELECT vtmcpntra, vtmcpftra, vtmcpcloc, vtmcpuneg, vtmcpcage, vtmcptpun, vtmcpgls1, vtmcpgls2, vtmcpgls3, vtmcpmrcb, vtmcpuser, vtmcpfpro, vtmcphora
FROM vtmcp;
SELECT vtmcvdiap, vtmcvdiai, vtmcvdiaf, vtmcvuser, vtmcvhora, vtmcvfpro
FROM vtmcv;
SELECT vtmpfntra, vtmpfftra, vtmpftipo, vtmpftorg, vtmpfcage, vtmpftpun, vtmpfgls1, vtmpfgls2, vtmpfgls3, vtmpfmrcb, vtmpfuser, vtmpffpro, vtmpfhora
FROM vtmpf;
SELECT vtncgntra, vtncgccrg, vtncgimpt
FROM vtncg;
SELECT vtncomesa, vtncocart, vtncocant, vtncopuni
FROM vtnco;
SELECT vtncsuneg, vtncscart, vtncsftra, vtncsntra, vtncsitem, vtncscorr, vtncsfini
FROM vtncs;
SELECT vtndantra, vtndattra, vtndaitem, vtndacart, vtndacpza, vtndamlgo, vtndamanc, vtndablgo, vtndabanc, vtndamblg, vtndamban
FROM vtnda;
SELECT vtnicntra, vtnicttra, vtnicitem, vtniccart, vtniccpac, vtnicnomp, vtnicccom, vtnicnomc, vtnicndid, vtnicedad, vtnicsexo, vtnictelf, vtnicdire, vtnicrcnt, vtnicdesc, vtniccmed, vtnicnomm, vtnicmatm, vtnicnrem, vtnicfcom
FROM vtnic;
SELECT vtnvantra, vtnvatnve, vtnvaftra, vtnvauneg, vtnvaccos, vtnvacloc, vtnvazona, vtnvaitem, vtnvacart, vtnvacven, vtnvacent, vtnvapuvt, vtnvaivti, vtnvaivtc, vtnvacost, vtnvapdsc, vtnvadscb, vtnvadscd, vtnvaiice, vtnvatcam, vtnvavend, vtnvapcom, vtnvaacof, vtnvafaex, vtnvamsto, vtnvatart, vtnvastat, vtnvativa, vtnvatitr, vtnvaisti, vtnvaistt, vtnvaiivf, vtnvaiitf, vtnvaiced
FROM vtnva;
SELECT vtnvbntra, vtnvbtnve, vtnvbftra, vtnvbitem, vtnvbcart, vtnvbcent, vtnvbpuvt, vtnvbivti, vtnvbivtc, vtnvbcost, vtnvbdscb, vtnvbdscd, vtnvbtcam, vtnvbstat
FROM vtnvb;
SELECT vtnvhntra, vtnvhndoc, vtnvhtnve, vtnvhcmon, vtnvhftra, vtnvhcage, vtnvhnomb, vtnvhiart, vtnvhirec, vtnvhpdsc, vtnvhidsc, vtnvhpefe, vtnvhptrj, vtnvhpchq, vtnvhpcte, vtnvhpcre, vtnvhpcxc, vtnvhncte, vtnvhncre, vtnvhnfac, vtnvhiice, vtnvhiehd, vtnvhtcam, vtnvhuneg, vtnvhccos, vtnvhcloc, vtnvhzona, vtnvhcalm, vtnvhncja, vtnvhcven, vtnvhpcom, vtnvhicdv, vtnvhtcdv, vtnvhnot1, vtnvhnot2, vtnvhnot3, vtnvhstat, vtnvhtorg, vtnvhuser, vtnvhhora, vtnvhfpro, vtnvhiliq, vtnvhnliq, vtnvhmrev, vtnvhurev, vtnvhumod, vtnvhfsta
FROM vtnvh;
SELECT vtnvpntra, vtnvpnpvt
FROM vtnvp;
SELECT vtnvsntra, vtnvscase, vtnvspcob, vtnvsnord, vtnvsafac, vtnvsnfac, vtnvsnruc
FROM vtnvs;
SELECT vtobvtipo, vtobvperi, vtobvcven, vtobvcodi, vtobvcsub, vtobvobjt, vtobvmedi
FROM vtobv;
SELECT vtofantra, vtofattra, vtofaitem, vtofacart, vtofacven, vtofacaad, vtofacarg, vtofacveg
FROM vtofa;
SELECT vtofdtent, vtofdentg, vtofdcart, vtofdcaro, vtofdcant, vtofdpdsc
FROM vtofd;
SELECT vtofetent, vtofeentg, vtofecart, vtofetipo, vtofefini, vtofefven, vtofedofe, vtofepvta, vtofepvt1, vtofepvt2, vtofepvt3, vtofepvt4, vtofecmco, vtofecgru, vtofecsub, vtofefreg, vtofefmod, vtofeuser, vtofehora, vtofefpro
FROM vtofe;
SELECT vtofutent, vtofuentg, vtofucart, vtofuumve, vtofutipo, vtofufini, vtofufven, vtofudofe, vtofupvta, vtofupvt1, vtofupvt2, vtofupvt3, vtofupvt4, vtofucmco, vtofucgru, vtofucsub, vtofufreg, vtofufmod, vtofuuser, vtofuhora, vtofufpro
FROM vtofu;
SELECT vtomcnaut, vtomccage, vtomcnano, vtomcnmes, vtomcfini, vtomcffin, vtomccmon, vtomcimpt, vtomcimve, vtomcstat, vtomcuser, vtomchora, vtomcfpro
FROM vtomc;
SELECT vtorlcloc, vtorltdoc, vtorlnord, vtorlcctl, vtorlafac, vtorlcori, vtorlcorf, vtorlmfac, vtorlfreg, vtorlnsuc, vtorlnreg, vtorlfaut, vtorldval, vtorlflem, vtorlllad, vtorlstat, vtorlnorf, vtorluser, vtorlhora, vtorlfpro
FROM vtorl;
SELECT vtpaccage, vtpacpacc
FROM vtpac;
SELECT vtpafnauv, vtpaflbon, vtpaftcpb, vtpafuass, vtpafalps, vtpafapda
FROM vtpaf;
SELECT vtpaunaut, vtpaucpre, vtpaudpre, vtpauvalp, vtpaucosb, vtpaucosd, vtpaumrcb, vtpauuser, vtpauhora, vtpaufpro
FROM vtpau;
SELECT vtpcacage, vtpcapacc, vtpcafula
FROM vtpca;
SELECT vtpcpcmor, vtpcpimpr, vtpcpcanp, vtpcpfini, vtpcptmeg, vtpcpccos, vtpcpcdvp
FROM vtpcp;
SELECT vtpcrnaut, vtpcrcage, vtpcrfreg, vtpcrmrcb, vtpcruser, vtpcrhora, vtpcrfpro, vtpcrcame
FROM vtpcr;
SELECT vtpdccage, vtpdcfini, vtpdcfven, vtpdcdofe, vtpdctaut, vtpdchash
FROM vtpdc;
SELECT vtpdpcage, vtpdpdini, vtpdpdfin, vtpdppdsc
FROM vtpdp;
SELECT vtpdvdini, vtpdvdfin, vtpdvporc
FROM vtpdv;
SELECT vtpetntra, vtpetftra, vtpetuneg, vtpetcloc, vtpetcaja, vtpetndid, vtpetnomb, vtpetcage, vtpettcam, vtpetcmon, vtpetimpt, vtpetcant, vtpetddif, vtpetstat, vtpetnaut, vtpetttor, vtpettorg, vtpetuser, vtpethora, vtpetfpro
FROM vtpet;
SELECT vtpfpmoda, vtpfpimpb, vtpfpmonb, vtpfpimpt, vtpfpcmon, vtpfpfini, vtpfpffin, vtpfpglsa, vtpfpuser, vtpfphora, vtpfpfpro
FROM vtpfp;
SELECT vtpfsuneg, vtpfsccos, vtpfscvpv, vtpfscage, vtpfsctx1, vtpfscap1, vtpfsctx2, vtpfscap2, vtpfscap3
FROM vtpfs;
SELECT vtplqnliq, vtplqimpo, vtplqporc
FROM vtplq;
SELECT vtposcloc, vtposcart, vtposcant, vtposimpt, vtposftra
FROM vtpos;
SELECT vtppacart, vtppafplb, vtppafpl1, vtppafpl2, vtppafpl3, vtppafpl4, vtppafpof, vtppafppm, vtppafmod
FROM vtppa;
SELECT vtppbtipo, vtppbpbap, vtppbbono, vtppbcmon, vtppbuser, vtppbhora, vtppbfpro, vtppbmpsa
FROM vtppb;
SELECT vtppmcmar, vtppmfini, vtppmffin, vtppmcmor, vtppmimpr, vtppmcanp
FROM vtppm;
SELECT vtppttipo, vtpptnvta, vtpptftra, vtpptuneg, vtpptcloc, vtpptcage, vtppttpun, vtpptfvig, vtpptstat, vtpptfsta, vtpptttor, vtppttorg, vtpptmrcb, vtpptuser, vtppthora, vtpptfpro
FROM vtppt;
SELECT vtprdntra, vtprdftra, vtprdcloc, vtprdcalm, vtprduneg, vtprdcage, vtprditem, vtprdcart, vtprdpunt, vtprdmrcb
FROM vtprd;
SELECT vtprentra, vtprendoc, vtpreftra, vtprecage, vtprenomb, vtprenruc, vtprenvta, vtpreuneg, vtprecloc, vtprecmon, vtpreimpt, vtprestat, vtpremrcb, vtpreuser, vtprehora, vtprefpro
FROM vtpre;
SELECT vtprfnprf, vtprffreg, vtprftprf, vtprffini, vtprfffin, vtprftmpa, vtprfutmp, vtprfglos, vtprffcie, vtprfmrcb
FROM vtprf;
SELECT vtprhntra, vtrprndoc, vtprhftra, vtprhcloc, vtprhcalm, vtprhuneg, vtprhcage, vtprhtpun, vtprhnegr, vtprhgls1, vtprhgls2, vtprhgls3, vtprhmrcb, vtprhuser, vtprhfpro, vtprhhora
FROM vtprh;
SELECT vtptdntra, vtptdftra, vtptdcage, vtptditem, vtptdcart, vtptdpuna, vtptdmrcb
FROM vtptd;
SELECT vtpthntra, vtpthftra, vtpthcage, vtpthtpun, vtpthsald, vtpthstat, vtpthfsta, vtpthnprf, vtpthmrcb
FROM vtpth;
SELECT vtptrcser
FROM vtptr;
SELECT vtpumntra, vtpumitem, vtpumcart, vtpumpuvt, vtpumpven, vtpumncja, vtpumuser, vtpumhora, vtpumfpro
FROM vtpum;
SELECT vtputntra, vtputfreg, vtputtipo, vtputtorg, vtputftra, vtputcage, vtputtpun, vtputrpib, vtputcmpb, vtputmrcb, vtputnaut
FROM vtput;
SELECT vtpuvuser, vtpuvcloc, vtpuvzona, vtpuvmvcd, vtpuvcalm, vtpuvcven, vtpuvtcom, vtpuvcpvt
FROM vtpuv;
SELECT vtpvdntra, vtpvdftra, vtpvditem, vtpvdcart, vtpvdcant, vtpvdpvta, vtpvdimpt, vtpvdpdsc, vtpvdidsc, vtpvdiice, vtpvdcmon, vtpvdacof, vtpvdmsto, vtpvdmrcb
FROM vtpvd;
SELECT vtpvhntra, vtpvhndoc, vtpvhftra, vtpvhcmon, vtpvhcage, vtpvhncta, vtpvhnomb, vtpvhtelf, vtpvhdire, vtpvhnruc, vtpvhiart, vtpvhpdsc, vtpvhidsc, vtpvhiice, vtpvhiehd, vtpvhimpt, vtpvhmcre, vtpvhiefe, vtpvhncuo, vtpvhicuo, vtpvhtcam, vtpvhcven, vtpvhcloc, vtpvhsect, vtpvhstat, vtpvhnot1, vtpvhnot2, vtpvhnot3, vtpvhadbm, vtpvhmrcb, vtpvhuser, vtpvhhora, vtpvhfpro, vtpvhmrev
FROM vtpvh;
SELECT vtpydnpro, vtpyddcor, vtpyddesc, vtpydtpro, vtpydccom, vtpydcpag, vtpydpvta, vtpydmvta, vtpydadim, vtpydpmax, vtpydmpmx, vtpydfini, vtpydfven, vtpyddofe, vtpydcapl, vtpydfreg, vtpydfmod, vtpydstat, vtpydfsta, vtpyduser, vtpydhora, vtpydfpro, vtpydpdsc, vtpydlimp, vtpydnivl, vtpydconp
FROM vtpyd;
SELECT vtrabcage, vtrabcbar, vtrabuser, vtrabhora, vtrabfpro
FROM vtrab;
SELECT vtrafnaut, vtrafftra, vtrafcmon, vtrafimpa, vtrafsald, vtraffini, vtrafffin, vtrafstat, vtrafuser, vtrafhora, vtraffpro, vtraftpre, vtrafmaup, vtrafffia
FROM vtraf;
SELECT vtralcreg, vtralcalm
FROM vtral;
SELECT vtreanaut, vtreaorde, vtreacrap
FROM vtrea;
SELECT vtregcreg, vtregdesc
FROM vtreg;
SELECT vtretnemt, vtretfemi, vtretuneg, vtretcttr, vtretcant, vtretcori, vtretcorf, vtretmrcb, vtretuser, vtrethora, vtretfpro
FROM vtret;
SELECT vtrlocreg, vtrlocloc
FROM vtrlo;
SELECT vtrlscloc, vtrlscsuc
FROM vtrls;
SELECT vtrmpnreg, vtrmpfreg, vtrmptipo, vtrmptent, vtrmpentg, vtrmpcart, vtrmpmvea, vtrmpmven, vtrmppvan, vtrmppvta, vtrmppva1, vtrmppvt1, vtrmppva2, vtrmppvt2, vtrmppva3, vtrmppvt3, vtrmppva4, vtrmppvt4, vtrmpmarg, vtrmpmar1, vtrmpmar2, vtrmpmar3, vtrmpmar4, vtrmpbase, vtrmpcost, vtrmpfcpv, vtrmpunec, vtrmpnrec, vtrmpuser, vtrmphora, vtrmpfpro
FROM vtrmp;
SELECT vtrnfmfid, vtrnfmpfp, vtrnfnprf, vtrnfncje
FROM vtrnf;
SELECT vtrocnord, vtrocnorc, vtrocnrec
FROM vtroc;
SELECT vtroftent, vtrofentg, vtrofcart, vtroffreg, vtrofuser, vtrofhora, vtroffpro
FROM vtrof;
SELECT vtroutent, vtrouentg, vtroucart, vtrouumve, vtroufreg, vtrouuser, vtrouhora, vtroufpro
FROM vtrou;
SELECT vtrprcart, vtrprpunt, vtrprstat, vtrpruser, vtrprhora, vtrprfpro
FROM vtrpr;
SELECT vtrsanres, vtrsaseri, vtrsanaut, vtrsandoc, vtrsaftra, vtrsatipo, vtrsacage, vtrsafini, vtrsaffin, vtrsamrcb, vtrsauser, vtrsahora, vtrsafpro, vtrsaclas
FROM vtrsa;
SELECT vtrscnres, vtrscseri, vtrscnaut, vtrsccage
FROM vtrsc;
SELECT vtrsdnres, vtrsdseri, vtrsdnaut, vtrsditem, vtrsdcgru, vtrsdcsub, vtrsdccla, vtrsdcscl, vtrsdcart, vtrsdcant, vtrsdumeq, vtrsdmrcb
FROM vtrsd;
SELECT vtrsgnres, vtrsgseri, vtrsgnaut, vtrsgitem, vtrsgcgsc, vtrsgcant, vtrsgumeq, vtrsgmrcb
FROM vtrsg;
SELECT vtrstnres, vtrstseri, vtrstnaut, vtrsttipo, vtrstntra
FROM vtrst;
SELECT vtrtvntra, vtrtvnegt, vtrtvnigt
FROM vtrtv;
SELECT vtrvbnvta, vtrvbftra, vtrvbitem, vtrvbcage, vtrvbnboe, vtrvbcbon, vtrvbndid, vtrvbcorg, vtrvbnomb, vtrvbimpt, vtrvbcmon, vtrvbndit, vtrvbcort, vtrvbnomt
FROM vtrvb;
SELECT vtrvintra, vtrvintri, vtrvicart, vtrviitem, vtrviitei
FROM vtrvi;
SELECT vtrvmnvta, vtrvmitem, vtrvmnbon
FROM vtrvm;
SELECT *
FROM vtrvt;
SELECT *
FROM vtsco;
SELECT *
FROM vtsol;
SELECT *
FROM vtstm;
SELECT *
FROM vtstr;
SELECT *
FROM vttcn;
SELECT *
FROM vttct;
SELECT *
FROM vttic;
SELECT *
FROM vttno;
SELECT *
FROM vttpb;
SELECT *
FROM vttpc;
SELECT *
FROM vttpe;
SELECT *
FROM vttpp;
SELECT *
FROM vttre;
SELECT *
FROM vttrv;
SELECT *
FROM vtttr;
SELECT *
FROM vtuam;
SELECT *
FROM vtufl;
SELECT *
FROM vtusd;
SELECT *
FROM vtust;
SELECT *
FROM vtuta;
SELECT *
FROM vtvis;
SELECT *
FROM vw_gbpmt;
