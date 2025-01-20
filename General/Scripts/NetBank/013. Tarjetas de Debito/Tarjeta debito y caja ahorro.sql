-- CONNECTION: name=dbtesting
/* MAESTRO TARJETAS DEBITO*/
select *
from tdmtd a
where a.tdmtdcage=359160;

/* CAJA DE AHORRO*/
SELECT *FROM camca
where camcacage=359160;

/*DETERMINAR LA CUENTA Y NUMERO DE TARJETA DEBITO */
/* TDTCT */
select *
from tdtct a
where a.tdtctncta=60014143;

SELECT DISTINCT a.*,b.*,c.*, d.*
FROM tdmtd a, tdtct b, camca c, tdpan d
WHERE a.tdmtdcage = c.camcacage 
AND b.tdtctncta = c.camcancta
AND a.tdmtdstat=1
AND a.tdmtdcage='361934';

/* BIN */
SELECT *FROM tdctl;
SELECT *FROM tdofi;


SELECT *
FROM tdmtd
WHERE tdmtdntrj = 600014143          

SELECT *
FROM INFORMIX.TDTCT
WHERE tdtctntrj = 600014143

SELECT *
FROM camca
WHERE camcancta = 2051005867

SELECT *
FROM rjcli
WHERE rjclicage = 361934

SELECT *
FROM tdmtd
--WHERE tdmtdcage = 361934
WHERE tdmtdntrj = 600011697

UPDATE tdmtd
SET tdmtdstat = 1
WHERE tdmtdntrj = 600011697          


SELECT *
FROM tdcon
ORDER BY 1,2