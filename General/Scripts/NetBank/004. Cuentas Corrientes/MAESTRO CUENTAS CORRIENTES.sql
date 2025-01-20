/***********************************************/
--*** ccm305 - MAESTRO CUENTAS CORRIENTES ***--
SELECT *
FROM ccmcc;

--TIPOS CUENTAS CORRIENTES
SELECT *
FROM cctcc
ORDER BY 1;

-- MONEDA
SELECT *
FROM gbcon
WHERE gbconpfij = 10
ORDER BY 1,2;

-- MANEJO -> no maneja cuenta contable?
SELECT *
FROM cccon
WHERE ccconpref = 3;

-- USO
SELECT *
FROM cccon
WHERE ccconpref = 2;

UPDATE cccon
SET ccconmrcb = 0
WHERE ccconpref = 2
AND ccconcorr =  1;

-- OFICIAL RESPONSABLE - MG/PARAMETROS/FIRMAS AUTORIZADAS
SELECT *
FROM gbfir;

-- MOTIVO APERTURA
SELECT *
FROM cccon
WHERE ccconpref = 30
ORDER BY 2;

-- DATOS GENERALES
SELECT *
FROM ccfir
WHERE ccfirncta = 3041000035;

-- TITULARES
SELECT *
FROM cctit;

-- TASAS - TASAS PREFERENCIALES - MAESTRO CC
SELECT *
FROM cctpr
WHERE cctprncta = 3041000023;

/***********************************************/
--*** cct316 - AVANCES CONTRATADOS ***--
SELECT * 
FROM ccmav;

-- GARANTES 
SELECT * 
FROM ccade;

-- GARANTIAS

-- CARGOS - CC/Parametros/Tipos de Movimiento
SELECT * 
FROM cccgp;

-- TASAS
SELECT * 
FROM ccats;

-- RENOVACION
SELECT * 
FROM ccmav;

/***********************************************/
--*** cct317 - AVANCES EVENTUALES ***--
SELECT * 
FROM ccave;

-- CARGOS - CC/Parametros/Tipos de Movimiento
SELECT * 
FROM cccgp;

SELECT * 
FROM ccacg;

/***********************************************/
--*** CCM323 - BLOQUEO/HABILITACION DE CUENTAS ***--

-- HISTORIAL BLOQUEO
SELECT * 
FROM cchbl;

/***********************************************/
--*** CCM361 - HABILITACION DE CHEQUES ***--

/***********************************************/
--*** cct328 - CERT. INSUFICIENCIA DE FONDOS ***--
SELECT * 
FROM cccif;

/***********************************************/
--*** CCM306 - CUENTAS INTERHEQUE ***--
SELECT * 
FROM ccpta;

/***********************************************/
--*** ccc315 - CONSULTA DE SALDOS ***--

/***********************************************/
--*** ccr537 - CONSULTA DE CHEQUES ***--

/***********************************************/
--*** ccr539 - CONSULTA TRANS.  AVANCES ***--

/***********************************************/
--*** CCM314 - MANTENIM. OTROS TITULARES ***--

/***********************************************/
--*** ccc600 - CONSULTA DE CTAS. CTES. ***--

/***********************************************/
--*** ccm001 - CARGAR ASCII CTAS CLAUSURADAS ***--

/***********************************************/
--*** ccm001 - CARGAR ASCII CTAS CLAUSURADAS ***--

/***********************************************/
--*** ccm002 - CARGA ASCII CTAS. REHABILITADAS ***--

/***********************************************/
--*** ccm003 - PROC. REHABILITACION CTAS ASFI ***--

/***********************************************/
--*** ccm003 - PROC. REHABILITACION CTAS ASFI ***--

/***********************************************/
--*** ccm004 - CARGA ASCII CTAS RETIRADAS ***--

/***********************************************/
--*** ccm005 - PROC. CLAUSURA CTAS. ASFII ***--

/***********************************************/
--*** ccr117 - GENERAR ASCII CTAS. CLAUSURADAS ***--

/***********************************************/
--*** cct384 - CAMBIO DE TIPO DE CUENTA ***--






