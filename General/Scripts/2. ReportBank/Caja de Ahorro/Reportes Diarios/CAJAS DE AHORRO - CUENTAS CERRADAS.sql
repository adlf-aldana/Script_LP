--REPORTE DE CAJAS DE AHORRO CERRADAS - ESTADO 4
--14 CAMPOS
--25/02/2022 - by CES
SELECT
	camcacage COD_CLIENTE,--1
	trim(gbagenomb) NOMBRE_CLIENTE,--2
	camcancta NRO_CTA,--3
	camcatpca TIPO_PRODUCTO,--4
	catcadesc TIPO_PRODUCTO_DESC,--5
	camcafapt FECHA_APERTURA,--6
	cahbluser USUARIO_CIERRE,--7
	cahblfpro FECHA_CIERRE,--8
	ROUND(camcasact, 2) SALDO_ACTUAL,--9
	ROUND(camcasdia, 2) SALDO_DIA,--10
	caa.cacondesc ESTADO_ANTERIOR,--11
	ca2.cacondesc ESTADO_ACTUAL,--12
	camcaagen AGENCIA,--13
	ca1.cacondesc MANEJO--14
FROM camca
	INNER JOIN gbage ON gbagecage = camcacage
	INNER JOIN cacon AS ca1 ON ca1.caconpref = 3 AND ca1.caconcorr = camcamane
	INNER JOIN cacon AS ca2 ON ca2.caconpref = 4 AND ca2.caconcorr = camcastat
	INNER JOIN cahbl ON cahblncta = camcancta AND cahblstan = 4 AND cahblfpro BETWEEN '{fei}' AND '{fef}'
	INNER JOIN cacon AS can ON can.caconpref = 4 AND can.caconcorr = cahblstan
	INNER JOIN cacon AS caa ON caa.caconpref = 4 AND caa.caconcorr = cahblstaa
	INNER JOIN catca ON catcatpca = camcatpca
WHERE camcastat = 4
ORDER BY FECHA_CIERRE;