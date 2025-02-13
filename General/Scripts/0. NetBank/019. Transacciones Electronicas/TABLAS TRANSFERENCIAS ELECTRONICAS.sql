SELECT teachcomd, teachtxmd, teachttra 
FROM teach;

SELECT tecesnces, tecesntra, tecesttra, tecesform, teceseant, tecesfant, teceshant, teceseact, tecesfact, teceshact, tecesdesc, tecesuser, teceshora, tecesfpro 
FROM teces
WHERE tecesntra = 381314;

SELECT tecghncgh, tecghntra, tecghftra, tecghcvia, tecghnvia, tecghimpt, tecghcmon, tecghcbio, tecghimpo, tecghmvia, tecghmpag, tecghttra, tecghcpto, tecghglos, tecghmdes, tecghtdes, tecghfpag, tecghhpag, tecghstat, tecghmrcb, tecghplaz, tecghagen, tecghuser, tecghhora, tecghfpro 
FROM tecgh;

SELECT tecgpccgo, tecgpcomd, tecgpdesc, tecgptipo, tecgpcmon, tecgpfapl, tecgprang, tecgpmont, tecgpimpm, tecgpcomm, tecgpcfis, tecgpttra, tecgpmrcb, tecgpurcb, tecgphrcb, tecgpfrcb, tecgpuser, tecgphora, tecgpfpro, tecgpprod, tecgpcnta, tecgptcon 
FROM tecgp
ORDER BY tecgpfpro DESC ;

SELECT tecgtntra, tecgtccgo, tecgtcmon, tecgtimpt, tecgtcbio, tecgtfreg, tecgtcfis, tecgtmrcb, tecgtuser, tecgthora, tecgtfpro, tecgtncgh 
FROM tecgt
WHERE TECGTNTRA = 379261
ORDER BY tecgtfpro DESC;

SELECT tecomccgo, tecomcorr, tecomrani, tecomranf, tecomporc, tecomtipo FROM tecom;

SELECT teconcomd, teconpref, teconcorr, tecondesc, teconabre, teconmmod, teconmrcb FROM tecon;
SELECT tectlcbco, tectlcpre, tectlccor, tectlctbl FROM tectl;
SELECT tefacntra, tefacnomb, tefacnruc, tefaccmon, tefacimpt, tefacmrcb, tefacuser, tefachora, tefacfpro FROM tefac;
SELECT telognlog, telogfreg, telogtmsj, telogimsj, telogstat, teloguser, telogplaz, telogagen, teloghora, telogfpro, telogmsje FROM telog;
SELECT temdrcomd, temdrnomd, temdrdemd, temdrabmd, temdrcomp, temdrcage, temdrceif, temdrpaio, temdrdiip, temdrpuer, temdrmdef, temdrmrcb, temdruser, temdrhora, temdrfpro, temdrdpre, temdrdcor, temdrapre, temdracor FROM temdr;
SELECT temdscsmd, temdscomd, temdsnucx, temdscrsm, temdstsev, temdsmodn, temdsncta, temdsceif, temdsctef, temdsctne, temdsuser, temdshora, temdsfpro FROM temds;
SELECT catrnntra, catrnftra, catrnncta, catrnndoc, catrnmorg, catrntorg, catrnpref, catrncorr, catrnimpo, catrnimpt, catrncbio, catrncmon, catrnglos, catrnstat, catrnplaz, catrnagen, catrnuser, catrnhora, catrnfpro FROM temporal;
SELECT camcancta, camcacage, camcatpca, camcacmon, camcamane, camcariva, camcatasa, camcainst, camcafapt, camcasant, camcasact, camcadncf, camcafpig, camcafumv, camcastat, camcafcbl, camcasdia, camcaacum, camcaacan, camcaplaz, camcaagen, camcauser, camcahora, camcafpro, camcastus, camcattas, camcatcap, camcafcap, camcaiacu, camcaidia FROM temporal2;
SELECT tesoknoip, tesokport FROM tesok;
SELECT tesrltabl, tesrlcorr FROM tesrl;
SELECT tetrnntra, tetrnftra, tetrnttra, tetrnstat, tetrnfsta, tetrnhsta, tetrncomd, tetrnabmd, tetrncsmd, tetrntxmd, tetrnncmd, tetrnsimd, tetrnceif, tetrnabif, tetrnntro, tetrnpaio, tetrnciuo, tetrnctef, tetrnctne, tetrnromd, tetrnnccn, tetrncenx, tetrntctx, tetrnnctx, tetrnnomx, tetrntdix, tetrnndix, tetrnntrx, tetrnttrx, tetrnpaix, tetrnciux, tetrnidcl, tetrnndid, tetrncage, tetrntdid, tetrnnomb, tetrncmon, tetrnimpt, tetrnofon, tetrndfon, tetrnglos, tetrncana, tetrncvia, tetrnnvia, tetrncusr, tetrntorg, tetrntdes, tetrnmvia, tetrntcam, tetrnimpo, tetrntcai, tetrntcae, tetrnnpig, tetrnerro, tetrnmrcb, tetrnplaz, tetrnagen, tetrnuser, tetrnhora, tetrnfpro, tetrnuaut, tetrnicpt, tetrnicpo, tetrnipre, tetrnicor, tetrncpre, tetrnccor, tetrnabmx, tetrncamo, tetrncamx, tetrncser, tetrntach, tetrnidqr FROM tetrn;
SELECT teviacvia, teviacmon, teviacctb, teviaadic, teviauser, teviahora, teviafpro FROM tevia;
