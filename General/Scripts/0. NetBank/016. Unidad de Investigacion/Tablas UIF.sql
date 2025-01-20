SELECT uiagendid, uiagecage, uiagetdid, uiagenomb, uiagefnac, uiagelnac, uiageeciv, uiageciiu, uiageprof, uiagedird, uiagetelf, uiageidcl, uiageplaa, uiageagea, uiagecref, uiagerseg, uiageltra, uiagettra, uiagedtra, uiagectra, uiagenruc, uiagecate, uiagenaci, uiagetper, uiagerefe, uiagenomc, uiagedact, uiagening, uiagefint, uiagenom1, uiageape1, uiageape2, uiagepais, uiageciud, uiagezona, uiagestat, uiagefest, uiagecore, uiageocco, uiagefreg, uiagecasa 
FROM uiage WHERE uiagendid LIKE '%3765310%';
SELECT uiagendid, uiagecage, uiagetdid, uiagenomb, uiagefnac, uiagelnac, uiageeciv, uiageciiu, uiageprof, uiagedird, uiagetelf, uiageidcl, uiageplaa, uiageagea, uiagecref, uiagerseg, uiageltra, uiagettra, uiagedtra, uiagectra, uiagenruc, uiagecate, uiagenaci, uiagetper, uiagerefe, uiagenomc, uiagedact, uiagening, uiagefint, uiagenom1, uiageape1, uiageape2, uiageusrl, uiagedate, uiageevto 
FROM uiage_h;
SELECT uiagnagen, uiagnfech, uiagndesc, uiagndire, uiagnplaz, uiagnluga, uiagncsup FROM uiagn;
SELECT uicfrnaut, uicfrfaut, uicfrcage, uicfrciiu, uicfrstat, uicfrfini, uicfrfvto, uicfruaut, uicfrplaz, uicfragen, uicfruser, uicfrhora, uicfrfpro FROM uicfr;
SELECT uiconpref, uiconcorr, uicondesc, uiconabre FROM uicon;
SELECT uicorncor, uicorctbl, uicorntbl FROM uicor;
SELECT uictldpos, uictldneg, uictlltri, uictlfula, uictlppit, uictlctru, uictlitru, uictlpnii, uictlnper, uictlnfor, uictlnusr, uictlpmsm, uictlpcan, uictlcove, uictlmccr, uictlfccr, uictlpctc, uictlcofd, uictlmmpc, uictltcpm, uictlmpit FROM uictl;
SELECT uicusndid, uicusapel, uicusnomb, uicusnaci, uicusnruc, uicuseciv, uicusnpst, uicusprof, uicusddo1, uicusddo2, uicusdtr1, uicusdtr2, uicustlfd, uicustlfo, uicuscarg, uicusnemp, uicusrefe, uicusplaz, uicusagen, uicususer, uicushora, uicusfpro FROM uicus;
SELECT uidaccage, uidacmail, uidacuser, uidacfpro, uidachora FROM uidac;
SELECT uidecndec, uidecfdec, uidecndid, uidectcli, uideccage, uidecmorg, uidectorg, uidecnopr, uideccmon, uidecimpt, uidecttrn, uidecmoti, uidecplaz, uidecagen, uidecuser, uidechora, uidecfpro FROM uidec;
SELECT uidpanfor, uidpatper, uidpanomb, uidpanom1, uidpaape1, uidpaape2, uidpandid, uidpanruc, uidpacate, uidpadact, uidpauser, uidpahora, uidpafpro, uidpaeciv, uidpadire, uidpazona, uidpatele, uidpacasa, uidpaciud, uidpacoel, uidpaocco, uidpancoy 
FROM uidpa ORDER BY uidpafpro DESC;
SELECT uidpenfor, uidpetper, uidpenomb, uidpenom1, uidpeape1, uidpeape2, uidpendid, uidpenruc, uidpecate, uidpedact, uidpeuser, uidpehora, uidpefpro, uidpeeciv, uidpedire, uidpezona, uidpetele, uidpecasa, uidpeciud, uidpecoel, uidpeocco, uidpencoy 
FROM uidpe oledbprivtypes ORDER BY uidpefpro DESC;--510023
SELECT uicfrnaut, uifaundid, apellidos, nombres FROM uifau;
SELECT uifdcnfor, uifdcitem, uifdcmorg, uifdcnopr, uifdccmon, uifdcplaz, uifdcagen, uifdcmrcb, uifdcumrc, uifdchmrc, uifdcfmrc, uifdcuser, uifdchora, uifdcfpro, uifdccage FROM uifdc;
SELECT uifdfnfor, uifdfmorg, uifdfnopr, uifdfndid FROM uifdf;
SELECT uifdonfor, uifdofini, uifdoglo1, uifdoglo2, uifdomaut, uifdouaut, uifdofaut, uifdohaut, uifdomrcb, uifdouser, uifdohora, uifdofpro, uifdotfom, uifdocage, uifdomorg, uifdonopr, uifdomrev, uifdourev, uifdofrev, uifdohrev, uifdonomb, uifdofnac, uifdonnit, uifdomatr, uifdodire, uifdotlfo, uifdodact, uifdotipo, uifdoplaz, uifdoagen, uifdofcli, uifdoorig, uifdodest, uifdomotv, uifdofvto, uifdofvan FROM uifdo;
SELECT uifdpnfor, uifdpitem, uifdpmorg, uifdpnopr, uifdpcage, uifdpnomb, uifdpnom1, uifdpape1, uifdpape2, uifdptdid, uifdpndid, uifdptres, uifdpcarg, uifdpprof, uifdpmrcb, uifdpumrc, uifdphmrc, uifdpfmrc, uifdpuser, uifdphora, uifdpfpro, uifdpcere FROM uifdp;
SELECT uifdrnfor, uifdritem, uifdrcage, uifdrmorg, uifdrnopr, uifdrtdid, uifdrndid, uifdrtres, uifdrmrcb, uifdruser, uifdrhora, uifdrfpro FROM uifdr;
SELECT uifdunfor, uifducage, uifduplaz FROM uifdu;
SELECT uifo8nfor, uifo8paio, uifo8paid, uifo8nomb, uifo8ape1, uifo8ape2, uifo8nruc, uifo8ciud, uifo8zona, uifo8dire, uifo8telf FROM uifo8;
SELECT uifopseri, uifopnfor, uifopntra, uifopmorg, uifopnopr, uifopncaj, uifopfreg, uifopmtra, uifopplaz, uifopagen, uifopuser, uifopimpt, uifoppref, uifopcorr, uifopdesc, uifopimpo, uifopcmon, uifopcbio, uifophora, uifopfpro, uifopmrcb, uifopumrc, uifophmrc, uifopfmrc, uifopumod, uifophmod, uifopfmod, uifopcimp, uifopfuli, uifophuli, uifopidcl, uifopndid, uifopcage, uifoptdid, uifopnomb, uifopfnac, uifoplnac, uifopeciv, uifopciiu, uifopprof, uifopdird, uifoptelf, uifoprseg, uifopltra, uifopttra, uifopdtra, uifopctra, uifopnruc, uifopcate, uifopnaci, uifoptper, uifoprefp, uifopdact, uifopmdes, uifopopde, uifopnomc, uifopning, uifopfint, uifopnom1, uifopape1, uifopape2, uifopdetr, uifoptidp, uifopedid, uifopcpos, uifopcprv, uifopdpto, uifoppais, uifoppair, uifopciud, uifopzona 
FROM uifop WHERE uifopndid LIKE '%3765310%' ORDER BY uifopfpro DESC;

SELECT uifounfor, uifountra, uifoumorg, uifounopr, uifouncaj, uifoufreg, uifoumtra, uifouplaz, uifouagen, uifouuser, uifouimpt, uifoupref, uifoucorr, uifoudesc, uifouimpo, uifoucmon, uifoucbio, uifouhora, uifoufpro, uifoumrcb, uifouumrc, uifouhmrc, uifoufmrc, uifouumod, uifouhmod, uifoufmod, uifoucimp, uifoufuli, uifouhuli, uifouidcl, uifoundid, uifoucage, uifoutdid, uifounomb, uifoufnac, uifoulnac, uifoueciv, uifouciiu, uifouprof, uifoudird, uifoutelf, uifourseg, uifoultra, uifouttra, uifoudtra, uifouctra, uifounruc, uifoucate, uifounaci, uifoutper, uifourefp, uifoudact, uifoumdes, uifouopde, uifounomc, uifouning, uifoufint, uifounom1, uifouape1, uifouape2, uifoudetr, uifoupais, uifouciud, uifouzona
FROM uifou ORDER BY uifoufpro DESC  WHERE uifountra = 27231752;

SELECT uifpenfor, uifpeitem, uifpetidp, uifpeidcl, uifpecage, uifpeape1, uifpeape2, uifpenom1, uifpenomb, uifpetdid, uifpendid, uifpeedid, uifpefnac, uifpenaci, uifpeprof, uifpedact, uifpedird, uifpecpos, uifpecprv, uifpedpto, uifpepais, uifpetelf 
FROM uifpe WHERE uifpendid LIKE '%3765310%';
SELECT uiftrnaut, uiftrttrn, uiftrmont, uiftrcntr FROM uiftr;
SELECT uihimnfor, uihimfreg, uihimplaz, uihimagen, uihimuser, uihimhora, uihimfpro FROM uihim;
SELECT uihtrfreg, uihtridcl, uihtrcage, uihtrtdid, uihtrndid, uihtrnomb, uihtrmorg, uihtrnopr, uihtrntra, uihtrncaj, uihtrpref, uihtrcorr, uihtrdesc, uihtrcmon, uihtrimpo, uihtrcbio, uihtrimpt, uihtrnfor, uihtrmrcb, uihtrplaz, uihtragen, uihtruser, uihtrhora, uihtrfpro, uihtrumrc, uihtrhmrc, uihtrfmrc FROM uihtr;
SELECT uiidenfor, uiidendid, uiidenomb, uiidedird, uiidetelf FROM uiide;
SELECT uilngcpri, uilngtlis, uilngcfte, uilngtper, uilngapat, uilngamat, uilngnomb, uilngnomc, uilngfnac, uilngndid, uilnglndi, uilngnnit, uilngcnac, uilngnaci, uilngcpna, uilngpnac, uilngcarg, uilngdesc, uilngdweb, uilnglnkf, uilngusef, uilnghorf, uilngfprf, uilngmrcb, uilnguser, uilnghora, uilngfpro FROM uilng;
SELECT uimcvncer, uimcvntra, uimcvfreg, uimcvftra, uimcvcage, uimcvtdid, uimcvndid, uimcvnruc, uimcvnomb, uimcvmorg, uimcvnct1, uimcvnct2, uimcvndoc, uimcvcmon, uimcvimpo, uimcvttrn, uimcvotro, uimcvtcom, uimcvnfac, uimcvimpf, uimcvlpag, uimcvdfon, uimcvmrcb, uimcvplaz, uimcvagen, uimcvuser, uimcvhora, uimcvfpro, uimcvumrc, uimcvhmrc, uimcvfmrc FROM uimcv;
SELECT uisrltabl, uisrlcorr FROM uisrl;
SELECT uitexnmod, uitexpref, uitexcorr, uitexdesc, uitexuser, uitexhora, uitexfpro FROM uitex ORDER BY 1,2,3;
SELECT uitmvpref, uitmvcorr, uitmvdesc, uitmvctbl, uitmvadic FROM uitmv;
SELECT uitrefreg, uitrecage, uitrecagp, uitretdid, uitrendid, uitrenomb, uitremorg, uitrenopr, uitrentra, uitrencaj, uitredesc, uitrecmon, uitreimpo, uitrecbio, uitreimpt, uitrenfor, uitremrcb, uitreplaz, uitreagen, uitreuser, uitrehora, uitrefpro, uitreumrc, uitrehmrc, uitrefmrc FROM uitre;
SELECT uitrpfreg, uitrpidcl, uitrpcage, uitrptdid, uitrpndid, uitrpnomb, uitrpmorg, uitrpnopr, uitrpntra, uitrpncaj, uitrppref, uitrpcorr, uitrpdesc, uitrpcmon, uitrpimpo, uitrpcbio, uitrpimpt, uitrpnfor, uitrpmrcb, uitrpplaz, uitrpagen, uitrpuser, uitrphora, uitrpfpro, uitrpumrc, uitrphmrc, uitrpfmrc, uitrpotra, uitrpdtra 
FROM uitrp ORDER BY uitrpfpro DESC;
SELECT uitusndid, uitusntra, uitusmorg, uitusnopr, uitusncaj, uitusfreg, uitusplaz, uitusagen, uitususer, uitusidcl 
FROM uitus;
SELECT utdctantar, utdctancta, utdctacorr FROM utdcta;
SELECT utdmaentar, utdmaetbin, utdmaetipo, utdmaecage, utdmaenomb, utdmaefini, utdmaenano, utdmaeffin, utdmaecren, utdmaefreg, utdmaestat, utdmaetita, utdmaemmax, utdmaemdia, utdmaectrn, utdmaetrnd, utdmaempox, utdmaempod, utdmaecpon, utdmaetpod, utdmaetart, utdmaectar, utdmaeenvi, utdmaeagen, utdmaefpro, utdmaehora, utdmaeuser FROM utdmae;