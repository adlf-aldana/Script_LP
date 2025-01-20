CREATE PROCEDURE prueba_123(NOMBRE char(100))
	DEFINE cage char(10);
	SELECT gbagecage INTO cage FROM gbage WHERE gbagecage = 35916;
	UPDATE gbage SET gbagenomb = NOMBRE WHERE gbagecage = cage;
END PROCEDURE;

SELECT gbagecage, gbdacnoco 
FROM gbage, gbdac
WHERE gbagecage = gbdaccage 
--AND gbagecage IS NOT IN gbdancage
AND gbageeciv = 2
AND gbdacnoco IS NOT NULL
AND gbagecage NOT IN (SELECT gbdancage
					FROM gbdan)

CREATE PROCEDURE prueba_123()
	DEFINE cage char(10);
	DEFINE nombreCompleto char(300);
	FOREACH _cursor FOR SELECT gbagecage, gbdacnoco
						INTO cage, nombreCompleto 
						FROM gbage, gbdac
						WHERE gbagecage = gbdaccage 
						--AND gbagecage IS NOT IN gbdancage
						AND gbageeciv = 2
						AND gbdacnoco IS NOT NULL
						AND gbagecage NOT IN (SELECT gbdancage
												FROM gbdan)
				
		INSERT INTO gbdan (gbdancage,gbdancsbs,gbdanmage,gbdanopci,gbdantsit,gbdancclb,gbdantdcm,gbdanndcm,gbdanzore,gbdanofre,gbdantire,gbdanppol,gbdanppea,gbdanppae,gbdangafi,gbdansapp,gbdanrcon,gbdannomc,gbdannom1,gbdannom2,gbdanape1,gbdanape2,gbdanape3,gbdantidc,gbdannidc,gbdancomc,gbdanprof,gbdanocup,gbdandact,gbdanrelc) 
		VALUES (cage,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',nombreCompleto ,'','','','',NULL,0,NULL,NULL,0,NULL,'',NULL);

	END FOREACH;
END PROCEDURE;


SELECT count(*) FROM gbdan 

DELETE gbage
DELETE gbdan

echo "UNLOAD TO 'gbdan.unl' SELECT * from gbdan" | dbaccess tbase
echo "load from gbdan.unl insert into gbdan" | dbaccess tbase

DROP PROCEDURE prueba_123
EXECUTE PROCEDURE  prueba_123()
