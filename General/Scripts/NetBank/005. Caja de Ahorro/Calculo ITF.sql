-- CALCULO DE A COBRAR ITF
-- SI LA CAJA DE AHORRO TIENE UN SALDO > 2000$
-- (camcasact + camcaiacu) * 0.003 - (12077.33 + 0.2688) * 0.003 
select round(sum(a.catrnimpo*-1),2) saldo,
	round((((b.camcasact*-1)+b.camcaiacu)*0.003),2),
	round(((b.camcasact*-1)-(((b.camcasact*-1)+b.camcaiacu)*0.003)),2)
from catrn a,camca b
where a.catrnncta=b.camcancta
and a.catrnncta=3052002603
and a.catrnstat=0
group by 2,3