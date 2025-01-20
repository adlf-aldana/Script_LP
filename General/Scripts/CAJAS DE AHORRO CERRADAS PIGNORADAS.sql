SELECT camcancta,
	camcacage,
	camcastat,
	camcasact,
	camcafpig,
	capignpig,
	capigcpig,
	capigimpo,
	capigstat
FROM camca, capig
WHERE camcancta = capigncta
AND camcastat = 4
AND camcafpig <> capigimpo
AND capigstat = 0;

SELECT count(*)
FROM camca, capig
WHERE camcancta = capigncta
AND camcastat = 4
AND camcafpig <> capigimpo
AND capigstat = 0;

SELECT *
FROM camca
WHERE camcancta = 3052312647

SELECT *
FROM capig
WHERE capigncta = 3052312647
AND capigstat = 0