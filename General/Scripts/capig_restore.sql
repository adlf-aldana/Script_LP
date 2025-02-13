
SELECT *
FROM capig_dbs03 a
WHERE a.capigfpro = '2025-02-02'
AND NOT EXISTS (SELECT *
			FROM capig b
			WHERE b.capignpig = a.capignpig
			AND b.capigncta = a.capigncta
			AND b.capigimpo = a.capigimpo)
ORDER BY 3;

--	TOTAL - 459
SELECT *
FROM tetrn
WHERE tetrnftra >= '2025-02-02'
AND (tetrnftra <= '2025-02-03' AND tetrnhora < '18:00')
ORDER BY 1;

-- SIN PIGNORACIONES - 105 -> ABONOS
SELECT *
FROM tetrn
WHERE tetrnftra >= '2025-02-02'
AND (tetrnftra <= '2025-02-03' AND tetrnhora < '18:00')
AND tetrnnpig IS NULL
ORDER BY 1;

-- CON PIGNORACIONES - 354 - DEBITOS
SELECT *
FROM tetrn
WHERE tetrnftra >= '2025-02-02'
AND (tetrnftra <= '2025-02-03' AND tetrnhora < '18:00')
AND tetrnnpig IS NOT NULL
ORDER BY 1;

-- SOLUCIONANDO
SELECT tetrnntra,tetrnnpig, capignpig,capigncta,tetrnnvia,tetrnimpo,capigimpo,*
FROM tetrn
	INNER JOIN capig ON tetrnnvia = CAST(capigncta AS char(12)) AND capigfpig = '2025-02-02' AND tetrnimpo = capigimpo
WHERE tetrnftra >= '2025-02-02'
AND (tetrnftra <= '2025-02-03' AND tetrnhora < '18:00')
AND tetrnnpig IS NOT NULL
AND tetrnntra IN (380803,380804)
ORDER BY 1;

-- SOLUCIONANDO - FUS
SELECT tetrnntra,capigtorg,tetrnnpig, capignpig,capigncta,tetrnnvia,tetrnimpo,capigimpo,*
FROM tetrn, capig 
WHERE tetrnftra >= '2025-02-02'
AND (tetrnftra <= '2025-02-03' AND tetrnhora < '18:00')
AND tetrnnpig IS NOT NULL
AND tetrnnvia = CAST(capigncta AS char(12)) 
AND capigfpig = '2025-02-02' 
AND tetrnimpo = capigimpo
AND tetrnntra IN (380803,380804)
ORDER BY 1;

unload TO capig_fusion.txt
SELECT *
FROM capig
WHERE capigfpig = '2025-02-02'

UPDATE tetrn
SET tetrnnpig = (SELECT capignpig
				FROM capig
				WHERE CAST(capigncta AS char(12)) = tetrnnvia
				AND capigfpig = '2025-02-02'
				AND capigimpo = tetrnimpo
				)
WHERE tetrnftra >= '2025-02-02'
AND (tetrnftra <= '2025-02-03' AND tetrnhora < '18:00')
AND tetrnnpig IS NOT NULL
AND tetrnnvia = CAST(capigncta AS char(12)) 
AND capigfpig = '2025-02-02' 
AND tetrnimpo = capigimpo
AND tetrnntra IN (380803,380804)
ORDER BY 1;