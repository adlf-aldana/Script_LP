---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380809

SELECT *
FROM capig
WHERE capigncta = 8051155822          
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911078

SELECT *
FROM camca
WHERE camcancta = 8051155822

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 8051155822
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380809

--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380814

SELECT *
FROM capig
WHERE capigncta = 8051261839          
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911083

SELECT *
FROM camca
WHERE camcancta = 8051261839

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 8051261839
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380814

--------------------------------------------

---------------------------------

-- STAT 101 : RECHAZAR - 97
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380818

SELECT *
FROM capig
WHERE capigncta = 3051966972
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911086

SELECT *
FROM camca
WHERE camcancta = 3051966972

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051966972
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380818

--------------------------------------------

---------------------------------

-- STAT 101 : RECHAZAR - 22
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380837

SELECT *
FROM capig
WHERE capigncta = 3051859832
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911101

SELECT *
FROM camca
WHERE camcancta = 3051859832

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051859832
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380837

--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADO RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380838

SELECT *
FROM capig
WHERE capigncta = 3051907249 
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911102

UPDATE capig
SET capigtorg = 380838--382952
WHERE capigncta = 3051907249 

SELECT *
FROM camca
WHERE camcancta = 3051907249

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051907249
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380838

--------------------------------------------
---------------------------------

-- STAT 101 : PIGNORADA RECHAZADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380855

SELECT *
FROM capig
WHERE capigncta = 8051082441
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911113

SELECT *
FROM camca
WHERE camcancta = 8051082441

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 8051082441
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380855

--------------------------------------------

---------------------------------

-- STAT 101 : RECHAZAR PIGNORADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380886

SELECT *
FROM capig
WHERE capigncta = 3051974125
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911137

SELECT *
FROM camca
WHERE camcancta = 3051974125

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051974125
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380886

--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 381089

SELECT *
FROM capig
WHERE capigncta = 8051261839
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911083

SELECT *
FROM camca
WHERE camcancta = 8051261839

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 8051261839
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 381089

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380909

SELECT *
FROM capig
WHERE capigncta = 8051135755
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911152

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380911

SELECT *
FROM capig
WHERE capigncta = 8051135755
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911153

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 381214

SELECT *
FROM capig
WHERE capigncta = 3051955258
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911293


--------------------------------------------

---------------------------------

-- STAT 110 : SE CAMBIO A A ESTADO 107, YA QUE CAPIGSTAT = 9 Y CAMCAPIG = 50 (MINIMO)
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 381064;

SELECT *
FROM capig
WHERE capigncta = 3051934785
AND capigfpig = '2025-02-02'
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911078--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911290--8911078
WHERE tetrnntra = 381064;

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911290

UPDATE capig
SET capigtorg = 381064,--380810
	capigstat = 0
WHERE capigncta = 3051934785
AND capignpig = 8911290

SELECT *
FROM camca
WHERE camcancta = 3051934785

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051934785
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 107--110
WHERE tetrnntra = 381064;


--------------------------------------------

---------------------------------

-- STAT 110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 381071

SELECT *
FROM capig
WHERE capigncta = 3051712254
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911080 --TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911273--8911080
WHERE tetrnntra = 381071

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911273

UPDATE capig
SET capigtorg = 381071--380812
WHERE capigncta = 3051712254
AND capignpig = 8911273

SELECT *
FROM camca
WHERE camcancta = 3051712254

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051712254
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 110 : ACEPTAR -- NO TIENE SALDO SUFICIENTE!
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 381166

SELECT *
FROM capig
WHERE capigncta = 8051270177
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911089--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911323
WHERE tetrnntra = 381166

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911323

UPDATE capig
SET capigtorg = 381166
WHERE capigncta = 8051270177
AND capignpig = 8911323

SELECT *
FROM camca
WHERE camcancta = 8051270177

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 8051270177
AND catrnstat = 0

UPDATE camca
SET camcafpig = 50-- -50
WHERE camcancta = 8051270177

--------------------------------------------

---------------------------------

-- STAT 110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 382891

SELECT *
FROM capig
WHERE capigncta = 3051907249 
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911123--TETRNNPIG MAL

SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnnpig IN (8911102,8911286,8911287,8911288)--380838

UPDATE tetrn
SET tetrnnpig = 8911287--8911123
WHERE tetrnntra = 382891

UPDATE capig
SET capigtorg = 382891--380838
WHERE capigncta = 3051907249 
AND capignpig = 8911287

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911287

SELECT *
FROM camca
WHERE camcancta = 3051907249

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051907249
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 110 : ACEPTAR 
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 383272

SELECT *
FROM capig
WHERE capigncta = 3051907249
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911129--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911288--8911129
WHERE tetrnntra = 383272

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911288

UPDATE capig
SET capigtorg = 383272--380838
WHERE capigncta = 3051907249
AND capignpig = 8911288

SELECT *
FROM camca
WHERE camcancta = 3051907249

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051907249
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 110 : ACEPTAR - NO TIENE SALDO
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 389317

SELECT *
FROM capig
WHERE capigncta = 3051557056
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911170--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911270--8911170
WHERE tetrnntra = 389317

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911270

UPDATE capig
SET capigtorg = 389317--380936
WHERE capigncta = 3051557056
AND capignpig = 8911270

SELECT *
FROM camca
WHERE camcancta = 3051557056

SELECT *--sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051557056
AND catrnstat = 0

UPDATE camca
SET camcafpig = 205
WHERE camcancta = 3051557056

--------------------------------------------

SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn WHERE tetrnntra IN (380818,--BCP --97 OK
380837,--BCP --22 OK
381071,--BCP --35 OK
381166,--BCP NO TIENE SALDO --100 --OK
382891,--BCP --30
383272,--BCP --30
389317--BCP BI TIENE SALDO --155
)

380818,--BCP --97
380837,--BCP --22
381071,--BCP --35- OK
381166,--BCP NO TIENE SALDO --100 OK
382891,--BCP --30 OK
383272,--BCP --30 OK
389317,--BCP BI TIENE SALDO --155 OK


381071,--BCP
382891,--BCP
383272,--BCP
381166,--BCP NO TIENE SALDO -OK 100
389317,--BCP NO TIENE SALDO -OK 155