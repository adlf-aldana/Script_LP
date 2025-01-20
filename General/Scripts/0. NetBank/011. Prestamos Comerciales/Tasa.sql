SELECT
	prtsanpre, 
	prtsatbas,  
	prtsasprd,
	prtsafvig,
	prtsatbas + prtsasprd total,
	LAG(prtsatbas) OVER (PARTITION BY prtsanpre ORDER BY prtsafvig ASC) tasa_anterior,
    LEAD(prtsatbas, 1, 0) OVER (PARTITION BY prtsanpre ORDER BY prtsafvig ASC) tasa_siguiente
FROM prtsa
WHERE prtsanpre = 10046055
ORDER BY prtsafvig asc;


SELECT
	prtsanpre, 
	prtsatbas,  
	prtsasprd,
	prtsafvig ACTUAL,
	LEAD(prtsafvig, 1, 0) OVER (PARTITION BY prtsanpre ORDER BY prtsafvig ASC) SIGUIENTE,
	prtsatbas + prtsasprd total,
	LAG(prtsatbas) OVER (PARTITION BY prtsanpre ORDER BY prtsafvig ASC) TASA_ANTERIOR,
    LEAD(prtsatbas, 1, 0) OVER (PARTITION BY prtsanpre ORDER BY prtsafvig ASC) TASA_SIGUIENTE
FROM prtsa
WHERE prtsanpre = 10046055
ORDER BY prtsafvig asc;