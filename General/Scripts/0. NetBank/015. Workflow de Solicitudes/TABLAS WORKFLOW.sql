SELECT ecactnact, ecactfreg, ecactagen, ecactglos, ecactmrcb, ecactuser, ecacthora, ecactfpro, ecacttcom, ecactacta, ecactfact 
FROM ecact;

SELECT ecagecage, ecagetper, ecagenomb, ecagenom1, ecagenom2, ecageape1, ecageape2, ecageape3, ecagefnac, ecagesexo, ecageeciv, ecagenaci, ecageprof, ecagenive, ecagecand, ecagemail, ecagetdid, ecagendid, ecagefvid, ecagenruc, ecagefvru, ecagecelu, ecagetlfd, ecagedird, ecagepaid, ecagedptd, ecagecprd, ecageciud, ecagezond, ecagemund, ecagenemp, ecageaemp, ecagetcar, ecagedcar, ecagensal, ecagetlfo, ecagediro, ecagepaio, ecagedpto, ecagecpro, ecageciuo, ecagezono, ecagemuno, ecagerefp, ecagedepe, ecageactv, ecageciiu, ecageacti, ecageuser, ecagehora, ecagefpro 
FROM ecage;

SELECT ecagrenagen, ecagrecproc 
FROM ecagre;

SELECT ecaltcalt, ecaltcelm, ecaltccri, ecaltdesc, ecaltexpl, ecaltncam, ecaltrmin, ecaltrmax 
FROM ecalt;

SELECT ecambnpso, ecambares, ecambnres, ecambmrcb, ecambnota, ecambfpro, ecambfreg 
FROM ecamb;

SELECT ecautnuat, ecautnopr, ecautnprg, ecautuser, ecauthora, ecautfpro 
FROM ecaut;

SELECT ecbeccenv, ecbecccmp, ecbecrequ, ecbecval1, ecbecval2 
FROM ecbec;

SELECT ecbencenv, ecbenfreg, ecbencbur, ecbentipo, ecbennsol, ecbencorr, ecbencage, ecbentdid, ecbenndid, ecbennomb, ecbenuser, ecbenhora 
FROM ecben;

SELECT ecbltansol, ecbltacorr, ecbltatbol, ecbltanbol, ecbltaempr, ecbltanomb, ecbltacarg, ecbltaantg, ecbltating, ecbltatliq 
FROM ecblta;

SELECT ecbrdcrsp, ecbrdcrch, ecbrdmrch, ecbrdcexc 
FROM ecbrd;

SELECT ecbrscrsp, ecbrsfreg, ecbrscbur, ecbrstipo, ecbrsnsol, ecbrscorr, ecbrscage, ecbrstdid, ecbrsndid, ecbrsnomb, ecbrsstat, ecbrsplzo, ecbrsmmax, ecbrsapoi, ecbrsbono, ecbrscapa, ecbrsplzm, ecbrstasa, ecbrsspre, ecbrssegm, ecbrsflag, ecbrscews, ecbrsmews, ecbrsuser, ecbrshora, ecbrsfpro, ecbrscenv 
FROM ecbrs;

SELECT ecbuccodi, ecbucccmp 
FROM ecbuc;

SELECT ecbupcodi, ecbupcbur, ecbuptcre, ecbupccfl, ecbupapli, ecbuptper, ecbuptdeu 
FROM ecbup;

SELECT ecburcbur, ecburnomb, ecburwsdi, ecburname, ecburfunc, ecburuser, ecburclav, ecburwsdl, ecburactu 
FROM ecbur;

SELECT eccadnsol, eccadnmes, eccadncuo 
FROM eccad;

SELECT eccamncam, eccamfreg, eccamnmod, eccamprod, eccamfini, eccamffin, eccamdesc, eccammrcb, eccamplaz, eccamagen, eccamuser, eccamhora, eccamfpro 
FROM eccam;

SELECT eccflnpro, eccflntar, eccfltime, eccflusco, eccfluser, eccflfpro, eccflhora 
FROM eccfl;

SELECT eccgcnsol, eccgccarg, eccgcmbas, eccgcmsob, eccgcmont, eccgctipo, eccgcmrcb, eccgcuser, eccgchora, eccgcfpro 
FROM eccgc;

-- 3422

-- 2204
-- PAOLA SANCHEZ

SELECT eccmanact, eccmaagen 
FROM eccma;

SELECT eccmpccmp, eccmptipc, eccmpdesc, eccmpcamw, eccmpvalo, eccmpcref 
FROM eccmp ORDER BY eccmtfpro DESC ;

SELECT eccmtnsol, eccmtcfun, eccmtfreg, eccmtmrcb, eccmtuser, eccmtfpro, eccmthora, eccmtniva 
FROM eccmt ORDER BY eccmtfpro DESC ;

SELECT ecconpref, ecconcorr, eccondesc, ecconabre, ecconmmod, ecconmrcb 
FROM eccon;

SELECT eccpsnsec, eccpsncam, eccpsstat 
FROM eccps;

SELECT eccriccri, eccridesc, eccritcri, eccriexpl, eccrincam 
FROM eccri;

SELECT ecctlfcie, ecctlping, ecctlcopr, ecctlcpro, ecctlnres, ecctlnsol, ecctlcest, ecctlnctr, ecctlccri, ecctlcelm, ecctlvgar, ecctldepr, ecctluser, ecctlpasw, ecctlfact, ecctlpuso, ecctlmaut 
FROM ecctl;

SELECT ecctsnsol, ecctsftra, ecctsplzo, ecctsfcam, ecctstsex, ecctssprd, ecctsstat, ecctsfsta, ecctstpro, ecctsmrcb, ecctsuser, ecctshora, ecctsfpro, ecctstcta 
FROM eccts;

SELECT ecdacnact, ecdaccfun, ecdacapro 
FROM ecdac;

SELECT ecdeansol, ecdeadest, ecdeaddes 
FROM ecdea;

SELECT ecdepnpso, ecdepcorr, ecdeptage, ecdepcage, ecdeptdeu, ecdeptper, ecdeptdid, ecdepndid, ecdepnomb, ecdepnom1, ecdepnom2, ecdepape1, ecdepape2, ecdepape3, ecdepingr, ecdepoing, ecdepcmon, ecdepantl, ecdepconl, ecdepsitl, ecdepstat 
FROM ecdep;

SELECT ecdeunsol, ecdeucage, ecdeutres, ecdeumrcb, ecdeuuser, ecdeuhora, ecdeufpro, ecdeuclas 
FROM ecdeu;

SELECT ecdgansol, ecdgaitem, ecdgaghip, ecdgatgar, ecdgausog, ecdgaesta, ecdgavmer, ecdgavgar, ecdgavact, ecdgadesc, ecdgarela, ecdgacmon, ecdgandoc 
FROM ecdga;

SELECT ecdmsnsol, ecdmscact, ecdmscdes, ecdmsdeta, ecdmscant, ecdmsunid, ecdmsmasi, ecdmsfuti 
FROM ecdms;

SELECT ecdocndoc, ecdocnsol, ecdoctitu, ecdocautr, ecdoctdoc, ecdoclink, ecdocmrcb, ecdocuser, ecdocfpro, ecdochora, ecdocfile, ecdocfreg, ecdocfemi, ecdocngar, ecdocnref, ecdocitem, ecdocntar 
FROM ecdoc;

SELECT ecdprtcre, ecdprrequ, ecdprmrcb, ecdprfpro, ecdprhora, ecdpruser, ecdprfmrc, ecdprumrc, ecdprtper, ecdprnmod, ecdprcdoc, ecdprccop 
FROM ecdpr;

SELECT ecdsonsol, ecdsontar, ecdsofecha, ecdsohor, ecdsotdoc, ecdsocdoc, ecdsoitem 
FROM ecdso;

SELECT ecdtanpro, ecdtantar, ecdtacdoc, ecdtauser, ecdtahora, ecdtafpro 
FROM ecdta;

SELECT eceagnsol, eceagcorr, eceagcage, eceagtipo, eceagfech, eceagitem, eceagfund, eceagtext, eceagexct, eceagsleg, eceagtcul, eceagmsie, eceagmcoi, eceagmcof, eceagpven, eceagmvei, eceagmvef, eceagctot, eceagvact, eceagrtot, eceagumed, eceagpve1, eceagpve2, eceagrpv1, eceagrpv2, eceagmrcb, eceagglos, eceagusrn, eceaghora, eceagfpro, eceagasie, eceagacoi, eceagacof, eceagavei, eceagavef
FROM eceag;

SELECT ececdnsol, ececdcorr, ececdcage, ececdftra, ececdgneg, ececdvpdi, ececddial, ececdgmob, ececdgins, ececdotro, ececdctra, ececdibru, ececdinet, ececdglos, ececdmrcb, ececdusrn, ececdhora, ececdfpro, ececdcvdi, ececdarpd, ececdarpc, ececdargv, ececdarct, ececdarpv, ececdarre, ececdargl, ececdmgpd, ececdmgpc, ececdmggv, ececdmgct, ececdmgpv, ececdmgre, ececdmggl, ececdegpd, ececdegpc, ececdeggv, ececdegct, ececdegpv, ececdegre, ececdeggl
FROM ececd;

SELECT ececgnsol, ececgcorr, ececgcage, ececgftra, ececggneg, ececgraza, ececgcana, ececgvala, ececgcest, ececgcpas, ececgncad, ececgprec, ececgcman, ececgctot, ececgncav, ececgprvu, ececgprvd, ececgfven, ececgmobr, ececginsu, ececgrinu, ececgrind, ececgglos, ececgmrcb, ececgusrn, ececghora, ececgfpro, ececgaven
FROM ececg;

SELECT ececunsol, ececucorr, ececucage, ececutipo, ececuftra, ececuprod, ececuprec, ececugasv, ececutotc, ececuprev, ececupren, ececuglos, ececumrcb, ececuusrn, ececuhora, ececufpro 
FROM ececu;

SELECT ecelmcelm, ecelmccri, ecelmdesc, ecelmexpl, ecelmncam, ecelmtent 
FROM ecelm;

SELECT ecevafreg, ecevansol, ecevacmon, ecevamcaj, ecevambco, ecevamctc, ecevamacc, ecevammpp, ecevamppr, ecevampte, ecevammeq, ecevamher, ecevamacf, ecevamact, ecevamctp, ecevamced, ecevamocc, ecevampac, ecevamplp, ecevampas, ecevampat, ecevamctr, ecevammp1, ecevammp2, ecevammp3, ecevamms1, ecevamms2, ecevamms3, ecevammc1, ecevammc2, ecevammc3, ecevamm11, ecevamm12, ecevamm13, ecevamm21, ecevamm22, ecevamm23, ecevamcu1, ecevamcu2, ecevamcu3, ecevampm1, ecevampm2, ecevampm3, ecevampu1, ecevampu2, ecevampu3, ecevatcpm, ecevatinm, ecevapmve, ecevanop1, ecevanop2, ecevanop3, ecevaump1, ecevaump2, ecevaump3, ecevamcf1, ecevamcf2, ecevamcf3, ecevatcfj, ecevatutn, ecevamoin, ecevamoeg, ecevamcfa, ecevatudi, ecevamgfi, ecevapren, ecevaprot, ecevapliq, ecevapcen, ecevapcpa, ecevapict, ecevarepu, ecevarvpu, ecevalipu, ecevaenpu, ecevacppu, ecevaictp, ecevatpcu, ecevavecr, ecevaiv01, ecevaiv02, ecevaiv03, ecevaiv04, ecevaiv05, ecevaiv06, ecevaiv07, ecevaiv08, ecevaiv09, ecevaiv10, ecevaiv11, ecevaiv12, ecevacf01, ecevacf02, ecevacf03, ecevacf04, ecevacf05, ecevacf06, ecevacf07, ecevacf08, ecevacf09, ecevacf10, ecevacf11, ecevacf12, ecevamdep, ecevatoga, ecevatopu, ecevaim01, ecevaim02, ecevaim03, ecevaim04, ecevaim05, ecevaim06, ecevaim07, ecevaim08, ecevaim09, ecevaim10, ecevaim11, ecevaim12, ecevaflne, ecevastat, ecevauser, ecevahora, ecevafpro 
FROM eceva;

SELECT ecexcnsol, ecexccodi, ecexcdesc, ecexcauto, ecexcfreg 
FROM ecexc;

SELECT ecexpcodi, ecexpdesc, ecexptipo, ecexpacti, ecexptper, ecexpcome, ecexpuser, ecexpfpro, ecexphora 
FROM ecexp;

SELECT ecextnsol, ecextntar, ecextcage, ecextcexc, ecextstat, ecextfecv, ecextfecc, ecextuser, ecexthora, ecextfpro 
FROM ecext;

SELECT ecfcjnsol, ecfcjtipo, ecfcjisec, ecfcjnmes, ecfcjanio, ecfcjiper, ecfcjperc, ecfcjcpag, ecfcjnpag, ecfcjprea, ecfcjcora, ecfcjcona, ecfcjpreb, ecfcjcorb, ecfcjconb, ecfcjp000, ecfcjp001, ecfcjp002, ecfcjp003, ecfcjp004, ecfcjp005, ecfcjp006, ecfcjp007, ecfcjp008, ecfcjp009, ecfcjp010, ecfcjp011, ecfcjp012, ecfcja001, ecfcja002, ecfcja003, ecfcja004, ecfcja005 
FROM ecfcj;

SELECT ecflunpro, ecfluntar, ecfluptar, ecflutipot 
FROM ecflu;

SELECT ecfusnsol, ecfusnpre, ecfussald, ecfuscmon, ecfussalv, ecfuscmov, ecfusrefe 
FROM ecfus;

SELECT ecgarnsol, ecgarcorr, ecgarngar, ecgartgar, ecgarndoc, ecgarfreg, ecgarmont, ecgarcmon, ecgargrav, ecgargfin, ecgarnpar, ecgarfpar, ecgarnhip, ecgarfhip, ecgardesc, ecgarpais, ecgardpto, ecgarcprv, ecgarciud, ecgarzona, ecgarcmun, ecgarambg, ecgarugps, ecgarlong, ecgarlati, ecgaragen, ecgarplaz, ecgarmrcb, ecgarfmrc, ecgaruser, ecgarhora, ecgarfpro, ecgardire 
FROM ecgar;

SELECT echimnsol, echimcorr, echimtinm, echimstat, echimflio, echimnpar, echimfins, echimtest, echimagra, echimfgra, echimtgra, echimcato, echimipto, echimimon, echimanio, echimplan, echimunid, echimdimt, echimdime, echimvter, echimvedi, echimvalo, echimvcte, echimvced, echimvcat, echimvven, echimubn1, echimubn2, echimubn3, echimubn4, echimubn5, echimndom, echimnedi, echimndep, echimdire, echimdirr 
FROM echim;

SELECT echvnnsol, echvncorr, echvntveh, echvnstat, echvnmarc, echvnmdlo, echvncolo, echvnanof, echvnproc, echvnmuni, echvnnpta, echvnfemi, echvnnmot, echvnncha, echvnnprt, echvncili, echvntrac, echvncapa, echvnturb, echvncarr, echvntsvc, echvncomb, echvnlcir, echvnipto, echvnimon, echvnanio, echvnvalo, echvnvalc, echvnnpol 
FROM echvn;

SELECT eclegnleg, eclegcsgt, eclegnsol, eclegstat, eclegfreg, ecleguser, eclegfpro, ecleghora 
FROM ecleg;

SELECT ecmcmitem, ecmcmfreg, ecmcmtdid, ecmcmndid, ecmcmcage, ecmcmnomb, ecmcmtper, ecmcmfnac, ecmcmsexo, ecmcmeciv, ecmcmnnit, ecmcmdird, ecmcmtlfd, ecmcmtlfo, ecmcmncel, ecmcmimpo, ecmcmcmon, ecmcmarch, ecmcmuser, ecmcmfpro, ecmcmhora, ecmcmnpso, ecmcmcven, ecmcmresp, ecmcmagen, ecmcmncam, ecmcmtasa, ecmcmplzo, ecmcmuplz, ecmcmfpag, ecmcmfpri, ecmcmtcre, ecmcmppgk, ecmcmppgi, ecmcmuppg, ecmcmfdes 
FROM ecmcm;

SELECT ecmdinsol, ecmdiisec, ecmditinv, ecmdietap, ecmdiporc, ecmdimont, ecmdidesc, ecmdifinv, ecmdiusrn, ecmdihora, ecmdifpro 
FROM ecmdi;

SELECT ecmflnpro, ecmflntar, ecmflusrn, ecmfluser, ecmflfpro, ecmflhora 
FROM ecmfl;

SELECT ecmopusrn, ecmopopci 
FROM ecmop;

SELECT ecmornsol, ecmorcage, ecmorinte, ecmorsbef, ecmorotro, ecmorpunt, ecmorfreg, ecmormrcb, ecmoruser, ecmorhora, ecmorfpro 
FROM ecmor;

SELECT ecmphncod, ecmphnpso, ecmphfreg, ecmphpseg, ecmphstat, ecmphdesc, ecmphuser, ecmphhpro, ecmphfpro 
FROM ecmph;

SELECT ecmpinsol, ecmpindtl, ecmpifndt 
FROM ecmpi;

SELECT ecmprcpro, ecmprdesc, ecmprcalm, ecmprcrev, ecmprnmod, ecmprcmon, ecmprmmax, ecmprtcre, ecmprorgr, ecmprrubr, ecmprciiu, ecmprdest, ecmprplzo, ecmpruplz, ecmprtasa, ecmprtase, ecmprcudb, ecmprfpag, ecmprppgk, ecmprppgi, ecmprgrac, ecmpruppg, ecmprfprv, ecmprviac, ecmprctac, ecmprrepr, ecmprnctr, ecmprcprg, ecmprcpag, ecmprvind, ecmprpgar, ecmprmflu, ecmprmrcb, ecmpruser, ecmprhora, ecmprfpro 
FROM ecmpr;

SELECT ecmpsnpso, ecmpsfreg, ecmpstdid, ecmpsndid, ecmpscage, ecmpsnomb, ecmpstper, ecmpsfnac, ecmpssexo, ecmpseciv, ecmpsnnit, ecmpstipo, ecmpsnive, ecmpscand, ecmpsprof, ecmpsrubr, ecmpsactv, ecmpsdact, ecmpsdird, ecmpstlfd, ecmpscelu, ecmpsciud, ecmpszond, ecmpsnemp, ecmpsdiro, ecmpsciuo, ecmpszono, ecmpstlfo, ecmpsinte, ecmpstcar, ecmpsdcar, ecmpsnsal, ecmpsning, ecmpstcre, ecmpscmon, ecmpsimpt, ecmpsplzo, ecmpsuplz, ecmpstasa, ecmpsfpag, ecmpsppgk, ecmpsppgi, ecmpsgrac, ecmpsuppg, ecmpsdiap, ecmpsmcuo, ecmpscpag, ecmpsnota, ecmpsstat, ecmpsfsta, ecmpspevc, ecmpsresp, ecmpsresa, ecmpsnsol, ecmpsplaz, ecmpsagen, ecmpsuser, ecmpsncam, ecmpsncuo, ecmpsfdes, ecmpsfpri, ecmpsspre, ecmpstase, ecmpsiupg, ecmpscomp, ecmpsnori, ecmpsfpro, ecmpscven, ecmpsvdes, ecmpscmov, ecmpscclf, ecmpsdest, ecmpsnom1, ecmpsnom2, ecmpsape1, ecmpsape2, ecmpsape3, ecmpsapo1, ecmpsapo2, ecmpsmmax, ecmpspmax, ecmpspmia, ecmpscrws 
FROM ecmps;

SELECT ecmrenres, ecmrensol, ecmrecpro, ecmretrec, ecmrefevl, ecmrehevl, ecmrecalf, ecmrefcam, ecmrehcam, ecmrecman, ecmreuser, ecmrehora, ecmrefpro 
FROM ecmre;

SELECT ecmsonsol, ecmsotipo, ecmsonpro, ecmsonpre, ecmsofsol, ecmsohsol, ecmsocsol, ecmsostat, ecmsocalf, ecmsopmin, ecmsocrev, ecmsofevl, ecmsohevl, ecmsoimpt, ecmsocmon, ecmsorseg, ecmsorse2, ecmsonctr, ecmsomapr, ecmsotcam, ecmsotcre, ecmsocclf, ecmsoorgr, ecmsorubr, ecmsonlex, ecmsociiu, ecmsodest, ecmsoddes, ecmsonrlc, ecmsoplzo, ecmsouplz, ecmsottas, ecmsotsex, ecmsotasa, ecmsotase, ecmsospre, ecmsofpag, ecmsoppgk, ecmsoppgi, ecmsograc, ecmsouppg, ecmsodiap, ecmsoiupg, ecmsocuot, ecmsofapr, ecmsofdes, ecmsofpri, ecmsoviac, ecmsoctac, ecmsodeba, ecmsonmod, ecmsoglos, ecmsoglo2, ecmsoprio, ecmsocpdr, ecmsopais, ecmsodpto, ecmsocprv, ecmsociud, ecmsozona, ecmsocmun, ecmsoambg, ecmsougps, ecmsolong, ecmsolati, ecmsotdid, ecmsondid, ecmsocapt, ecmsoequi, ecmsoapor, ecmsosupe, ecmsomrcb, ecmsoplaz, ecmsoagen, ecmsouser, ecmsohora, ecmsofpro, ecmsosald, ecmsocamp, ecmsomanj, ecmsofini, ecmsofven, ecmsopres, ecmsocapn, ecmsoimec, ecmsocome, ecmsodire, ecmsopcsn, ecmsocven, ecmsofdju, ecmsoupfc, ecmsoteva, ecmsoapo2, ecmsovdes, ecmsocmov, ecmsoetec, ecmsommax, ecmsopmax, ecmsopmia, ecmsocrws 
FROM ecmso;

SELECT ecmsonsol, ecmsorepr, ecmsonpre, ecmsotcli, ecmsofsol, ecmsocpro, ecmsocopr, ecmsocsol, ecmsostat, ecmsocalf, ecmsopmin, ecmsocrev, ecmsoimpt, ecmsocmon, ecmsoimp1, ecmsocmo1, ecmsodctr, ecmsofevl, ecmsohevl, ecmsorseg, ecmsorse2, ecmsonctr, ecmsocmap, ecmsomapr, ecmsoplza, ecmsotcam, ecmsoflat, ecmsotcre, ecmsoorgr, ecmsorubr, ecmsociiu, ecmsodest, ecmsoplzo, ecmsouplz, ecmsotasa, ecmsotase, ecmsotsex, ecmsocudb, ecmsofpag, ecmsoppgk, ecmsoppgi, ecmsograc, ecmsouppg, ecmsofprv, ecmsoclas, ecmsoviac, ecmsoctac, ecmsodeba, ecmsonmod, ecmsomrso, ecmsomrcb, ecmsoplaz, ecmsoagen, ecmsouser, ecmsohora, ecmsofpro, ecmsonrlc, ecmsonprr, ecmsotprr, ecmsopcta, ecmsopr01, ecmsopr02, ecmsopr03, ecmsodp03, ecmsoiupg, ecmsoupct, ecmsodpgf, ecmsocfla, ecmsotpre, ecmsospre, ecmsospct, ecmsoglos, ecmsoglo2, ecmsoglo3, ecmsoglo4, ecmsoglo5, ecmsoglo6, ecmsoglo7, ecmsogtaa, ecmsoaleg, ecmsorex1, ecmsorex2, ecmsonpro, ecmsontar, ecmsontaa, ecmsoftar, ecmsoftaa, ecmsoreac, ecmsorean, ecmsomdes, ecmsoprio, ecmsomaut, ecmsocpdr, ecmsoccli, ecmsotban, ecmsoseco, ecmsopais, ecmsodpto, ecmsocprv, ecmsociud, ecmsozona, ecmsocmun, ecmsoambg, ecmsougps, ecmsolong, ecmsolati, ecmsotdid, ecmsondid, ecmsolend, ecmsonruc, ecmsonomc, ecmsotper, ecmsofnac, ecmsosexo, ecmsoeciv, ecmsonive, ecmsoprof, ecmsoddom, ecmsocdom, ecmsozdom, ecmsotdom, ecmsotcel, ecmsonemp, ecmsorubc, ecmsoacti, ecmsodact, ecmsodemp, ecmsocemp, ecmsozemp, ecmsotemp, ecmsointe, ecmsocarg, ecmsotfax, ecmsomail, ecmsotpro, ecmsoflle
FROM ecmso1;

SELECT ecmyensol, ecmyecorr, ecmyeitem, ecmyetmaq, ecmyecant, ecmyemarc, ecmyeseri, ecmyevalo, ecmyevalc 
FROM ecmye;

SELECT ecnaansol, ecnaaniva, ecnaacomt, ecnaanact, ecnaafreg, ecnaantar, ecnaaautp, ecnaastat 
FROM ecnaa;

SELECT ecnapnpro, ecnapniva, ecnapcmon, ecnaptcom, ecnaprani, ecnapranf, ecnapcexc, ecnapmrcb, ecnapuser, ecnaphora, ecnapfpro 
FROM ecnap;

SELECT ecnotnsol, ecnotcnot, ecnotfech, ecnotcome, ecnotplaz, ecnotagen, ecnotuser, ecnotfpro
FROM ecnot;

SELECT ecoprcopr, ecoprnomb, ecoprtcom, ecoprpcom, ecoprplaz, ecopragen, ecopruser, ecoprfpro 
FROM ecopr;

SELECT ecot1nsol, ecot1corr, ecot1item, ecot1tesp, ecot1raza, ecot1cant, ecot1edad, ecot1ueda, ecot1valo, ecot1valc 
FROM ecot1;

SELECT ecot2nsol, ecot2corr, ecot2line, ecot2fadq, ecot2ngra, ecot2fgra, ecot2acci, ecot2tjta, ecot2cont, ecot2duen, ecot2ulfa, ecot2valo, ecot2nser 
FROM ecot2;

SELECT ecotrnsol, ecotrcorr, ecotritem, ecotrdesc, ecotrvalo, ecotrvalc 
FROM ecotr;

SELECT ecpalcalt, ecpalcelm, ecpalccri, ecpalcpro, ecpalpond, ecpalrmin, ecpalrmax, ecpaluser, ecpalhora, ecpalfpro 
FROM ecpal;

SELECT ecpcrccri, ecpcrcpro, ecpcrpond, ecpcrpeso, ecpcrcalf 
FROM ecpcr;

SELECT ecpelcelm, ecpelccri, ecpelcpro, ecpelpond, ecpelpeso, ecpelcalf 
FROM ecpel;

SELECT ecpexnpso, ecpexcodi, ecpexdesc, ecpexauto 
FROM ecpex;

SELECT ecplannsol, ecplancorr, ecplanitem, ecplantpla, ecplanedad, ecplanueda, ecplansupe, ecplanunid, ecplanvalo, ecplanvalc 
FROM ecplan;

SELECT ecpmpnpro, ecpmpnmod, ecpmptcre, ecpmpuser, ecpmphora, ecpmpfpro 
FROM ecpmp;

SELECT ecponnpon, ecponcate, ecpondesc, ecponries, ecponuser, ecponfpro, ecponhora 
FROM ecpon;

SELECT ecprdnsol, ecprdprod, ecprduser, ecprdhora, ecprdfpro 
FROM ecprd;

SELECT ecprennsol, ecprencorr, ecprenitem, ecprentmer, ecprencant, ecprenunid, ecprenvalu, ecprenvalo, ecprenvalc 
FROM ecpren;

SELECT ecpronpro, ecprofreg, ecpronmod, ecproprod, ecprofini, ecproffin, ecprodesc, ecpromrcb, ecproplaz, ecproagen, ecprouser, ecprohora, ecprofpro 
FROM ecpro;

SELECT ecprtnsol, ecprtcorr, ecprtcage 
FROM ecprt;

SELECT ecprxndoc 
FROM ecprx;

SELECT ecpsensol, ecpsecage, ecpseedad, ecpsefdju, ecpseingr, ecpsepcob, ecpsepsob, ecpseppri, ecpsessdg 
FROM ecpse;

SELECT ecpvtansol, ecpvtacorr, ecpvtapsto, ecpvtadire, ecpvtaasoc, ecpvtaafil, ecpvtaupat, ecpvtavalo 
FROM ecpvta;

SELECT ecrchnsol, ecrchconc, ecrchdesc, ecrchfreg, ecrchuser, ecrchfpro, ecrchhora 
FROM ecrch;

SELECT ecresnres, ecresnsol, ecrescelm, ecresccri, ecrescpro, ecrescalt, ecresvres, ecrescalf 
FROM ecres;

SELECT ecrexcage, ecrexnomb, ecrexdire, ecrexmrcb, ecrexuser, ecrexhora, ecrexfpro, ecrexumrc, ecrexfmrc, ecrextdom, ecrextofi, ecrextcel, ecrexmail 
FROM ecrex;

SELECT ecscrnsol, ecscrcexc, ecscrtban, ecscrseco, ecscrnpon 
FROM ecscr;

SELECT ecsegnsol, ecsegcsdg, ecsegppri, ecsegmpri, ecsegpprc, ecsegmprc, ecsegcsob, ecsegpsob, ecsegmsob, ecsegcsin, ecseguser, ecseghora, ecsegfpro 
FROM ecseg;

SELECT ecsesuser, ecsesguid, ecsesstat, ecsesusrs, ecsesnsol 
FROM ecses;

SELECT ecsgtntar, ecsgtnpro, ecsgtnsol, ecsgtfreg, ecsgtresp, ecsgtobse, ecsgtfini, ecsgthori, ecsgtffin, ecsgthorf, ecsgtstat, ecsgtrex1, ecsgtprio, ecsgtuser, ecsgtfpro, ecsgtfape, ecsgthora, ecsgttesp, ecsgtnesp, ecsgtcsgt 
FROM ecsgt;

SELECT ecslcnsol, ecslcnrlc 
FROM ecslc;

SELECT ecsprnsol, ecsprnpre 
FROM ecspr;

SELECT ecsqlcodi, ecsqlnsql, ecsqlpar1, ecsqlpar2, ecsqlpar3, ecsqlpar4, ecsqlpar5, ecsqloper, ecsqlvalo, ecsqltipo 
FROM ecsql;

SELECT ecsrltabl, ecsrlcorr 
FROM ecsrl;

SELECT ectafnpro, ectafntar, ectafobli, ectafmdoc, ectafmfav 
FROM ectaf;

SELECT ectarntar, ectardesc, ectarcres, ectarcest, ectarcana, ectarrext, ectarract, ectartdur, ectartipo, ectarmaut 
FROM ectar;

SELECT ectbatasa, ectbauser, ectbafpro, ectbahora 
FROM ectba;

SELECT ectcrnsol, ectcrtipo, ectcrmont, ectcrcmon, ectcrplaz, ectcrtasa, ectcrboni, ectcrplbo 
FROM ectcr;

SELECT ecusfuser, ecusfnpro, ecusfntar, ecusfgrup 
FROM ecusf;

SELECT ecusrusrn, ecusrmail, ecusriapr, ecusrmapr, ecusrisol, ecusrmsol 
FROM ecusr;

SELECT ecvennsol, ecvencage, ecvenmrcb, ecvenuser, ecvenhora, ecvenfpro 
FROM ecven;