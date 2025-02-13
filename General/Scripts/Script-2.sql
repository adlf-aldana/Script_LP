/*SALDOS CONTABLES INTERES PRORRATEADO*/
select decode(a.prmprstat,2,d.prcgpcctb,5,d.prcgpcctv,d.prcgpccte) ctble,
round(decode(a.prmprcmon,1,(sum(b.prdifsald)),(sum(b.prdifsald)*6.86)),2) saldo_prorr
from prmpr a,prdif b,prpdd c,outer prcgp d
where a.prmprnpre=b.prdifnpre
and a.prmprtcre=c.prpddtcre
and b.prdifcarg=c.prpddinpr
and b.prdifcarg=d.prcgpcarg
and a.prmprcmon=d.prcgpcmon
and b.prdifsald>0
group by 1,prmprcmon
order by 1,2;

/* DIFERIMIENTOS */
select distinct a.prmprnpre,b.crceccalf calf,b.crcecfech fecha_corte,d.prhdvstat estado_corte,a.prmprstat stat_Actual,a.prmprfdes fec_desemb,a.prmprfvac fec_venc,a.prmprfulp fec_ult_pag,
decode(c.prdipnpre,
	NULL, 'NO',
	'', 'NO', 'SI') diferido_mes_corte
from prmpr a,crcec b,outer prdip c,outer prhdv d
where a.prmprnpre=b.crcecnbco
and a.prmprnpre=c.prdipnpre
and a.prmprnpre=d.prhdvnpre
and b.crcecfech=d.prhdvfdia
and year(c.prdipfreg)=year(b.crcecfech)
and month(c.prdipfreg)=month(b.crcecfech)
and b.crcecfech between '2025-01-01' and '2025-01-31'
and c.prdipmrcb=0
--and a.prmprnpre in (10044811,10044817)
order by 1,3;



-- PARA AJUSTE DE PRODUCTOS A FECHA DE CORTE
-- SUMATORIA AGRUPADA POR CUENTA CON CRCRO ==> Archivo O
select a.cccn1,a.cccn2,a.cccn3,a.cccn4,a.cccn5,count(*) cant_reg,round(sum(a.msccn),2) total_mon_orig,round(decode(a.cccn5,1,sum(a.msccn),2,(sum(a.msccn)*6.86)),2) total_bs 
from crcro a
where a.cccn1=1
and a.cccn2 in (3)
and a.cccn3 in (8)
group by 1,2,3,4,5
order by 1,2,3,4,5;

select a.cccn1,a.cccn2,a.cccn3,a.cccn4,a.cccn5,count(*) cant_reg,round(sum(a.msccn),2) total_mon_orig,round(decode(a.cccn5,1,sum(a.msccn),2,(sum(a.msccn)*6.86)),2) total_bs 
from crcro a
where a.cccn1=1
and a.cccn2 in (3)
and a.cccn3 in (8)
group by 1,2,3,4,5
order by 1,2,3,4,5;

-- SIN CREDITOS
select a.cccn1,a.cccn2,a.cccn3,a.cccn4,a.cccn5,count(*) cant_reg,round(sum(a.msccn),2) total_mon_orig,round(decode(a.cccn5,1,sum(a.msccn),2,(sum(a.msccn)*6.86)),2) total_bs,
b.crcecplaz plaza,b.crcecagen agen,d.prtpmpcvg vig,d.prtpmpcvn ven,d.prtpmpcej ejec
from crcro a,crcec b,prmpr c,prtpm d
where a.nocrd=b.crcecoper
and b.crcecnbco=c.prmprnpre
and c.prmprtcre=d.prtpmtcre
and c.prmprcmon=d.prtpmcmon
and a.cccn1=1
and a.cccn2 in (3)
and a.cccn3 in (1)
--and a.cccn4=01
--and a.cccn5=2
and b.crcecfech='2023-05-31'
--and d.prtpmpcvg like '13801208'
--and c.prmprnpre in (18007062,18007873)
group by 1,2,3,4,5,9,10,11,12,13
order by 1,2,3,4,5,9,10,11;

-- CON CREDITOS
select a.cccn1,a.cccn2,a.cccn3,a.cccn4,a.cccn5,count(*) cant_reg,round(sum(a.msccn),2) total_mon_orig,round(decode(a.cccn5,1,sum(a.msccn),2,(sum(a.msccn)*6.86)),2) total_bs,
b.crcecnbco nro_prestamo,b.crcecplaz plaza,b.crcecagen agen,d.prtpmpcvg vig,d.prtpmpcvn ven,d.prtpmpcej ejec,c.prmprtcre tcre,c.prmprcmon mon
from crcro a,crcec b,prmpr c,prtpm d
where  a.nocrd=b.crcecoper
and b.crcecnbco=c.prmprnpre
and c.prmprtcre=d.prtpmtcre
and c.prmprcmon=d.prtpmcmon
--and a.cccn1=1
--and a.cccn2 in (3)
--and a.cccn3 in (8)
--and a.cccn4=01
--and a.cccn5=1
and b.crcecagen=30
and b.crcecfech='2025-01-31'
--and c.prmprtcre in (502,504,506)
--and d.prtpmpcvg like '13801208'
and c.prmprnpre in (10043667)
group by 1,2,3,4,5,9,10,11,12,13,14,15,16
order by 1,2,3,4,5,9,10,11;


-- CON CREDITOS + PRDIF
select a.cccn1,a.cccn2,a.cccn3,a.cccn4,a.cccn5,count(*) cant_reg,round(sum(a.msccn),2) total_mon_orig,round(decode(a.cccn5,1,sum(a.msccn),2,(sum(a.msccn)*6.86)),2) total_bs,
b.crcecnbco nro_prestamo,b.crcecplaz plaza,b.crcecagen agen,d.prtpmpcvg vig,d.prtpmpcvn ven,d.prtpmpcej ejec,c.prmprtcre tcre,c.prmprcmon mon,e.prdifsald,e.prdifcarg,f.prcgpcctb,f.prcgpcctv,f.prcgpccte
from crcro a,crcec b,prmpr c,prtpm d,prdif e,prcgp f
where a.nocrd=b.crcecoper
and b.crcecnbco=c.prmprnpre
and c.prmprtcre=d.prtpmtcre
and c.prmprcmon=d.prtpmcmon
and b.crcecnbco=e.prdifnpre
and e.prdifcarg=f.prcgpcarg
and ((f.prcgpcarg between 420 and 427)
or f.prcgpcarg between 430 and 452)--and e.prdifsald between 284000 and 284200
and a.cccn1=1
and a.cccn2 in (3)
and a.cccn3 in (8)
--and a.cccn4=01
--and a.cccn5=1
--and b.crcecagen=30
--and f.prcgpcctb like'13801%'
and b.crcecfech='2025-01-31'
--and c.prmprfsta between '2024-01-01' and '2024-01-31'
--and f.prcgpcctv like '138061%'
and c.prmprnpre in (10046849)
group by 1,2,3,4,5,9,10,11,12,13,14,15,16,17,18,19,20,21
order by 1,2,3,4,5,9,10,11;

-- VERIFICAR QUE CREDITOS CAMBIARON DE ESTADO EN EL MES, SEGUN LA AGENCIA 
select *
from prmpr a
where a.prmprfsta between '2024-01-01' and '2025-01-31'
and a.prmpragen=30
and a.prmprnpre=10046849

-- VERIFICAR QUE CREDITOS TIENEN EL CARGO DE LA CTA. CTBLE. 
select *
from prdif a
where a.prdifnpre in (10046337,10046545,10047323,10047683,10047947,10048147,10048509,10048701)
and a.prdifcarg=422;

select *
from prdif a
where a.prdifnpre in (10046849)
and a.prdifcarg=422;

select *
from prcas a
where a.prcasnpre in(10046849)
order by 1;

select *
from prtcn a
where a.prtcnnpre in(10043667)
and a.prtcnftra>='2025-01-01'
--and a.prtcnccon=422
order by 3,4;


update prtcn a
set a.prtcncctb=13854101
where a.prtcnnpre in(10047683)
and a.prtcnccon=122
and a.prtcnftra>='2024-01-01';

-- 13150102 si Contabilidad no ajusto Capital
update prtcn a
set a.prtcncctb=13150102  
where a.prtcnnpre in(10047683)
and a.prtcnccon=160
and a.prtcnftra>='2024-01-01';


-- Interés diferido
select *
from cndtr a
where a.cndtrfdoc='2025-01-31'
--and a.cndtrntra=94
--and a.cndtritem=90
and (a.cndtrimpi=6593.45
or a.cndtrimpi=-6593.45);

update cndtr a
set a.cndtrcnta=13854101
where a.cndtrntra=94
and a.cndtritem=90
and a.cndtrcnta=13850101;

-- Capital diferido
select *
from cndtr a
where a.cndtrfdoc='2024-01-04'
--and a.cndtrntra=94
--and a.cndtritem=90
and (a.cndtrimpi=5237.51
or a.cndtrimpi=-5237.51);


update cndtr a
set a.cndtrcnta=13452102
where a.cndtrntra=94
and a.cndtritem=27
and a.cndtrcnta=13150102;