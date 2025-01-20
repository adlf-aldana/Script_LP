--VALOR RESIDUAL
--03-00147 84.66
--03-00147 2909.28

--fecha inidiodep -> fecha
-- vida_residual=vida util - tiempo

-- vida residual =
-- 03 - 120 meses 
-- tiempo transcurrido
SELECT *FROM cnu
SELECT *FROM afmae WHERE afmaecodi IN ('02-00018');
SELECT *FROM aftip;
SELECT *FROM inalm;
--fecha <  JULIO 2017 fecha compra
--> AGOSTO 2017 depreciacion
--g.inalmdesc AGENCIA,
SELECT DISTINCT 
TRIM(cnunedesc) AGENCIA,
e.gbagecage CODIGO_CLIENTE,
e.gbagenomb RESPONSABLE,
a.afmaecodi CODIGO,
a.afmaedscr DESCRIPCION,
a.afmaefreg FECHA_REGISTRO,
a.afmaefcom FECHA_COMPRA,
CASE
    WHEN DATE(a.afmaefide) <= DATE('2017-07-01') THEN a.afmaefide
    ELSE a.afmaefcom
END AS FECHA_INICIO_DEPRECIACION,
(a.afmaevida - a.afmaevidu)  VIDA_RESIDUAL,
--((SELECT b.gbpmtfdia from gbpmt b) - a.afmaefide) FECHA_INICIO_DEP,
a.afmaevida VIDA_UTIL_MESES,
a.afmaevidu VIDA_UTIL_USADA,
a.afmaevomn VALOR_COMPRA,
a.afmaemamn ADICIONES,
(a.afmaedamn + a.afmaedgmn) SUSTRACIONES,
(a.afmaevomn-(a.afmaedamn + a.afmaedgmn)) VALOR_RESIDUAL,
a.afmaergmn REEXPRESION_GESTION,
a.afmaeramn REEXPRESION_ACUMULADO,
(a.afmaeramn + a.afmaergmn) REEXPRESION_TOTAL,
a.afmaemgmn MEJORA_GESTION,
a.afmaemamn MEJORAS_ACUMULADO,
(a.afmaemgmn + a.afmaemamn) MEJORAS_TOTAL,
--'TOTAL_ADICION_GESTION',
--'TOTAL_ADICION_ACUMULADO',
--'TOTAL_ADICION_TOTAL',
--a.afmaedgmn DEPRECIACION_MENSUAL, --(valor adquisicion - 1 * (tiempo vida util) - 1465.24)
f.afdepipmi DEPRECIACION_MENSUAL, 
a.afmaedgmn * (SELECT MONTH(b.gbpmtfdia) from gbpmt b) DEPRECION_GESTION,
a.afmaedamn DEP_ACUMULADO --dep mensual * meses trascurridos
--'DEPRECION TOTAL',
--'REV DEPREC GESTION',
--'REV DEPREC Acumulado',
--'REV. DEPREC TOTAL',
--'TOT DEPRE GESTION',
--'TOT DEPREC ACUM'
FROM afmae a, afcon b, aftip d, gbage e, afdep f, OUTER cnune g
WHERE a.afmaecodi = f.afdepcodi 
AND b.afconpref = 3
AND a.afmaestat= b.afconcorr
AND a.afmaetipo = d.aftiptipo
AND a.afmaemrcb = 0
AND a.afmaeuneg = g.cnuneuneg--g.inalmcalm
AND a.afmaeresp = e.gbagecage 
AND f.afdepfreg = (SELECT max(x.afdepfreg)
				FROM afdep x
				WHERE x.afdepcodi = a.afmaecodi)
--AND afmaecodi IN ('04-01717')
ORDER BY 3;

SELECT *FROM gbcon ORDER BY 1,2
SELECT *FROM cnune

SELECT *FROM afcon ORDER BY 1,2;

SELECT *FROM inalm;

SELECT *FROM gbpmt;

SELECT a.afmaevomn,
	a.afmaedamn,
	a.afmaedgmn,
	(a.afmaevomn-(a.afmaedamn + a.afmaedgmn)) VALOR_RESIDUAL,
	a.afmaeuneg
FROM afmae a
WHERE a.afmaecodi LIKE '09-00095'

--10662.30
--UPDATE afmae
--SET afmaedamn = 11901.10
--WHERE afmaecodi = '09-00095'



--DEPERECIACIONES
SELECT *
FROM afdep 
WHERE afdepcodi = '09-00095'-- '02-00018';


SELECT *
FROM afdep 
WHERE afdepcodi = '09-00095'-- '02-00018';

--MAESTRO DE ACTIVOS
SELECT *
FROM afmae
WHERE afmaecodi = '09-00095'-- '02-00018';

SELECT *
FROM gbage 
WHERE gbagecage='1255';

SELECT *FROM cpmcp;
SELECT *FROM gbage WHERE gbagecage IN (2030,1560,2017,2075);
SELECT *FROM gbcba WHERE gbcbacage IN (2030,1560,2017,2075);
SELECT *FROM gbvcv WHERE gbvcvcage IN (2030,1560,2017,2075);

SELECT afdtrntra, afdtrftra, afdtritem, afdtrcodi, afdtrmrcb 
FROM afdtr WHERE afdtrntra = 5170;
-- TRASPASOS
SELECT *
FROM afdtr 
WHERE AFDTRCODI ='09-00095';

SELECT *
FROM afhtr 
WHERE afhtrntra = 5170

-- TABLA DE CIERRE GESTION
SELECT *
FROM afdcg
WHERE AFDCGCODI ='02-00018';
--UPDATE afdtr SET AFDTRMRCB =0 WHERE afdtrntra=963 AND AFDTRCODI ='03-00288';

SELECT *FROM afmae WHERE afmaecodi = '03-01917' '02-00018';

SELECT *
FROM afcon
ORDER BY 1,2;
