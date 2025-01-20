

/* BEBITOS AUTOMATICOS */
-- script_reporte creditos con cuoptas en el mes. by vsm 27/02/2021
--unload to Deb_Aut_Fusion_Antes_Abril.txt
SELECT DISTINCT a.prmprcage cod_cli,
	TRIM(f.gbagenomb) nombre,
	a.prmprnpre nro_prestamo,
	a.prmprstat stat,
	a.prmprppgk per_pag,
	ROUND(a.prmprsald,2) saldo,
	a.prmprcmon mon,
	h.prppgnpag nro_cuota,
	h.prppgfech fec_cuota,
	s.prsorstat stat_prorroga,
	a.prmprfinc fec_incum,
	a.prmprfpvc fec_pasvenc,
	a.prmprfulp fec_pago,
	((SELECT h.gbpmtfdia
	  FROM gbpmt h)-a.prmprfinc) dias_mora,
	((SELECT h.gbpmtfdia
	  FROM gbpmt h)-a.prmprfpvc) dias_incump,
	  f.gbagecalf calf,
	a.prmprdeba deb_aut,
	a.prmprctac cta_deb_aut
FROM prmpr a,prtcr b,prtdt c,gbage f,prcon g, OUTER prsor s, prppg h
WHERE a.prmprtcre=b.prtcrtcre
AND a.prmprnpre=c.prtdtnpre
AND a.prmprcage=f.gbagecage
AND a.prmprstat=g.prconcorr
AND g.prconpref=4
AND a.prmprnpre=h.prppgnpre
AND a.prmprnpre=s.prsornpre
AND a.prmprstat in (2,3,5)
--and a.prmprnpre=10046664
--and h.prppgfech between '2021-04-01' and '2021-04-30'
AND h.prppgfech BETWEEN '2023-03-01' AND '2023-03-31'
ORDER BY 3,13;

--unload to Deb_Aut_Fusion_Antes_230421_Abril.txt
SELECT DISTINCT a.prmprcage cod_cli,
	trim(f.gbagenomb) nombre,
	a.prmprnpre nro_prestamo,
	a.prmprstat stat,
	a.prmprppgk per_pag,
	round(a.prmprsald,2) saldo,
	a.prmprcmon mon,
	h.prppgnpag nro_cuota,
	h.prppgfech fec_cuota,
	s.prsorstat stat_prorroga,
	a.prmprfinc fec_incum,
	a.prmprfpvc fec_pasvenc,
	a.prmprfulp fec_pago,
	((select h.gbpmtfdia
	  from gbpmt h)-a.prmprfinc) dias_mora,
	((select h.gbpmtfdia
  	from gbpmt h)-a.prmprfpvc) dias_incump,
  	f.gbagecalf calf,
	a.prmprdeba deb_aut,
	a.prmprctac cta_deb_aut
from prmpr a,prtcr b,prtdt c,gbage f,prcon g,prppg h,
outer prsor s
where a.prmprtcre=b.prtcrtcre
and a.prmprnpre=c.prtdtnpre
and a.prmprcage=f.gbagecage
and a.prmprstat=g.prconcorr
and g.prconpref=4
and a.prmprnpre=h.prppgnpre
and a.prmprnpre=s.prsornpre
and a.prmprstat in (2,3,5)
and h.prppgfech between '2023-03-01' and '2023-03-31'
order by 3,13;



--unload to prmpr_despues_cierre_TESTING.txt
select a.prmprcage,
	a.prmprnpre,
	a.prmprcmon,
	a.prmprsald,
	a.prmprstat,
	a.prmprfinc,
	a.prmprfpvc,
	a.prmprfulp,
	decode(a.prmprnpre,
		(select c.prmprnpre
		 from prmpr c
		where c.prmprnpre=a.prmprnpre
		and not exists(select *
					   from prsor d
					   where d.prsornpre=a.prmprnpre)),'n',
					  (select c.prmprnpre
				      from prmpr c
				      where c.prmprnpre=a.prmprnpre
		and exists(select *
				   from prsor d
				   where d.prsornpre=a.prmprnpre)),'s') sol_prorroga,
	s.prsorstat stat_prorroga
from prmpr a,outer prsor s 
where a.prmprnpre=s.prsornpre
and a.prmprstat in (2,3,5,6,7)
--and a.prmprsald<='0.01'
--and a.prmprfinc is not null
and a.prmprnpre in (10047144,15003136,18007729,18007730,19016012,19018612,19023924)
and a.prmprtcre not between 60 and 67
order by 2;
