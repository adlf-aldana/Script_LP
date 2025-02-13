---------------------------------

-- STAT  : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380863

SELECT *
FROM capig
WHERE capigncta = 3051618604
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911120

SELECT *
FROM camca
WHERE camcancta = 3051618604

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051618604
AND catrnstat = 0

--------------------------------------------
---------------------------------

-- STAT  : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380868

SELECT *
FROM capig
WHERE capigncta = 3051618604
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911124

SELECT *
FROM camca
WHERE camcancta = 3051618604

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051618604
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT  : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380874

SELECT *
FROM capig
WHERE capigncta = 3051904120
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911129

SELECT *
FROM camca
WHERE camcancta = 3051904120

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051904120
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT  :PIGNORADA RECHAZADA 
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 389062

SELECT *
FROM capig
WHERE capigncta = 8051114763
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911312

SELECT *
FROM camca
WHERE camcancta = 8051114763

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 8051114763
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT  : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380876

SELECT *
FROM capig
WHERE capigncta = 9051252622
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911131

SELECT *
FROM camca
WHERE camcancta = 9051252622

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051252622
AND catrnstat = 0

--------------------------------------------
---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380902

SELECT *
FROM capig
WHERE capigncta = 3051956496
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911146
--------------------------------------------

---------------------------------

-- STAT 107 : 
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380906

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911149

--------------------------------------------

---------------------------------

-- STAT 107  : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380913

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911155

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380915

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911157--TETRNNPIG MAL

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 387502

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911348

--------------------------------------------

---------------------------------

-- STAT 110 : RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380851

SELECT *
FROM capig
WHERE capigncta = 9051263504
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911111

SELECT *
FROM camca
WHERE camcancta = 9051263504

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051263504
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 110 : RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380894

SELECT *
FROM capig
WHERE capigncta = 3051531430
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911141--TETRNNPIG MAL

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
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 381106

SELECT *
FROM capig
WHERE capigncta = 3051904120
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911285

SELECT *
FROM camca
WHERE camcancta = 3051904120

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051904120
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 110 : RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 381622

SELECT *
FROM capig
WHERE capigncta = 8051267754 
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911321 

SELECT *
FROM camca
WHERE camcancta = 8051267754 

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 8051267754 
AND catrnstat = 0

--------------------------------------------
---------------------------------

-- STAT 110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra IN (386521)

SELECT *
FROM capig
WHERE capigncta = 3051618604
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911156--TETRNNPIG ERRONEO

UPDATE tetrn
SET tetrnnpig = 8911271--8911156
WHERE tetrnntra IN (386521)

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911271

SELECT *
FROM camca
WHERE camcancta = 3051618604

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051618604
AND catrnstat = 0

UPDATE capig
SET capigtorg = 386521
WHERE capigncta = 3051618604
AND capignpig = 8911271

--------------------------------------------

