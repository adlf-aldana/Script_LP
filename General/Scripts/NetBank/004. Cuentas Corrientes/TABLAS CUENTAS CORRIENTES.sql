-- AVANCES EVENTUALES / CARGOS
SELECT * 
FROM ccacg;
-- GARANTES - AVANCES CONTRATADOS
SELECT * 
FROM ccade;

SELECT * 
FROM ccagt;

SELECT * 
FROM ccahc;

SELECT *
FROM ccale;

SELECT * 
FROM ccatr;

SELECT * 
FROM ccats;
--AVANCES EVENTUALES
SELECT * 
FROM ccave;
-- MOTIVOS DE BLOQUEO
SELECT *
FROM ccblq;

SELECT *
FROM cccca;

-- CC/Parametros/Mant. Cargos parametros
SELECT *
FROM cccgp;

SELECT *
FROM cccgp_h;

SELECT *
FROM ccch1;

--CHEQUES PAGADOS
SELECT *
FROM ccchp;

--CHEQUES
SELECT *
FROM ccchq;

SELECT *
FROM ccchr;
-- CERT. INSUFICIENTE DE FONDOS

SELECT *
FROM cccif;

SELECT *
FROM cccla;

SELECT *
FROM cccla_h;

--CONCEPTOS
SELECT * 
FROM cccon;

SELECT *
FROM cccpc;

SELECT *
FROM ccct1;

SELECT *
FROM ccctf;

SELECT *
FROM ccctl;

-- CHEQUES CERTIFICADOS
SELECT *
FROM ccdac;

SELECT *
FROM ccdca;

SELECT *
FROM ccdcp;

SELECT *
FROM ccdph;

SELECT *
FROM ccene;

-- FIRMAS AUTORIZADAS - MAESTRO CC
SELECT * 
FROM ccfir 
ORDER BY 1;

SELECT * 
FROM ccfir_h 
ORDER BY 1;

SELECT *
FROM ccfum;

SELECT *
FROM ccglo;

SELECT *
FROM cchac;

-- BLOQUEO
SELECT *
FROM cchbl;

SELECT *
FROM cchcc;

SELECT *
FROM cchtc;

SELECT *
FROM cchtp;

SELECT *
FROM cchts;

SELECT *
FROM cclch;

-- AVANCES CONTRATADOS
SELECT *
FROM ccmav;

-- MAESTRO CC
SELECT * 
FROM ccmcc 
WHERE ccmccncta = 8042000070;

SELECT *
FROM ccmcc1;

SELECT *
FROM ccncc;

SELECT *
FROM ccnid;

-- NIVELES TASAS DE INTERES
SELECT *
FROM ccniv;

SELECT *
FROM ccniv_h;

--pignorados-retenidos
SELECT *
FROM ccpig;

SELECT *
FROM ccpir;

SELECT *
FROM ccpro;
-- CUENTAS INTERCHEQUE
SELECT *
FROM ccpta;

SELECT *
FROM ccrca;

SELECT *
FROM ccrch;

SELECT *
FROM ccrct;

SELECT *
FROM ccref;

SELECT *
FROM ccreh;

SELECT *
FROM ccrev;

SELECT *
FROM ccsld;

SELECT *
FROM cctcc;

SELECT *
FROM cctcc_h;

-- TIPOS DE CHEQUERAS
SELECT *
FROM cctch;

SELECT *
FROM cctch_h;
-- DEBITOS/CREDITOS A CTAS CTES
SELECT *
FROM cctcn ORDER BY cctcnntra;
-- TITULARES
SELECT *
FROM cctit;

SELECT *
FROM cctit_h;

-- TIPOS DE MOVIMIENTO
SELECT *
FROM cctmv
WHERE cctmvdesc LIKE 'INTERES%'
ORDER BY 1,2;
-- TIPOS DE PIGNORACION
SELECT *
FROM cctpg;

-- TASA PREFERENCIAL - MAESTRO CC
SELECT *
FROM cctpr;

SELECT *
FROM cctpv;

SELECT *
FROM cctrc;

SELECT *
FROM cctrh;
-- DEBITOS/CREDITOS A CTAS CTES
SELECT *
FROM cctrn;

SELECT *
FROM cctrn1;
-- AUTORIZACION
SELECT *
FROM cctus;