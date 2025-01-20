/* ANEXO I - 1
BASE DE DATOS CLIENTES
PERSONAS NATURALES */
select distinct a.gbagecage codigo, --1
	CONCAT(trim(decode(b.gbdacnomb, null, '', b.gbdacnomb))||' ',trim(b.gbdacape1)||' '||decode(b.gbdacape2,null,'',trim(b.gbdacape2))) NOMBRE,--2
	a.gbagefnac || ' / ' || (select gbcondesc
							from gbcon
							where gbconpfij=76
							and b.gbdacciun=gbconcorr) FECHA_LUGAR_NACIMIENTO,--3 LUGAR NACIMIENTO
	concat(TRIM(a.gbagendid[1,12]), decode(a.gbagecomp, null, TRIM(a.gbagendid[13,20]), a.gbagendid[15,20]))DOCUMENTO_IDENTIDAD, --4
	DECODE(a.gbagenruc,null,'NO APLICA',a.gbagenruc) NIT, --5
	TRIM(a.gbagenaci) NACIONALIDAD, --6
	TRIM(g.gbpaidesc) PAIS_RESIDENCIA, --7
	d.gbcondesc ESTADO_CIVIL, --8
	b.gbdacnoco NOMBRE_CONYUGUE, --9
	decode(a.gbageeciv,1,null,2,(select p.gbageact1
   	   from gbrel o,gbage p 
    	 where o.gbrelcagr=p.gbagecage 					
		 and o.gbrelcage=a.gbagecage 
		 and o.gbreltrel=1),3,null,4,null) ACTIV_ECON_CONYUGUE, --10
	TRIM((select s.gbdirdire
      from gbdir s
	  where s.gbdircage=a.gbagecage
	  and s.gbdiritem=p.gbdiritem
	  and s.gbdirmrcb=0
	  and s.gbdirtdir=1)) DOM_PARTICULAR,--11
	TRIM((select t.gbdirdire
		from gbdir t
		where t.gbdircage=a.gbagecage
		and t.gbdiritem=q.gbdiritem
		and t.gbdirmrcb=0
		and t.gbdirtdir=2)) DOM_COMERCIAL,--12
	DECODE(a.gbagetlfd, null, b.gbdaccelu, a.gbagetlfd) TELEFONO,--13
	TRIM(j.gbciidesc) ACT_ECONOMICA, --14
	decode(l.gblabnsal,
			1,'SIN INGRESOS',
			2,'de 1 a 1000',
			3,'de 1001 a 2000',
			4,'de 2001 a 4000',
			5,'de 4001 a 6000',
			6,'de 6001 a 10000',
			7,'de 10001 a 15000',
			8,'de 15001 a 20000',
			9,'de 20001 a mas') NIVEL_INGRESO, --15
	TRIM(e.gbprfdesc) PROFESION, --16
	TRIM(l.gblabnemp) LUGAR_TRABAJO,--17
	TRIM(l.gblabdcar) CARGO, --18
	l.gblabfing FECHA_INGRESO_TRABAJO,--19
	DECODE(b.gbdacmail,null,'NO APLICA',b.gbdacmail) CORREO_ELECTRONICO,--20
	'REF.PER:' ||
	TRIM((select s.gbragnomb
      from gbrag s
      where s.gbragcage=a.gbagecage
      and s.gbragitem=m.gbragitem
      and s.gbragmrcb=0
      and s.gbragtrag=1)) 
    || ' / REF.COM:' ||  
    TRIM((select t.gbragnomb
          from gbrag t
          where t.gbragcage=a.gbagecage
          and t.gbragitem=n.gbragitem
		  and t.gbragmrcb=0
		  and t.gbragtrag=2)) 
	|| ' / REF.BANC:' ||	  
	TRIM((select u.gbragnomb
    		from gbrag u
			where u.gbragcage=a.gbagecage
			and u.gbragitem=o.gbragitem
			and u.gbragmrcb=0
			and u.gbragtrag=3)) REFERENCIAS,--21			
	'' CLASIFICACION_TIPO_RIESGO,
--22
	'' OTROS
--23
from
gbage a,
gbdac b,
outer gbcon c,
outer gbcon d,
outer gbprf e,
outer gbpai g,
gbcon h,
outer gbcii j,
outer gblab l,
outer gbrag m,
outer gbrag n,
outer gbrag o,
outer gbdir p,
outer gbdir q,
outer gbdir r,
outer gbtlf s,
outer gbtlf t,
outer gbtlf u,
outer gbdbi w
where
a.gbagecage = b.gbdaccage
and a.gbagetdid = c.gbconcorr
and c.gbconpfij = 4
and a.gbageeciv = d.gbconcorr
and d.gbconpfij = 3
and a.gbageprof = e.gbprfprof
and b.gbdacpaip = g.gbpaipais
and a.gbagetdid = h.gbconcorr
and h.gbconpfij = 4
and a.gbageciiu = j.gbciiciiu
and a.gbagecage = l.gblabcage
and a.gbagecage = m.gbragcage
and a.gbagecage = n.gbragcage
and a.gbagecage = o.gbragcage
and a.gbagecage = p.gbdircage
and a.gbagecage = q.gbdircage
and a.gbagecage = r.gbdircage
and a.gbagecage = s.gbtlfcage
and a.gbagecage = t.gbtlfcage
and a.gbagecage = u.gbtlfcage
and a.gbagecage = w.gbdbicage
and a.gbagemrcb = 0
and a.gbagetper = 1
and l.gblabmrcb = 0
and m.gbragmrcb = 0
and n.gbragmrcb = 0
and o.gbragmrcb = 0
and p.gbdirmrcb = 0
and q.gbdirmrcb = 0
and r.gbdirmrcb = 0
and w.gbdbifech =(
select
	max(gb.gbdbifech)
from
	gbdbi gb
where
	gb.gbdbicage = w.gbdbicage)
and m.gbragitem =(
select
	min(s.gbragitem)
from
	gbrag s
where
	s.gbragcage = a.gbagecage
	and s.gbragtrag = 1
	and s.gbragmrcb = 0)
and n.gbragitem =(
select
	min(t.gbragitem)
from
	gbrag t
where
	t.gbragcage = a.gbagecage
	and t.gbragtrag = 2
	and t.gbragmrcb = 0)
and o.gbragitem =(
select
	min(u.gbragitem)
from
	gbrag u
where
	u.gbragcage = a.gbagecage
	and u.gbragtrag = 3
	and u.gbragmrcb = 0)
and p.gbdiritem =(
select
	min(v.gbdiritem)
from
	gbdir v
where
	v.gbdircage = a.gbagecage
	and v.gbdirtdir = 1
	and v.gbdirmrcb = 0)
and q.gbdiritem =(
select
	min(w.gbdiritem)
from
	gbdir w
where
	w.gbdircage = a.gbagecage
	and w.gbdirtdir = 2
	and w.gbdirmrcb = 0)
and r.gbdiritem =(
select
	min(x.gbdiritem)
from
	gbdir x
where
	x.gbdircage = a.gbagecage
	and x.gbdirtdir = 3
	and x.gbdirmrcb = 0)
and s.gbtlfitem =(
select
	min(xx.gbtlfitem)
from
	gbtlf xx
where
	xx.gbtlfcage = a.gbagecage
	and xx.gbtlfttlf = 1
	and xx.gbtlfmpri = 1
	and xx.gbtlfmrcb = 0)
and t.gbtlfitem =(
select
	min(yy.gbtlfitem)
from
	gbtlf yy
where
	yy.gbtlfcage = a.gbagecage
	and yy.gbtlfttlf = 3
	and yy.gbtlfmpri = 1
	and yy.gbtlfmrcb = 0)
and u.gbtlfitem =(
select
	min(zz.gbtlfitem)
from
	gbtlf zz
where
	zz.gbtlfcage = a.gbagecage
	and zz.gbtlfttlf = 5
	and zz.gbtlfmpri = 1
	and zz.gbtlfmrcb = 0)
and ((exists (
select
	*
from
	camca f
where
	f.camcacage = a.gbagecage
	and f.camcastat in (1, 2, 3))
	and exists (
	select
		*
	from
		pfmdp g
	where
		g.pfmdpcage = a.gbagecage
		and g.pfmdpstat in (1)
			and g.pfmdpmrcb = 0))
or (exists (
select
	*
from
	camca f
where
	f.camcacage = a.gbagecage
	and f.camcastat in (1, 2, 3))
	and not exists (
	select
		*
	from
		pfmdp g
	where
		g.pfmdpcage = a.gbagecage
		and g.pfmdpstat in (1)
			and g.pfmdpmrcb = 0))
or (not exists (
select
	*
from
	camca f
where
	f.camcacage = a.gbagecage
	and f.camcastat in (1, 2, 3))
	and exists (
	select
		*
	from
		pfmdp g
	where
		g.pfmdpcage = a.gbagecage
		and g.pfmdpstat in (1)
			and g.pfmdpmrcb = 0))
or (not exists (
select
	*
from
	camca f
where
	f.camcacage = a.gbagecage
	and f.camcastat in (1, 2, 3))
	and not exists (
	select
		*
	from
		pfmdp g
	where
		g.pfmdpcage = a.gbagecage
		and g.pfmdpstat in (1)
			and g.pfmdpmrcb = 0)
	and exists (
	select
		*
	from
		prmpr g,
		prdeu t
	where
		g.prmprnpre = t.prdeunpre
		and t.prdeucage = a.gbagecage
		and g.prmprstat in (2, 3, 5, 6, 7)
			and g.prmprtcre not between 60 and 67)))
order by
1;
/*'REF.PER:',
	TRIM((select s.gbragnomb
      from gbrag s
      where s.gbragcage=a.gbagecage
      and s.gbragitem=m.gbragitem
      and s.gbragmrcb=0
      and s.gbragtrag=1)) ref_pers,--21.1
    '/REF.COM:',  
    TRIM((select t.gbragnomb
          from gbrag t
          where t.gbragcage=a.gbagecage
          and t.gbragitem=n.gbragitem
		  and t.gbragmrcb=0
		  and t.gbragtrag=2)) ref_comer,--21.2
	'/REF.BANC:',	  
	TRIM((select u.gbragnomb
    		from gbrag u
			where u.gbragcage=a.gbagecage
			and u.gbragitem=o.gbragitem
			and u.gbragmrcb=0
			and u.gbragtrag=3)) ref_banc,--21.3*/