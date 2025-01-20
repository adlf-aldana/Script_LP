/* LISTA DE DEPOSITANTES EN CAJA DE AHORRO */
select 
a.gbagecage cod_cli,
trim(a.gbagendid) CI,
trim(a.gbagenomb) nombre,
b.camcancta nro_cuenta,
c.catrnntra nro_Trans,
c.catrnftra fecha_trans,
round(c.catrnimpo*-1,2) importe,
trim(d.uitrpndid) ci_dep,
trim(d.uitrpnomb) nombre_dep
from gbage a, camca b, catrn c, uitrp d
where a.gbagecage=b.camcacage
and b.camcancta=c.catrnncta
and c.catrnncta = d.uitrpnopr
and c.catrnndoc=d.uitrpntra
and c.catrnncta=5051317105
and c.catrnftra between '2016-01-01' and '2020-12-31'
and c.catrnpref=51 
and c.catrncorr=1
order by 5,6;
