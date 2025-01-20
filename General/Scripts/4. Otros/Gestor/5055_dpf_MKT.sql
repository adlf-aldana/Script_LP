/* DPF MKT */ --ULT. MODIF. 08/11/2021 BY: AMY
-- 09/11/2021
select distinct 
  	b.pfmdpagen regional,--1
	b.pfmdpndep nro_dpf,--2
	b.pfmdpfreg fecha_apert, --3
	b.pfmdpfvto Fecha_Vcto, --4
	e.pfhtsdesc tipo_dpf,--5
	trim(d.pfcondesc) estado,--6
  	round(c.pftsatasa,2) tasa,--7
  	round(b.pfmdpcapi,2) monto_apertura,--8
  	'CAPITAL' tipo_monto,--9
  	b.pfmdpplzo Plazo,--10
  	b.pfmdpcmon Moneda,--11
 	e.pfhtscnom cta_contable,--12
 	decode(b.pfmdpndep,(select c.pfmdpndep
					from pfmdp c
					where c.pfmdpndep=b.pfmdpndep
					and not exists (select *
					                from pfven t
					                where t.pfvenndep=c.pfmdpndep)),null,
					(select c.pfmdpndep
					 from pfmdp c
					 where c.pfmdpndep=b.pfmdpndep
					 and exists (select *
					             from pfven t
					             where t.pfvenndep=c.pfmdpndep)),(select f.gbagecage
					            							      from pfven e,gbage f
					            							      where e.pfvencven=f.gbagecage
					            							      and e.pfvenndep=b.pfmdpndep
					            							      and e.pfvenmrcb=0)) cod_asesor,--13
	decode(b.pfmdpndep,(select c.pfmdpndep
					from pfmdp c
					where c.pfmdpndep=b.pfmdpndep
					and not exists (select *
					                from pfven t
					                where t.pfvenndep=c.pfmdpndep)),null,
					(select c.pfmdpndep
					 from pfmdp c
					 where c.pfmdpndep=b.pfmdpndep
					 and exists (select *
					             from pfven t
					             where t.pfvenndep=c.pfmdpndep)),(select TRIM(f.gbagenomb)
					            							      from pfven e,gbage f
					            							      where e.pfvencven=f.gbagecage
					            							      and e.pfvenndep=b.pfmdpndep
					            							      and e.pfvenmrcb=0)) nomb_asesor,--14
	decode(a.gbagetper,1,'PERSONA NATURAL','PERSONA JURIDICA') tipo_persona,--15
  	a.gbagecage cod_cliente,--16
	TRIM(a.gbagenomb) Nombre,--17
 	decode(a.gbagesexo,1,'M',2,'F') Genero,--18
	round(((select o.gbpmtfdia
		from gbpmt o)-a.gbagefnac)/365,0) edad,--19
	DECODE(a.gbagetlfd, null, gb.gbdaccelu, a.gbagetlfd) telefono,--20
  	round((select a.gbpmttcof
			from gbpmt a),2) tc_dolar--21
from gbage a,pfmdp b,pftsa c,pfcon d,outer pfhts e, gbdac gb,gbofi i, gbdpt p
where a.gbagecage=b.pfmdpcage
and b.pfmdpndep=c.pftsandep
and gb.gbdaccage=a.gbagecage
and b.pfmdpstat=d.pfconcorr
and d.pfconpfij=5
and b.pfmdptdep=e.pfhtstdep
and b.pfmdpcmon=e.pfhtscmon
and b.pfmdpplaz=i.gbofiplaz
and b.pfmdpagen=i.gbofinofi
and b.pfmdpplzo between e.pfhtsplzi and e.pfhtsplzf
and b.pfmdpstat=1
and b.pfmdpmrcb=0
and i.gbofidpto=p.gbdptdpto
and not exists (select *
     	    from pfret h
		    where h.pfretndep=b.pfmdpndep
			and h.pfretmrcb=0)
union
select distinct
  	b.pfmdpagen regional,--1
	b.pfmdpndep nro_dpf,--2
	b.pfmdpfreg fecha_apert, --3
	b.pfmdpfvto Fecha_Vcto, --4
	e.pfhtsdesc tipo_dpf,--5
	trim(d.pfcondesc) estado,--6
  	round(c.pftsatasa,2) tasa,--7
  	round(b.pfmdpcapi,2) monto_apertura, --8
  	'RETENIDO/PIGNORADO' tipo_monto,--9
  	b.pfmdpplzo Plazo,--10
  	b.pfmdpcmon Moneda,--11
  	t.pftrecctb cta_contable,--12
	decode(b.pfmdpndep,(select c.pfmdpndep
					from pfmdp c
					where c.pfmdpndep=b.pfmdpndep
					and not exists (select *
					                from pfven t
					                where t.pfvenndep=c.pfmdpndep)),null,
					(select c.pfmdpndep
					 from pfmdp c
					 where c.pfmdpndep=b.pfmdpndep
					 and exists (select *
					             from pfven t
					             where t.pfvenndep=c.pfmdpndep)),(select f.gbagecage
					            							      from pfven e,gbage f
					            							      where e.pfvencven=f.gbagecage
					            							      and e.pfvenndep=b.pfmdpndep
					            							      and e.pfvenmrcb=0)) cod_asesor,--13
	decode(b.pfmdpndep,(select c.pfmdpndep
					from pfmdp c
					where c.pfmdpndep=b.pfmdpndep
					and not exists (select *
					                from pfven t
					                where t.pfvenndep=c.pfmdpndep)),null,
					(select c.pfmdpndep
					 from pfmdp c
					 where c.pfmdpndep=b.pfmdpndep
					 and exists (select *
					             from pfven t
					             where t.pfvenndep=c.pfmdpndep)),(select TRIM(f.gbagenomb)
					            							      from pfven e,gbage f
					            							      where e.pfvencven=f.gbagecage
					            							      and e.pfvenndep=b.pfmdpndep
					            							      and e.pfvenmrcb=0)) nomb_asesor,--14
	decode(a.gbagetper,1,'PERSONA NATURAL','PERSONA JURIDICA') tipo_persona,--15
  	a.gbagecage cod_cliente,--16
	TRIM(a.gbagenomb) Nombre,--17
  	decode(a.gbagesexo,1,'M',2,'F') Genero,--18
  	round(((select o.gbpmtfdia
		from gbpmt o)-a.gbagefnac)/365,0) edad,--19
  	a.gbagetlfd telefono,--20
  	round((select a.gbpmttcof
		from gbpmt a),2) tc_dolar--21
from gbage a,pfmdp b,pftsa c, pfcon d, outer pfhts e, gbdac gb,gbofi i, gbdpt p, pftre t
where a.gbagecage=b.pfmdpcage
and b.pfmdpndep=c.pftsandep
and gb.gbdaccage=a.gbagecage
and b.pfmdpstat=d.pfconcorr
and d.pfconpfij=5
and b.pfmdptdep=e.pfhtstdep
and b.pfmdpcmon=e.pfhtscmon
and b.pfmdpplaz=i.gbofiplaz
and b.pfmdpagen=i.gbofinofi
and b.pfmdpplzo between e.pfhtsplzi and e.pfhtsplzf
and b.pfmdpcmon=t.pftrecmon
and b.pfmdpplzo between t.pftreplzi and t.pftreplzf
and b.pfmdpstat=1
and b.pfmdpmrcb=0
and i.gbofidpto=p.gbdptdpto
and exists (select *
     	    from pfret h
		    where h.pfretndep=b.pfmdpndep
			and h.pfretmrcb=0)
order by 16,2,3;


select *from pfmdp;
--pfmdpndep