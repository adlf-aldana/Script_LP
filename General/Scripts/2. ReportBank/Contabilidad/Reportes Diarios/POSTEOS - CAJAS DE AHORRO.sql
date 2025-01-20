SELECT
	catcnftra FECHA,--1
	DECODE(catcnpost, 9, 'POSTEADO', 'NO POSTEADO') ESTADO,--2
	catcnndoc NRO_DOCUMENTO,--3
	catcnpref PREFIJO,--4
	catcncorr CORRELATIVO,--5
	TRIM(catcndesc) DESCRIPCION,--6
	catcncctb CUENTA_CONTABLE,--7
	ROUND(catcnimpi, 2) IMPORTE,--8
	ROUND(catcnimpc, 2) IMPORTE_USD,--9
	ROUND(catcncbio, 2) TC,--10
	catcnntra NRO_TRANSACCION,--11
	DECODE(catrnstat, 0, 'ACTIVO', 'BAJA') ESTADO_TRANSACCION,
	catrnuser USUARIO_TRANSACCION,
	catrnftra FECHA_TRANSACCION,
	catrnhora HORA_TRANSACCION,
	catcnncta PRODUCTO,--12
	catcnplaz PLAZA,--13
	catcnagen AGENCIA--14
FROM catcn
	LEFT JOIN catrn ON catrnntra = catcnntra
WHERE catcnftra BETWEEN '2023-10-31' AND '2023-10-31';
--AND catcnndoc IN (25891139,25891399);
