SELECT 
	a.felvtnufg,
	a.felvtnfac,
	a.felvtnomb,
	a.felvtimpt,
	a.felvtmodn,
	a.felvtntra,
	a.felvtstat,
	a.felvtuser,
	a.felvtftra,
	a.felvthora
FROM felvt a
WHERE 1 < (SELECT count(b.felvtnomb)
						FROM felvt b
						WHERE b.felvtnomb = a.felvtnomb
						AND b.felvtimpt = a.felvtimpt
						AND b.felvtmodn = a.felvtmodn
						AND b.felvtntra = a.felvtntra
						AND felvtstat = 0)
AND felvtstat = 0
--AND felvtuser = 'RCV'
AND felvtftra >= '2023-09-01'
ORDER BY 3,2;


