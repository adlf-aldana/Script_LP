-- operaciones genera nuevo lote
-- sacamos bk de todo
unload to tdsrl_antes.txt
SELECT * FROM tdsrl;

unload to tdsrl_despues.txt
SELECT * FROM tdsrl;

unload to tdmtd_linea.txt
SELECT *
FROM tdmtd 
WHERE tdmtdfpro IN ('2023-08-30','2023-09-01')
AND tdmtdstat = 99
ORDER BY tdmtdfpro DESC;

SELECT *
FROM tdmtd 
WHERE tdmtdfpro IN ('2023-09-01')
ORDER BY tdmtdfpro DESC;

unload to tdpan_linea.txt
SELECT * 
FROM tdpan;

--LO QUE 
unload TO tdpan.txt
SELECT b.tdpanntrj, '', b.tdpanpano 
FROM tdmtd a, tdpan b
WHERE a.tdmtdntrj = b.tdpanntrj 
AND tdmtdfpro  IN ('2023-08-30','2023-09-01')
AND tdmtdstat = 99
ORDER BY 1;

-- CAMBIAR FECHA EXPIRACIN SEGÚN ARCHIVO ENVIADO POR ATC
/*
UPDATE tdmtd
SET tdmtdfexp = '2027-11-30'
WHERE a.tdmtdntrj = 600013927 
AND tdmtdfpro = '2022-12-08';
*/
unload TO tdpan_LINEA.txt
SELECT b.* 
FROM tdmtd a, tdpan b
WHERE a.tdmtdntrj = b.tdpanntrj 
AND tdmtdfpro  IN ('2023-08-30','2023-09-01')
AND tdmtdstat = 99
ORDER BY 1;

DELETE tdpan c
WHERE c.tdpanntrj IN (SELECT b.tdpanntrj
				FROM tdmtd a, tdpan b
				WHERE a.tdmtdntrj = b.tdpanntrj 
				AND a.tdmtdfpro  IN ('2023-08-30','2023-09-01')
				AND a.tdmtdstat = 99)
				
load FROM lapromotora_tdpan_2023.txt.crypt INSERT INTO tdpan