-- usuario onBoarding
SELECT *
FROM adusm

SELECT *
FROM adusr
WHERE adusrusrn = 'OBD'

SELECT 
	adusrfcla FECHA_RENOVADA,
	date(adusrfcla + 30) FECHA_VENCIMIENTO
FROM adusr
WHERE adusrusrn = 'OBD'