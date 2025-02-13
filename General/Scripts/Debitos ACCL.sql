SELECT sum(t.tetrnimpt) MONTO,
	count(*) ORDENES_RECIBIDAS,
	TRIM(t2.tecondesc) PARTICIPANTE,
	TRIM(t.tetrncenx) COD_PARTICIPANTE
FROM tetrn t , tecon t2 
WHERE (t.tetrnstat = 104 
	OR t.tetrnntra IN (380877,--FIE	
	382831,--BISA
	386314,--BISA
	381067,--MERCANTIL
	383014,--MERCANTIL
	380878,--BANCO SOL
	381106,--GANADERO
	386521,--GANADERO
	380841,--BNB
	381589,--BNB
	382142,--BNB
	382952,--BNB
--	381071,--BCP 35BS
--	381166,--BCP NO TIENE SALDO -OK 100
--	382891,--BCP 30Bs
--	383272,--BCP 30Bs
--	389317,--BCP NO TIENE SALDO -OK 155
	380903,--BUN
	381439,--BUN
	381386,--BUN
	380810,--BUN
	381082,--BUN
	381496--BUN
	)
)
AND (t.tetrnftra = '2025-02-02' OR tetrnfsta = '2025-02-02')
AND t.tetrnfpro = '2025-02-02'
--AND t.tetrnntra = 380823
AND t2.teconpref = 2
AND t2.teconcorr = t.tetrncenx
--AND t.tetrncenx NOT IN (74003,51002,1033,3001,
--	1016,1009,1003,1017,1018,1001,1005)
GROUP BY 3,4
ORDER BY 3;


SELECT tetrnstat,
	tetrnntra,
	tetrnimpt,*
FROM tetrn
WHERE tetrncenx = 1014
AND (tetrnftra = '2025-02-02' OR tetrnfsta = '2025-02-02' OR  tetrnfpro = '2025-02-02')
AND tetrnstat < 200



