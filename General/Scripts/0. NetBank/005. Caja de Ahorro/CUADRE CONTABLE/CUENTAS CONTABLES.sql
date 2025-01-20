SELECT DISTINCT 
	sum(CASE 
	 WHEN b.camcacmon = 1 THEN (b.camcasact *-1)
	 WHEN b.camcacmon = 2 THEN (b.camcasact *-6.86)
 END) AS saldo,
 decode(b.camcastat, 1, substr(i.catcmctaa,0,5), 2, substr(i.catcmctsi,0,5), 3, substr(i.catcmctcc,0,5)) CUENTA_CTBLE
FROM camca b,  catcm i
WHERE b.camcatpca = i.catcmtpca
AND b.camcacmon = i.catcmcmon
AND b.camcastat IN (1, 2, 3)
AND NOT EXISTS (SELECT *
     	        FROM capig h
		        WHERE h.capigncta = b.camcancta
			    AND h.capigstat = 0
			    AND h.capigcpig IN (SELECT pi.catpgcpig	
			    				   FROM catpg pi
			    				   WHERE pi.catpgcpig=h.capigcpig
			    				   AND pi.catpgtpgr IS NOT NULL
                                   AND pi.catpgctab IS NOT NULL))
GROUP BY 2
UNION
--2
SELECT DISTINCT 
sum(CASE 
	 WHEN b.camcacmon = 1 THEN (b.camcasact *-1)
	 WHEN b.camcacmon = 2 THEN (b.camcasact *-6.86)
 END) AS saldo,
 decode(b.camcastat, 1, substr(i.catcmctaa,0,5), 2, substr(i.catcmctsi,0,5), 3, substr(i.catcmctcc,0,5)) CUENTA_CTBLE
FROM camca b,  catcm i
WHERE b.camcatpca = i.catcmtpca
AND b.camcacmon = i.catcmcmon
AND b.camcastat IN (1, 2, 3)
AND exists (SELECT *
     	    FROM capig h
		    WHERE h.capigncta = b.camcancta
			AND h.capigstat = 0
			AND h.capigcpig IN(SELECT pi.catpgcpig	
			    			   FROM catpg pi
			    			   WHERE pi.catpgcpig=h.capigcpig
			    			   AND pi.catpgtpgr IS NOT NULL
                               AND pi.catpgctab IS NOT NULL))
GROUP BY 2
UNION
/*3 BASE DE DATOS CAJA DE AHORRO - FINANZAS*/
SELECT DISTINCT 
sum(CASE 
	 WHEN b.camcacmon = 1 THEN (b.camcasact *-1)
	 WHEN b.camcacmon = 2 THEN (b.camcasact *-6.86)
 END) AS saldo,
	DECODE(b.camcacmon,
		1, (SELECT substr(max(r.catpgctab),0,5)
              FROM capig q,catpg r
              WHERE q.capigncta = b.camcancta
              AND q.capigcpig = r.catpgcpig
              AND q.capignpig = (SELECT max(t.capignpig)
                                FROM capig t
                                WHERE t.capigncta = b.camcancta
                                AND t.capigstat = 0
                                AND t.capigcpig IN(SELECT pi.catpgcpig	
                                                   FROM catpg pi
                                                   WHERE pi.catpgcpig = t.capigcpig
                                                   AND pi.catpgtpgr is not null
                                                   AND pi.catpgctab is not null
                                                   AND pi.catpgcpig IN (3,5,6,7,8,9,10,50)))),
       2,(SELECT substr(max(r.catpgctad),0,5)
		  FROM capig q,catpg r
		  WHERE q.capigncta = b.camcancta
		  AND q.capigcpig = r.catpgcpig
		  AND q.capignpig = (SELECT max(t.capignpig)
          					FROM capig t
                            WHERE t.capigncta = b.camcancta
                            AND t.capigstat = 0
                            AND t.capigcpig IN(SELECT pi.catpgcpig	
											   FROM catpg pi
											   WHERE pi.catpgcpig=t.capigcpig
											   AND pi.catpgtpgr IS NOT NULL
											   AND pi.catpgctab IS NOT NULL
											   AND pi.catpgcpig IN (3,5,6,7,8,9,10,50))))) CUENTA_CTBLE
FROM camca b, OUTER catcm i
WHERE b.camcatpca = i.catcmtpca
AND b.camcacmon = i.catcmcmon
AND b.camcastat IN (1, 2, 3)
AND EXISTS (SELECT *
     	    FROM capig h
		    WHERE h.capigncta = b.camcancta
			AND h.capigstat = 0
			AND h.capigcpig IN(SELECT max(pi.catpgcpig)	
			    			   FROM catpg pi
			    			   WHERE pi.catpgcpig = h.capigcpig
			    			   AND pi.catpgtpgr IS NOT NULL
                               AND pi.catpgctab IS NOT NULL
                               AND pi.catpgcpig IN (3, 5, 6, 7, 8, 9, 10, 50))
							   AND h.capigimpo > 0)
GROUP BY 2
UNION
/*4 BASE DE DATOS CAJA DE AHORRO - FINANZAS */
SELECT DISTINCT 
sum(CASE 
	 WHEN b.camcacmon = 1 THEN (b.camcasact *-1)
	 WHEN b.camcacmon = 2 THEN (b.camcasact *-6.86)
 END) AS saldo,
 decode(b.camcacmon,
		1, (SELECT substr(r.catpgctab,0,5)
	          FROM capig q,catpg r
	          WHERE q.capigncta = b.camcancta
	          AND q.capigcpig = r.catpgcpig
	          AND q.capignpig = (SELECT max(t.capignpig)
	                            FROM capig t
	                            WHERE t.capigncta=b.camcancta
	                            AND t.capigstat=0
	                            AND t.capigcpig IN(SELECT pi.catpgcpig	
	                                               FROM catpg pi
	                                               WHERE pi.catpgcpig=t.capigcpig
	                                               AND pi.catpgtpgr is not null
                                                   AND pi.catpgctab is not null
                                                   AND pi.catpgcpig not IN (3,5,6,7,8,9,10,50)))),
		2, (SELECT substr(r.catpgctad,0,5)
			  FROM capig q,catpg r
			  WHERE q.capigncta=b.camcancta
			  AND q.capigcpig=r.catpgcpig
			  AND q.capignpig = (SELECT max(t.capignpig)
	          					FROM capig t
	                            WHERE t.capigncta=b.camcancta
	                            AND t.capigstat=0
	                            AND t.capigcpig IN(SELECT pi.catpgcpig	
												   FROM catpg pi
												   WHERE pi.catpgcpig=t.capigcpig
												   AND pi.catpgtpgr is not null
												   AND pi.catpgctab is not null
												   AND pi.catpgcpig not IN (3,5,6,7,8,9,10,50))))) cuenta_ctble
FROM camca b, OUTER catcm i
WHERE b.camcatpca = i.catcmtpca
AND b.camcacmon = i.catcmcmon
AND b.camcastat IN (1, 2, 3)
AND EXISTS (SELECT *
     	    FROM capig h
		    WHERE h.capigncta = b.camcancta
			AND h.capigstat = 0
			AND h.capigcpig IN (SELECT max(pi.catpgcpig)	
			    			   FROM catpg pi
			    			   WHERE pi.catpgcpig = h.capigcpig
			    			   AND pi.catpgtpgr is not null
                               AND pi.catpgctab is not null
                               AND pi.catpgcpig not IN (3,5,6,7,8,9,10,50))
			AND h.capigimpo>0)
GROUP BY 2
ORDER BY 2;