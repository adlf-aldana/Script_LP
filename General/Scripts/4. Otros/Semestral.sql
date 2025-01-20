SELECT *FROM datos2
SELECT * FROM cue0
SELECT * FROM datosd
SELECT *FROM datosf

drop table datos2
drop table cue0
drop table datosd
drop table datosf

SELECT *FROM sal21201
drop table sal21201
CREATE TABLE tbase: sal21201
(	nro varchar(25),
	cta_tbl varchar(25),
	sal_ori varchar(25),
	sal_bs varchar(25),
	cod_cli varchar(25)
)


load FROM sal21201.txt INSERT INTO sal21201;

-- SALDOS CAJAS DE AHORRO
SELECT 
 sum(CASE 
	 WHEN camcacmon = 1 THEN (camcasact *-1)
	 WHEN camcacmon = 2 THEN (camcasact *-6.86)
 END) AS saldo,
 count (camcancta)
FROM camca
WHERE camcastat BETWEEN 1 AND 3

-- SALDOS DPF
SELECT 
 sum(CASE
	 WHEN pfmdpcmon = 1 THEN pfmdpcapi *1
	 WHEN pfmdpcmon = 2 THEN pfmdpcapi *6.86
END) AS saldo
FROM pfmdp
WHERE pfmdpstat IN (1,2) AND pfmdpmrcb = 0


-- TABLA DE NIVEL DE RIESGO DEL CLIENTE
select * 
from gbnrs 
where gbnrscage = 255493

-- TABLA PROGRAMA uir306 - Carga datos para reporte semestral
unload to uiiet_bk_dev.txt
SELECT *
FROM uiiet
WHERE uiietfcor >= '2022-07-01'
ORDER BY 1

--------------------------------------------------------------
SELECT sum(CASE 
	 WHEN camcacmon = 1 THEN (camcasact *-1)
	 WHEN camcacmon = 2 THEN (camcasact *-6.86)
 END) AS saldo,
 (CASE 
 	WHEN camcastat = 1 AND camcacmon = 1 THEN catcactab
-- 	WHEN camcastat = 1 AND camcacmon = 2 THEN catcactad
-- 	WHEN camcastat = 2 AND camcacmon = 1 THEN catcactsb
-- 	WHEN camcastat = 2 AND camcacmon = 2 THEN catcactsd
-- 	WHEN camcastat = 3 AND camcacmon = 1 THEN catcactcb
-- 	WHEN camcastat = 3 AND camcacmon = 2 THEN catcactcd
 END) AS catca
FROM camca, catca
WHERE camcatpca = catcatpca
AND camcastat IN (1,2,3)
GROUP BY 2
ORDER BY 2;

SELECT sum(CASE 
	 WHEN camcacmon = 1 THEN (camcasact *-1)
	 WHEN camcacmon = 2 THEN (camcasact *-6.86)
 END) AS saldo,
 (CASE 
 	WHEN camcastat = 1 AND camcacmon = 1 THEN substr(catcactab,0,5)
 	WHEN camcastat = 1 AND camcacmon = 2 THEN substr(catcactad,0,5)
 	WHEN camcastat = 2 AND camcacmon = 1 THEN substr(catcactsb,0,5)
 	WHEN camcastat = 2 AND camcacmon = 2 THEN substr(catcactsd,0,5)
 	WHEN camcastat = 3 AND camcacmon = 1 THEN substr(catcactcb,0,5)
 	WHEN camcastat = 3 AND camcacmon = 2 THEN substr(catcactcd,0,5)
 END) AS catca
FROM camca, catca
WHERE camcatpca = catcatpca
AND camcastat IN (1,2,3)
GROUP BY 2