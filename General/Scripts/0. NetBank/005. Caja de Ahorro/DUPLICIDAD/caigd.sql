SELECT count(*) FROM capro WHERE caproanio = 2023 AND capronmes = 10
SELECT count(*) FROM cacap WHERE cacapanio = 2023 AND cacapnmes = 10

--BACKUP DUPLICADOS
unload TO caigd_250423_Antes.sql
select *
from caigd
where caigdfech='2023-08-31'
order by 2;

SELECT COUNT(*)
FROM caigd
WHERE caigdfech >= '2023-10-16';

select a.camcastat,b.cacondesc,count(*)
from camca a,cacon b
where a.camcastat=b.caconcorr
and b.caconpref=4
and a.camcastat in (1,2)
and a.camcafapt>='2023-09-28'
AND NOT exists (select *
				from caigd c
				where a.camcancta=c.caigdncta
				and c.caigdfech='2023-08-31')
group by 1,2
order by 1;


select a.*
from camca a,cacon b
where a.camcastat=b.caconcorr
and b.caconpref=4
and a.camcastat in (1,2)
and not exists (select *
				from caigd c
				where a.camcancta=c.caigdncta
				and c.caigdfech='2023-08-31')
order by 1;


-------------------------

TOTAL REGISTROS: 49775
REGISTROS CORREGIDOS: 34258

SELECT COUNT(*)
FROM caigd
WHERE caigdfech = '2023-08-31';

unload TO caigd_240423_Corregido.sql
SELECT DISTINCT *
FROM caigd
WHERE caigdfech = '2023-08-31'
order by 2;

DELETE caigd
WHERE caigdfech = '2023-04-25';

LOAD FROM caigd_240423_Corregido.sql INSERT INTO caigd;

---------------
--ACTUALIZACION DE ACUMULADOS
UPDATE camca
SET camcaacum = (SELECT nvl(sum(caigdsald), 0)
				FROM caigd
				WHERE caigdncta = camcancta
				AND caigdfech BETWEEN '2023-04-01' AND '2023-04-25')
WHERE camcatcap = 1
AND camcastat IN (1, 2, 3);

UPDATE camca
SET camcaacum = (SELECT nvl(sum(caigdsald), 0)
				FROM caigd
				WHERE caigdncta = camcancta
				AND caigdfech BETWEEN '2023-04-01' AND '2023-04-25'), 
camcaiacu = (SELECT nvl(sum(caigdintg), 0)
				FROM caigd
				WHERE caigdncta = camcancta
				AND caigdfech BETWEEN '2023-04-01' AND '2023-04-25')
WHERE camcatcap = 3
AND camcastat IN (1, 2, 3);
