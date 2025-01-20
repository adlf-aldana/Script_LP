SELECT *
FROM gbage
WHERE gbagenomb LIKE '%ALD%MOLE%';

/*HISTORICO DE PRESTAMO POR CLIENTE - PAITITI*/
select b.prmprnpre nro_prest, b.prmprfdes fec_desemb, d.prcondesc estado, b.prmprmapt monto_aprob, b.prmprsald saldo,
		(select sum(prtdtimpp*-1)interes 
		 from prtdt 
		 where prtdtnpre=prmprnpre 
		 and prtdtccon=2 and prtdtmrcb = 0) int_paga, b.prmprfulp fec_ult_pago, prmprfvac fecha_vto, c.prtcrdesc tip_credito,
		 decode(prmprcmon,1,'M/N',2,'M/E') moneda, a.gbagenomb cliente
from gbage a, prmpr b, prtcr c, prcon d
where a.gbagecage=b.prmprcage
		and b.prmprstat=d.prconcorr
		and d.prconpref = 4
		and b.prmprtcre=c.prtcrtcre
--		and a.gbagendid like '%1714484%' --14630
		and a.gbagecage = 88548