select b.camcancta Cuenta,
c.catrnftra fecha,
c.catrnhora hora,
c.catrnagen agencia,
d.catmvdesc descrip,
c.catrnglos glosa,
round(decode(c.catrnimpo,
            (select e.catrnimpo
            from catrn e
            where e.catrnncta=c.catrnncta
            and e.catrnpref=c.catrnpref
            and e.catrncorr=c.catrncorr
            and e.catrnftra=c.catrnftra
            and e.catrnntra=c.catrnntra
            and e.catrnstat=0
            and catrnimpo>=0),
    c.catrnimpo,
            (select e.catrnimpo
            from catrn e
            where e.catrnncta=c.catrnncta
            and e.catrnpref=c.catrnpref
            and e.catrncorr=c.catrncorr
            and e.catrnftra=c.catrnftra
            and e.catrnntra=c.catrnntra
            and e.catrnstat=0 and catrnimpo<0),
    c.catrnimpo*0),2) debe,
round(decode(c.catrnimpo,
            (select e.catrnimpo
            from catrn e
            where e.catrnncta=c.catrnncta
            and e.catrnpref=c.catrnpref
            and e.catrncorr=c.catrncorr
            and e.catrnftra=c.catrnftra
            and e.catrnntra=c.catrnntra
            and e.catrnstat=0
            and catrnimpo>=0),
    c.catrnimpo*0,
            (select e.catrnimpo
            from catrn e
            where e.catrnncta=c.catrnncta
            and e.catrnpref=c.catrnpref
            and e.catrncorr=c.catrncorr
            and e.catrnftra=c.catrnftra
            and e.catrnntra=c.catrnntra
            and e.catrnstat=0
            and catrnimpo<0),
    c.catrnimpo*-1),2) haber,
(b.camcasact*-1) saldo,
c.catrnntra Nro_Trans,
c.catrnuser user,
d.catmvpref pref,
d.catmvcorr corr
from gbage a,camca b, catrn c,catmv d
where a.gbagecage=b.camcacage 
and b.camcancta=c.catrnncta 
and c.catrnpref=d.catmvpref 
and c.catrncorr=d.catmvcorr 
and b.camcancta='3051916812'
--and b.camcancta='3051890446'
--and b.camcancta={0}
and c.catrnftra between '2022-02-01' and '2022-02-20'
--and c.catrnftra between '{ini}' and '{fin}'
and c.catrnstat=0 order by 2,3,9;