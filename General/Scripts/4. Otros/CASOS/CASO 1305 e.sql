/* PROGRAMAS */
select a.admdtmodn,b.admoddesc,a.admdtmprn,c.admprdesc,a.admdtmdtn,a.admdtdesc,a.admdtnprg,a.admdtnpnb,a.admdtstat
from admdt a,admod b,admpr c
where a.admdtmodn=b.admodmodn
and a.admdtmodn=c.admprmodn
and a.admdtmprn=c.admprmprn
--and a.admdtmodn=2
and (a.admdtnprg like '%010%'
or a.admdtnpnb like '%010%')
order by 1,3,5;

-- PREVISION AUTOMATICA
unload TO pvhca_ANTES.txt
SELECT pvhcafreg, pvhcatcal, pvhcamodn, pvhcanopr, pvhcacage, pvhcacalf, pvhcaclfa, pvhcappgk, pvhcacmon, pvhcasald, pvhcaendt, pvhcastat, pvhcafpvc, pvhcadias, pvhcabipn, pvhcaglos, pvhcauser, pvhcahora, pvhcafpro, pvhcaclas, pvhcacclf, pvhcacpac, pvhcaclfo 
FROM pvhca ORDER BY pvhcafpro DESC;

SELECT *from cropr ORDER BY croprfpro DESC 

SELECT *FROM admod


SELECT crcecplaz, crcecoper, crceccalf, crcectgar, crcecimca, crcecimga, crcecimco, crcecimpr, crcecfech, crcecnmod, crcecclfo, crcecmgar, crcecnbco, crcecrequ, crcecsuge, crcecacon, crcecfcal, crcecmcpr, crcecilsg, crcecstat, crcecreqm, crcecreqa, crcecdefi, crcecdisd, crcecgene, crcecimgh, crceccclf, crcecporc, crcecreqc, crceccage, crcecagen, crceccicl, crcecfpre, crcecpore, crceccmon, crcecimcs, crcecimcc, crcecporo, crcecreqo, crcectcar, crceccdsm, crcecdest, crcecdpto, crcecccon 
FROM crcec ORDER BY crcecfech DESC ;

SELECT crclanopr, crclacage, crclandid, crclanomb, crclafinf, crclauser, crclahora, crclafpro FROM crcla;

SELECT fecha, envio, nocrd, fline, qdplz, codid, codil, ctcre, cocre, taeco, indta, cciiu, ccmon, mdese, ptint, ttasa, pefec, ctble, ctbl1, ctbl2, saldo, fndga, tipga, tipcl, tgar1, pcefi, ndpre FROM crcra;

SELECT crdipplaz, crdipoper, crdipnbco, crdipfech, crdipimca, crdipimpc, crdipcuot, crdippord, crdipimpr, crdipimco, crdipmpre 
FROM crdip ORDER BY crdipfech DESC;

