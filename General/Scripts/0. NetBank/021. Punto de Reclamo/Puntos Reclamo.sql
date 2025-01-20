/* Responsables */
select * from reres;

/* Prefijos y Descripciones */
select * from resut order by 1,2;

/* Conceptos y Descripciones */
select * from recon order by 1, 2;
select * from recon WHERE reconpref = 2 order by 1, 2;
select * from recon WHERE recondesc LIKE '%LA PAZ%' AND reconpref = 2 order by 1, 2;


DELETE recon WHERE reconpref = 2;

/* FORMULARIO DE REGISTROS  */
select * from remre order by 1;

select * from rehre;
select * from rectl;
select * from reamp;
select * from reage;

select * from gbage where gbagendid like '%2901862%';

-- USUARIOS CON NOMBRES
select r.*, a.adusrnomb nombre From
reres r left join adusr a
on r.rerescres = a.adusrusrn
and reresstat = 0
order by 2,1;

-- USUARIOS CON NOMBRES
select r.rerescres usuario, r.rerestofi agencia, a.adusrnomb nombre From
reres r inner join adusr a
on r.rerescres = a.adusrusrn
and reresstat = 0
order by 2,1;

-- EXCLUYENDO A USUARIO PGC, CPG, NRP, ...
unload to reres_Actualizado_061221.txt;
select r.* from
reres r 
WHERE reresstat = 0
and rerescres not in ('PGC','CPG','NRP','EBL','CEC','MPL')
order by 2,1;

-- SUB TIPOLOGIAS
select resutctip CTipologia,
	resutcsti CEvento,
	resutdesc descrip_Subtipologia,
	resutplzo plazo 
from resut order by 1,2; 

--
SELECT *FROM remre;

SELECT *FROM recon ORDER BY 1,2
