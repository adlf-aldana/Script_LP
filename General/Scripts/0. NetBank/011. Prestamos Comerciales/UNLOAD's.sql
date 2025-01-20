-- CONNECTION: name=dbfusion
unload to prtpm.txt select * from prtpm;  
unload to prtcr.txt select * from prtcr; 
unload to prpsg.txt select * from prpsg; 
unload to prcgp.txt select * from prcgp; 
unload to prpdd.txt select * from prpdd;
unload to prpdh.txt select * from prpdh;
unload to prvia.txt select * from prvia;
unload to prdsg.txt select * from prdsg;
unload to prctl.txt select * from prctl;

unload to prcgc_10046055.txt select * from prcgc where prcgcnpre=10046055;
unload to prdif_10046055.txt select * from prdif where prdifnpre=10046055;
unload to prdip_10046055.txt select * from prdip where prdipnpre=10046055;
unload to prhtr_10046055.txt select * from prhtr where prhtrnpre=10046055;
unload to prmpr_10046055.txt select * from prmpr where prmprnpre=10046055;   
unload to prppg_10046055.txt select * from prppg where prppgnpre=10046055;
unload to prtdt_10046055.txt select * from prtdt where prtdtnpre=10046055;
unload to prtsa_10046055.txt select * from prtsa where prtsanpre=10046055;
unload to prrnv_10046055.txt select * from prrnv where prrnvnpre=10046055;
unload to prdio_10046055.txt select * from prdio where prdionpre=10046055;
unload to prdrh_10046055.txt select * from prdrh where prdrhnpre=10046055;
unload to prsor_10046055.txt select * from prsor where prsornpre=10046055;
unload to prerr_10046055.txt select * from prerr where prerrnpre=10046055;

unload to prcgc_10046055.txt select * from prcgc where prcgcnpre=10046055;
unload to prmpr_10046055.txt select * from prmpr where prmprnpre=10046055;   
unload to prtsa_10046055.txt select * from prtsa where prtsanpre=10046055;
unload to prdeu_10046055.txt select * from prdeu where prdeunpre=10046055;
unload to prgar_10046055.txt select * from prgar where PRGARNPRE=10046055;
unload to prhdv_10046055.txt select * from prhdv where prhdvnpre=10046055;
unload to prtsh_10046055.txt select * from prtsh where prtshnpre=10046055;
unload to prcts_10046055.txt select * from prcts where prctsnpre=10046055;
unload to prtft_10046055.txt select * from prtft where prtftnpre=10046055;
unload to prdes_10046055.txt select * from prdes where prdesnpre=10046055;
unload to prdeb_10046055.txt select * from prdeb where prdebnpre=10046055;
