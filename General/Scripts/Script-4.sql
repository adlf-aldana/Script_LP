SELECT *
FROM crcro
WHERE cccn1 = 1
AND cccn2 = 3
AND cccn3 = 8
AND cccn4 = 05
AND cccn5 = 2

SELECT *
FROM crcec

SELECT *
FROM cndtr
WHERE cndtrcnta LIKE '138051%'
AND cndtrmorg = 17
AND cndtragen = 80


SELECT *
FROM prdif
WHERE prdifsald >= 38831

SELECT *
FROM prdif
WHERE prdifmapr >= 38831

SELECT *
FROM cnplc
WHERE cnplccnta LIKE '138051%'

SELECT cndtrsal
FROM cndtr
WHERE abs(cndtrimpi) BETWEEN 38831 AND 38832

SELECT *
FROM (SELECT cndtrcnta[1,6] AS cndtrcnta,
		cndtragen cndtragen,
		sum(cndtrimpi) cndtrsal
		FROM cndtr
		WHERE cndtrfdoc <= '2025-01-31'
		AND cndtrcnta[1,6] BETWEEN '138051' AND '138051'
		AND cndtrmrcb = 0
		GROUP BY 1, 2)
		
		



		
SELECT *
FROM (SELECT cccn1||cccn2||cccn3||cccn4||cccn5 AS crcrocnta, 
		prmpragen crcroagen,
		sum(CASE cccn5 WHEN '1' THEN msccn
			ELSE (msccn*6.86) END) AS crcrosal
		FROM crcro
			INNER JOIN prmpr ON prmprnpre = substring(nocrd FROM 1 FOR (LENGTH(nocrd)-1))
		WHERE fenvi = '2025-01-31'
		AND (cccn1||cccn2||cccn3||cccn4||cccn5) BETWEEN  '138051' AND '138051'
--		AND prmpragen = 30
		GROUP BY 1, 2 )
		
		
		
		
SELECT *
FROM prmpr
WHERE prmprsald = 38831.26

SELECT (CASE cccn5 WHEN '1' THEN msccn
			ELSE (msccn*6.86) END) AS crcrosal,
		prmprsald,
		prmprnpre,*
FROM crcro
	INNER JOIN prmpr ON prmprnpre = substring(nocrd FROM 1 FOR (LENGTH(nocrd)-1))
WHERE fenvi = '2025-01-31'
AND (cccn1||cccn2||cccn3||cccn4||cccn5) BETWEEN  '138051' AND '138051'
AND prmpragen = 80;

-- 138051 -3409.89
SELECT (CASE cccn5 WHEN '1' THEN msccn
			ELSE (msccn*6.86) END) AS crcrosal,
		prmprsald,
		prmprnpre,*
FROM crcro
	INNER JOIN prmpr ON prmprnpre = substring(nocrd FROM 1 FOR (LENGTH(nocrd)-1))
WHERE fenvi = '2025-01-31'
AND (cccn1||cccn2||cccn3||cccn4||cccn5) BETWEEN  '138051' AND '138051'
AND prmpragen = 30;
