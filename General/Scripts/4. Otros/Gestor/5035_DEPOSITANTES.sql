-- CONNECTION: name=2da

/* LISTA DE DEPOSITANTES EN CAJA DE AHORRO */
/* Ultima modificación. By Usuario AMY 20/10/2021 */
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
and c.catrnncta=5051901881
and c.catrnftra between '2019-01-01' and '2019-12-31'
and c.catrnpref=51 
and c.catrncorr=1
order by 5,6;

SELECT *FROM cacon order BY 1,2