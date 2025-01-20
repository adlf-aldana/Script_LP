SELECT rjcdenret, rjcdencta, rjcdenmod, rjcdecage, rjcdeeant, rjcdeuser, rjcdehora, rjcdefpro 
FROM rjcde WHERE rjcdenret = 2116;
SELECT rjcexncta, rjcexcorr, rjcexfreg, rjcexnmod, rjcextexc, rjcexcage, rjcexporc, rjcexglos, rjcexmrcb, rjcexfbaj, rjcexubaj, rjcexuser, rjcexhora, rjcexfpro 
FROM rjcex WHERE rjcexcage = 360885 ORDER BY rjcexfpro DESC ;
SELECT rjclinret, rjcliitem, rjclicage, rjclitdid, rjclindid, rjclicomp, rjclinruc, rjclinomb, rjclistat, rjcliuser, rjclihora, rjclifpro 
FROM rjcli WHERE rjclinret = 2116 ORDER BY rjclifpro DESC;
-- CONCEPTOS
SELECT rjconpref, rjconcorr, rjcondesc, rjconabre, rjconmmod, rjconmrcb 
FROM rjcon ORDER BY 1,2;
SELECT rjctlpref, rjctlcorr, rjctlsano, rjctlmodr FROM rjctl;
--SELECT rjdevtarc, rjdevnarc, rjdevfcir, rjdevcirc, rjdevpate, rjdevmate, rjdevnomb, rjdevnemp, rjdevndoc, rjdevexte, rjdevtdoc, rjdevboli, rjdevufvs, rjdevusrn FROM rjdev;
SELECT rjdpfndep, rjdpfcmon, rjdpfitot, rjdpfcant, rjdpfiret, rjdpfsald, rjdpfmrcb FROM rjdpf;
SELECT rjdrentra, rjdreitem, rjdreftra, rjdrenret, rjdrecmon, rjdrecmoc, rjdrencta, rjdreimpt, rjdreimpo, rjdremrcb, rjdreplaz, rjdreagen, rjdretitu, rjdreuser, rjdrehora, rjdrefpro, rjdremodn 
FROM rjdre
WHERE rjdrenret = 2116;
-- TRANS. ORDER DE RETENCION
SELECT rjdtrntra, rjdtritem, rjdtrftra, rjdtrttrn, rjdtrnret, rjdtrcmon, rjdtrimpt, rjdtrmodn, rjdtrncta, rjdtrsact, rjdtrtorg, rjdtrcmoc, rjdtrtcam, rjdtrimpo, rjdtrmrcb, rjdtrplaz, rjdtragen, rjdtrtitu, rjdtruser, rjdtrhora, rjdtrfpro 
FROM rjdtr WHERE rjdtrnret = 2116;
SELECT rjfarform, rjfardesc, rjfarnarc, rjfaruser, rjfarhora, rjfarfpro FROM rjfar;
SELECT rjfrenret, rjfrencta, rjfrefini, rjfreffin, rjfreimpt, rjfredcom, rjfrestat, rjfrefofi, rjfrefoff, rjrprfech, rjrprhora 
FROM rjfre WHERE rjfrenret = 2116;
SELECT rjhcacite, rjhcafech, rjhcadest, rjhcadir1, rjhcadir2, rjhcacusu, rjhcamrcb, rjcaftra FROM rjhca;
SELECT rjhdpndep, rjhdpftra, rjhdpnret, rjhdpcmon, rjhdpiret, rjhdpcmoc, rjhdpirec, rjhdpirem, rjhdpesta, rjhdpagen, rjhdptope, rjhdpstat, rjhdpnde2, rjhdpmrcb FROM rjhdp;
SELECT rjhisnarc, rjhisndid, rjhisnomb, rjhisnret, rjhisntra, rjhisgrup, rjhisuser, rjhisfech, rjhishora, rjhiscite, rjhiscage, rjhistarc, rjhistope FROM rjhis;
SELECT rjhtrntra, rjhtrftra, rjhtrttrn, rjhtrtret, rjhtrnret, rjhtritot, rjhtrcmon, rjhtrimpt, rjhtricom, rjhtrcmoc, rjhtrmodn, rjhtrncta, rjhtrtorg, rjhtrtcam, rjhtrimpo, rjhtrglos, rjhtrcvia, rjhtrnvia, rjhtrndoc, rjhtrmpag, rjhtrmrcb, rjhtrubaj, rjhtrhbaj, rjhtrfbaj, rjhtrstat, rjhtrplaz, rjhtragen, rjhtruser, rjhtrhora, rjhtrfpro, rjhtrcirc 
FROM rjhtr WHERE rjhtrnret = 2116;
-- MAESTRO DE RETENCIONES
SELECT rjmrjnret, rjmrjftra, rjmrjtret, rjmrjalcr, rjmrjcmon, rjmrjfdev, rjmrjiare, rjmrjiret, rjmrjsret, rjmrjidev, rjmrjmrem, rjmrjntra, rjmrjcite, rjmrjcirc, rjmrjfdoc, rjmrjofic, rjmrjexpe, rjmrjfexp, rjmrjproc, rjmrjdman, rjmrjjuez, rjmrjtaut, rjmrjjuzg, rjmrjdire, rjmrjstat, rjmrjdret, rjmrjddev, rjmrjdtau, rjmrjaine, rjmrjtper, rjmrjprcc, rjmrjprca, rjmrjmrcb, rjmrjubaj, rjmrjhbaj, rjmrjfbaj, rjmrjplaz, rjmrjagen, rjmrjuser, rjmrjhora, rjmrjfpro, rjmrjtide, rjmrjpiet, rjmrjsusp 
FROM rjmrj WHERE rjmrjnret = 2116;
SELECT rjpoimodn, rjpoicmon, rjpoipinj, rjpoipinn FROM rjpoi;
SELECT rjrprnret, rjrprnmod, rjrprncta, rjrprntra, rjrprcage, rjrprtope, rjrprfech, rjrprhora 
FROM rjrpr WHERE rjrprnret = 2116;
SELECT rjsrltabl, rjsrlcorr FROM rjsrl;
SELECT rjtatnarh, rjtatline FROM rjtat;
SELECT rjtretret, rjtredesc, rjtremrcb, rjtreuser, rjtrehora, rjtrefpro FROM rjtre;
SELECT rjtrmtret, rjtrmcmon, rjtrmcret, rjtrmaret, rjtrmctfa, rjtrmatfa, rjtrmpcpn, rjtrmpcpj, rjtrmpapn, rjtrmpapj, rjtrmaine, rjtrmpine, rjtrmicre, rjtrmicde, rjtrmtmrc, rjtrmtmra, rjtrmtmdc, rjtrmtmda, rjtrmtmfc, rjtrmtmfa, rjtrmmrcb, rjtrmuser, rjtrmhora, rjtrmfpro, rjtrmtdpf FROM rjtrm;
SELECT rjviacvia, rjviacmon, rjviadesc, rjviactbl, rjviaadic, rjviauser, rjviahora, rjviafpro, rjvianmod FROM rjvia;