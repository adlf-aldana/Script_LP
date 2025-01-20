-- créditos SIN SOLICITUDES y con Diferidos
SELECT DISTINCT a.*
FROM prmpr a
	INNER JOIN prdif
	ON prmprnpre = prdifnpre
	AND prdifcarg = 423
	AND prdifsald = 0
	AND prdifmrcb = 0
WHERE prmprstat = 2
AND NOT EXISTS (
	SELECT 1
	FROM prsor
	WHERE prsornpre = prmprnpre);

SELECT *
FROM prdif
WHERE prdifnpre = 10041906

SELECT *
FROM prsor
WHERE prsornpre = 10041906
-- saldo cred - prmprsald
-- Saldo Cap Dif - prdif Capital Diferido
-- Saldo Int Dif - prdif Interes Diferido
-- prm081
SELECT *
FROM prsor
WHERE prsornpre = 10039298

SELECT *
FROM prrnv
WHERE prrnvnpre = 10040406

SELECT *
FROM prmpr
WHERE prmprnpre = 1808000
