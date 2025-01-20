-- SE LE ABONO AL CLIENTE, PERO EN LA ACCL ESTA RECHAZADA
unload TO tetrn_08092023.txt
SELECT *
FROM tetrn
WHERE tetrnntra IN (153102,153101);


SELECT *
FROM tetrn
WHERE tetrnstat NOT IN (104,204,106,105,208)
AND tetrnftra >= '2023-11-01';

-- ESTADOS TRANSFERENCIA ACCL
SELECT *FROM tecon WHERE teconcomd = 2 AND teconpref = 5 ORDER BY 1,2,3;

-- ESTADO TRANSACCION ENVIO
SELECT *
FROM tecon 
WHERE teconcomd = 1
AND teconpref = 5
ORDER BY 1,2,3


SELECT *
FROM tetrn
WHERE tetrnstat IN (110,202)
AND tetrnftra >= '2023-11-01'

UPDATE tetrn
SET tetrnstat = 109 --110
WHERE tetrnntra IN (177377,
177378,
177383,
177386,
177399,
177589)

UPDATE tetrn
SET tetrnstat = 204 --202
WHERE tetrnntra IN (177375,
177376)

SELECT *FROM TETRN WHERE tetrnntra IN (177375,
177376) 

SELECT *FROM tetrn WHERE tetrnntra = 177711
-- PRODEM
UPDATE tetrn 
SET tetrnstat = 109 --108
WHERE tetrnntra = 177711