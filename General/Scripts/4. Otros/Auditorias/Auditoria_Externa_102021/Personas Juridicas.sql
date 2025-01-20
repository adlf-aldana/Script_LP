--ANEXO I-2
/* PERSONAS JURIDICAS - 29/09/2021 */
select distinct 
	a.gbagecage CODIGO, --1
	TRIM(a.gbagenomb) Razon_Social, --2
	TRIM(c.gbcondesc) Tipo_sociedad, --3
	TRIM(n.gbciidesc) Actividad,--4
	'' ESTRUCTURA_DE_TITULARIDAD_Y_CONTROL,--5
	'' NOMBRE,--6
	'' DOCUMENTO_IDENTIDAD,--7
	 DECODE(TRIM((select s.gbdirdire
			from gbdir s
      		where s.gbdircage=a.gbagecage
      		and s.gbdiritem=p.gbdiritem
      		and s.gbdirmrcb=0
      		and s.gbdirtdir=1)), NULL, '', TRIM((select s.gbdirdire
			from gbdir s
      		where s.gbdircage=a.gbagecage
      		and s.gbdiritem=p.gbdiritem
      		and s.gbdirmrcb=0
      		and s.gbdirtdir=1))) || ' / ' ||
    DECODE(TRIM((select t.gbdirdire
    		from gbdir t
    		where t.gbdircage=a.gbagecage
    		and t.gbdiritem=q.gbdiritem
    		and t.gbdirmrcb=0
    		and t.gbdirtdir=2)), NULL, ' ', TRIM((select t.gbdirdire
    		from gbdir t
    		where t.gbdircage=a.gbagecage
    		and t.gbdiritem=q.gbdiritem
    		and t.gbdirmrcb=0
    		and t.gbdirtdir=2))) DOMICILIO,--8
	DECODE(v.gbtlftelf, null, DECODE(w.gbtlftelf, null, u.gbtlftelf, w.gbtlftelf), v.gbtlftelf ) TELEFONO,--9
	'' RELACION_COMERCIAL,--10
	'' CLASIFICACION_TIPO_RIESGO,--11
	TRIM(b.gbdacrepr) NOMBRE,--12
	'' RAZON_SOCIAL,--13
	TRIM(g.gbagendid[1,12]) DOCUMENTO_IDENTIDAD,--14
	TRIM(g.gbagenaci) FECHA_NACIMIENTO,--15
	TRIM(i.gbpaidesc) NACIONALIDAD,--16
	'' PARTICIPACION,--17
	TRIM(l.gbciidesc) ACTIVIDAD_ECONOMICA,--18
	TRIM((select s.gbdirdire
      		from gbdir s
      		where s.gbdircage=g.gbagecage
      		and s.gbdiritem=r.gbdiritem
      		and s.gbdirmrcb=0
      		and s.gbdirtdir=1)) DOMICILIO,--19
	'' OTROS --20
from gbage a,gbdac b,outer gbcon c,outer gbcon d,outer gbcae e,outer gbrag f,outer gbrag ff,outer gbrag fff,outer gbdbi ffff,gbage g,gbdac h,outer gbpai i,outer gbcon j,
outer gbprf k,outer gbcii l,outer gblab m,outer gbcii n,outer gbdir o,outer gbdir p,outer gbdir q,outer gbdir r,outer gbdir s,outer gbrag t,outer gbrag tt,outer gbrag ttt,
outer gbtlf u,outer gbtlf v,outer gbtlf w,outer gbtlf x,outer gbtlf y,outer gbtlf z
where a.gbagecage=b.gbdaccage
and a.gbagetper=c.gbconcorr
and a.gbagetdid=d.gbconcorr
and a.gbageciiu=e.gbcaeciiu
and a.gbagecage=f.gbragcage
and a.gbagecage=ff.gbragcage
and a.gbagecage=fff.gbragcage
and a.gbagecage=ffff.gbdbicage
and b.gbdacrepr=g.gbagenomb
and g.gbagecage=h.gbdaccage
and h.gbdacpaip=i.gbpaipais
and g.gbageeciv=j.gbconcorr
and g.gbageprof=k.gbprfprof
and g.gbageciiu=l.gbciiciiu
and g.gbagecage=m.gblabcage
and a.gbageciiu=n.gbciiciiu
and a.gbagecage=o.gbdircage
and a.gbagecage=p.gbdircage
and a.gbagecage=q.gbdircage
and g.gbagecage=r.gbdircage
and g.gbagecage=s.gbdircage
and g.gbagecage=t.gbragcage
and g.gbagecage=tt.gbragcage
and g.gbagecage=ttt.gbragcage
and a.gbagecage=u.gbtlfcage
and a.gbagecage=v.gbtlfcage
and a.gbagecage=w.gbtlfcage
and g.gbagecage=x.gbtlfcage
and g.gbagecage=y.gbtlfcage
and g.gbagecage=z.gbtlfcage
and j.gbconpfij=3
and c.gbconpfij=1
and d.gbconpfij=4
and a.gbagetper>1
and a.gbagemrcb=0
and f.gbragmrcb=0
and m.gblabmrcb=0
and o.gbdirmrcb=0
and p.gbdirmrcb=0
and q.gbdirmrcb=0
and r.gbdirmrcb=0
and s.gbdirmrcb=0
and f.gbragitem=(select min(t.gbragitem)
				 from gbrag t
				 where t.gbragcage=a.gbagecage
				 and t.gbragtrag=1
				 and t.gbragmrcb=0)
and ff.gbragitem=(select min(t.gbragitem)
				 from gbrag t
				 where t.gbragcage=a.gbagecage
				 and t.gbragtrag=2
				 and t.gbragmrcb=0)
and fff.gbragitem=(select min(t.gbragitem)
				   from gbrag t
				   where t.gbragcage=a.gbagecage
				   and t.gbragtrag=3
				   and t.gbragmrcb=0)
and ffff.gbdbifech=(select max(t.gbdbifech)
				    from gbdbi t
				    where t.gbdbicage=ffff.gbdbicage)				 	 
and p.gbdiritem=(select min(v.gbdiritem)
				 from gbdir v
				 where v.gbdircage=a.gbagecage
				 and v.gbdirtdir=1
				 and v.gbdirmrcb=0)
and q.gbdiritem=(select min(w.gbdiritem)
				 from gbdir w
				 where w.gbdircage=a.gbagecage
				 and w.gbdirtdir=2
				 and w.gbdirmrcb=0)	 
and r.gbdiritem=(select min(x.gbdiritem)
				 from gbdir x
				 where x.gbdircage=g.gbagecage
				 and x.gbdirtdir=1
				 and x.gbdirmrcb=0)
and s.gbdiritem=(select min(y.gbdiritem)
				 from gbdir y
				 where y.gbdircage=g.gbagecage
				 and y.gbdirtdir=2
				 and y.gbdirmrcb=0)
and t.gbragitem=(select min(s.gbragitem)
				 from gbrag s
				 where s.gbragcage=g.gbagecage
				 and s.gbragtrag=1
				 and s.gbragmrcb=0)
and tt.gbragitem=(select min(s.gbragitem)
				  from gbrag s
				  where s.gbragcage=g.gbagecage
				  and s.gbragtrag=2
				  and s.gbragmrcb=0)
and ttt.gbragitem=(select min(s.gbragitem)
				   from gbrag s
				   where s.gbragcage=g.gbagecage
				   and s.gbragtrag=3
				   and s.gbragmrcb=0)
and u.gbtlfitem=(select min(xx.gbtlfitem)
				 from gbtlf xx
				 where xx.gbtlfcage=a.gbagecage
				 and xx.gbtlfttlf=1
				 and xx.gbtlfmrcb=0)
and v.gbtlfitem=(select min(yy.gbtlfitem)
				 from gbtlf yy
				 where yy.gbtlfcage=a.gbagecage
				 and yy.gbtlfttlf=3
				 and yy.gbtlfmrcb=0)	
and w.gbtlfitem=(select min(zz.gbtlfitem)
				 from gbtlf zz
				 where zz.gbtlfcage=a.gbagecage
				 and zz.gbtlfttlf=5
				 and zz.gbtlfmrcb=0)
and x.gbtlfitem=(select min(xxx.gbtlfitem)
				 from gbtlf xxx
				 where xxx.gbtlfcage=g.gbagecage
				 and xxx.gbtlfttlf=1
				 and xxx.gbtlfmrcb=0)	
and y.gbtlfitem=(select min(yyy.gbtlfitem)
				 from gbtlf yyy
				 where yyy.gbtlfcage=g.gbagecage
				 and yyy.gbtlfttlf=3
				 and yyy.gbtlfmrcb=0)
and z.gbtlfitem=(select min(zzz.gbtlfitem)
				 from gbtlf zzz
				 where zzz.gbtlfcage=g.gbagecage
				 and zzz.gbtlfttlf=5
				 and zzz.gbtlfmrcb=0)					  
and ((exists (select *
		      from camca f
			  where f.camcacage=a.gbagecage
			  and f.camcastat in (1,2,3))
and exists (select *
		    from pfmdp g
			where g.pfmdpcage=a.gbagecage
			and g.pfmdpstat in (1)
			and g.pfmdpmrcb=0))
or (exists (select *
		    from camca f
			where f.camcacage=a.gbagecage
			and f.camcastat in (1,2,3))
and not exists (select *
		        from pfmdp g
			    where g.pfmdpcage=a.gbagecage
			    and g.pfmdpstat in (1)
			    and g.pfmdpmrcb=0))
or (not exists (select *
		        from camca f
			    where f.camcacage=a.gbagecage
			    and f.camcastat in (1,2,3))
and exists (select *
		    from pfmdp g
			where g.pfmdpcage=a.gbagecage
			and g.pfmdpstat in (1)
			and g.pfmdpmrcb=0))
or (not exists (select *
		        from camca f
			    where f.camcacage=a.gbagecage
			    and f.camcastat in (1,2,3))
and not exists (select *
		        from pfmdp g
			    where g.pfmdpcage=a.gbagecage
			    and g.pfmdpstat in (1)
			    and g.pfmdpmrcb=0)
and exists (select *
		    from prmpr g,prdeu t
			where g.prmprnpre=t.prdeunpre
			and t.prdeucage=a.gbagecage
			and g.prmprstat in (2,3,5,6,7)
			and g.prmprtcre not between 60 and 67)))
order by 1;