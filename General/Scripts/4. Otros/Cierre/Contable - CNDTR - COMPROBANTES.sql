-- \\172.24.4.20\Datos\COMPARTIDO T.I. NACIONAL\CONTROL DE CALIDAD\CIERRES
/* SCRIP - PROCESO DE CIERRE MENSUAL */
/*FECHA DEL SISTEMA*/
select a.gbpmtnemp,a.gbpmtfdia,a.gbpmttcof,a.gbpmttcco,a.gbpmttcve,a.gbpmttufv
from gbpmt a;

/* NOTA */
/* GENERAR LOS COMPROBANTES ENVIADOS POR CONTABILIDAD DE LINEA PARA COPIARLOS EN 2DA */-- ABRIR SCRIPT EN 2DA
***************************************************************
/* SACAR BACKUP CNDTR, CNHTR */
/* CNDTR & CNHTR */--LINEA
unload to cndtr_linea.txt
select *
from cndtr a
ORDER BY 2 DESC;

unload to cnhtr_linea.txt
select *
from cnhtr a;

/* CNDTR & CNHTR */--2da
unload to cndtr_2da.txt
select *
from cndtr a;

unload to cnhtr_2da.txt
select *
from cnhtr a;

unload to cndtr_testing.txt
select *
from cndtr a;

unload to cnhtr_tesing.txt
select *
from cnhtr a;

***************************************************************
/* SACAR BACKUP CNDTR, CNHTR CON NTRA*/
/*CNDTR_CNHTR_NTRA*/--LINEA
unload to cndtr_linea_759.txt
select *
from cndtr a
where a.cndtrntra in(759);

unload to cnhtr_linea_759.txt
select *
from cnhtr a
where a.cnhtrntra in(759);


/*CNDTR_CNHTR_NTRA*/--2da
unload to cndtr_2dantra_759.txt
select *
from cndtr a
where a.cndtrntra in(759);

unload to cnhtr_2dantra_759.txt
select *
from cnhtr a
where a.cnhtrntra in(759);
----------------------------------------------
unload to cndtr_testing_4836.txt
select *
from cndtr a
where a.cndtrntra in(4836);

unload to cnhtr_testing_4836.txt
select *
from cnhtr a
where a.cnhtrntra in(4836);

***************************************************************
/* DELETE EN 2DA - CNDTR, CNHTR CON NTRA*/
/*CNDTR_NTRA*/
delete from cndtr a

SELECT *FROM cndtr a
where a.cndtrntra in(759);

/*CNHTR_NTRA*/
delete from cnhtr a
where a.cnhtrntra in(759);

load from cndtr_linea_759.txt insert into cndtr;
load from cnhtr_linea_759.txt insert into cnhtr;


***************************************************************
/* INSERT INTO DE LINEA EN 2DA - CNDTR, CNHTR CON NTRA*/
/*CNDTR_CNHTR_NTRA*/--LINEA A SEGUNDA
load from cndtr_lineantra.txt insert into cndtr;
load from cnhtr_lineantra.txt insert into cnhtr;

load from cndtr_2dantra_6918_6928_FINAL.txt insert into cndtr;
load from cnhtr_2dantra_6918_6928_FINAL.txt insert into cnhtr;

load from cndtr_testing_4836.txt insert into cndtr;
load from cnhtr_testing_4836.txt insert into cnhtr;

***************************************************************
/* CNSRL */ -- CONTEO DE COMPROBANTES
select *
from cnsrl a

SELECT max(a.cnhtrntra)
from cnhtr a;

--------------------- UPDATE -- ingresar la misma cantidad de linea a fecha de cierre
update cnsrl a
set a.cnsrlcorr=(select max(a.cnhtrntra)
                 from cnhtr a);
                 
               
***************************************************************    
--- REEMPLAZAR COMPROBANTES EN CNDTR, CNHTR
------- PARA CADA COMPROBANTE
SELECT *FROM cndtr a
where a.cndtrntra IN (4836);

SELECT *FROM cndtr a
where a.cndtrntra IN (4839);


update cndtr a
set a.cndtrntra=4832
where a.cndtrntra=4839;

update cnhtr a
set a.cnhtrntra=4832
where a.cnhtrntra=4839;

--------
update cndtr a
set a.cndtrntra=4836
where a.cndtrntra=4840;

update cnhtr a
set a.cnhtrntra=4836
where a.cnhtrntra=4840;
               

***********************************-- IMPUESTOS
***********************************-- IMPUESTOS
/*CNDTR_CNHTR_NTRA*/--2da
unload to cndtr_2dantra_6918_6928_FINAL.txt
select *
from cndtr a
where a.cndtrntra IN (6918,6925,6926,6928);

unload to cnhtr_2dantra_6918_6928_FINAL.txt
select *
from cnhtr a
where a.cnhtrntra IN (6918,6925,6926,6928);

***************************************************************
10868 - 10808

------- PARA CADA COMPROBANTE
update cndtr a
set a.cndtrntra=10851
where a.cndtrntra=10868;

update cnhtr a
set a.cnhtrntra=10851
where a.cnhtrntra=10868;

--------
update cndtr a
set a.cndtrntra=9812
where a.cndtrntra=9817;

update cnhtr a
set a.cnhtrntra=9812
where a.cnhtrntra=9817;

/* DELETE EN 2DA - CNDTR, CNHTR CON NTRA*/  -- IMPUESTOS
/*CNDTR_NTRA*/
delete from cndtr a
where a.cndtrntra IN (6918,6925,6926,6928);

/*CNHTR_NTRA*/
delete from cnhtr a
where a.cnhtrntra IN (6918,6925,6926,6928);
                 
/*Pago de Impuesto IVA CNP330 */ 
--- corrige la cnlog para volver a generar reporte
select *
from cnlog;

delete cnlog a 
where a.cnlogntra=; 

-- POSTERIOR AL NUEVO COMPROBANTE, UPDATE CNLOG;
update cnlog a
set a.cnlogntra=3646
where a.cnlogntra=3652; 