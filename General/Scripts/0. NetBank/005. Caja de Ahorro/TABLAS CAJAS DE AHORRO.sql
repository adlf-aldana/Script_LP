/*
SELECT *
FROM caagc;

SELECT *
FROM caahc;

SELECT *
FROM caatp;
*/
SELECT * 
FROM caauc;
--SELECT *FROM caaux;
SELECT * 
FROM caban 
WHERE cabanncta IN (3052584020,3052004972)

-- MOTIVOS DE BLOQUEO
SELECT * 
FROM cablq;

SELECT * 
FROM cacap --ORDER BY cacapfpro DESC 
WHERE cacapncta IN (3052584020,3052004972)--3052584020;

-- TIPOS DE CAJA DE AHORRO
SELECT *
FROM caccc ORDER BY 1;
/*
SELECT *
FROM cacee;

SELECT *
FROM cacgp;

SELECT *
FROM cachq;

SELECT *
FROM cachr;

SELECT *
FROM cacit;

SELECT *
FROM cacom;
*/

-- CONCEPTOS
SELECT * 
FROM cacon ORDER BY 1,2;

--SELECT *FROM cacpc;
SELECT * 
FROM cacsd --ORDER BY cacsdfpro DESC 
WHERE cacsdncta IN (3052584020,3052004972);

-- PARAMETROS GENERALES
SELECT * 
FROM cactl;

SELECT * 
FROM cadac 
WHERE cadacncta IN (3052584020,3052004972);

SELECT * 
FROM cadac_temp 
WHERE cadacnctaa = 3052584020;

SELECT *
FROM cadca;

--SELECT *FROM cadcp;
SELECT * 
FROM cadph 
WHERE cadphncta IN (3052584020,3052004972);

SELECT * 
FROM cadre 
WHERE cadrencta IN (3052584020,3052004972);

--SELECT *FROM caexc;
SELECT * 
FROM cafir 
WHERE cafirncta IN (3052584020,3052004972)

--SELECT * FROM cafirv;
-- TIPO DE MOVIMIENTO
SELECT *
FROM cafum;
/*
SELECT *
FROM cagrc;
SELECT *
FROM cagrd;
SELECT *
FROM cagrt;
*/
SELECT * 
FROM cahbl 
WHERE cahblncta IN (3052584020,3052004972);

SELECT * 
FROM cahca 
WHERE cahcancta IN (3052584020,3052004972);

SELECT * 
FROM cahtc 
WHERE cahtcncta IN (3052584020,3052004972);

SELECT * 
FROM cahtp 
WHERE cahtpncta IN (3052584020,3052004972);

SELECT * 
FROM caigd
--ORDER BY caigdfech DESC 
WHERE caigdncta IN (3052584020,3052004972);

SELECT * 
FROM caigm 
WHERE caigdncta IN (3052584020,3052004972);
-- TIPOS DE CAJA DE AHORRO
SELECT * 
FROM caima;

SELECT * 
FROM cairt --ORDER BY cairtfpro DESC 
WHERE cairtncta = 3052584020;
--SELECT * FROM caitf;
--SELECT * FROM caja;
SELECT * 
FROM calib --ORDER BY calibfpro DESC 
WHERE calibncta = 3052584020;

SELECT * 
FROM camca --ORDER BY camcafpro DESC 
WHERE camcancta = 3052584020;

SELECT * 
FROM camcamig-- ORDER BY camcafpro DESC 
WHERE camcancta = 3052453386;

SELECT ncta, resp FROM camcatemp;
/*
SELECT * FROM camci;
SELECT * FROM camrc;
*/
SELECT *FROM canca;

-- NIVELES DE TASA
SELECT * 
FROM canic;

SELECT * FROM cahca WHERE CAHCANCTA = 3052584020

SELECT * 
FROM canid 
--ORDER BY canidfpro DESC 
ORDER BY 1,2;

SELECT * 
FROM caniv 
--ORDER BY canivfpro DESC 
ORDER BY 1,2;

/*
SELECT *
FROM caniv_h;

SELECT *
FROM canli;

SELECT *
FROM capac;

SELECT *
FROM capad;

SELECT *
FROM capaf;

SELECT *
FROM capah;

SELECT *
FROM capam;

SELECT *
FROM capam_h;

SELECT *
FROM capap;

SELECT *
FROM capap_h;

SELECT *
FROM capat;
 
SELECT *
FROM capat_h;
*/
SELECT *
FROM capcn
ORDER BY capcnfpro DESC ;

SELECT * 
FROM capig ORDER BY capigfpro DESC 
WHERE capigncta = 3052453386;

SELECT * 
FROM capir --ORDER BY capirfpro DESC  
WHERE capirncta = 3052584020;

/*
SELECT *
FROM capmx;

SELECT *
FROM caprh;
*/
SELECT * 
FROM caprm --ORDER BY caprmfpro DESC 
WHERE caprmncta = 3052584020;

SELECT * 
FROM capro 
WHERE caproanio = 2023 AND capronmes = 5
WHERE caproncta = 3052584020;

SELECT *
FROM caprp
ORDER BY caprpfpro DESC ;

SELECT * 
FROM caprt
ORDER BY caprtfpro DESC ;
--SELECT carefncta, carefctaa FROM caref;
SELECT * 
FROM carev 
ORDER BY carevfpro DESC;

/*
SELECT casldncta, casldfech, casldsald FROM casld;
SELECT * FROM casli;
SELECT * FROM caslp;
*/
SELECT *FROM casrl;
-- TIPOS CAJA AHORRO
SELECT * 
FROM catag 
ORDER BY catagfpro DESC;
-- TIPOS CAJA AHORRO
SELECT * 
FROM catca ORDER BY 1;
/*
SELECT *FROM catca_h;
SELECT *FROM catce;
SELECT *FROM catch;
*/
SELECT * 
FROM catcm
ORDER BY catcmfpro DESC ;

SELECT * 
FROM catcn
--WHERE catcnfpro = '2023-05-29'
--ORDER BY catcnfpro DESC; 
WHERE catcnncta = 3052584020;

SELECT * 
FROM catit 
WHERE catitncta = 3052584020;

SELECT * 
FROM catit_h ORDER BY catitfpro DESC ;

SELECT * 
FROM catitmig
ORDER BY catitfpro DESC ;-- WHERE catitncta = 3052584020;
-- TIPO DE MOVIMIENTO
SELECT * 
FROM catmv 
ORDER BY 1,2;
--SELECT catnipref, catnicorr, catnidesc FROM catni;

SELECT catofntra, catofncta 
FROM catof;

SELECT * 
FROM catpg 
ORDER BY 1;
--SELECT catpmcpig, catpmcmon, catpmctab, catpmuser, catpmhora, catpmfpro FROM catpm;
SELECT * 
FROM catpr --ORDER BY catprfpro DESC ;
WHERE catprncta = 3052584020;

SELECT * 
FROM catpv --ORDER BY catpvfpro DESC ;
WHERE catpvncta = 3052584020;

SELECT * 
FROM catrc
WHERE catrcntra = 28824088;
--SELECT catrentra, catrencta, catretcdo, catretceu, catreimpe FROM catre;
--SELECT catrhntra, catrhftra, catrhncta, catrhcage, catrhmcta, catrhsant, catrhndoc, catrhpref, catrhcorr, catrhdmov, catrhimpo, catrhimpt, catrhcbio, catrhcmon, catrhglos, catrhplaz, catrhagen, catrhuser, catrhhora, catrhfpro FROM catrh;
SELECT * 
FROM catrn
--WHERE catrnfpro = '2023-05-29'
--ORDER BY catrnfpro DESC 
WHERE catrnncta = 3052584020;

SELECT * 
FROM cattc 
ORDER BY cattcfpro DESC;

SELECT * 
FROM catus 
ORDER BY catusfpro DESC;
