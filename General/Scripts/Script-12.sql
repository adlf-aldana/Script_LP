SELECT teachcomd, teachtxmd, teachttra
FROM tbase:informix.teach
WHERE teachtxmd = '14262502032308628949';

SELECT tecesnces, tecesntra, tecesttra, tecesform, teceseant, tecesfant, teceshant, teceseact, tecesfact, teceshact, tecesdesc, tecesuser, teceshora, tecesfpro
FROM tbase:informix.teces;

SELECT tecghncgh, tecghntra, tecghftra, tecghcvia, tecghnvia, tecghimpt, tecghcmon, tecghcbio, tecghimpo, tecghmvia, tecghmpag, tecghttra, tecghcpto, tecghglos, tecghmdes, tecghtdes, tecghfpag, tecghhpag, tecghstat, tecghmrcb, tecghplaz, tecghagen, tecghuser, tecghhora, tecghfpro
FROM tbase:informix.tecgh;

SELECT tecgpccgo, tecgpcomd, tecgpdesc, tecgptipo, tecgpcmon, tecgpfapl, tecgprang, tecgpmont, tecgpimpm, tecgpcomm, tecgpcfis, tecgpttra, tecgpmrcb, tecgpurcb, tecgphrcb, tecgpfrcb, tecgpuser, tecgphora, tecgpfpro, tecgpprod, tecgpcnta, tecgptcon
FROM tbase:informix.tecgp;

SELECT tecgtntra, tecgtccgo, tecgtcmon, tecgtimpt, tecgtcbio, tecgtfreg, tecgtcfis, tecgtmrcb, tecgtuser, tecgthora, tecgtfpro, tecgtncgh
FROM tbase:informix.tecgt
ORDER BY 1 DESC ;

SELECT tecomccgo, tecomcorr, tecomrani, tecomranf, tecomporc, tecomtipo
FROM tbase:informix.tecom;

SELECT teconcomd, teconpref, teconcorr, tecondesc, teconabre, teconmmod, teconmrcb
FROM tbase:informix.tecon;

SELECT tectlcbco, tectlcpre, tectlccor, tectlctbl
FROM tbase:informix.tectl;

SELECT tefacntra, tefacnomb, tefacnruc, tefaccmon, tefacimpt, tefacmrcb, tefacuser, tefachora, tefacfpro
FROM tbase:informix.tefac
ORDER BY 1 DESC ;

SELECT tefemntra, tefemnreg, tefemnmod
FROM tbase:informix.tefem
ORDER BY 1 DESC ;

SELECT telognlog, telogfreg, telogtmsj, telogimsj, telogstat, teloguser, telogplaz, telogagen, teloghora, telogfpro, telogmsje
FROM tbase:informix.telog;

SELECT temdrcomd, temdrnomd, temdrdemd, temdrabmd, temdrcomp, temdrcage, temdrceif, temdrpaio, temdrdiip, temdrpuer, temdrmdef, temdrmrcb, temdruser, temdrhora, temdrfpro, temdrdpre, temdrdcor, temdrapre, temdracor, temdrmarc
FROM tbase:informix.temdr;

SELECT temdscsmd, temdscomd, temdsnucx, temdscrsm, temdstsev, temdsmodn, temdsncta, temdsceif, temdsctef, temdsctne, temdsuser, temdshora, temdsfpro
FROM tbase:informix.temds;

SELECT catrnntra, catrnftra, catrnncta, catrnndoc, catrnmorg, catrntorg, catrnpref, catrncorr, catrnimpo, catrnimpt, catrncbio, catrncmon, catrnglos, catrnstat, catrnplaz, catrnagen, catrnuser, catrnhora, catrnfpro
FROM tbase:informix.temporal;

SELECT camcancta, camcacage, camcatpca, camcacmon, camcamane, camcariva, camcatasa, camcainst, camcafapt, camcasant, camcasact, camcadncf, camcafpig, camcafumv, camcastat, camcafcbl, camcasdia, camcaacum, camcaacan, camcaplaz, camcaagen, camcauser, camcahora, camcafpro, camcastus, camcattas, camcatcap, camcafcap, camcaiacu, camcaidia
FROM tbase:informix.temporal2;

SELECT teqrgidqr, teqrgcage, teqrgnomb, teqrgndid, teqrgcdes, teqrgctad, teqrgnmod, teqrgcmon, teqrgmone, teqrgimpo, teqrgglos, teqrgfexp, teqrgunic, teqrgcsrv, teqrglibr, teqrgncrt, teqrgstat, teqrgcont, teqrguser, teqrghora, teqrgfpro, teqrguosi, teqrgrb64
FROM tbase:informix.teqrg;

SELECT actrnntra, actrnftra, actrnttrn, actrnpref, actrncorr, actrncfun, actrncbco, actrnccic, actrncarg, actrncmon, actrnimpo, actrnndoc, actrndesc, actrnmapr, actrnfapl, actrnfact, actrnncta, actrnmorg, actrntorg, actrnfnom, actrnfnit, actrnmrcb, actrnurcb, actrnhrcb, actrnfrcb, actrnplaz, actrnagen, actrnuser, actrnhora, actrnfpro, actrncent, actrnctae, actrnnomb, actrncaah
FROM tbase:informix.actrn;

SELECT *
FROM te
SELECT tesoknoip, tesokport
FROM tbase:informix.tesok;

SELECT tesqrnsec, tesqridqr, tesqrntra, tesqrnres, tesqresta
FROM tbase:informix.tesqr;

SELECT tesrltabl, tesrlcorr
FROM tbase:informix.tesrl;

SELECT tetpentra, tetpecage, tetpecagi, tetpencta, tetpeimpt, tetpecmon, tetpefech, tetpehora, tetepnfir, tetpestat
FROM tbase:informix.tetpe;

SELECT tetrnntra, tetrnftra, tetrnttra, tetrnstat, tetrnfsta, tetrnhsta, tetrncomd, tetrnabmd, tetrncsmd, tetrntxmd, tetrnncmd, tetrnsimd, tetrnceif, tetrnabif, tetrnntro, tetrnpaio, tetrnciuo, tetrnctef, tetrnctne, tetrnromd, tetrnnccn, tetrncenx, tetrntctx, tetrnnctx, tetrnnomx, tetrntdix, tetrnndix, tetrnntrx, tetrnttrx, tetrnpaix, tetrnciux, tetrnidcl, tetrnndid, tetrncage, tetrntdid, tetrnnomb, tetrncmon, tetrnimpt, tetrnofon, tetrndfon, tetrnglos, tetrncana, tetrncvia, tetrnnvia, tetrncusr, tetrntorg, tetrntdes, tetrnmvia, tetrntcam, tetrnimpo, tetrntcai, tetrntcae, tetrnnpig, tetrnerro, tetrnmrcb, tetrnplaz, tetrnagen, tetrnuser, tetrnhora, tetrnfpro, tetrnuaut, tetrnicpt, tetrnicpo, tetrnipre, tetrnicor, tetrncpre, tetrnccor, tetrnabmx, tetrncamo, tetrncamx, tetrncser, tetrntach, tetrnidqr
FROM tbase:informix.tetrn;

SELECT tetrnntra, tetrnftra, tetrnttra, tetrnstat, tetrnfsta, tetrnhsta, tetrncomd, tetrnabmd, tetrncsmd, tetrntxmd, tetrnncmd, tetrnsimd, tetrnceif, tetrnabif, tetrnntro, tetrnpaio, tetrnciuo, tetrnctef, tetrnctne, tetrnromd, tetrnnccn, tetrncenx, tetrntctx, tetrnnctx, tetrnnomx, tetrntdix, tetrnndix, tetrnntrx, tetrnttrx, tetrnpaix, tetrnciux, tetrnidcl, tetrnndid, tetrncage, tetrntdid, tetrnnomb, tetrncmon, tetrnimpt, tetrnofon, tetrndfon, tetrnglos, tetrncana, tetrncvia, tetrnnvia, tetrncusr, tetrntorg, tetrntdes, tetrnmvia, tetrntcam, tetrnimpo, tetrntcai, tetrntcae, tetrnnpig, tetrnerro, tetrnmrcb, tetrnplaz, tetrnagen, tetrnuser, tetrnhora, tetrnfpro, tetrnuaut, tetrnicpt, tetrnicpo, tetrnipre, tetrnicor, tetrncpre, tetrnccor, tetrnabmx, tetrncamo, tetrncamx, tetrncser, tetrntach, tetrnidqr
FROM tbase:informix.tetrn_dbs03;

SELECT teviacvia, teviacmon, teviacctb, teviaadic, teviauser, teviahora, teviafpro
FROM tbase:informix.tevia;

SELECT *
FROM tgctl

SELECT *
FROM tgttc


SELECT ciclocciclo, ciclonum, ciclohini, ciclohfin, ciclostat, ciclodias
FROM tbase:informix.ach_ciclo;
SELECT comcorr, comcmon, commtoini, commtofin, comimpcom, comtiptra
FROM tbase:informix.ach_com;
SELECT datcorr, datproced, datnumorden, datid, datcodpaisori, datcodsucori, datcoddes, datcodpaisdes, datcodcomp, datcodmondes, datcodmonori, datcodmon, datimporte, dattipord, datcodproc, dattipctaori, dattipctades, datcodcam, datfeccam, datfecenvio, datctaori, datctades, datglosa, dattipdoc, datnitori, dattitori, datnitdes, dattitdes, datorigenfon, datdestinofon, datcodserv, datcanal, datachnro, datachcam, datfecproc, dathorproc, datestado, datcoderror, datnrotrans, datfecult, dathorult, datmtopig, datusr, datmoncom, datmtocom, datnitfac, datnomfac, datsitio, datnrodev, datreguif, datcodint
FROM tbase:informix.ach_datos;
SELECT errtipo, errcodigo, errdesc, errdlarga
FROM tbase:informix.ach_error;
SELECT achfacncorr, achfacafac, achfacnfac, achfacnord, achfacntra, achfacfpro, achfachpro
FROM tbase:informix.ach_fact;
SELECT menscod, menscorr, menstipo, mensdesc, mensxml, mensfecha, menshora, menspart
FROM tbase:informix.ach_mensaje;
SELECT operrcod, operrtipo, operrdesc, operrxml, operrfecha, operrhora, operrpart
FROM tbase:informix.ach_operror;
SELECT partcod, partnombre, partsigla, parttipo, partdetalle
FROM tbase:informix.ach_part;
SELECT rescorr, resproced, resnumordach, resnumordori, rescodpaisdes, rescodsucdes, rescodresp, resnumorddes, restipord, restitdes, resestado, resfecult, reshorult
FROM tbase:informix.ach_respuesta;
SELECT tippref, tipcorr, tipdesc, tipabre, tipmrcb
FROM tbase:informix.ach_tip;
SELECT tipctacod, tipctadesc, tipctamrcb
FROM tbase:informix.ach_tipcta;
SELECT achmoftra, achmotmod, achmoccic, achmofdes, achmocbco, achmosald, achmoscic, achmocagi, achmocagf, achmogsoi, achmogsof
FROM tbase:informix.achmo;
SELECT achtantra, achtantrc, achtamrcb
FROM tbase:informix.achta;
SELECT achtrntra, achtrccic, achtrcbco, achtrnreu, achtrttrn, achtrftra, achtrfreg, achtrfreu, achtrcfun, achtrtreu, achtrcsea, achtrcsep, achtrcser, achtrobse, achtrhito, achtrsare, achtrfsar, achtrcmon, achtrsaef, achtrsact, achtrsefe, achtrscta, achtrtdes, achtrtahi, achtrtahd, achtrtahv, achtrtpcu, achtrtpag, achtrtcag, achtrtmul, achtrtcao, achtrtcom, achtrticg, achtrtpid, achtrtpii, achtrtpip, achtrtgas, achtrrcup, achtrrefe, achtrrcta, achtrtent, achtrndep, achtrmdep, achtrntrh, achtrcvia, achtrcbcs, achtrnvia, achtrndoc, achtrmvia, achtrtcam, achtrimpt, achtrmind, achtrndoi, achtrndof, achtrcodi, achtrmimp, achtrntrv, achtrntvr, achtrntrb, achtrsreu, achtrfsre, achtrmrcb, achtrurcb, achtrhrcb, achtrfrcb, achtruser, achtrhora, achtrfpro, achtrnomc, achtrrcxc
FROM tbase:informix.achtr;
SELECT acitfntra, acitfccic, acitfnpre, acitfcage, acitfcbco, acitfftra, acitfttrn, acitfdesc, acitfimpp, acitfcmon, acitfmrcb, acitfuser, acitfhora, acitffpro
FROM tbase:informix.acitf;
SELECT acmodcmod, acmodnomb, acmoddesc, acmodabre, acmodfvig, acmodmrcb, acmodurcb, acmodhrcb, acmodfrcb, acmoduser, acmodhora, acmodfpro
FROM tbase:informix.acmod;
SELECT acpcicicl, acpcicmon, acpcimoni, acpcimonf, acpcimonm, acpciedmi, acpciedmx, acpcifapl, acpcipeoa
FROM tbase:informix.acpci;
SELECT acpqacpqt, acpqaagen
FROM tbase:informix.acpqa;
SELECT acpqscpqt, acpqscses, acpqsobsr, acpqsnreu
FROM tbase:informix.acpqs;

SELECT acsrltabl, acsrlcorr
FROM tbase:informix.acsrl;

SELECT *
FROM tetpe

SELECT *
FROM uifou

SELECT *
FROM cjtcn

SELECT *
FROM tefac
ORDER BY 1 DESC 