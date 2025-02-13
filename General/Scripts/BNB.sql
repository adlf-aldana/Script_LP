---------------------------------

-- STAT  110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380841

SELECT *
FROM capig
WHERE capigncta = 9051253808 
AND capigfpig = '2025-02-02'
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911105

SELECT *
FROM camca
WHERE camcancta = 9051253808

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051253808
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT  110 : PIGNORADO RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380901

SELECT *
FROM capig
WHERE capigncta = 3051955959          
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911145

SELECT *
FROM camca
WHERE camcancta = 3051955959

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051955959
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 381589

SELECT *
FROM capig
WHERE capigncta = 8051262546     
AND capigfpig = '2025-02-02'
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911103--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911319
WHERE tetrnntra = 381589

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911319

UPDATE capig
SET capigtorg = 380840
WHERE capignpig = 8911319
AND capigncta = 8051262546

SELECT *
FROM camca
WHERE camcancta = 8051262546

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 8051262546
AND catrnstat = 0

UPDATE camca
SET camcafpig = (SELECT sum(capigimpo)
				FROM capig
				WHERE capigncta = camcancta 
				AND capigstat = 0)
WHERE camcancta = 8051262546

--------------------------------------------

---------------------------------

-- STAT  110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 382142

SELECT *
FROM capig
WHERE capigncta = 9051080516
AND capigfpig = '2025-02-02'
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911112--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911341
WHERE tetrnntra = 382142

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911341

UPDATE capig
SET capigtorg = 382142
WHERE capignpig = 8911341
AND capigncta = 9051080516

SELECT *
FROM camca
WHERE camcancta = 9051080516

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051080516
AND catrnstat = 0

UPDATE camca
SET camcafpig = (SELECT sum(capigimpo)
				FROM capig
				WHERE capigncta = camcancta 
				AND capigstat = 0)
WHERE camcancta = 9051080516


--------------------------------------------

---------------------------------

-- STAT  110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 382952

SELECT *
FROM capig
WHERE capigncta = 3051907249
AND capigfpig = '2025-02-02'
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911124--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911286
WHERE tetrnntra = 382952

SELECT capigtorg,*
FROM capig
WHERE capignpig IN (8911102,8911286)

UPDATE capig
SET capigtorg = 382952
WHERE capigncta = 3051907249
AND capignpig = 8911286

SELECT *
FROM camca
WHERE camcancta = 3051907249

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051907249
AND catrnstat = 0


UPDATE camca
SET camcafpig = (SELECT sum(capigimpo)
				FROM capig
				WHERE capigncta = camcancta 
				AND capigstat = 0)
WHERE camcancta = 3051907249


--------------------------------------------

---------------------------------

-- STAT  101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380811 

SELECT *
FROM capig
WHERE capigncta = 3051926398          
AND capigfpig = '2025-02-02'
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911080

SELECT *
FROM camca
WHERE camcancta = 3051926398

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051926398
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109
WHERE tetrnntra = 380811 

UPDATE camca
SET camcafpig = (SELECT sum(capigimpo)
				FROM capig
				WHERE capigncta = camcancta 
				AND capigstat = 0)
WHERE camcancta = 3051926398

--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADO RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380859

SELECT *
FROM capig
WHERE capigncta = 8051082441 
--AND capigfpig = '2025-02-02'
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911116

SELECT *
FROM camca
WHERE camcancta = 8051082441

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 8051082441
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380859

--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADO RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380867

SELECT *
FROM capig
WHERE capigncta = 9051026526
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911123


SELECT *
FROM camca
WHERE camcancta = 9051026526

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051026526
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380867
--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380871

SELECT *
FROM capig
WHERE capigncta = 9051026526
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911127

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380871
--------------------------------------------

---------------------------------

-- STAT  101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380872

SELECT *
FROM capig
WHERE capigncta = 9051263346
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911128

SELECT *
FROM camca
WHERE camcancta = 9051263346

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051263346
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380872

--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 388082

SELECT *
FROM capig
WHERE capigncta = 8051258052
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911165--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911315
WHERE tetrnntra = 388082

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911315

UPDATE capig
SET capigtorg = 388082
WHERE capigncta = 8051258052
AND capignpig = 8911315

SELECT *
FROM camca
WHERE camcancta = 8051258052

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 8051258052
AND catrnstat = 0

UPDATE camca
SET camcafpig = (SELECT sum(capigimpo)
				FROM capig
				WHERE capigncta = camcancta 
				AND capigstat = 0)
WHERE camcancta = 8051258052
--------------------------------------------
