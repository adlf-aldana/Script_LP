-- pr344, PRESTAMOS CASTIGADOS
SELECT *FROM prmpr WHERE prmprstat IN (7,8);
/* 10044488
 * 
 * */
SELECT *FROM prcon ORDER BY 1,2

SELECT *FROM prmpr WHERE prmprstat = 2 AND prmprtcre = 412;--406;--316
-- REPROGRAMACION MANUAL PRM326 - CON LA NUEVA VERSION NO SE REGISTRA EN ESTA TABLA
SELECT prhtcnpre, prhtcfreg, prhtctcan, prhtctcac, prhtcreso, prhtcnmod, prhtccrpg, prhtcfrpg, prhtcuser, prhtchora, prhtcfpro, prhtctipo
FROM prhtc WHERE prhtcnpre = 10040796;
-- RENOVACIONES / REPROGRAMACION
SELECT prrnvnrnv, prrnvnpre, prrnvndoc, prrnvfreg, prrnvcaut, prrnvfvac, prrnvfvan, prrnvplaz, prrnvagen, prrnvuser, prrnvhora, prrnvfpro, prrnvtrnv, prrnvcrpg, prrnvtcre, prrnvtcrn, prrnvsald, prrnvmdes, prrnvimpt, prrnvmoti
FROM prrnv WHERE prrnvnpre = 10040796;

SELECT *FROM prppg WHERE prppgnpre = 10040796;
-- NUMERO DE RENOVACION GENERADA 11271

--**** REPROGRAMACION AUTOMATICA ****--
SELECT prhtcnpre, prhtcfreg, prhtctcan, prhtctcac, prhtcreso, prhtcnmod, prhtccrpg, prhtcfrpg, prhtcuser, prhtchora, prhtcfpro, prhtctipo
FROM prhtc WHERE prhtcnpre = 10043360;
-- RENOVACIONES / REPROGRAMACION
SELECT prrnvnrnv, prrnvnpre, prrnvndoc, prrnvfreg, prrnvcaut, prrnvfvac, prrnvfvan, prrnvplaz, prrnvagen, prrnvuser, prrnvhora, prrnvfpro, prrnvtrnv, prrnvcrpg, prrnvtcre, prrnvtcrn, prrnvsald, prrnvmdes, prrnvimpt, prrnvmoti
FROM prrnv WHERE prrnvnpre = 10043360;

SELECT *FROM prppg WHERE prppgnpre = 10043360 ORDER BY 3;

--11272

---10046578
--11273



SELECT *FROM acvid

SELECT *FROM prmpr WHERE prmprfreg >= '2022-05-01'
SELECT *FROM prppg WHERE prppgnpre = 1202 ORDER BY 3
SELECT sum(prppgcapi) FROM prppg WHERE prppgnpre = 1202
SELECT sum(prppginte) FROM prppg WHERE prppgnpre = 1202
SELECT count(*) FROM prppg WHERE prppgnpre = 1202
SELECT *FROM prtcn 

SELECT *FROM gbnrs

-- TRACER
dbaccess sysadmin -<<END  
execute function task("set sql tracing on", 4000, 1,"hight","global");
END

dbaccess sysadmin -<<END  
execute function task("set sql tracing off", 4000, 1,"hight","global");
END