-- PARA UNA REPROGRAMACION
select 
*from prmpr a, prtcr b 
where a.prmprtcre = b.prtcrtcre
and a.prmprstat = 2
-- DIFERIMIENTO
and exists (select * from prdif c
			where c.prdifnpre = a.prmprnpre)
-- REPROGRAMADO
and exists (select * from prsor d
			where d.prsornpre = a.prmprnpre
			and prsorstat in (0,1))
and b.prtcrdesc like '%REPRO%';