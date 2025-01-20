select *  
from crslb a
WHERE crslbagrp = 2 --AGRUPADOR
AND crslbrsld = 9 --COD_ESTRATO
AND crslbnive  = 1 --MONEDA
AND crslbtdep = 5
AND a.crslbfece >= '2023-12-01';

SELECT *FROM camca WHERE camcacage = 359160

select sum(crslbsald)
from crslb a
WHERE crslbagrp = 2 --AGRUPADOR
--AND crslbrsld = 9 --COD_ESTRATO
AND crslbnive  = 1 --MONEDA
--AND crslbtdep = 5
AND a.crslbfece >= '2023-05-11';

SELECT *
FROM crslb
WHERE crslbagrp = 2 --AGRUPADOR
AND crslbnive  = 1 --MONEDA
AND crslbfece = '2022-09-09';



/* ESTRATIFICACION SEMANAL */
/* COUNT POR FECHAS */ --824
select a.crslbfece fecha, count (*) cant
from crslb a
where a.crslbfece >= '2023-05-01'
--and a.crslbncta is null
group by 1
order by 1;



/* UNLOAD TO */
unload to crslb_291122_linea.txt
select count(*)
from crslb a
where a.crslbfece='2023-06-29';

DELETE crslb a
where a.crslbfece='2023-06-29';

-- cod_estrato 1
select *  
from crslb a
WHERE crslbagrp = 2
AND crslbrsld = 1
AND crslbnive  = 1
AND crslbtdep = 1
AND a.crslbfece='2022-05-31';

select *  
from crslb a
WHERE crslbagrp = 2
AND crslbrsld = 1
AND crslbnive  = 1
AND crslbtdep = 2
AND a.crslbfece='2022-05-31';

select *  
from crslb a
WHERE crslbagrp = 2
AND crslbrsld = 1
AND crslbnive  = 1
AND crslbtdep = 3
AND a.crslbfece='2022-05-31';

-- cod_estrato 2
select *  
from crslb a
WHERE crslbagrp = 2 --AGRUPADOR
AND crslbrsld = 2 --COD_ESTRATO
AND crslbnive  = 1 --MONEDA
AND a.crslbfece='2022-05-31';
AND a.crslbtdep = 1 --
AND a.crslbfece='2022-05-31';

-- Archivo IFAAAAMMDDAB DUPLICIDAD
select a.crslbfece fecha,count (*) cant, sum(a.crslbsald)
from crslb a
where a.crslbfece >= '2023-01-01'
--and a.crslbncta is null
group by 1
order by 1;

unload TO bk_linea_crslb_230114.txt
SELECT *
FROM crslb
WHERE crslbfece = '2023-01-14'

DELETE crslb
WHERE crslbfece = '2023-01-14'