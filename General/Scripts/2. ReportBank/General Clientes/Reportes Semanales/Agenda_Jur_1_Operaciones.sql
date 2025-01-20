/* PERSONA JURIDICA */ -- CUENTAS ACTIVAS-- By VSM 21-03-2022 
select distinct a.gbagecage cod_cli,TRIM(a.gbagenomb) Razon_Social,TRIM(c.gbcondesc) Tipo_sociedad,a.gbageciiu codigo,TRIM(n.gbciidesc) Actividad,TRIM(a.gbagenruc) nit,
decode(o.gbdircage,null,'noregdir',o.gbdircage,'regdir') registra_dir,
TRIM((select s.gbdirdire
      from gbdir s
      where s.gbdircage=a.gbagecage
      and s.gbdiritem=p.gbdiritem
      and s.gbdirmrcb=0
      and s.gbdirtdir=1)) dom_particular,TRIM((select t.gbdirdire
                                               from gbdir t
                             where t.gbdircage=a.gbagecage
                             and t.gbdiritem=q.gbdiritem
                             and t.gbdirmrcb=0
                             and t.gbdirtdir=2)) dom_comercial,
TRIM(u.gbtlftelf) telef_dom,TRIM(v.gbtlftelf) telef_ofi,TRIM(w.gbtlftelf) telf_celular,
TRIM(f.gbragnomb) ref_personal,TRIM(ff.gbragnomb) ref_comercial,TRIM(fff.gbragnomb) ref_bancaria,round(ffff.gbdbicapa,2) cap_pago,g.gbagecage cod_cli_rep_legal,
TRIM(b.gbdacrepr) Representante_Legal,TRIM(g.gbagenaci) Nac_rep_legal,TRIM(i.gbpaidesc) Pais_rep_legal,TRIM(g.gbagendid) Doc_Iden_rep_legal,
g.gbagefnac FecNac_rep_legal,TRIM(j.gbcondesc) Est_Civ_rep_legal,
decode(g.gbageeciv,1,null,2,(select o.gbrelcagr
               from gbrel o,gbage p 
                             where o.gbrelcagr=p.gbagecage          
               and o.gbrelcage=g.gbagecage 
               and o.gbreltrel=1),3,null,4,null) codcli_conyuge_replegal,TRIM(decode(g.gbageeciv,1,'',2,(select r.gbagenomb 
                                                                     from gbrel q,gbage r 
                                                                                                   where q.gbrelcagr=r.gbagecage          
                                                                     and q.gbrelcage=g.gbagecage 
                                                                       and q.gbreltrel=1),3,'',4,'')) Conyuge__rep_legal,
h.gbdaccony codcliconyug_reglegal,TRIM(h.gbdacnoco) nombconyug_replegal,
TRIM((select s.gbdirdire
      from gbdir s
      where s.gbdircage=g.gbagecage
      and s.gbdiritem=r.gbdiritem
      and s.gbdirmrcb=0
      and s.gbdirtdir=1)) dom_particular_replegal,TRIM((select t.gbdirdire
                                                        from gbdir t
                                      where t.gbdircage=g.gbagecage
                                      and t.gbdiritem=s.gbdiritem
                                      and t.gbdirmrcb=0
                                      and t.gbdirtdir=2)) dom_comercial_replegal,x.gbtlftelf telef_dom_rep_legal,y.gbtlftelf tel_ofi_rep_legal,
z.gbtlftelf telf_celular_rep_legal,g.gbageprof cod_prof,TRIM(k.gbprfdesc) Prof_rep_legal,g.gbageciiu,TRIM(l.gbciidesc) Act_Eco_rep_legal,TRIM(h.gbdacnemp) Lug_Trab_rep_legal,
decode(m.gblabtcar,1,'PROPIETARIO',2,'GERENTE',3,'EJECUTIVO',4,'EMPLEADO',5,'OBRERO',6,'EVENTUAL',7,'INDEPENDIENTE',99,'NO APLICA') tip_carg_rep_legal,
TRIM(m.gblabdcar) cargo_rep_legal,m.gblabnsal cod_niv_ing_rep_legal,decode(m.gblabnsal,1,'sin ingresos',2,'de 1 a 1000',3,'de 1001 a 2000',4,'de 2001 a 4000',5,
'de 4001 a 6000',6,'de 6001 a 10000',7,'de 10001 a 15000',8,'de 15001 a 20000',9,'de 20001 a mas') Niv_Ing_rep_legal,
m.gblabfing Fec_Ing_Trab_rep_legal,g.gbagefreg fech_reg,TRIM(t.gbragnomb) ref_pers_replegal,TRIM(tt.gbragnomb) ref_comer_replegal,TRIM(ttt.gbragnomb) ref_banc_replegal,
a.gbageagen agencia
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
--and a.gbagecage=27964
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
--CON CAJA DE AHORRO Y DPF VIGENTES              
and ((exists (select *
          from camca f
        where f.camcacage=a.gbagecage
        and f.camcastat in (1,2,3))
and exists (select *
        from pfmdp g
      where g.pfmdpcage=a.gbagecage
      and g.pfmdpmrcb=0
      and g.pfmdpstat in (1)))
--CON CAJA DE AHORRO VIGENTE Y SIN DPF      
or (exists (select *
        from camca f
      where f.camcacage=a.gbagecage
      and f.camcastat in (1,2,3))
and not exists (select *
            from pfmdp g
          where g.pfmdpcage=a.gbagecage
          and g.pfmdpmrcb=0
          and g.pfmdpstat in (1)))
-- SIN CAJA DE AHORRO Y CON DPF VIGENTE         
or (not exists (select *
            from camca f
          where f.camcacage=a.gbagecage
          and f.camcastat in (1,2,3))
and exists (select *
        from pfmdp g
      where g.pfmdpcage=a.gbagecage
      and g.pfmdpmrcb=0
      and g.pfmdpstat in (1)))
--SIN CAJA DE AHORRO Y SIN DPF Y CON CREDITO      
or (not exists (select *
            from camca f
          where f.camcacage=a.gbagecage
          and f.camcastat in (1,2,3))
and not exists (select *
            from pfmdp g
          where g.pfmdpcage=a.gbagecage
          and g.pfmdpmrcb=0
          and g.pfmdpstat in (1))
and exists (select *
        from prmpr g,prdeu t
      where g.prmprnpre=t.prdeunpre
      and t.prdeucage=a.gbagecage
      and g.prmprstat in (2,3,5)
      and g.prmprtcre not between 60 and 67))
-- CATIT_
or (exists (select *
        from camca f,catit t
      where f.camcancta=t.catitncta
      and f.camcacage!=a.gbagecage
      and t.catitcage=a.gbagecage
      and f.camcastat in (1,2,3)))
-- PFTIT_
or (exists (select *
        from pfmdp g,pftit t
      where g.pfmdpndep=t.pftitndep
      and g.pfmdpcage!=a.gbagecage
      and t.pftitcage=a.gbagecage
      and g.pfmdpmrcb=0
      and g.pfmdpstat in (1))))     
--      
order by 1;