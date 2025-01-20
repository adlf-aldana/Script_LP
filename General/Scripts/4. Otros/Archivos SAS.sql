/* RIESGOS/COMPARTIDO/SAS-DDMMAA */
/*BAJAR DE 2DA INSTANCIA A CORTE*/
--P:\RIESGOS\Compartido\SAS-112022

  unload to adaud.unl
  select * from adaud
  where adaudfpro BETWEEN '01/03/2023' AND '31/03/2023';  
  unload to adhcl.unl
  select * from adhcl
  where adhclfreg BETWEEN '01/03/2023' AND '31/03/2023';  
  unload to adhus.unl
  select * from adhus
  where adhusfpro BETWEEN '01/03/2023' AND '31/03/2023';  
  unload to adlog.unl
  select * from adlog
  where adlogfpro BETWEEN '01/03/2023' AND '31/03/2023';  
  unload to admdt.unl
  select * from admdt;  
  unload to admod.unl
  select * from admod;  
  unload to admop.unl
  select * from admop
  where admopfpro BETWEEN '01/03/2023' AND '31/03/2023';  
  unload to admpr.unl
  select * from admpr;  
  unload to adrng.unl
  select * from adrng;  
  unload to adusr.unl
  select * from adusr;  
  unload to apmap.unl
  select * from apmap;  
  unload to cacsd.unl
  select * from cacsd
  where cacsdfpro BETWEEN '01/03/2023' AND '31/03/2023';  
  unload to caima.unl
  select * from caima;  
  unload to camca.unl
  select * from camca; 
            
  unload to catpr.unl
  select * from catpr;
  unload to catrn.unl
  select * from catrn
  where catrnfpro BETWEEN '01/03/2023' AND '31/03/2023';  
  unload to cjtrn.unl
  select * from cjtrn
  where cjtrnfpro BETWEEN '01/03/2023' AND '31/03/2023';  
  unload to cndtr.unl
  select * from cndtr;  
  unload to cnplc.unl
  select * from cnplc
  where cnplcfpro BETWEEN '01/03/2023' AND '31/03/2023';  
  unload to cnsld.unl
  select * from cnsld;  
  unload to gbage.unl
  select * from gbage;  
  unload to gbhag.unl
  select * from gbhag;  
  unload to pfmdp.unl
  select * from pfmdp; 
  unload to pfret.unl
  select * from pfret; 
  unload to prhtr.unl
  select * from prhtr 
  where prhtrfpro BETWEEN '01/03/2023' AND '31/03/2023';  
  
  unload to prmpr.unl
  select * from prmpr;  
  unload to prtcr.unl
  select * from prtcr;  
  unload to prtpm.unl
  select * from prtpm;  
  unload to prtsa.unl
  select * from prtsa
  where prtsafpro BETWEEN '01/01/2000' AND '31/03/2023';
  unload to prtsh.unl
  select * from prtsh
  where prtshfpro BETWEEN '01/01/2000' AND '31/03/2023';
  unload to tdmtd.unl
  select * from tdmtd;
  unload to tdtrn.unl
  select * from tdtrn
  where tdtrnfpro BETWEEN '01/03/2023' AND '31/03/2023';  
  unload to adcry.unl
  select * from adcry;
  unload to gbdoc.unl
  select * from gbdoc;
    unload to prtdt.unl
  select * from prtdt
  where prtdtfpro BETWEEN '01/03/2023' AND '31/03/2023';  


--SE QUITARON LUEGO DE LA ACTUALIZACION LAS SIGUIENTES TABLAS

  unload to prctl.unl #35 ya no
  select * from prctl;  
  unload to cactl.unl #36 ya no 
  select * from cactl;