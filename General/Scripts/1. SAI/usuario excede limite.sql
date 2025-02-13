select 
* from adcon
order by 1,2

select *
from adusr
where adusrmrcb=0
and adusrmlog=3


-----to updates!!!!!
----0
update adusr ---SE APLICA PARA REGULARIZACION DE ESTADOS
set adusrmrcb=9 ---USUARIOS YA DESHABILITADOS DE MANERA ADMINISTRATIVA ADUSRMLOG=3
where adusrmrcb=0 ---APPLIED by ZCE 31012025 1443
and adusrmlog=3;