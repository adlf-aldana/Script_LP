SELECT *
FROM prmpr
	INNER JOIN prppg ON prmprnpre = prppgnpre
WHERE  prppgfech = '2022-08-10'
AND prmprstat = 2;

SELECT prdifnpre, prdifcarg, prdifmori, prdifcuot, prdifsald, prdifglos, prdifccap
FROM prdif 
WHERE prdifnpre = 10041404

SELECT *FROM prdif WHERE prdifnpre = 19037055

SELECT *FROM prdip WHERE prdipnpre = 19037055

