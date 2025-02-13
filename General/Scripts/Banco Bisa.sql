---------------------------------

-- STAT 107 : NO PIGNORADO, NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnntro,*
FROM tetrn
WHERE tetrnntra = 380827

SELECT *
FROM capig
WHERE capigncta = 3051966013
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911093

SELECT *
FROM camca
WHERE camcancta = 3051966013

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051966013
AND catrnstat = 0
ORDER BY 2,1
--------------------------------------------

---------------------------------

-- STAT  107 : NO PIGNORADO, NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,*
FROM tetrn
WHERE tetrnntra = 380839

SELECT *
FROM capig
WHERE capigncta = 3051955844
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911103¿

SELECT *
FROM camca
WHERE camcancta = 3051955844

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051955844
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 107 : NO PIGNORADO, NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,*
FROM tetrn
WHERE tetrnntra = 380891

SELECT *
FROM capig
WHERE capigncta = 3051919369 
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911139--TETRNNPIG MAL

SELECT *
FROM camca
WHERE camcancta = 3051919369

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051919369
AND catrnstat = 0
ORDER BY 2,1
--------------------------------------------

---------------------------------

-- STAT 110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,*
FROM tetrn
WHERE tetrnntra = 382831

SELECT *
FROM capig
WHERE capigncta = 3051955844
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911297

SELECT *
FROM camca
WHERE camcancta = 3051955844

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051955844
AND catrnstat = 0
ORDER BY 2,1
--------------------------------------------

---------------------------------

-- STAT 110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,*
FROM tetrn
WHERE tetrnntra = 386314

SELECT *
FROM capig
WHERE capigncta = 9051026526
AND capigstat = 0

SELECT *
FROM camca
WHERE camcancta = 9051026526

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051026526
AND catrnstat = 0
ORDER BY 2,1
--------------------------------------------


SELECT *
FROM camca
WHERE camcancta = 9051026526

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051026526
AND catrnstat = 0

-- SOLUCION TIGER
UPDATE camca
SET camcasact =  camcasant + (SELECT sum(catrnimpo)
							FROM catrn
							WHERE catrnncta = camcancta
							AND catrnstat = 0)
WHERE camcancta = 9051026526;