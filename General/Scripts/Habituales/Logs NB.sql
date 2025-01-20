-- CONNECTION: name=dbContingencia
select adlognlog,
	adlogfreg,
	adloghora,
	adloguser,
	adlogdesc,
	adlognprg
from adlog a
where a.adlogfreg BETWEEN '2023-10-19' AND '2023-10-19'
--AND a.adloghora >= '21:00:00'
--AND a.adloghora <= '03:00:00'
and a.adloguser='CPG'
--and a.adloglgin='tiger'
--and a.adlognprg like '%313%'
--and (a.adlogdesc like '%95:Previsiones y calificacion -> 1:Operaciones -> 9:Calculo de Prevision: PHP/CRT010.html%'
--or a.adlogdesc like '%95:Previsiones y calificacion -> 1:Operaciones -> 10:Asiento de prevision: PHP/CRP360.html%')
order by 1,3;

/* ADLOG */  -- BALANCE SUMAS Y SALDOS
SELECT *
FROM adlog a
WHERE a.adlogfreg>='2022-09-01'
--AND a.adloguser=''
--AND a.adlognprg like '%crr652%'
--AND (a.adlogdesc like '%95:Previsiones y calificacion -> 1:Operaciones -> 9:Calculo de Prevision: PHP/CRT010.html%'
--OR a.adlogdesc like '%95:Previsiones y calificacion -> 1:Operaciones -> 10:Asiento de prevision: PHP/CRP360.html%')
ORDER BY 1,3;
