SELECT DISTINCT 
camcancta NRO_CUENTA,--1
catcadesc TIPO_CAJA_AHORRO,--2
camcacage COD_CLIENTE,--3
gbagenomb NOMBRE,--4
gblabdcar CARGO, --5
camcaplaz PLAZA, --6
camcaagen  AGENCIA --7
FROM gbage
	INNER JOIN camca ON gbagecage = camcacage
	INNER JOIN gblab ON gbagecage = gblabcage 
		AND gblabmrcb = 0
		AND gblabmpri = 1
	INNER JOIN catca ON camcatpca = catcatpca
	INNER JOIN gbepl ON gbagecage = gbeplcemp
WHERE camcatpca IN (3,38,39,40,41)
AND camcastat IN (1,2,3)
--AND camcacage = 359160
ORDER BY 4;
