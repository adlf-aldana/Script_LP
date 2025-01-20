-- PERFILES
SELECT aduagusrn, adusrnomb
FROM aduag, adusr 
WHERE aduagusrn = adusrusrn
AND adusrstat = 'T'
ORDER BY 1
--AND adusrusrn IN ('100')
--AND aduagagen IS NULL 

SELECT *FROM ADUSR WHERE adusrstat = 'T';

