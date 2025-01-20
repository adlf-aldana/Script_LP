SELECT
	a.estado COD_ESTADO_CA,--1
	decode(a.estado,
		1, 'ACTIVA',
		2, 'INMOVILIZADA',
		3, 'CLAUSURADA',
		4, 'CERRADA',
		5, 'LIQUIDAD', 'SIN PARAMETRO') DESC_ESTADO_CA,--2
	decode(a.id,
		1, 'NORMAL',
		2, 'DUPLICADOS 2',
		3, 'DUPLICADOS 3',
		4, 'DUPLICADOS 4') PROCESO_DEVENGAMIENTO,--3
	count(*) CANTIDAD--4
FROM (
SELECT caigd.*, 
	camcastat estado,
	ROW_NUMBER() OVER (PARTITION BY caigdncta) id
FROM caigd
	INNER JOIN camca ON camcancta = caigdncta
WHERE caigdfech = '2023-08-31') a
GROUP BY 1, 2, 3
ORDER BY 1, 3;