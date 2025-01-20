SELECT e.catmvdesc TIPO_TRANSACCION, c.catrnndoc NRO_TRANSACCION, b.camcancta CTA_ORIGEN, a.gbagenomb TITULAR_ORIGEN,
		tetrnnctx CTA_DESTINO, f.tetrnnomx TITULAR_DESTINO, c.catrnftra FECHA, c.catrnhora HORA,
		round(sum(c.catrnimpo),2) MONTO, c.catrncmon MONEDA, f.tetrnuser USUARIO, adaudausr AUTORIZADOR
from gbage a,camca b,catrn c,catca d,catmv e, tetrn f, outer adaud g
where a.gbagecage=b.camcacage
and b.camcancta=c.catrnncta
and b.camcatpca=d.catcatpca
and c.catrnpref=e.catmvpref
and c.catrncorr=e.catmvcorr
and c.catrnndoc=f.tetrnntra
AND b.camcancta = g.adaudnopr
and b.camcastat=1
and c.catrnftra between '2022-01-01' and '2022-10-31'
and (c.catrnimpo)>0
and c.catrnpref=10
and e.catmvcorr IN (20, 30)
and c.catrnstat=0
and  adaudmodn = 66 and  adaudamrc  = 'S'
group by 1,2,3,4,5,6,7,8,10,11,12;
UNION
--8 /*OPERACIONES: TRANSACCIONES ELECTRONICAS - ABONO*/
select e.catmvdesc TIPO_TRANSACCION, c.catrnndoc NRO_TRANSACCION, tetrnnctx CTA_ORIGEN, f.tetrnnomx TITULAR_ORIGEN,
		b.camcancta  CTA_DESTINO, a.gbagenomb TITULAR_DESTINO,c.catrnftra FECHA,c.catrnhora HORA,
		round(sum(c.catrnimpo*-1),2) MONTO,c.catrncmon MONEDA, c.catrnuser USUARIO, adaudausr AUTORIZADOR
		
from gbage a,camca b,catrn c,catca d,catmv e, tetrn f, outer adaud g
where a.gbagecage=b.camcacage
and b.camcancta=c.catrnncta
and b.camcatpca=d.catcatpca
and c.catrnpref=e.catmvpref
and c.catrncorr=e.catmvcorr
and c.catrnndoc=f.tetrnntra
AND b.camcancta = g.adaudnopr
and b.camcastat=1
and c.catrnftra between '2022-01-01' and '2022-10-31'
and (c.catrnimpo*-1)>0
and c.catrnpref=10
and e.catmvcorr IN (21, 31)
and c.catrnstat=0
and  adaudmodn = 66 and  adaudamrc  = 'S' 
group by 1,2,3,4,5,6,7,8,10,11,12
UNION
--11 /*TRANSF ELECT - TRASPASO ENTRE CUENTAS - DEBITO*/
select  e.catmvdesc TIPO_TRANSACCION, 
	a.catrnndoc NRO_TRANSACCION,
	b.catrnncta CTA_ORIGEN,
	d.gbagenomb TITULAR_ORIGEN, 
	a.catrnncta CTA_DESTINO, 
	f.gbagenomb TITULAR_DESTINO, 
	a.catrnftra FECHA,
	A.catrnhora HORA,
	b.catrnimpo MONTO, 
	b.catrncmon MONEDA, 
	b.catrnuser USUARIO, 
	adaudausr AUTORIZADOR
from catrn a,catrn b, camca c, gbage d,camca cc, gbage f, catmv e, catca g ,outer adaud g1
where a.catrnntra=b.catrntorg --a.catrnuser='WEB'
and b.catrnncta=c.camcancta
and c.camcacage=d.gbagecage
and c.camcatpca=g.catcatpca
AND b.catrnncta = g1.adaudnopr
and a.catrnstat=0
and b.catrnpref=e.catmvpref
and b.catrncorr=e.catmvcorr
and a.catrnncta=cc.camcancta
and cc.camcacage= f.gbagecage
and a.catrnftra between '2022-01-01' and '2022-10-31'
and a.catrnpref in (3) and b.catrnpref in (3)
and a.catrncorr in (1) and b.catrncorr in (1)
and  adaudmodn = 66 and  adaudamrc  = 'S' 
--and d.gbagecage IN (355241,60048)
order by 7,2