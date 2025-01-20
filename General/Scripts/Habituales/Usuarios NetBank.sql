/*** NETBANK ***/
-- LIMPIAR CLAVES
delete adcry a 
where a.adcryusrn in('AMY');--in ('VEO','ERM','SMW','RET','RCE','RGL');
delete adcry_h a 
where a.adcryusrn IN ('VCG');

/* PARA HABILITAR */
--update adusr a
set a.adusrmrcb=0,a.adusrcifa=0
where a.adusrusrn in('AMY');

/* BOTAR USUARIOS NETBANK */
select *
from liulg a
order by 1;
/* Borrar la sesion a TODOS*/
delete from liulg a
where a.liulguser --is not null;
/* Borrar la sesion x Usuario*/
delete from liulg a
where a.liulguser = 'AMY';

/* PERFIL ADMINISTRADOR */
select *
from adprf a
where a.adprfusrn in('');

SELECT *
FROM adprf a
WHERE a.adprfperf LIKE '%100%';

update adprf a
set a.adprfperf=null,a.adprfstat=null
where a.adprfusrn in('');

select *
from adusr
where adusrusrn in('');
update adusr
set adusrstat='A', adusrperf=null
where adusrusrn in ('');

