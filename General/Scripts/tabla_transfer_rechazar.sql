SELECT tetrnfpro FECHA_TRANS,
--	TRIM(t.tetrncenx) COD_PARTICIPANTE,
	TRIM(t2.tecondesc) PARTICIPANTE,
	tetrnnvia CUENTA,
	tetrncage COD_CLI,
	tetrnntra NUM_TRAN,
	tetrnstat ESTADO,
	tetrntxmd NUM_ACH,
	tetrnnpig NUM_PIG,	
	tetrnimpt IMPORTE		
FROM tetrn t , tecon t2 
WHERE (--t.tetrnstat = 104 
	 t.tetrnntra IN (
380847,--FIE
387616,--FIE
380893,--MERCANTIL
380821,--BANCO SOL
380830,--BANCO SOL
381090,--BANCO SOL
380861,--BANCO SOL
380862,--BANCO SOL
380863,--GANADERO
380874,--GANADERO
389062,--GANADERO
380876,--GANADERO
380851,--GANADERO
380894,--GANADERO
381622,--GANADERO
380868,--GANADERO
380901,--BNB
380811,--BNB
380859,--BNB
380867,--BNB
380871,--BNB
380872,--BNB
388082,--BNB
380809,--BCP
380814,--BCP
380838,--BCP
380855,--BCP
380886,--BCP
381089,--BCP
381064,--BCP
380818,--BCP
380837,--BCP
380869,--BUN
380870,--BUN
380816,--BUN
380903,--BUN
380826,--BUN
380848,--BUN
388442,--BUN
380845,--BUN
380882,--BUN
380812,--BUN
380813,--BUN
380844--BUN
))
AND (t.tetrnftra = '2025-02-02' OR tetrnfsta = '2025-02-02')
AND t.tetrnfpro = '2025-02-02'
--AND t.tetrnntra = 380823
AND t2.teconpref = 2
AND t2.teconcorr = t.tetrncenx
ORDER BY 5

SELECT *
FROM capig
WHERE capignpig IN (8911315,--388082
8911126,--380870
8911088,--380821
8911131,--380876
8911080,--380811
8911083,--380814
8911290)--381064

UPDATE tetrn
SET tetrnstat = 109
WHERE tetrnntra IN (388082,380870)