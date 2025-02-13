-- STAT 110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnntro,*
FROM tetrn
WHERE tetrnntra = 380877

SELECT *
FROM capig
WHERE capigncta = 3051969388
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911132--TETRNNPIG MAL

SELECT *
FROM camca
WHERE camcancta = 3051969388

UPDATE camca
SET camcafpig = 190
WHERE camcancta = 3051969388

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051969388
AND catrnstat = 0
ORDER BY 2,1
--------------------------------------------

---------------------------------

-- STAT 107 :  NO ESTA PIGNORADO, NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380875

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911130

SELECT *
FROM camca
WHERE camcancta = 3051969388

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051969388
AND catrnstat = 0
ORDER BY 2,1
--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADO RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380847

SELECT *
FROM capig
WHERE capigncta = 9051263645
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911108

SELECT *
FROM camca
WHERE camcancta = 9051263645

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051263645
AND catrnstat = 0
ORDER BY 2,1

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380847
--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADO RECHAZAR 
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 387616

SELECT *
FROM capig
WHERE capigncta = 3051969388
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911162--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911304--8911162
WHERE tetrnntra = 387616

UPDATE capig
SET capigtorg = 387616--380922
WHERE capigncta = 3051969388
AND capignpig = 8911304

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911304

SELECT *
FROM camca
WHERE camcancta = 3051969388

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051969388
AND catrnstat = 0
ORDER BY 2,1

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 387616
--------------------------------------------


