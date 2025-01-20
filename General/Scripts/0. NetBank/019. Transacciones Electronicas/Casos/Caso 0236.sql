-- Confirmar/Revertir Transferencias - tet004
SELECT *
FROM tetrn
WHERE tetrnntra = 77536; 

SELECT * 
FROM teces
WHERE tecesnces = 77536;

SELECT *
FROM tecgt
WHERE tecgtntra = 77536;

SELECT *
FROM tefac
WHERE tefacntra = 77536;

SELECT *
FROM camca
WHERE camcancta = 3051851270

unload TO catrn_3051851270_DESPUES.txt
SELECT *
FROM catrn
WHERE catrnncta = 3051851270;

unload TO capig_3051851270_DESPUES.txt
SELECT *
FROM capig
WHERE capigncta = 3051851270
AND capiguser = 'AMY';

