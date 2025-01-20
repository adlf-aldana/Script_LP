SELECT camcancta,
	camcacage,
	camcastat,
	camcasact,
	camcafpig,
--	capignpig,
	capigstat,
--	capigcpig,
	 (SELECT sum(capigimpo)
				FROM capig
				WHERE capigncta = camcancta
				AND capigstat = 0)	
FROM camca, capig
WHERE camcastat IN (1,2,3)
AND capigncta = camcancta
AND capigstat = 0
AND camcaplaz <> 80
AND camcafpig <> (SELECT sum(capigimpo)
				FROM capig
				WHERE capigncta = camcancta
				AND capigstat = 0)
GROUP BY 1,2,3,4,5,6,7;

SELECT *
FROM capig
WHERE capigncta = 3051609380

SELECT *
FROM tdpig
WHERE tdpignpig IN (8090206, 8090259)

SELECT *
FROM tdtrn
WHERE tdtrnntra IN ('D78594','D78595');

SELECT *
FROM catrn
WHERE catrntorg IN (130682, 131981)