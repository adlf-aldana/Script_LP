--101 - RECHAZAR PIGNORADA
SELECT tetrnimpo,tetrnnpig,tetrnnvia,* 
FROM tetrn 
WHERE tetrnntra = 380821;

SELECT *
FROM capig 
WHERE capigncta = 3051955258
AND capigstat = 0;

SELECT capigtorg,*
FROM capig 
WHERE capignpig = 8911088;

SELECT *
FROM camca 
WHERE camcancta = 3051955258;

UPDATE camca 
SET camcafpig = 1515.5 
WHERE camcancta = 3051955258;--1505.50

UPDATE tetrn
SET tetrnstat = 109 --101
WHERE tetrnntra = 380821;

SELECT sum(catrnimpo) 
FROM catrn 
WHERE catrnncta = 3051955258 
AND catrnstat = 0;

/********************************************/
--
---------------------------------

-- STAT 101 : RECHAZAR PIGNORADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,*
FROM tetrn
WHERE tetrnntra = 380830

SELECT *
FROM capig
WHERE capigncta = 9051089108
--AND capigfpig = '2025-02-02'
AND capigstat = 0

SELECT *
FROM capig
WHERE capignpig = 8911096

SELECT *
FROM camca
WHERE camcancta = 9051089108

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051089108
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380830

--------------------------------------------
---------------------------------

-- STAT  101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnntro,*
FROM tetrn
WHERE tetrnntra = 381090

SELECT *
FROM capig
WHERE capigncta = 9051089108          
AND capigstat = 0

SELECT capigtorg,capigstat,*
FROM capig
WHERE capignpig = 8911097

UPDATE capig
SET capigtorg = 381090--380831
WHERE capignpig = 8911097
AND capigncta = 9051089108

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911097

SELECT *
FROM camca
WHERE camcancta = 9051089108

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051089108
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 381090

--------------------------------------------
---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnntro,*
FROM tetrn
WHERE tetrnntra = 380861

SELECT *
FROM capig
WHERE capigncta = 3051610779 
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911118--TETRNNPIG MAL

SELECT *
FROM camca
WHERE camcancta = 3051610779

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051610779
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380861

--------------------------------------------
---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnntro,*
FROM tetrn
WHERE tetrnntra = 380862

SELECT *
FROM capig
WHERE capigncta = 3051982471
--AND capigfpig = '2025-02-02'
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911119--TETRNNPIG MAL

SELECT *
FROM camca
WHERE camcancta = 3051982471

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051982471
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380862

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA, NO ESTA PIGNORADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnntro,*
FROM tetrn
WHERE tetrnntra = 380937

SELECT *
FROM capig
WHERE capigncta = 9051252622
--AND capigfpig = '2025-02-02'
AND capigstat = 0

SELECT *
FROM capig
WHERE capignpig = 8911175

SELECT *
FROM camca
WHERE camcancta = 9051252622

UPDATE camca
SET camcafpig = 50--12
WHERE camcancta = 9051252622

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051252622
AND catrnstat = 0

--------------------------------------------
---------------------------------

-- STAT 110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnntro,*
FROM tetrn
WHERE tetrnntra = 380878

SELECT *
FROM capig
WHERE capigncta = 3051982471
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911133--TETRNNPIG MAL

SELECT *
FROM camca
WHERE camcancta = 3051982471

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051982471
AND catrnstat = 0

--------------------------------------------
