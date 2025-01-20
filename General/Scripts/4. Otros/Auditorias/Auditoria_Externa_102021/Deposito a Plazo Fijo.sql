-- DPF - AUD-EXTERNA 
select distinct 
	a.gbagecage Nro_Socio,--1
	TRIM(a.gbagenomb) Nombre_y_Apellido,--2
	TRIM(a.gbagendid[1,12]) Nro_Cedula_de_Identidad, --3
	a.gbagefnac Fecha_de_Nacimiento,--4
	a.gbagenruc Nro_NIT,--5
	b.pfmdpncrt Nro_de_Cert_Preimpreso,--6
	b.pfmdpndep Nro_Cta_Sistema,--7
	(select l.pfmdpfreg
 	from pfmdp l
 	where l.pfmdpncrt=b.pfmdpncrt
 	and l.pfmdpfreg=(select min(m.pfmdpfreg)
                  	from pfmdp m
				  	where m.pfmdpncrt=l.pfmdpncrt)) Fecha_de_Apertura,--8
	b.pfmdpfvto Fecha_de_Vcto,--9
	b.pfmdpplzo Plazo,--10
	round(c.pftsatasa,2) Tasa,--11
	round(b.pfmdpcapi,2) Importe_en_su_Moneda,--12
	round(decode(b.pfmdpcmon,2,(b.pfmdpcapi* (select gbpmttcof
												from gbpmt)),1,b.pfmdpcapi),2) Importe_en_Bs,--13
	round(j.pfhdvidvg,2) Intereses_Devengados,--14
	(select sum(u.pftdtimpp)
	   from pftdt u
	   where u.pftdtccon=2 
	   and u.pftdtmrcb=0
	   and u.pftdtndep=b.pfmdpndep
	   and u.pftdtftra=(select max(v.pftdtftra)
                    	from pftdt v
                        where v.pftdtndep=u.pftdtndep 
	                    and v.pftdtmrcb=0)) Total_intereses_Pagados_por_el_DPF_Vigente,--15
	b.pfmdpfreg Fecha_de_Renovacion,--16
	0.00 Monto_Pignorado,--17
	b.pfmdpstat Estado,--18
	b.pfmdpcmon Moneda,--19
	b.pfmdpagen Codigo_de_agencia,--20
	b.pfmdpuser Usuario,--21
	'' Cantidad_de_Certificados_de_aportacion,--22
	'' Monto_de_Certificados_de_Aportacion--23
from gbage a,pfmdp b,pftsa c,outer pfhts e,pfcon f,pfcon g,gbofi i,pfhdv j,gbcon m,pfcon n/*outer adusr r*/,outer gbcon s,outer pfven t
where a.gbagecage=b.pfmdpcage
and b.pfmdpndep=c.pftsandep
and b.pfmdpstat=f.pfconcorr
and b.pfmdptdep=e.pfhtstdep
and b.pfmdpcmon=e.pfhtscmon
and b.pfmdpfpgi=g.pfconcorr
and b.pfmdpagen=i.gbofinofi
and b.pfmdpndep=j.pfhdvndep
and a.gbagetper=m.gbconcorr
and b.pfmdpmane=n.pfconcorr
and a.gbagesexo=s.gbconcorr
and b.pfmdpndep=t.pfvenndep
and b.pfmdpplzo between e.pfhtsplzi and e.pfhtsplzf
and j.pfhdvfdvg=(select a.gbpmtfdia
				 from gbpmt a)
and j.pfhdvmrcb=0
and b.pfmdpstat=1
and b.pfmdpmrcb=0
and f.pfconpfij=5
and g.pfconpfij=2
and n.pfconpfij=6
and s.gbconpfij=2
and not exists (select *
     	        from pfret h
		        where h.pfretndep=b.pfmdpndep
			    and h.pfretmrcb=0)
union
-- DPF CON RETENCION
select distinct 
a.gbagecage Nro_Socio,--1
	TRIM(a.gbagenomb) Nombre_y_Apellido,--2
	TRIM(a.gbagendid[1,12]) Nro_Cedula_de_Identidad, --3
	a.gbagefnac Fecha_de_Nacimiento,--4
	a.gbagenruc Nro_NIT,--5
	b.pfmdpncrt Nro_de_Cert_Preimpreso,--6
	b.pfmdpndep Nro_Cta_Sistema,--7
	(select l.pfmdpfreg
 	from pfmdp l
 	where l.pfmdpncrt=b.pfmdpncrt
 	and l.pfmdpfreg=(select min(m.pfmdpfreg)
                  	from pfmdp m
				  	where m.pfmdpncrt=l.pfmdpncrt)) Fecha_de_Apertura,--8
	b.pfmdpfvto Fecha_de_Vcto,--9
	b.pfmdpplzo Plazo,--10
	round(c.pftsatasa,2) Tasa,--11
	round(b.pfmdpcapi,2) Importe_en_su_Moneda,--12
	round(decode(b.pfmdpcmon,2,(b.pfmdpcapi* (select gbpmttcof
												from gbpmt)),1,b.pfmdpcapi),2) Importe_en_Bs,--13
	round(j.pfhdvidvg,2) Intereses_Devengados,--14
	(select sum(u.pftdtimpp)
	   from pftdt u
	   where u.pftdtccon=2 
	   and u.pftdtmrcb=0
	   and u.pftdtndep=b.pfmdpndep
	   and u.pftdtftra=(select max(v.pftdtftra)
                    	from pftdt v
                        where v.pftdtndep=u.pftdtndep 
	                    and v.pftdtmrcb=0)) Total_intereses_Pagados_por_el_DPF_Vigente,--15
	b.pfmdpfreg Fecha_de_Renovacion,--16
	round(b.pfmdpcapi,2) Monto_Pignorado,--17
	b.pfmdpstat Estado,--18
	b.pfmdpcmon Moneda,--19
	b.pfmdpagen Codigo_de_agencia,--20
	b.pfmdpuser Usuario,--21
	'' Cantidad_de_Certificados_de_aportacion,--22
	'' Monto_de_Certificados_de_Aportacion--23
from gbage a,pfmdp b,pftsa c,outer pfhts e,pfcon f,pfcon g,gbofi i,pfhdv j,gbcon m,pfcon n/*outer adusr r*/,outer gbcon s,pftre t,pfret u,outer pfven v
where a.gbagecage=b.pfmdpcage
and b.pfmdpndep=c.pftsandep
and b.pfmdpstat=f.pfconcorr
and b.pfmdptdep=e.pfhtstdep
and b.pfmdpcmon=e.pfhtscmon
and b.pfmdpfpgi=g.pfconcorr
and b.pfmdpagen=i.gbofinofi
and b.pfmdpndep=j.pfhdvndep
and a.gbagetper=m.gbconcorr
and b.pfmdpmane=n.pfconcorr
and a.gbagesexo=s.gbconcorr
and b.pfmdpplzo between e.pfhtsplzi and e.pfhtsplzf
and b.pfmdpcmon=t.pftrecmon
and b.pfmdpplzo between t.pftreplzi and t.pftreplzf
and b.pfmdpndep=u.pfretndep
and t.pftrecodi=u.pfrettret
and b.pfmdpndep=v.pfvenndep
and j.pfhdvfdvg=(select a.gbpmtfdia
				 from gbpmt a)
and j.pfhdvmrcb=0
and b.pfmdpstat=1
and b.pfmdpmrcb=0
and f.pfconpfij=5
and g.pfconpfij=2
and u.pfretmrcb=0
and n.pfconpfij=6
and s.gbconpfij=2
and exists (select *
     	    from pfret h
		    where h.pfretndep=b.pfmdpndep
			and h.pfretmrcb=0)
order by 10,1