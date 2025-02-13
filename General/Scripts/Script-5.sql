SELECT cndtrcnta CNTA,
	cndtragen AGEN,
	ROUND(decode(crcrosal, null, 0, crcrosal), 2) SALDO,
	ROUND(abs(cndtrsal),2) SALDO_CNT,
	ROUND(decode(cndtrsal, null , 0, abs(nvl(crcrosal, 0))-abs(cndtrsal)), 2) DIFF
FROM (SELECT cndtrcnta[1,6] as cndtrcnta,
		cndtragen cndtragen,
		sum(cndtrimpi) cndtrsal
		FROM  cndtr
		WHERE cndtrfdoc <= '2025-01-31'
		AND cndtrcnta[1,6] BETWEEN '138011' AND '138999'
		AND cndtrmrcb = 0
		GROUP BY 1, 2),
	 OUTER (SELECT cccn1||cccn2||cccn3||cccn4||cccn5 AS crcrocnta,
	 	prmpragen crcroagen,
		sum(CASE cccn5 WHEN '1' THEN msccn
			ELSE (msccn*6.86) END) as crcrosal
		FROM crcro
			INNER JOIN prmpr ON prmprnpre = substring(nocrd FROM 1 FOR (LENGTH(nocrd)-1))
		WHERE fenvi = '2025-01-31'
		AND (cccn1||cccn2||cccn3||cccn4||cccn5) BETWEEN '138011' AND '138999'
		GROUP BY 1, 2 )
WHERE cndtrcnta=crcrocnta
AND (exists (SELECT cccn1||cccn2||cccn3||cccn4||cccn5 AS crcrocnta
			FROM crcro 
			WHERE fenvi = '2025-01-31'
			AND cccn1||cccn2||cccn3||cccn4||cccn5=cndtrcnta
			GROUP BY 1))
AND cndtragen = crcroagen
GROUP BY cndtrcnta, cndtragen, crcrosal, cndtrsal
UNION 
SELECT crcrocnta CNTA,
	crcroagen AGEN,
	ROUND(decode(crcrosal, null, 0, crcrosal),2) SALDO,
	ROUND(nvl(abs(cndtrsal), 0), 2) SALDO_CNT,
	round(decode(crcrosal, null, abs(cndtrsal)*-1, abs(crcrosal)-abs(nvl(cndtrsal,0))), 2) DIFF
FROM (SELECT cccn1||cccn2||cccn3||cccn4||cccn5 AS crcrocnta, 
		prmpragen crcroagen,
		sum(CASE cccn5 WHEN '1' THEN msccn
			ELSE (msccn*6.86) END) AS crcrosal
		FROM crcro
			INNER JOIN prmpr ON prmprnpre = substring(nocrd FROM 1 FOR (LENGTH(nocrd)-1))
		WHERE fenvi = '2025-01-31'
		AND (cccn1||cccn2||cccn3||cccn4||cccn5) BETWEEN  '138011' AND '138999'
		GROUP BY 1, 2 ),
	OUTER (SELECT cndtrcnta[1,6] AS cndtrcnta,
		cndtragen,
		sum(cndtrimpi) cndtrsal
		FROM cndtr
		WHERE cndtrfdoc <= '2025-01-31'
		AND cndtrcnta[1,6] BETWEEN '138011' AND '138999'
		AND cndtrmrcb = 0
		GROUP BY 1, 2)
WHERE cndtrcnta = crcrocnta
AND cndtragen = crcroagen
AND (EXISTS (SELECT cccn1||cccn2||cccn3||cccn4||cccn5 AS crcrocnta
			FROM crcro 
			WHERE fenvi = '2025-01-31'
			AND cccn1||cccn2||cccn3||cccn4||cccn5=cndtrcnta
			GROUP BY 1))
GROUP BY crcrocnta, crcroagen, crcrosal, cndtrsal
UNION
SELECT cndtrcnta CNTA,
	cndtragen AGEN,
	ROUND(0, 2) SALDO,
	ROUND(nvl(abs(cndtrsal), 0), 2) SALDO_CNT,
	ROUND(abs(cndtrsal)*-1, 2) DIFF
FROM (SELECT cndtrcnta[1,6] AS cndtrcnta,
		cndtragen cndtragen,
		sum(cndtrimpi) cndtrsal
		FROM cndtr
		WHERE cndtrfdoc <= '2025-01-31'
		AND cndtrcnta[1,6] BETWEEN '138011' AND '138999'
		AND cndtrmrcb = 0
		GROUP BY 1, 2)
WHERE (NOT EXISTS (SELECT cccn1||cccn2||cccn3||cccn4||cccn5 AS crcrocnta
			FROM crcro 
			WHERE fenvi = '2025-01-31'
			AND cccn1||cccn2||cccn3||cccn4||cccn5=cndtrcnta
			GROUP BY 1))
GROUP BY cndtrcnta, cndtragen, saldo_cnt, diff
ORDER BY cnta;