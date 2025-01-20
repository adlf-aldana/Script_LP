SELECT decode(b.prmprstat,
				2, cr.croprreqm,
	            3, cr.croprreqm,
	          	decode((SELECT (u.croprreqm+dif.crdipimpr)
		                FROM cropr u,crdip dif
		                WHERE u.croproper = b.prmprnpre
	                  	AND u.croproper = dif.crdipnbco
		                AND dif.crdipfech = (SELECT gbpmtfdia FROM gbpmt)),
		                null, cr.croprreqm,
		                (SELECT (u.croprreqm+dif.crdipimpr)
	                        FROM cropr u,crdip dif
	                        WHERE u.croproper = b.prmprnpre
	                      AND u.croproper = dif.crdipnbco
	                          AND dif.crdipfech = (SELECT gbpmtfdia FROM gbpmt)
	                    )))
FROM cropr cr, prmpr b
WHERE cr.croproper = b.prmprnpre;
--AND cr.croprnopr[1] < 2

SELECT *
FROM cropr
WHERE croproper = 1201;




SELECT DECODE(prmprstat,
			2, croprreqm,
			3, croprreqm,
				DECODE((SELECT (croprreqm+crdipimpr)
						FROM cropr ,crdip
						WHERE croproper = prmprnpre
						AND croproper = crdipnbco
						AND crdipfech = (SELECT gbpmtfdia FROM gbpmt)),
						null, croprreqm,
						(SELECT (croprreqm+crdipimpr)
						FROM cropr,crdip 
						WHERE croproper = prmprnpre
					  	AND croproper = crdipnbco
						AND crdipfech = (SELECT gbpmtfdia FROM gbpmt)
											)))
FROM cropr, prmpr
WHERE croproper = prmprnpre
AND prmprnpre = 1808000;

SELECT *FROM prmpr WHERE prmprnpre = 1808000
SELECT *FROM crdip WHERE crdipoper = 1808000
SELECT *FROM cropr WHERE croproper = 1808000
SELECT *FROM prdif WHERE prdifnpre = 1808000


SELECT  ROUND( (DECODE(prmprstat, 
						2, decode(prmprpsus, 0,0, prmprpsus), 
						prmprpsus)) +		
			(DECODE(prmprstat, 
						2, decode(prmprpsus, 0, prmprpdvg, 0),
						0)) + 
			prdifsald, 2)
FROM prmpr, OUTER prdif
WHERE prmprnpre = prdifnpre
AND prmprnpre = 10047990
AND prdifmrcb = 0
AND prdifcarg IN (422,423,426,427);
