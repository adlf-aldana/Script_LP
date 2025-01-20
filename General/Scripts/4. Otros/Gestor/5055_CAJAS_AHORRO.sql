/* BASE DE DATOS CAJA DE AHORRO - MKT */ -- 05/11/2021 By. AMY
-- 08/11/2021 By. AMY
-- 09/11/2021 By. AMY
-- 22/11/2021 By. SEC  Cuenta contable en el tercer script
select distinct 
  b.camcaagen regional,--1
  b.camcancta nro_ahorro,--2
  b.camcafapt fecha_apert,--3
  (select caprmfreg
    from caprm
    where caprmncta=camcancta) fecha_Producto,--4
  c.catcadesc tipo_caja_ahorro,--5
  e.cacondesc estado,--6
  round(decode(b.camcatpca,(select cc.catcatpca
                  from catca cc
                  where cc.catcatpca= b.camcatpca
                  and cc.catcatpca not in(select p.caprptpca
                                          from caprp p
                                          where p.caprptpca=cc.catcatpca)
                  and b.camcatasa=0),d.canidtasa,(select cc.catcatpca
                                                    from catca cc
                                                  where cc.catcatpca= b.camcatpca
                                                  and cc.catcatpca not in(select p.caprptpca
                                                                          from caprp p
                                                                          where p.caprptpca=cc.catcatpca)
                                                  and b.camcatasa>0),b.camcatasa,(select cc.catcatpca
                                                                                  from catca cc
                                                                                  where cc.catcatpca= b.camcatpca
                                                                                  and cc.catcatpca in(select p.caprptpca
                                                                                                      from caprp p
                                                                                                      where p.caprptpca=cc.catcatpca)),d.canidtasa),2) tasa_prod,--7
  round(abs(b.camcasact),2) Saldo_Actual,--8
  'SALDO ACTUAL' tipo_saldo, --9
  b.camcacmon moneda,--10
  decode(b.camcastat,1,i.catcmctaa,2,i.catcmctsi,3,i.catcmctcc) cuenta_ctble,--11
  --'' Tipo_Trasaccion,
  b.camcafumv Fecha_ultimo_mov,--12
  decode(b.camcancta,
    (select c.camcancta
      from camca c
      where c.camcancta=b.camcancta
      and not exists (select *
                      from cadac n
                      where n.cadacncta=c.camcancta)),null,
      (select c.camcancta
       from camca c
       where c.camcancta=b.camcancta
       and exists (select *
                   from cadac n
                   where n.cadacncta=c.camcancta)),n.cadaccfun) codigo_asesor,--13
  decode(b.camcancta,(select c.camcancta
            from camca c
            where c.camcancta=b.camcancta
            and not exists (select *
                            from cadac d
                            where d.cadacncta=c.camcancta)),null,
            (select c.camcancta
            from camca c
            where c.camcancta=b.camcancta
            and exists (select *
                        from cadac d
                        where d.cadacncta=c.camcancta)),(select TRIM(f.gbagenomb)
                                           from cadac e,gbage f
                                           where e.cadaccfun=f.gbagecage
                                           and e.cadacncta=b.camcancta)) nomb_asesor,--14
  decode(a.gbagetper,1,'PERSONA NATURAL','PERSONA JURIDICA') tipo_persona,--15
  b.camcacage codigo_cliente,--16
  TRIM(a.gbagenomb) nombre,--17
  decode(a.gbagesexo,1,'M',2,'F') genero,--18
  trunc(((select o.gbpmtfdia
    from gbpmt o)-a.gbagefnac)/365) edad,--19
  DECODE(a.gbagetlfd, null, gb.gbdaccelu, a.gbagetlfd) telefono,--20
  round((select a.gbpmttcof
       from gbpmt a),2) tc_dolar--21
from gbage a,camca b,catca c,outer canid d, cacon e,outer catcm i, gbdac gb, outer cadac n, gbpmt g
where a.gbagecage=b.camcacage
and gb.gbdaccage=a.gbagecage
and b.camcatpca=c.catcatpca 
and b.camcatpca=d.canidtpca
and b.camcacmon=d.canidcmon
and b.camcatpca=i.catcmtpca
and b.camcacmon=i.catcmcmon
and (b.camcastat in(1,2,3)
  or b.camcastat = (Select f.camcastat
            from camca f
            where f.camcancta=b.camcancta
            and f.camcastat=4
            and f.camcafcbl between g.gbpmtfdia-day(g.gbpmtfdia)+1
                    and g.gbpmtfdia))
and d.canidmrcb=0
and b.camcancta=n.cadacncta
and b.camcastat=e.caconcorr
and e.caconpref=4
and not exists (select *
              from capig h
            where h.capigncta=b.camcancta
          and h.capigstat=0
          and h.capigcpig in(select pi.catpgcpig  
                     from catpg pi
                     where pi.catpgcpig=h.capigcpig
                     and pi.catpgtpgr is not null
                                   and pi.catpgctab is not null))
union
select distinct
  b.camcaagen regional,--1
  b.camcancta nro_ahorro,--2
  b.camcafapt fecha_apert,--3
  (select caprmfreg
    from caprm
    where caprmncta=camcancta) fecha_Producto,--4
  c.catcadesc  tipo_caja_ahorro,--5
  e.cacondesc estado,--6
  round(decode(b.camcatpca,(select cc.catcatpca
                 from catca cc
                   where cc.catcatpca= b.camcatpca
                   and cc.catcatpca not in(select p.caprptpca
                                           from caprp p
                                           where p.caprptpca=cc.catcatpca)
                   and b.camcatasa=0),d.canidtasa,(select cc.catcatpca
                                                   from catca cc
                                                     where cc.catcatpca= b.camcatpca
                                                   and cc.catcatpca not in(select p.caprptpca
                                                                           from caprp p
                                                                           where p.caprptpca=cc.catcatpca)
                                                   and b.camcatasa>0),b.camcatasa,(select cc.catcatpca
                                                                                   from catca cc
                                                                                   where cc.catcatpca= b.camcatpca
                                                                                   and cc.catcatpca in(select p.caprptpca
                                                                                                       from caprp p
                                                                                                       where p.caprptpca=cc.catcatpca)),d.canidtasa),2) tasa_prod,--7
  round((abs(b.camcasact)-(select sum(l.capigimpo)
                           from capig l
               where l.capigncta=b.camcancta
                           and l.capigstat=0
               and l.capigcpig in(select pi.catpgcpig 
                                from catpg pi
                                where pi.catpgcpig=l.capigcpig
                                and pi.catpgtpgr is not null
                                              and pi.catpgctab is not null))),2) Saldo_Actual,--8
  'SALDO ACTUAL/PIGNORADO' tipo_saldo, --9
  b.camcacmon moneda,--10
  decode(b.camcastat,1,i.catcmctaa,2,i.catcmctsi,3,i.catcmctcc) cuenta_ctble,--11
  b.camcafumv Fecha_ultimo_mov,--12
  --'' Tipo_Transaccion,--17
  decode(b.camcancta,(select c.camcancta
      from camca c
      where c.camcancta=b.camcancta
      and not exists (select *
                        from cadac n
                        where n.cadacncta=c.camcancta)),null,
  (select c.camcancta
       from camca c
       where c.camcancta=b.camcancta
       and exists (select *
                   from cadac n
                   where n.cadacncta=c.camcancta)),n.cadaccfun) codigo_asesor,--13
  decode(b.camcancta,(select c.camcancta
      from camca c
      where c.camcancta=b.camcancta
      and not exists (select *
                      from cadac d
                      where d.cadacncta=c.camcancta)),null,
      (select c.camcancta
             from camca c
             where c.camcancta=b.camcancta
             and exists (select *
                         from cadac d
                         where d.cadacncta=c.camcancta)),(select TRIM(f.gbagenomb)
                                            from cadac e,gbage f
                                            where e.cadaccfun=f.gbagecage
                                            and e.cadacncta=b.camcancta)) nomb_asesor,--14
  decode(a.gbagetper,1,'PERSONA NATURAL','PERSONA JURIDICA') tipo_persona,--15
  b.camcacage codigo_cliente,--16
  TRIM(a.gbagenomb) nombre,--17
  decode(a.gbagesexo,1,'M',2,'F') genero,--18
  trunc(((select o.gbpmtfdia
      from gbpmt o)-a.gbagefnac)/365) edad,--19
  DECODE(a.gbagetlfd, null, gb.gbdaccelu, a.gbagetlfd) telefono,--20
  round((select a.gbpmttcof
       from gbpmt a),2) tc_dolar--21
from gbage a,camca b,catca c,outer canid d, cacon e, outer catcm i, gbdac gb, outer cadac n, gbpmt g
where a.gbagecage=b.camcacage
and b.camcatpca=c.catcatpca 
and gb.gbdaccage=a.gbagecage
and b.camcatpca=d.canidtpca
and b.camcacmon=d.canidcmon
and b.camcatpca=i.catcmtpca
and b.camcacmon=i.catcmcmon
and b.camcancta=n.cadacncta
and (b.camcastat in(1,2,3)
  or b.camcastat = (Select f.camcastat
            from camca f
            where f.camcancta=b.camcancta
            and f.camcastat=4
            and f.camcafcbl between g.gbpmtfdia-day(g.gbpmtfdia)+1
                    and g.gbpmtfdia))
and d.canidmrcb=0
and b.camcastat=e.caconcorr
and e.caconpref=4
and exists (select *
          from capig h
        where h.capigncta=b.camcancta
      and h.capigstat=0
      and h.capigcpig in(select pi.catpgcpig  
                   from catpg pi
                   where pi.catpgcpig=h.capigcpig
                   and pi.catpgtpgr is not null
                               and pi.catpgctab is not null))
union
select distinct 
  b.camcaagen regional,--1
  b.camcancta nro_ahorro,--2
  b.camcafapt fecha_apert,--3
  (select caprmfreg
    from caprm
    where caprmncta=camcancta) fecha_Producto,--4
  c.catcadesc  tipo_caja_ahorro,--5
  e.cacondesc estado,
  round(decode(b.camcatpca,(select cc.catcatpca
                  from catca cc
                  where cc.catcatpca= b.camcatpca
                  and cc.catcatpca not in(select p.caprptpca
                                          from caprp p
                                          where p.caprptpca=cc.catcatpca)
                  and b.camcatasa=0),d.canidtasa,(select cc.catcatpca
                                                    from catca cc
                                                  where cc.catcatpca= b.camcatpca
                                                  and cc.catcatpca not in(select p.caprptpca
                                                                          from caprp p
                                                                          where p.caprptpca=cc.catcatpca)
                                                  and b.camcatasa>0),b.camcatasa,(select cc.catcatpca
                                                                                  from catca cc
                                                                                  where cc.catcatpca= b.camcatpca
                                                                                  and cc.catcatpca in(select p.caprptpca
                                                                                                      from caprp p
                                                                                                      where p.caprptpca=cc.catcatpca)),d.canidtasa),2) tasa_prod,--6
  round((select sum(l.capigimpo)
         from capig l
           where l.capigncta=b.camcancta
           and l.capigstat=0
       and l.capigcpig in(select pi.catpgcpig 
                from catpg pi
                where pi.catpgcpig=l.capigcpig
                and pi.catpgtpgr is not null
                          and pi.catpgctab is not null)),2) Saldo_Actual,--7
  'RETENIDO' tipo_saldo, --8
  b.camcacmon moneda,--9
decode(b.camcacmon,1,(select max(r.catpgctab)
            from capig q,catpg r
            where q.capigncta=b.camcancta
            and q.capigcpig=r.catpgcpig
            and q.capignpig =(select max(t.capignpig)
                    from capig t
                                        where t.capigncta=b.camcancta
                                and t.capigstat=0
                                and t.capigcpig in(select max(pi.catpgcpig) 
                                            from catpg pi
                                            where pi.catpgcpig=t.capigcpig
                                            and pi.catpgtpgr is not null
                                                          and pi.catpgctab is not null))),
           2,(select max(r.catpgctad)
                      from capig q,catpg r
            where q.capigncta=b.camcancta
            and q.capigcpig=r.catpgcpig
            and q.capignpig =(select max(t.capignpig)
                    from capig t
                                        where t.capigncta=b.camcancta
                                        and t.capigstat=0
                    and t.capigcpig in(select max(pi.catpgcpig) 
                                             from catpg pi
                                       where pi.catpgcpig=t.capigcpig
                                       and pi.catpgtpgr is not null
                                                     and pi.catpgctab is not null)))) cuenta_ctble,  
--  '' Tipo_Transaccion,
  b.camcafumv Fecha_ultimo_mov,--11
  decode(b.camcancta,
      (select c.camcancta
        from camca c
        where c.camcancta=b.camcancta
        and not exists (select *
                          from cadac n
                          where n.cadacncta=c.camcancta)),null,
      (select c.camcancta
       from camca c
       where c.camcancta=b.camcancta
       and exists (select *
                   from cadac n
                   where n.cadacncta=c.camcancta)),n.cadaccfun) codigo_asesor,--12
  decode(b.camcancta,(select c.camcancta
            from camca c
            where c.camcancta=b.camcancta
            and not exists (select *
                            from cadac d
                            where d.cadacncta=c.camcancta)),null,
            (select c.camcancta
            from camca c
            where c.camcancta=b.camcancta
            and exists (select *
                        from cadac d
                        where d.cadacncta=c.camcancta)),(select TRIM(f.gbagenomb)
                                           from cadac e,gbage f
                                           where e.cadaccfun=f.gbagecage
                                           and e.cadacncta=b.camcancta)) nomb_asesor,--13
  decode(a.gbagetper,1,'PERSONA NATURAL','PERSONA JURIDICA') tipo_persona,--14                                                                      
  b.camcacage codigo_cliente,--15
  TRIM(a.gbagenomb) nombre,--16
  decode(a.gbagesexo,1,'M',2,'F') genero,--17
  trunc(((select o.gbpmtfdia
      from gbpmt o)-a.gbagefnac)/365) edad,--18
  DECODE(a.gbagetlfd, null, gb.gbdaccelu, a.gbagetlfd) telefono,--19
  round((select a.gbpmttcof
       from gbpmt a),2) tc_dolar--21
from gbage a,camca b,catca c,outer canid d, cacon e, outer catcm i, gbdac gb, outer cadac n, gbpmt g
where a.gbagecage=b.camcacage
and b.camcatpca=c.catcatpca 
and gb.gbdaccage=a.gbagecage
and b.camcatpca=d.canidtpca
and b.camcacmon=d.canidcmon
and b.camcatpca=i.catcmtpca
and b.camcacmon=i.catcmcmon
and b.camcancta=n.cadacncta
and (b.camcastat in(1,2,3)
  or b.camcastat = (Select f.camcastat
            from camca f
            where f.camcancta=b.camcancta
            and f.camcastat=4
            and f.camcafcbl between g.gbpmtfdia-day(g.gbpmtfdia)+1
                    and g.gbpmtfdia))
and d.canidmrcb=0
and b.camcastat=e.caconcorr
and e.caconpref=4
and exists (select *
          from capig h
        where h.capigncta=b.camcancta
      and h.capigstat=0
      and h.capigcpig in(select max(pi.catpgcpig) 
                   from catpg pi
                   where pi.catpgcpig=h.capigcpig
                   and pi.catpgtpgr is not null
                               and pi.catpgctab is not null)
      and h.capigimpo>0)
order by 16,2,3;