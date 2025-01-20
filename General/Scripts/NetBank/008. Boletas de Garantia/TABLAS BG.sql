SELECT bgahdfech, bgahdagen, bgahdclas, bgahdstat, bgahdndoi, bgahdndof, bgahddesc, bgahdndoc, bgahdplaz, bgahduser, bgahdhora, bgahdfpro
FROM bgahd;

SELECT bgaicnbol, bgaicclas, bgaicndoc, bgaicreve, bgaicglos, bgaicuser, bgaichora, bgaicfpro 
FROM bgaic;

SELECT bgbannbol, bgbancban, bgbanglos 
FROM bgban;

SELECT gbcocciud, gbcoccomu, gbcocdesc 
FROM bgbcoc;

SELECT bgcctccrg, bgcctdesc, bgccttpcg, bgcctdias, bgcctttrn, bgcctfapl, bgcctbapl, bgcctfcob, bgcctcmon, bgcctmont, bgcctcctb, bgcctadic, bgcctmiva 
FROM bgcct;

SELECT bgcctccrg, bgcctdesc, bgccttpcg, bgcctdias, bgcctttrn, bgcctfapl, bgcctbapl, bgcctfcob, bgcctcmon, bgcctmont, bgcctcctb, bgcctadic, bgcctmiva, bgcctfpro, bgcctusrl, bgcctdate, bgcctevto 
FROM bgcct_h;

SELECT bgcesnbol, bgcesfech, bgcesglo1, bgcesesan, bgcesesac, bgcesuser, bgceshora, bgcesfpro 
FROM bgces;

SELECT bgcgbnbol, bgcgbccgo, bgcgbcmon, bgcgbimpo, bgcgbcbio, bgcgbfreg, bgcgbvcob, bgcgbmrcb, bgcgbuser, bgcgbhora, bgcgbfpro 
FROM bgcgb;

SELECT bgcgcncre, bgcgcccrg, bgcgcmont, bgcgcmrcb, bgcgcntra, bgcgcuser, bgcgchora, bgcgcfpro 
FROM bgcgc;

SELECT bgcgpccgo, bgcgpdesc, bgcgptipo, bgcgpcmon, bgcgpctbl, bgcgpadic, bgcgpfapl, bgcgprang, bgcgpmont, bgcgpimpm, bgcgpcomm, bgcgpcfis, bgcgpuser, bgcgphora, bgcgpfpro 
FROM bgcgp;

-- CARGOS Y COMISIONES
SELECT bgcgpccgo, bgcgpdesc, bgcgptipo, bgcgpcmon, bgcgpctbl, bgcgpadic, bgcgpfapl, bgcgprang, bgcgpmont, bgcgpimpm, bgcgpcomm, bgcgpcfis, bgcgpuser, bgcgpfpro, bgcgpusrl, bgcgpdate, bgcgpevto 
FROM bgcgp_h;

SELECT gbcocciud, gbcoccomu, gbcocdesc 
FROM bgcoc;

SELECT bgcomccgo, bgcomcorr, bgcomrani, bgcomranf, bgcomporc, bgcomuser, bgcomhora, bgcomfpro 
FROM bgcom;

SELECT bgcomccgo, bgcomcorr, bgcomrani, bgcomranf, bgcomporc, bgcomuser, bgcomfpro, bgcomusrl, bgcomdate, bgcomevto 
FROM bgcom_h;

SELECT bgconpfij, bgconcorr, bgcondesc, bgconabre 
FROM bgcon;

SELECT bgctlndoc, bgctltasb, bgctltasd, bgctltano, bgctlptcj, bgctlptvr, bgctlptch, bgctlcdfc, bgctlcpvg, bgctlcpvn, bgctlcpv2, bgctlcpej, bgctlpdvg, bgctlpdvn, bgctlpdv2, bgctlpdej, bgctlipvg, bgctlipvn, bgctlipv2, bgctlipej, bgctlsdvn, bgctlsdv2, bgctlsdej, bgctlsavn, bgctlsav2, bgctlsaej, bgctlnmes, bgctldeje, bgctlfulp, bgctladic, bgctlfcie, bgctlpeja, bgctlkcca, bgctlpccg, bgctlkcad, bgctlkcaa, bgctlkrec, bgctliccg, bgctlorec 
FROM bgctl;

SELECT bgcttnbol, bgcttentb, bgcttcuce, bgcttobco 
FROM bgctt;

SELECT bgdesnbol, bgdesddes, bgdesplaz, bgdesagen, bgdesuser, bgdeshora, bgdesfpro 
FROM bgdes;

SELECT bgdlfnbol, bgdlfcage, bgdlftres 
FROM bgdeudor;

SELECT bgdlfnbol, bgdlfcage, bgdlftres, bgdlfuser, bgdlfhora, bgdlffpro 
FROM bgdlf;-- WHERE bgdlfnbol = 126;

SELECT bgdlfnbol, bgdlfcage, bgdlftres, bgdlfuser, bgdlfhora, bgdlffpro 
FROM bgdlf;-- WHERE bgdlfnbol = 127;

SELECT bgdocagen, bgdocclas, bgdocndoc, bgdocfemi, bgdocstat, bgdocfsta, bgdocplaz, bgdocuser, bgdochora, bgdocfpro, bgdocmrcb, bgdocreve, bgdocnbol
FROM bgdoc;-- WHERE bgdocnbol = 126;

SELECT bgdocagen, bgdocclas, bgdocndoc, bgdocfemi, bgdocstat, bgdocfsta, bgdocplaz, bgdocuser, bgdochora, bgdocfpro, bgdocmrcb, bgdocreve, bgdocnbol
FROM bgdoc;-- WHERE bgdocnbol = 127;

SELECT bgdtrntra, bgdtrnbol, bgdtrftra, bgdtrttra, bgdtrpref, bgdtrcorr, bgdtrimpt, bgdtrcmon, bgdtrtcam, bgdtrmrcb, bgdtrdesc, bgdtrplaz, bgdtragen, bgdtruser, bgdtrhora, bgdtrfpro
FROM bgdtr;-- WHERE bgdtrnbol = 126;
SELECT bgdtrntra, bgdtrnbol, bgdtrftra, bgdtrttra, bgdtrpref, bgdtrcorr, bgdtrimpt, bgdtrcmon, bgdtrtcam, bgdtrmrcb, bgdtrdesc, bgdtrplaz, bgdtragen, bgdtruser, bgdtrhora, bgdtrfpro
FROM bgdtr;-- WHERE bgdtrnbol = 127;

SELECT bgglfnbol, bgglfcorr, bgglftgar, bgglfngar, bgglfndoc, bgglffreg, bgglfmont, bgglfcmon, bgglfgrav, bgglfgfin, bgglffvto, bgglfnpar, bgglffpar, bgglfnhip, bgglffhip, bgglfdesc, bgglfsufl 
FROM bggaran;

SELECT bghtcnbol, bghtcfreg, bghtctban, bghtctbac, bghtcuser, bghtchora, bghtcfpro, bghtctipo
FROM bghtc;

SELECT bghtrntra, bghtrnbol, bghtrftra, bghtrttra, bghtrndoc, bghtrcvia, bghtrnvia, bghtrcodb, bghtrccta, bghtrimpt, bghtrcmon, bghtrimpv, bghtrmvia, bghtrtcam, bghtrtdes, bghtrglos, bghtrreve, bghtrurev, bghtrmpag, bghtrmrcb, bghtrplaz, bghtragen, bghtruser, bghtrhora, bghtrfpro
FROM bghtr;-- WHERE bghtrnbol = 126;

SELECT bghtrntra, bghtrnbol, bghtrftra, bghtrttra, bghtrndoc, bghtrcvia, bghtrnvia, bghtrcodb, bghtrccta, bghtrimpt, bghtrcmon, bghtrimpv, bghtrmvia, bghtrtcam, bghtrtdes, bghtrglos, bghtrreve, bghtrurev, bghtrmpag, bghtrmrcb, bghtrplaz, bghtragen, bghtruser, bghtrhora, bghtrfpro
FROM bghtr;-- WHERE bghtrnbol = 127;

SELECT bgmbgnbol, bgmbgtpbg, bgmbgcmon, bgmbgimpo, bgmbgplzo, bgmbgmcga, bgmbglfin, bgmbgcage, bgmbgbene, bgmbgdes1, bgmbgdes2, bgmbgdes3, bgmbgdes4, bgmbgdes5, bgmbgcaut, bgmbgrseg, bgmbgndoc, bgmbgfemi, bgmbgfvto, bgmbgvcob, bgmbgcdes, bgmbgntde, bgmbgbgan, bgmbgmcob, bgmbgfanu, bgmbgreve, bgmbgfare, bgmbgmrcb, bgmbgstat, bgmbgfsta, bgmbgplaz, bgmbgagen, bgmbguser, bgmbghora, bgmbgfpro, bgmbgfcal, bgmbgcclf, bgmbgcpac, bgmbgprep, bgmbgipre, bgmbgmcla, bgmbgtrna, bgmbgdest, bgmbgddes, bgmbgclas, bgmbgfamo, bgmbgnboa, bgmbgnomb, bgmbgnomc, bgmbgtrnp, bgmbgtrdv, bgmbgmdev 
FROM bgmbg;-- WHERE bgmbgnbol=126;

SELECT bgmcrncre, bgmcrcage, bgmcrndoc, bgmcrlcre, bgmcrcaut, bgmcrrseg, bgmcrciiu, bgmcrcmon, bgmcrmapt, bgmcrplzo, bgmcrstat, bgmcrfsta, bgmcrstan, bgmcrfvca, bgmcrfvco, bgmcrfpvc, bgmcrfreg, bgmcrsald, bgmcrfpde, bgmcrmrcb, bgmcrplaz, bgmcragen, bgmcruser, bgmcrhora, bgmcrfpro, bgmcrfcal, bgmcrcclf, bgmcrcpac, bgmcrdest, bgmcrddes 
FROM bgmcr;

SELECT bgnbgclas, bgnbgnser, bgnbgcorr 
FROM bgnbg;

SELECT bgncentra, bgnceftra, bgnceagen, bgnceclas, bgncendoi, bgncendof, bgncemrcb, bgncefmrc, bgnceplaz, bgnceuser, bgncehora, bgncefpro 
FROM bgnce;

SELECT bgpglclas, bgpgltipo, bgpglpara, bgpgldesc, bgpglmrcb, bgpgluser, bgpglhora, bgpglfpro 
FROM bgpgl;

SELECT bgpgnclas, bgpgnpar1, bgpgnpar2 
FROM bgpgn;

SELECT bgpgppara, bgpgpdesc 
FROM bgpgp;

SELECT bgpjdnbol, bgpjdndoc, bgpjdimpo, bgpjdcage, bgpjdfreg, bgpjduser, bgpjdhora, bgpjdfpro, bgpjdclas, bgpjdglos 
FROM bgpjd;

SELECT bgrpgnbol, bgrpgfrpg, bgrpgnomb, bgrpgndid, bgrpgnruc, bgrpgfono, bgrpgdes1, bgrpgdes2, bgrpgdes3, bgrpgdes4, bgrpguser, bgrpghora, bgrpgfpro 
FROM bgrpg;

SELECT bgtcnftra, bgtcnndoc, bgtcnitem, bgtcnpref, bgtcncorr, bgtcndesc, bgtcncctb, bgtcnadic, bgtcnimpi, bgtcnimpc, bgtcncbio, bgtcnpost, bgtcnnbol, bgtcncage, bgtcnncre, bgtcnttrn, bgtcnplaz, bgtcnagen, bgtcnuser, bgtcnhora, bgtcnfpro
FROM bgtcn;-- WHERE bgtcnnbol = 127;

SELECT bgtdtntra, bgtdtftra, bgtdtncre, bgtdtttrn, bgtdtpref, bgtdtcorr, bgtdtdesc, bgtdtcmon, bgtdtimpp, bgtdtmrcb, bgtdtuser, bgtdthora, bgtdtfpro 
FROM bgtdt;

SELECT bgthdntra, bgthdncre, bgthdftra, bgthdttrn, bgthdcvia, bgthdcbco, bgthdctab, bgthdndoc, bgthdncja, bgthdncta, bgthdcmon, bgthdcbio, bgthdimpt, bgthdntde, bgthdfreg, bgthdglo1, bgthdglo2, bgthdglo3, bgthdmrcb, bgthdmpag, bgthdplaz, bgthdagen, bgthduser, bgthdhora, bgthdfpro 
FROM bgthd;

--TIPO DE BOLETA
SELECT bgtpbtpbg, bgtpbdesc, bgtpbcdcg, bgtpbadcg, bgtpbcacg, bgtpbaacg, bgtpbcdsg, bgtpbadsg, bgtpbcasg, bgtpbaasg, bgtpbcppg, bgtpbappg, bgtpbclas
FROM bgtpb;

SELECT bgtpmtpbg, bgtpmcmon, bgtpmcdcg, bgtpmadcg, bgtpmcacg, bgtpmaacg, bgtpmcdsg, bgtpmadsg, bgtpmcasg, bgtpmaasg, bgtpmcppg, bgtpmappg 
FROM bgtpm;

SELECT bgtsancre, bgtsafvig, bgtsatasa, bgtsauser, bgtsahora, bgtsafpro 
FROM bgtsa;

SELECT bgtskcodi, bgtsktabl, bgtskcp01, bgtskcp02, bgtskcp03, bgtskcp04, bgtskcp05, bgtskcp06, bgtskcp07, bgtskcp08, bgtskcp09, bgtskcp10, bgtskcp11, bgtskcp12, bgtskcp13, bgtskcp14, bgtskcp15, bgtskcp16, bgtskcp17, bgtskcp18, bgtskcp19, bgtskcp20, bgtskcp21, bgtskcp22, bgtskcp23, bgtskcp24, bgtskcp25 
FROM bgtsk;

SELECT bgviacvia, bgviadesc, bgviacctb, bgviaadic, bgviaplaz, bgviaagen, bgviauser, bgviahora, bgviafpro 
FROM bgvia;