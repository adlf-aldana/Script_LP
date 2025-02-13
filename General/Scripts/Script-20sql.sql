SELECT *
FROM tetrn
WHERE tetrnntra = 

SELECT *
FROM gbage
WHERE gbagenomb LIKE '%ZAMBRANA%CARINA%'

SELECT *
FROM camca
WHERE camcacage = 355278

SELECT *
FROM capig
WHERE capigncta IN (3051884899,
3051952464,
3051978250) 
AND capigstat = 0
AND capigfpig = '2025-02-02'

SELECT tetrnimpo,*
FROM tetrn
WHERE tetrnntra = 380896


SELECT *
FROM tetrn
WHERE tetrnntra IN (400078,400063,400052,400053,400056)

SELECT *FROM camca WHERE camcancta = 9051252622

SELECT *
FROM capig
WHERE capigncta = 9051252622
AND capigfpig = '2025-02-02'
AND capignpig IN (8911131,8911348)

SELECT capigtorg,*
FROM capig
WHERE capignpig IN (8911131,8911348)

SELECT tetrnimpo,tetrnnpig,tetrnnvia,*
FROM tetrn
WHERE tetrnntra IN (380876,387502)

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 387502

SELECT *
FROM camca
WHERE camcancta = 9051252622

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051252622
AND catrnstat = 0

SELECT tetrnimpo,tetrnnpig,tetrnnvia,*
FROM tetrn
WHERE tetrncage IN (356988)
AND tetrnftra = '2025-02-02'
AND tetrnnpig IN (8911131,8911161)

UPDATE capig
SET capigtorg = 387502--380921
WHERE capigncta = 9051252622
AND capigtorg = 380921

SELECT tetrnnpig,*
FROM tetrn
WHERE tetrnntra = 387502

UPDATE tetrn
SET tetrnnpig = 8911348--8911161
WHERE tetrnntra = 387502

SELECT *
FROM capig
WHERE capignpig = 8911161

UPDATE tetrn
SET tetrnstat = 109
WHERE tetrnntra = 380850

-- BISA
--101 - Rechazar
SELECT tetrnimpo,tetrnnpig,tetrnnvia,* FROM tetrn WHERE tetrnntra = 380821;
SELECT *FROM capig WHERE capignpig = 8911088;
SELECT *FROM camca WHERE camcancta = 3051955258;
UPDATE camca SET camcafpig = 1515.5 WHERE camcancta = 3051955258;--1505.50
SELECT sum(catrnimpo) FROM catrn WHERE catrnncta = 3051955258 AND catrnstat = 0;
SELECT *FROM capig WHERE capigncta = 3051955258 AND capigstat = 0;

--101 - Rechazar
SELECT tetrnimpo,tetrnnpig,tetrnnvia,* FROM tetrn WHERE tetrnntra = 380830
SELECT tetrnimpo,tetrnnpig,tetrnnvia,* FROM tetrn WHERE tetrnntra = 381090
SELECT tetrnimpo,tetrnnpig,tetrnnvia,* FROM tetrn WHERE tetrnntra = 380861
SELECT tetrnimpo,tetrnnpig,tetrnnvia,* FROM tetrn WHERE tetrnntra = 380862
SELECT tetrnimpo,tetrnnpig,tetrnnvia,* FROM tetrn WHERE tetrnntra = 380937
SELECT tetrnimpo,tetrnnpig,tetrnnvia,* FROM tetrn WHERE tetrnntra = 380878