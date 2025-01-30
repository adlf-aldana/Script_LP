--CATEGORIA CAEDEC
SELECT *
FROM gbcic;

-- MANTENIMIENTO PERSONAS NATURALES
-- DATOS GENERALES
SELECT * 
FROM gbage 
WHERE gbagecage = 78 ; --intermediacion financiera

-- DATOS ADICIONALES - MENSAJES - CORREO - OTROS
SELECT * 
FROM gbdac 
WHERE gbdaccage = 27964;
--
SELECT * 
FROM gbdan 
WHERE gbdancage = 27964;

/* NO HAY EN LA NUEVA AGENDA */
SELECT * 
FROM gbdbi 
WHERE gbdbicage = 363607 ;

SELECT * 
FROM gbdja 
WHERE gbdjacage = 363607 ;

SELECT * 
FROM gbdju
WHERE gbdjucage = 363607 ;

SELECT * 
FROM gbgps 
WHERE gbgpscage = 363607 ;

SELECT * 
FROM gbpdi WHERE gbpdicage = 363607 ;

-- DIRECCIONES
SELECT * 
FROM gbdir 
WHERE gbdircage = 363607;

-- DOCUMENTOS IDENTIDAD 79607500 
SELECT * 
FROM gbdoc 
WHERE gbdoccage = 363607;

-- EMAIL
SELECT *
FROM gbema 
WHERE gbemacage = 363607;

-- DATOS LABORALES
SELECT * 
FROM gblab 
WHERE gblabcage = 363607;

-- DEPARTAMENTOS -- Modulo General/Parametros/ Pais|Departamento|Provincia|Munipios|Ciudades|Zona
SELECT *
FROM gbdpt;

-- DEPARTAMENTO - PROVINCIAS
SELECT *
FROM gbloc;

SELECT *
FROM gbprv

-- NOTAS
SELECT * 
FROM gbnag 
WHERE gbnagcage = 363607;

-- REFERENCIAS
SELECT * 
FROM gbrag
WHERE gbragcage = 27964;

-- VARIABLES
SELECT *
FROM gbsrl;

-- TELEFONOS
SELECT * 
FROM gbtlf 
WHERE gbtlfcage = 363607;

-- ?
SELECT * 
FROM gbpin WHERE gbpincage = 363607 ;
-- TIPO DE RELACION
SELECT *
FROM gbtrp;

SELECT *
FROM gbrel 
WHERE gbrelcage IN (359160 );

-- CONYUGUE
SELECT *
FROM gbdan 
WHERE gbdancage in (363607 );

SELECT *
FROM informix.gbdac2;

-- CAMPOS ADICIONALES - gbacvveri func. publico - 
SELECT * 
FROM gbacv
WHERE gbacvcage = 363607 ;

SELECT * 
FROM gbdan 
WHERE gbdancage = 363607 ;

-- Datos Adicionales - REFERENCIAS
SELECT *
FROM gbrag 
WHERE gbragcage= 363607 ;

/*LUGAR NACIMIENTO PERSONA NATURAL*/
SELECT * 
FROM gbacv 
WHERE gbacvcage = 359160 ;

-- DATOS SOCIALES
SELECT * 
FROM gbeso 
WHERE gbesocage = 363607 ;

-- BENEFICIARIO FINAL - SOCIOS ACCIONISTAS
SELECT * 
FROM gbeso 
WHERE gbesocage = 363607 ;

-- RELACION PARENTESCO
SELECT *
FROM gbdan
WHERE gbdancage = 359160

SELECT *FROM gbage WHERE gbagecage = 359160