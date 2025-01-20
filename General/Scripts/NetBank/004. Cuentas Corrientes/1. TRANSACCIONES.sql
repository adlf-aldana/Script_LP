/***********************************************/
--*** cct320 - DEBITOS/CREDITOS A CTAS CTES ***--
SELECT *
FROM cctcn;

SELECT *
FROM cctrn;

-- TIPOS DE MOVIMIENTO - CC/Parametros/Mantenimiento Conceptos * 1 - PARA VISUALIZAR EN DEBITOS/CREDITOS SE DEBE ASIGNAR AL USUARIO 
SELECT *
FROM cccon
WHERE ccconpref = 1
AND ccconcorr IN (1,2)
ORDER BY 1,2;

-- CONCEPTO - CC/Parametros/Tipo de Movimientos
SELECT *
FROM cctmv
ORDER BY 1,2;
 
-- MONEDA - MG/Parametros/Conceptos * 10
SELECT *
FROM gbcon
WHERE gbconpfij = 10
ORDER BY 1,2;

/***********************************************/
--*** cct348 - TRASPASOS ENTRE CUENTAS CLIENTES ***-- 
SELECT *
FROM cctcn;

SELECT *
FROM cctrn;

/***********************************************/
--*** CCT329 - CERTIFICACION DE CHEQUES ***-- 
SELECT *
FROM ccdac;

/***********************************************/
--*** cct327 - VENTA DE CHEQUERAS ***--
SELECT *
FROM ccchr;

SELECT * 
FROM ccchq;

-- CANT. CHEQUES - CC/Parametros/Tipos de Chequeras
SELECT *
FROM cctch;
/***********************************************/
--*** cct331 - CHEQUES RECIBIDOS EN CAMARA ***--
SELECT * 
FROM cctrn;

SELECT *
FROM cctcn;

/***********************************************/
--*** cct322 - PIGNORACION DE FONDOS ***-- FALTA!
SELECT *
FROM cccon
ORDER BY 1,2;

-- CAUSA 
-- CC/Parametros/Tipos de pignoracion
SELECT *
FROM cctpg,gbtpr
WHERE cctpgtpgr = gbtprtpgr
AND gbtprtper = 1
AND cctpgcmon = 1; 

/***********************************************/
--*** cct310 - CHEQUE RECHAZADO EN CAMARA ***-- FALTA!
-- CAUSA
SELECT *
FROM cccon
WHERE ccconpref = 6
ORDER BY 1,2;

SELECT *
FROM ccglo;

/***********************************************/
--*** cct346 - CAMBIOS DE ESTADOS AVANCE ***-- FALTA!
SELECT * 
FROM ccmav;

--ESTADO -> VALORES POR DEFECTO

/***********************************************/
--*** cct321 - TRASPASO ENTRE CUENTAS CORRIENTES ***
SELECT *
FROM cctcn ORDER BY cctcnntra;

SELECT * 
FROM cctrn;

/***********************************************/
--*** cct386 - CHEQUES AJENOS RECHAZADOS ***-- FALTA! 

-- MOTIVO
SELECT *
FROM cccon
WHERE ccconpref = 6;

/***********************************************/
--*** cct356 - DEBITOS CON EMISION DE FACTURA ***-- FALTA!

-- CONCEPTO
SELECT *
FROM cctmv
WHERE cctmvpref = 40;

/***********************************************/
--*** cct364 - DESPIGNORACION DE FONDOS ***-- FALTA!

-- CAUSA
SELECT *
FROM gbcon 
WHERE gbconpfij = 310;--corr = 33

