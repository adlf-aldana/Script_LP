-- 5242 9199 0099 9960

SELECT *FROM tdpan WHERE tdpanpano = '524291XXXXXX9960'

/* FORMATO - AMELLER */
/* tdpan - tdpanntrj | vacio | recibido_por_aml */
unload to tdmtd_linea_antes.txt
SELECT * 
FROM tdmtd
ORDER BY 1 DESC;

unload to tdpan.txt
SELECT * 
FROM tdpan 
WHERE tdpanntrj = 600002995;
--DELETE tdpan
--WHERE tdpanntrj >= '600010627'
--AND tdpanntrj <= '600012626';

unload to tdctl_linea_antes.txt
SELECT * FROM tdctl ORDER BY 1 DESC;
--UPDATE tdctl SET tdctlntrj = 10626

unload to tdsrt.txt
SELECT * FROM tdsrl;
/*
UPDATE tdsrl 
SET tdsrlcorr = 10626
WHERE tdsrltabl='tdmtd'

UPDATE tdsrl 
SET tdsrlcorr = 5
WHERE tdsrltabl='tdlot'

UPDATE tdsrl 
SET tdsrlcorr = 4
WHERE tdsrltabl='tdtrt'
*/

unload to tdtrt_linea_antes.txt
SELECT * FROM tdtrt;
--DELETE tdtrt WHERE tdtrtntra = 4;

unload to tdage_linea_antes.txt
SELECT * FROM tdage ORDER BY 1 DESC;
--DELETE tdage WHERE tdageuser='AMY';

SELECT count(*)
FROM tdmtd, tdpan
WHERE tdmtdntrj = tdpanntrj 
AND tdmtdlote = 5

SELECT tdpanntrj, tdpanpane, tdpanpano
FROM tdmtd, tdpan
WHERE tdmtdntrj = tdpanntrj 
AND tdmtdlote = 5

SELECT *FROM tdmtd WHERE tdmtdlote = 3
SELECT *FROM tdmtd WHERE tdmtdlote = 6

SELECT *FROM tdmtd WHERE tdmtdntrj = 600002995-- IN (600012627,600012628)
SELECT *FROM prcad
SELECT *
FROM tdpan