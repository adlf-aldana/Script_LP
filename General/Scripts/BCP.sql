---------------------------------
-- BCP
-- STAT 101 : 
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,tecondesc,*
FROM tetrn, tecon t2
WHERE tetrnntra = 380824
AND t2.teconpref = 2
AND t2.teconcorr = tetrncenx

SELECT *
FROM capig
WHERE capigncta = 3051955258          
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911090

SELECT *
FROM camca
WHERE camcancta = 3051955258

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051955258
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380824


--------------------------------------------
-- stat 107 : ACCL RECHZADA NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,tecondesc,*
FROM tetrn, tecon t2
WHERE tetrnntra IN (381214)
AND t2.teconpref = 2
AND t2.teconcorr = tetrncenx

SELECT *
FROM capig
WHERE capigncta = 3051955258          
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911293--8911092

UPDATE tetrn
SET tetrnnpig  = 8911293--8911092
WHERE tetrnntra = 381214

UPDATE capig
SET capigtorg = 8911092--380825
WHERE capigncta = 3051955258
AND capignpig = 8911293

UPDATE tetrn
SET tetrnstat = 107
WHERE tetrnntra = 381214


--------------------------------------------

-- STAT 101 : rechazar pignorado
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,tecondesc,*
FROM tetrn, tecon t2
WHERE tetrnntra IN (380833)
AND t2.teconpref = 2
AND t2.teconcorr = tetrncenx

SELECT *
FROM capig
WHERE capigncta = 3051955258          
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911099--8911092


SELECT *
FROM camca
WHERE camcancta = 3051955258

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051955258
AND catrnstat = 0

