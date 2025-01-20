-- 290Bs
SELECT *
FROM capig
WHERE capigncta = 3051299812
AND capigcpig = 997
AND capigfpig >= '2023-09-01'

unload TO tetrn_010923_021023
SELECT *
FROM tetrn
WHERE tetrncage =37892
AND tetrnftra >= '2023-09-01'

SELECT *
FROM camca
WHERE camcancta = 3051299812

unload TO capig_010923_021023.txt
SELECT *
FROM capig
WHERE capigncta = 3051299812
AND capigfpig >= '2023-09-01'

unload TO catrn_010923_021023.txt
SELECT *
FROM catrn
WHERE catrnncta = 3051299812
AND catrnftra >= '2023-09-01'

unload TO teqrg_010923_021023.txt
SELECT *
FROM informix.teqrg 
WHERE teqrgfpro >= '2023-09-01'

SELECT tetrnntra,
	tetrnftra,
	tetrnstat,
	tetrntxmd,
	tetrnnomb
FROM tetrn
WHERE tetrnntra = 153092

SELECT *
FROM catrn
WHERE catrnntra = 28725280

SELECT *FROM tetrn WHERE tetrnidqr = '23090501016440028983'
--WHERE tetrnntro = '75003230908000153092'
SELECT *FROM tetrn WHERE tetrntxmd = '14262309085515901'

SELECT *FROM informix.teqrg WHERE teqrgidqr = '23090501016440028983'

SELECT *FROM tetrn WHERE tetrnntro = '75003230908000153092'
tetrnntra = 153092-- AND tetrnidqr = '23090501016440028983'

-- RAUL PABLO
SELECT *FROM tetrn WHERE tetrntxmd = '14262309085515901';
SELECT *FROM tetrn WHERE tetrnntro = '75003230908000153092';
SELECT *FROM tetrn WHERE tetrnimpt = 290 AND tetrnftra = '2023-09-08'
ACH: 14262309085515901
originante 75003230908000153092
destinatario 101620239835128912
TITULAR: CARDONA JAUREGUI ERNESTO
CUENTA: 3051558220
SELECT *FROM informix.teces WHERE tecesntra = 153092
---------------------------------------------------------
RODRIGUEZ SALAZAR RAUL PABLO - NO HAY 290Bs
fecha inicio procesamiento: 2023-09-08 07:53:04.099
fecha fin procesamiento:    2023-09-08 07:53:05.332199
origen: 75003230908000153092 - LA PROMOTORA
destino:101620239835128912 - BANCO ECONOMICO
Cuenta Origen: 3051299812 - LA PROMOTORA
Cuenta Destino 3051558220 - BANCO ECONOMICO


MENESES ESTRADA JHONNY RONALD - SI HAY 290Bs 
fecha inicio procesamiento: 2023-09-08 13:03:25.216
fecha fin procesamiento:    2023-09-08 13:03:26.370222
origen: 75003230908000153235 - LA PROMOTORA
destino: 101620239835162281 - BANCO ECONOMICO
Cuenta Origen: 3051948047 - LA PROMOTORA
Cuenta Destino 3051558220 - BANCO ECONOMICO

unload TO tetrn_080923.txt
SELECT *
FROM tetrn
WHERE tetrnftra = '2023-09-08'