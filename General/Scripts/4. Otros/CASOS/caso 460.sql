SELECT *
FROM tetrn
WHERE tetrnstat = 0--103
ORDER BY tetrnfpro DESC 

SELECT *
FROM tetrn
WHERE tetrnntra IN (
116193,
116190,
116192,
116191,
116182,
116183,
116179,
116184
)--= 77463

SELECT *FROM tecon ORDER BY 1,2
SELECT *FROM capig WHERE capignpig = 7891836

UPDATE capig SET capigstat = 0 WHERE capignpig = 7891836
UPDATE tetrn SET tetrnstat = 103 WHERE tetrnntra = 116193
 
