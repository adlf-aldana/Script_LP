---------------------------------

-- STAT 107 : NO TIENE PIGNORACION, NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,*
FROM tetrn
WHERE tetrnntra = 380825

SELECT *
FROM capig
WHERE capigncta = 3051793765
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911091--TETRNNPIG MAL

SELECT *
FROM camca
WHERE camcancta = 3051793765

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051793765
AND catrnstat = 0
ORDER BY 2,1
--------------------------------------------

---------------------------------

-- STAT 107  : NO PIGNORADA, NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,*
FROM tetrn
WHERE tetrnntra = 380896

SELECT *
FROM capig
WHERE capigncta = 3051884899
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911142

SELECT *
FROM camca
WHERE camcancta = 3051884899

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051884899
AND catrnstat = 0

--------------------------------------------
---------------------------------

-- STAT 110 : RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,*
FROM tetrn
WHERE tetrnntra = 380893

SELECT *
FROM capig
WHERE capigncta = 3051531430
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911140

SELECT *
FROM camca
WHERE camcancta = 3051531430

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051531430
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,*
FROM tetrn
WHERE tetrnntra = 381067

SELECT *
FROM capig
WHERE capigncta = 3051712254          
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911274

SELECT *
FROM camca
WHERE camcancta = 3051712254

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051712254
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,*
FROM tetrn
WHERE tetrnntra = 383014

SELECT *
FROM capig
WHERE capigncta = 3051979606 
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911307

SELECT *
FROM camca
WHERE camcancta = 3051979606

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051979606
AND catrnstat = 0

UPDATE camca
SET camcafpig = 290
WHERE camcancta = 3051979606
--------------------------------------------

