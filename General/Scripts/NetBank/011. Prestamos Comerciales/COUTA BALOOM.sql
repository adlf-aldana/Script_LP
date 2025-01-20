--1ro reprogramar y lugo cambiar
--ADECUACION OPERATIVA
unload to prsor_10043856_bk_Antes.txt
select *
from prsor a
where a.prsornpre=10043856;

update prsor a
set a.prsorstat=9
and a.prsorpror=600
and a.prsorstat=2;

delete prsor a
where a.prsornpre=10043856
and a.prsorpror=600
and a.prsorstat=2;

load from prsor_10043856_bk_Antes.txt insert into prsor;

unload to prrnv_10043856_bk_Antes.txt
select *
from prrnv a
where a.prrnvnpre=10043856;

load from prrnv_10043856_bk_Antes.txt insert into prrnv;


unload to prppg_10043856_bk_Antes.txt
select *
from prppg a
where a.prppgnpre=10043856
order by 3,2;

select sum(a.prppgcapi)
from prppg a
where a.prppgnpre=10043856;

update prppg a
set a.prppgcapi=190.45,a.prppgtota=round((a.prppgcapi+a.prppginte+a.prppggral+a.prppgsegu+a.prppgotro+a.prppgcarg),2)
where a.prppgnpre=10043856
and a.prppgnpag between 117 and 216
and prppgnpag=prppgnpag;

update prppg a
set a.prppgcapi=0,a.prppgtota=round((a.prppgcapi+a.prppginte+a.prppggral+a.prppgsegu+a.prppgotro+a.prppgcarg),2)
where a.prppgnpre=10043856
and a.prppgnpag=217
and prppgnpag=prppgnpag;
--
update prppg a
set a.prppgcapi=560000-181059.77,a.prppgtota=round((a.prppgcapi+a.prppginte+a.prppggral+a.prppgsegu+a.prppgotro+a.prppgcarg),2)
where a.prppgnpre=10043856
and a.prppgnpag=217
and prppgnpag=prppgnpag;
