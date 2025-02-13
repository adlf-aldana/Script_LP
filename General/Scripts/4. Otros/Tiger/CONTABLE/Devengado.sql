-- BALANCE SUMAS SALDOS
SELECT '13801-DEVENGADO_CARTERA_VIGENTE' AS DESCRIPCION, sum(cndtrimpi)
FROM cndtr
WHERE  cndtrcnta LIKE '13801%'
AND cndtrfdoc >= '2025-01-01'
UNION
SELECT '13803-DEVENGADO_VENCIDO' AS DESCRIPCION, sum(cndtrimpi)
FROM cndtr
WHERE  cndtrcnta LIKE '13803%'
AND cndtrfdoc >= '2025-01-01'
UNION
SELECT '13804-DEVENGADO_EJECUCION' AS DESCRIPCION, sum(cndtrimpi)
FROM cndtr
WHERE  cndtrcnta LIKE '13804%'
AND cndtrfdoc >= '2025-01-01'
UNION
SELECT '13805-DEVENGADO_REPRO_VIGENTE' AS DESCRIPCION, sum(cndtrimpi)
FROM cndtr
WHERE  cndtrcnta LIKE '13805%'
AND cndtrfdoc >= '2025-01-01'
UNION
SELECT '13806-DEVENGADON_REPRO_VENCIDA' AS DESCRIPCION, sum(cndtrimpi)
FROM cndtr
WHERE  cndtrcnta LIKE '13806%'
AND cndtrfdoc >= '2025-01-01'
UNION
SELECT '13807-DEVENGADO_REPRO_EJECUCION' AS DESCRIPCION, sum(cndtrimpi)
FROM cndtr
WHERE  cndtrcnta LIKE '13807%'
AND cndtrfdoc >= '2025-01-01'

/**********************************************************************/

SELECT *FROM gbpmt

SELECT 
	prmprnpre,
	prmprcage,
	prmprcmon,
	prmprstat,
	prmprsald,
	prmprpdvg,
	prmprpsus,
	prmprfinc,
	prmprfulp,
	SUM(CASE
		--1
		WHEN gbagecalf = 'A' AND a.prmprstat < 5
					THEN (SELECT NVL(TO_NUMBER(sum(prdifsald)), 0) + a.prmprpdvg --+ l_prmprpdvg + v_devdif + v_devpro INTO l_mdev
                     FROM prdif,prpdd
					 WHERE prdifnpre = a.prmprnpre
                     AND prpddtcre = a.prmprtcre
                     AND prpddcmon = a.prmprcmon
                     AND prdifcarg = prpddinpr
                     AND prdifmrcb = 0
                     AND prdifsald > 0)
        --2
		WHEN gbagecalf = 'A' AND a.prmprstat = 5
					THEN (SELECT NVL(TO_NUMBER(sum(prdifsald)), 0) + a.prmprpdvg-- + l_prmprpdvg + v_devdif + v_devpro INTO l_mdev
                     FROM prdif,prpdd
					 WHERE prdifnpre = a.prmprnpre
                     AND prpddtcre = a.prmprtcre
                     AND prpddcmon = a.prmprcmon
                     AND prdifcarg = prpddinpr
                     AND prdifmrcb = 0
                     AND prdifsald > 0) 
        --3
		WHEN gbagecalf = 'B' AND a.prmprstat = 6
					THEN (SELECT NVL(TO_NUMBER(sum(prdifsald)), 0) + a.prmprpdvg-- + l_prmprpdvg + v_devdif + v_devpro INTO l_mdev
                     FROM prdif,prpdd
					 WHERE prdifnpre = a.prmprnpre
                     AND prpddtcre = a.prmprtcre
                     AND prpddcmon = a.prmprcmon
                     AND prdifcarg = prpddinpr
                     AND prdifmrcb = 0
                     AND prdifsald > 0) 
        --4
		WHEN gbagecalf = 'B' AND prmprstat < 5
					THEN (SELECT NVL(TO_NUMBER(sum(prdifsald)), 0) + a.prmprpdvg-- + l_prmprpdvg + v_devdif + v_devpro INTO l_mdev
                     FROM prdif,prpdd
					 WHERE prdifnpre = a.prmprnpre
                     AND prpddtcre = a.prmprtcre
                     AND prpddcmon = a.prmprcmon
                     AND prdifcarg = prpddinpr
                     AND prdifmrcb = 0
                     AND prdifsald > 0) 
        --5
		WHEN gbagecalf = 'B' AND a.prmprstat = 5 AND a.prmprsald = 0 AND a.prmprpdvg = 0 AND a.prmprpsus = 0
					THEN (SELECT NVL(TO_NUMBER(sum(prdifsald)), 0) + a.prmprpdvg-- + l_prmprpdvg + v_devdif + v_devpro INTO l_mdev
                     FROM prdif,prpdd
					 WHERE prdifnpre = a.prmprnpre
                     AND prpddtcre = a.prmprtcre
                     AND prpddcmon = a.prmprcmon
                     AND prdifcarg = prpddinpr
                     AND prdifmrcb = 0
                     AND prdifsald > 0) 
        --6
		WHEN gbagecalf = 'B' AND a.prmprstat = 5 AND a.prmprsald > 0 AND a.prmprpdvg = 0 AND a.prmprpsus = 0
					THEN 0 + a.prmprpdvg
		--7
		WHEN gbagecalf = 'B' AND a.prmprstat = 5 AND a.prmprsald > 0 AND a.prmprpdvg > 0 
					THEN (SELECT NVL(TO_NUMBER(sum(prdifsald)), 0) + a.prmprpdvg-- + l_prmprpdvg + v_devdif + v_devpro INTO l_mdev
                     FROM prdif,prpdd
					 WHERE prdifnpre = a.prmprnpre
                     AND prpddtcre = a.prmprtcre
                     AND prpddcmon = a.prmprcmon
                     AND prdifcarg = prpddinpr
                     AND prdifmrcb = 0
                     AND prdifsald > 0)                     
        --8
		WHEN gbagecalf = 'C' AND a.prmprstat = 2
					THEN (SELECT NVL(TO_NUMBER(sum(prdifsald)), 0) + a.prmprpdvg-- + l_prmprpdvg + v_devdif + v_devpro INTO l_mdev
                     FROM prdif,prpdd
					 WHERE prdifnpre = a.prmprnpre
                     AND prpddtcre = a.prmprtcre
                     AND prpddcmon = a.prmprcmon
                     AND prdifcarg = prpddinpr
                     AND prdifmrcb = 0
                     AND prdifsald > 0)
        --9
		WHEN gbagecalf = 'C' AND a.prmprstat = 5 AND prmprsald > 0 AND a.prmprpdvg = 0 AND prmprpsus > 0
					THEN 0 + a.prmprpdvg
		--10
		WHEN gbagecalf = 'C' AND a.prmprstat = 5
					THEN (SELECT NVL(TO_NUMBER(sum(prdifsald)), 0) + a.prmprpdvg-- + l_prmprpdvg + v_devdif + v_devpro INTO l_mdev
                     FROM prdif,prpdd
					 WHERE prdifnpre = a.prmprnpre
                     AND prpddtcre = a.prmprtcre
                     AND prpddcmon = a.prmprcmon
                     AND prdifcarg = prpddinpr
                     AND prdifmrcb = 0
                     AND prdifsald > 0) 
        --11
        ELSE 0 + a.prmprpdvg
	END) AS saldo
FROM prmpr a
	INNER JOIN gbage ON gbagecage = prmprcage
WHERE prmprstat IN (2, 3, 4, 5, 6, 7)
--AND prmprnpre = 1203;
--AND prmprcmon = 1
--AND gbagecalf IN ('A')
GROUP BY 1,2,3,4,5,6,7,8,9
ORDER BY 1;


