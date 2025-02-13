SELECT tetrnstat,
	tetrnntra,
	tetrnimpo,*
FROM tetrn
WHERE tetrncenx = 1016
AND tetrnfsta = '2025-02-02'
AND tetrnstat < 200