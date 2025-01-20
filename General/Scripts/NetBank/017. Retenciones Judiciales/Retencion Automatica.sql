-- 16/06/2023
-- el programa rjt222.4gi no retiene apesar de tener saldo para una retención total

-- 2 parcial
SELECT *
FROM rjmrj
WHERE rjmrjnret = 2116;

unload TO bk_linea_rjrpr_2293.txt
SELECT *
FROM rjrpr
WHERE rjrprnret = 2293;


SELECT *
FROM catrn
WHERE catrnncta = 8051251901
ORDER BY 2

INSERT INTO rjrpr (rjrprnret,rjrprnmod,rjrprncta,rjrprntra,rjrprcage,rjrprtope,rjrprfech,rjrprhora) 
VALUES (2116,5,'9051256226      ',28102782,360885,'I','2023-03-20','15:09:40');

UPDATE rjrpr
SET rjrprntra = '28649524',--28647308
rjrprfech = '2023-08-22',--2023-08-19
rjrprhora = '09:53:03'--11:02:01
WHERE rjrprnret = 2293;

SELECT *
FROM rjdtr
WHERE rjdtrnret = 2116;

SELECT *
FROM rjcli
WHERE rjclinret = 2116;

SELECT *
FROM rjdtr 
WHERE rjdtruser = 'ZCE';

-----------------------
SELECT *
FROM rjmrj
WHERE rjmrjnret = 2293;

UPDATE rjmrj
SET rjmrjstat = 3--2
WHERE rjmrjnret = 2293;

SELECT *FROM rjcon ORDER BY 1,2,3

SELECT *
FROM camca
WHERE camcancta = 8051251901;

UPDATE camca
SET camcastus = 1--2
WHERE camcancta = 8051251901;