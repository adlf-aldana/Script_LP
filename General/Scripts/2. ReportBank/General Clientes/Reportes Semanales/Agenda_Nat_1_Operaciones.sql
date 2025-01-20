-- New script in 2da.
-- Date: 19 may. 2022
-- Time: 14:13:39
-- By: sgcruz
-- CLIENTES PERSONAS NATURALES CA-1.2.3 DPF-1, PR-2.3.5
SELECT DISTINCT
	g.gbagecage CODIGO,--1
	TRIM(g.gbagenomb) NOMBRE,--2
	TRIM(g.gbagenaci) NACIONALIDAD,--3
	TRIM(gbpaidesc) PAIS,--4
	trim(doc.gbcondesc) TIPO_DOC_INDENT,--5
	TRIM(g.gbagendid) DOC_IDENTIDAD,--6
	g.gbagenruc NIT,--7
	g.gbagefnac FECHA_NACIMIENTO,--8
	TRUNC((gbpmtfdia - g.gbagefnac) / 365)  EDAD,--9
	DECODE(dp.gbdirdire,
		NULL, 'noregidir',
		'regdir') REGISTRA_DIR,--10
	TRIM(dp.gbdirdire) DOM_PARTICULAR,--11
	TRIM(dl.gbdirdire) DOM_COMERCIAL,--12
	TRIM(g.gbagetlfd) TELEFONO,--13
	TRIM(gbdaccelu) TELF_CELULAR,--14
	TRIM(est.gbcondesc) ESTADO_CIVIL,--15
	decode(g.gbagesexo,
		1, 'M',
		'F') SEXO,--16
	TRIM(gbdacape3) AP_CASADA,--17
	decode(g.gbageeciv,
		2, gbrelcagr,
		null) COD_CLI_CONYUGUE_REL,--18
	decode(g.gbageeciv,
		2, (SELECT gbagenomb 
			FROM gbage
			WHERE gbagecage = gbrelcagr),
		null) NOMBRE_CONYUGUE_REL,--19
	gbdaccony CODCLICONYUG_GBDAC,--20
	gbdacnoco NOMBCONYUG_GBDAC,--21
	TRIM(gbdannomc) NOMB_CONY_NUEV_AGEN,--22
	TRIM(gbdandact) ACT_CONY_NUEV_AGEN,--23
	g.gbageprof COD_PROF,--24
	TRIM(gbprfdesc) PROFESION,--25
	g.gbageciiu GBAGECIIU,--26
	trim(gbciidesc) ACT_ECONOMICA,--27
	decode(gblabcage,
		NULL, 'noreglab',
		'reglab') REGISTRA_LAB,--28
	trim(gblabnemp) LUGAR_TRABAJO,--29
	gblabtcar COD_CARG,--30
	decode(gblabtcar,
		1, 'PROPIETARIO',
		2, 'GERENTE',
		3, 'EJECUTIVO',
		4, 'EMPLEADO',
		5, 'OBRERO',
		6, 'EVENTUAL',
		7, 'INDEPENDIENTE',
		'NO APLICA') TIPO_CARG,--31
	trim(gblabdcar) CARGO,--32
	gblabfcar FECHA_CARG,--3
	gblabfing FECHA_INGRESO,--34
	gblabnsal COD_NIV_INGRESOS,--35
	decode(gblabnsal,
		1, 'SIN INGRESOS',
		2, 'de 1 a 1000',
		3, 'de 1001 a 2000',
		4, 'de 2001 a 4000',
		5, 'de 4001 a 6000',
		6, 'de 6001 a 10000',
		7, 'de 10001 a 15000',
		8, 'de 15001 a 20000',
		9, 'de 20001 a mas') NIVEL_INGRESOS,--36
	g.gbagefreg FECH_REG,--37
	TRIM(r1.gbragnomb) REF_PERS,--38
	TRIM(r2.gbragnomb) REF_COMER,--39
	TRIM(r3.gbragnomb) REF_BANC,--40
	g.gbageagen AGENCIA--41
FROM gbage g
	INNER JOIN gbdac ON gbdaccage = g.gbagecage
	INNER JOIN gbcon AS doc ON doc.gbconcorr = g.gbagetdid
		AND doc.gbconpfij = 4
	INNER JOIN gbcon AS est ON est.gbconcorr = g.gbageeciv
		AND est.gbconpfij = 3
	INNER JOIN gbpai ON gbpaipais = gbdacpaip
	INNER JOIN gbdir AS dp ON dp.gbdircage = g.gbagecage 
		AND dp.gbdirtdir = 1
		AND dp.gbdirmrcb = 0 AND
		dp.gbdiritem = (SELECT min(gbdiritem)
						FROM gbdir
						WHERE gbdirtdir = 1
						AND gbdirmrcb = 0
						AND gbdircage = g.gbagecage)
	INNER JOIN gbdir AS dl ON dl.gbdircage = g.gbagecage
		AND dl.gbdirtdir = 1
		AND dl.gbdirmrcb = 0
		AND dl.gbdiritem = (SELECT min(gbdiritem)
							FROM gbdir
							WHERE gbdirtdir = 1
							AND gbdirmrcb = 0
							AND gbdircage = g.gbagecage)
	LEFT JOIN gbrel ON gbrelcage = g.gbagecage
		AND gbreltrel = 1
	LEFT JOIN gbprf ON gbprfprof = g.gbageprof
	LEFT JOIN gbcii ON gbciiciiu = g.gbageciiu
	LEFT JOIN gblab ON gblabcage = g.gbagecage 
		AND gblabmrcb = 0
		AND gblabmpri = 1
	LEFT JOIN gbrag AS r1 ON r1.gbragcage = g.gbagecage
		AND r1.gbragtrag = 1
		AND r1.gbragmrcb = 0
		AND r1.gbragitem = (SELECT min(gbragitem)
							FROM gbrag
							WHERE gbragcage = g.gbagecage
							AND gbragtrag = 1
							AND gbragmrcb = 0)
	LEFT JOIN gbrag AS r2 ON r2.gbragcage = g.gbagecage
		AND r2.gbragtrag = 1
		AND r2.gbragmrcb = 0
		AND r2.gbragitem = (SELECT min(gbragitem)
							FROM gbrag
							WHERE gbragcage = g.gbagecage
							AND gbragtrag = 2
							AND gbragmrcb = 0)
	LEFT JOIN gbrag AS r3 ON r3.gbragcage = g.gbagecage
		AND r3.gbragtrag = 1
		AND r3.gbragmrcb = 0
		AND r3.gbragitem = (SELECT min(gbragitem)
							FROM gbrag
							WHERE gbragcage = g.gbagecage
							AND gbragtrag = 3
							AND gbragmrcb = 0)
	LEFT JOIN gbdan ON gbdancage = g.gbagecage
		AND gbdanrcon = 1
	, gbpmt
WHERE g.gbagetper = 1
AND (
	EXISTS (SELECT *
		      FROM camca
			  WHERE camcacage = g.gbagecage
			  	AND camcastat in (1, 2, 3))
	OR EXISTS (SELECT *
			    FROM pfmdp
				WHERE pfmdpcage = g.gbagecage
					AND pfmdpmrcb = 0
					AND pfmdpstat in (1))
	OR EXISTS (SELECT *
			    FROM prdeu
			    	INNER JOIN prmpr ON prmprnpre = prdeunpre AND prmprstat in (2,3,5) AND prmprtcre NOT BETWEEN 60 AND 67
				WHERE prdeucage = g.gbagecage)
	OR EXISTS (SELECT *
			    FROM catit
			    	INNER JOIN camca ON camcancta = catitncta AND camcastat IN (1, 2, 3)
				WHERE catitcage = g.gbagecage)
	OR EXISTS (SELECT *
			    FROM pftit
			    	INNER JOIN pfmdp ON pfmdpndep = pftitndep AND pfmdpmrcb = 0 AND pfmdpstat = 1
				WHERE pftitcage = g.gbagecage)
);