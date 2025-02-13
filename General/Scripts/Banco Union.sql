SELECT tetrnstat,
	tetrnntra,
	tetrnimpt,*
FROM tetrn
WHERE tetrncenx = 1014
AND (tetrnftra = '2025-02-02' OR tetrnfsta = '2025-02-02' OR  tetrnfpro = '2025-02-02')
AND tetrnstat < 200;

---------------------------------

---------------------------------

-- STAT 110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380903

SELECT *
FROM capig
WHERE capigncta = 8051094444
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig =8911147

SELECT *
FROM camca
WHERE camcancta = 8051094444

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 8051094444
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380869

SELECT *
FROM capig
WHERE capigncta = 3051985203
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911125

SELECT *
FROM camca
WHERE camcancta = 3051985203

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051985203
AND catrnstat = 0

UPDATE tetrn  
SET tetrnstat=109--101
WHERE tetrnntra = 380869

--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380870

SELECT *
FROM capig
WHERE capigncta = 3051985203
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911126

SELECT *
FROM camca
WHERE camcancta = 3051985203

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051985203
AND catrnstat = 0

UPDATE tetrn  
SET tetrnstat=109--101
WHERE tetrnntra = 380870

--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR 
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380816

SELECT *
FROM capig
WHERE capigncta = 9051261647
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911084

SELECT *
FROM camca
WHERE camcancta = 9051261647

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051261647
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380816

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380829

SELECT *
FROM capig
WHERE capigncta = 9051263657
AND capigfpig = '2025-02-02'
AND capigstat = 0

SELECT *
FROM camca
WHERE camcancta = 9051263657

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051263657
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpo,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 381439

SELECT *
FROM capig
WHERE capigncta = 9051056835 
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911098--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911333--8911098
WHERE tetrnntra = 381439

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911333

UPDATE capig
SET capigtorg = 381439
WHERE capigncta = 9051056835
AND capignpig = 8911333

SELECT *
FROM camca
WHERE camcancta = 9051056835

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051056835
AND catrnstat = 0

UPDATE camca
SET camcafpig = (SELECT sum(capigimpo)
				FROM capig
				WHERE capigncta = camcancta 
				AND capigstat = 0)
WHERE camcancta = 9051056835

--------------------------------------------

---------------------------------

-- STAT 110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 381386

SELECT *
FROM capig
WHERE capigncta = 3052930073
--AND capigfpig = '2025-02-02'
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911097--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911310--8911097
WHERE tetrnntra = 381386

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911310

UPDATE capig
SET capigtorg = 381386--380833
WHERE capigncta = 3052930073
AND capignpig = 8911310

SELECT *
FROM camca
WHERE camcancta = 3052930073

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3052930073
AND catrnstat = 0

UPDATE camca
SET camcafpig = (SELECT sum(capigimpo)
				FROM capig
				WHERE capigncta = camcancta 
				AND capigstat = 0)
WHERE camcancta = 3052930073

--------------------------------------------

---------------------------------

-- STAT 110 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380826

SELECT *
FROM capig
WHERE capigncta = 9051063899
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911092--TETRNNPIG MAL

SELECT *
FROM camca
WHERE camcancta = 9051063899

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051063899
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380848

SELECT *
FROM capig
WHERE capigncta = 9051063899
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911109--TETRNNPIG MAL

SELECT *
FROM camca
WHERE camcancta = 9051063899

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051063899
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380848

--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 381467

SELECT *
FROM capig
WHERE capigncta = 9051056835
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911099--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911334
WHERE tetrnntra = 381467

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911334

UPDATE capig
SET capigtorg = 381467--380836
WHERE capigncta = 9051056835
AND capignpig = 8911334

SELECT *
FROM camca
WHERE camcancta = 9051056835

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051056835
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 381467

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380904

SELECT *
FROM capig
WHERE capigncta = 9051257995
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911148

SELECT *
FROM camca
WHERE camcancta = 9051257995

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051257995
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380907

SELECT *
FROM capig
WHERE capigncta = 9051257995
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911150

SELECT *
FROM camca
WHERE camcancta = 9051257995

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051257995
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380908

SELECT *
FROM capig
WHERE capigncta = 9051257995
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911151--TETRNNPIG MAL

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380917

SELECT *
FROM capig
WHERE capigncta = 9051257995
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911159

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380919

SELECT *
FROM capig
WHERE capigncta = 9051257995 
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911161--TETRNNPIG MAL

SELECT *
FROM camca
WHERE camcancta = 9051257995

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051257995
AND catrnstat = 0

--------------------------------------------
---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380925

SELECT *
FROM capig
WHERE capigncta = 9051257995
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911167--TETRNNPIG MAL

SELECT *
FROM camca
WHERE camcancta = 9051257995

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051257995
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380931

SELECT *
FROM capig
WHERE capigncta = 9051257995
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911171--TETRNNPIG MAL

SELECT *
FROM camca
WHERE camcancta = 9051257995

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051257995
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380935

SELECT *
FROM capig
WHERE capigncta = 9051257995
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911174--TETRNNPIG MAL

SELECT *
FROM camca
WHERE camcancta = 9051257995

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051257995
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380953

SELECT *
FROM capig
WHERE capigncta = 9051257995
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911189

SELECT *
FROM camca
WHERE camcancta = 9051257995

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051257995
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380957

SELECT *
FROM capig
WHERE capigncta = 9051257995
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911192
--------------------------------------------

---------------------------------

-- STAT 101 : RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 388442

SELECT *
FROM capig
WHERE capigncta = 9051258896
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911166--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911354--8911166
WHERE tetrnntra = 388442

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911354

UPDATE capig
SET capigtorg = 388442--380929
WHERE capignpig = 8911354
AND capigncta = 9051258896

SELECT *
FROM camca
WHERE camcancta = 9051258896

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051258896
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 388442

--------------------------------------------

---------------------------------

-- STAT 110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380810

SELECT *
FROM capig
WHERE capigncta = 3051712254
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911079

SELECT *
FROM camca
WHERE camcancta = 3051712254

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051712254
AND catrnstat = 0

--------------------------------------------
---------------------------------

-- STAT 101 : RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380845

SELECT *
FROM capig
WHERE capigncta = 9051067171
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911107

SELECT *
FROM camca
WHERE camcancta = 9051067171

UPDATE camca
SET camcafpig = (SELECT sum(capigimpo) 
				FROM capig
				WHERE capigncta = 9051067171
				AND capigstat = 0)
WHERE camcancta = 9051067171

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051067171
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380845

--------------------------------------------
---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380918

SELECT *
FROM capig
WHERE capigncta = 9051259228
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911160--TETRNNPIG MAL

SELECT *
FROM camca
WHERE camcancta = 9051259228

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051259228
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380930

SELECT *
FROM capig
WHERE capigncta = 9051259228
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911170--TETRNNPIG MAL

SELECT *
FROM camca
WHERE camcancta = 9051259228

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051259228
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 381082

SELECT *
FROM capig
WHERE capigncta = 9051261623
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911082--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911357--8911082
WHERE tetrnntra = 381082

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911357

UPDATE capig
SET capigtorg = 381082--380814
WHERE capignpig = 8911357
AND capigncta = 9051261623

SELECT *
FROM camca
WHERE camcancta = 9051261623

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051261623
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 383206

SELECT *
FROM capig
WHERE capigncta = 9051067171 
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911128--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911336--8911128
WHERE tetrnntra = 383206

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911336

UPDATE capig
SET capigtorg = 383206--380873
WHERE capignpig = 8911336
AND capigncta = 9051067171 

SELECT *
FROM camca
WHERE camcancta = 9051067171

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051067171
AND catrnstat = 0

--------------------------------------------

SELECT tetrnntra,tetrnstat, tetrnnvia,tetrnimpt,tetrnnpig,*
FROM tetrn
WHERE tetrnnpig IN (8911107,8911336)

SELECT *
FROM catrn
WHERE catrnncta =9051063980 
AND catrnftra = '2025-02-02'

SELECT *
FROM capig
WHERE capigncta = 9051063980
AND capigfpig = '2025-02-02'

UPDATE tetrn
SET tetrnnpig = 8911335--8911107
WHERE tetrnntra = 381841

---------------------------------

-- STAT 110 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380882

SELECT *
FROM capig
WHERE capigncta = 9051087389
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911136

SELECT *
FROM camca
WHERE camcancta = 9051087389

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051087389
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380812

SELECT *
FROM capig
WHERE capigncta = 3051981570
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911081

SELECT *
FROM camca
WHERE camcancta = 3051981570

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051981570
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380812

--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380813

SELECT *
FROM capig
WHERE capigncta = 3051981570
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911082

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380813

--------------------------------------------
---------------------------------

-- STAT 107  : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380881

SELECT *
FROM capig
WHERE capigncta = 9051085827
--AND capigfpig = '2025-02-02'
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911135--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911342--8911135
WHERE tetrnntra = 380881

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911342

UPDATE capig
SET capigstat = 9--0
WHERE capignpig = 8911342

SELECT *
FROM camca
WHERE camcancta = 9051085827

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 
AND catrnstat = 0

--------------------------------------------

SELECT *FROM tetrn WHERE tetrnnpig IN (8911342,8911135);

SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn WHERE tetrnnpig = 8911135;

SELECT *FROM capig WHERE capigncta = 3051756236 AND capigfpig = '2025-02-02'

UPDATE tetrn
SET tetrnnpig = 8911275--8911135
WHERE tetrnntra = 383911

---------------------------------

-- STAT 110 : ACEPTAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 381496

SELECT *
FROM capig
WHERE capigncta = 8051262546
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911100--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911318--8911100
WHERE tetrnntra = 381496

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911318

UPDATE capig
SET capigtorg = 381496--380837
WHERE capignpig = 8911318
AND capigncta = 8051262546

SELECT *
FROM camca
WHERE camcancta = 8051262546

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 8051262546
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380844

SELECT *
FROM capig
WHERE capigncta = 9051020275
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911106

SELECT *
FROM camca
WHERE camcancta = 9051020275

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051020275
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380844

--------------------------------------------
---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380860

SELECT *
FROM capig
WHERE capigncta = 9051263504
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911117

SELECT *
FROM camca
WHERE camcancta = 9051263504

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051263504
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 109--101
WHERE tetrnntra = 380860

--------------------------------------------

---------------------------------

-- STAT 101 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 388811

SELECT *
FROM capig
WHERE capigncta = 9051086649
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911167--TETRNNPIG MAL

UPDATE tetrn
SET tetrnnpig = 8911343--8911167
WHERE tetrnntra = 388811

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911343

UPDATE capig
SET capigtorg = 388811--380932
WHERE capignpig = 8911343
AND  capigncta = 9051086649

SELECT *
FROM camca
WHERE camcancta = 9051086649

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051086649
AND catrnstat = 0

UPDATE tetrn
SET tetrnstat = 107--101
WHERE tetrnntra = 388811

UPDATE capig
SET capigstat = 9--0
WHERE capignpig = 8911343
AND  capigncta = 9051086649

--------------------------------------------

---------------------------------

-- STAT 107 : NO HACER NADA
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380920

SELECT *
FROM capig
WHERE capigncta = 9051049809
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig = 8911162

SELECT *
FROM camca
WHERE camcancta = 9051049809

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051049809
AND catrnstat = 0

--------------------------------------------

---------------------------------

-- STAT 101 : PIGNORADA RECHAZAR
SELECT tetrnnpig,tetrnnvia,tetrnimpt,tetrnstat,*
FROM tetrn
WHERE tetrnntra = 380864

SELECT *
FROM capig
WHERE capigncta = 9051262225
AND capigstat = 0

SELECT capigtorg,*
FROM capig
WHERE capignpig =8911121 --TETRNNPIG MAL

SELECT *
FROM camca
WHERE camcancta = 9051262225

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 9051262225
AND catrnstat = 0

--------------------------------------------