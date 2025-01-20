SELECT sum(crsldsald)
FROM   crsld
WHERE  crsldagrp = 2 -- CAJA DE AHORRO
--AND   crsldnive  = 2
AND   crsldfech = "2023-05-31";--28/02/2022";

SELECT sum(crsldsald)
FROM crsld
WHERE crsldagrp = 3
--AND crsldnive  = 1
AND crsldfech = "2023-05-31";


SELECT *--sum(crslbsald)
FROM crslb
WHERE crslbdpto = 2--crslbtdep = 2
AND crslbagrp = 2
AND crslbnive = 1
AND crslbfece = "2023-05-01";

SELECT *--sum(crslbsald)
FROM crslb
WHERE crslbsald = '2721.37'
WHERE crslbdpto = 2
AND crslbagrp = 2 --agrupador cuentas deposito
AND crslbnive = 1 --moneda
AND crslbfece = "2023-05-31";

SELECT *--sum(crsldsald)
FROM crsld 
WHERE  crsldtdep = 2
AND crsldagrp = 2
AND crsldnive = 1
AND crsldplaz = 20
AND crsldfech = "2023-05-31";

-- BALANCE SUMAS SALDOS POR AGENCIA
SELECT SUM(total) AS total_suma
FROM (
    SELECT SUM(cndtrimpi) AS total
    FROM cndtr
    WHERE cndtrcnta LIKE '%282011%'
    AND cndtrplaz = 30
    
    UNION ALL
    
    SELECT SUM(cndtrimpi) AS total
    FROM cndtr
    WHERE cndtrcnta LIKE '%235071%'
    AND cndtrplaz = 30
    
    UNION ALL
    
    SELECT SUM(cndtrimpi) AS total
    FROM cndtr
    WHERE cndtrcnta LIKE '21201130'
    AND cndtrplaz = 30
    
    UNION ALL
    
    SELECT SUM(cndtrimpi) AS total
    FROM cndtr
    WHERE cndtrcnta LIKE '%2120213%'
    AND cndtrplaz = 30
    
    UNION ALL
    
    SELECT SUM(cndtrimpi) AS total
    FROM cndtr
    WHERE cndtrcnta LIKE '%2120114%'
    AND cndtrplaz = 30
    
    UNION ALL
    
    SELECT SUM(cndtrimpi) AS total
    FROM cndtr
    WHERE cndtrcnta LIKE '%2120214%'
    AND cndtrplaz = 30
    
    UNION ALL
    
    SELECT SUM(cndtrimpi) AS total
    FROM cndtr
    WHERE cndtrcnta LIKE '%2120111%'
    AND cndtrplaz = 30
) AS subquery;

