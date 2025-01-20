-- ACCESOS A INVENTARIOS
/*
 * 6 inventarios
	1 Transacciones
		1 Ingresos
		2 Egresos
		3 Ingresos por traspasos
		4 Egresos por trasapasos
 * */
SELECT *FROM admop WHERE ADMOPUSRN ='RGE' ORDER BY 2,3,4;

-- ACCESOS A ACTIVOS FIJOS
/*
10 Activo Fijo
	1 depreciacion NO
	2 reportes 
		1 activos por tipo 
		3 activos por responsable
	3 MANTENIMIENTO DE PAREAMETTROS
		5 traspasos de activos
 * */


-- ACCESOS A COMPRAS
/*
 17 Compras
	1 Abatecimiento -> Todo
	2 Transacciones -> Todo
	3 Reporte Diarios -> Todo
	4 Reportes y Consultas -> NO
 * */

-- USUARIOS QUE SE DEBE DAR ACCESOS
/*
Jefes operativos regionales
- ENRIQUE RAMIREZ (RGE), MARIA PINTO, KARINA ZAMBRANA(VERIFICAR)
Lideres de agencia

4211 -> MELGAR SANABRIA LUIS ALBERTO TRABAJAR CON ÉL
 * */
-- NetBank, perfil Jefe operativo regional
-- PERFILES
SELECT aduagusrn, adusrnomb
FROM aduag, adusr 
WHERE aduagusrn = adusrusrn
AND adusrstat = 'T'
AND adusrnomb LIKE '%OPERATIVO%'
ORDER BY 1
--AND adusrusrn IN ('100')
--AND aduagagen IS NULL 

-- NetBank, perfil Lider experiencia
SELECT aduagusrn, adusrnomb
FROM aduag, adusr 
WHERE aduagusrn = adusrusrn
AND adusrstat = 'T'
AND adusrnomb LIKE '%EXPERIENCIA%'
ORDER BY 1
--AND adusrusrn IN ('100')
--AND aduagagen IS NULL 

unload TO inara_tbsai.txt
SELECT *FROM inara

UPDATE inara
SET inarastot = 1
WHERE inaracart = 113

SELECT inalmsmie 
FROM inalm 
WHERE inalmcalm = 30--new_inaracalm

SELECT *
FROM aduag;

SELECT *
FROM adugn;

SELECT *
FROM adusr;
-- PERFILES
SELECT aduagusrn, adusrnomb
FROM aduag, adusr 
WHERE aduagusrn = adusrusrn
AND adusrstat = 'T'
ORDER BY 1
--AND adusrusrn IN ('100')
--AND aduagagen IS NULL 

SELECT *FROM gbage WHERE GBAGENOMB LIKE '%LUIS%MELGAR%';

SELECT *FROM admop WHERE ADMOPUSRN ='MSL' ORDER BY 2,3,4;

--1 MODULO GENERAL
SELECT *FROM admod;
--1 1 REPORTES Y CONSULTAS
SELECT *FROM admpr ORDER BY 1,2;
--1 1 1 CONSULTA DE AGENDA
SELECT *FROM admdt order BY 1,2,3;
-- robustossai rafael U/N 
SELECT *FROM admop WHERE ADMOPUSRN ='BCR' ORDER BY 2,3,4;
INSERT INTO admop VALUES ('BCR',1,1,1,'AMY','13:28:28','2022-02-01');

/* PERMISOS */
SELECT *FROM ADUSR WHERE adusrusrn= 'AMY';
--UPDATE adusr set ADUSRSTAT ='A' WHERE ADUSRUSRN ='AMY';

/*update SAI, -- POSTEO */
select *
from cntcn a
where cntcnfreg<='2020-11-30'
and cntcnpost=0;

update cntcn set cntcnpost=9
where cntcnfreg<='2020-11-30'
and cntcnpost=0;

/* ADMTD - PROGRAMAS SAI */
select a.admdtmodn,b.admoddesc,a.admdtmprn,c.admprdesc,a.admdtmdtn,a.admdtdesc,a.admdtnprg,a.admdtstat
from admdt a,admod b,admpr c
where a.admdtmodn=b.admodmodn
and a.admdtmodn=c.admprmodn
and a.admdtmprn=c.admprmprn
--and a.admdtmodn=5
--and a.admdtnprg like '%033%'
order by 1,3,5;

-- SOLUCION PROBLEMA CON PROCEDIMIENTO ALMACENADO Y TRIGGER
-- Eliminar procedimiento y trigger, luego volver a crear proc y trigger en ese orden
SELECT *
FROM inara
WHERE inaracart = 113
AND INARAFUIN = '2017-07-31'

UPDATE inara
SET inarastot = 4
WHERE inaracart = 113
AND INARAFUIN = '2017-07-31'

--sp_up_inara_bqa
drop procedure sp_up_inara_bqa

CREATE PROCEDURE "tbsai".sp_up_inara_bqa(new_inaracalm LIKE inara.inaracalm,
                                 new_inaracart LIKE inara.inaracart,
                                 new_inarasmin LIKE inara.inarasmin,
                                 new_inarastot LIKE inara.inarastot,
                                 old_inarasmin LIKE inara.inarasmin,
                                 old_inarastot LIKE inara.inarastot)
       DEFINE  esql_err  SMALLINT;
       DEFINE  eisam_err  SMALLINT;
       DEFINE  l_hora  DATETIME HOUR TO SECOND;

       IF new_inarasmin = 0 THEN
	    LET new_inarasmin = (SELECT inalmsmie 
                                   FROM inalm 
             			  WHERE inalmcalm = new_inaracalm); 
       END IF
       IF (new_inarastot <> old_inarastot) OR 
	  (new_inarasmin <> old_inarasmin) THEN
            IF new_inarasmin > 0 AND new_inarastot <= new_inarasmin THEN
               BEGIN
                   ON EXCEPTION SET esql_err, eisam_err
                   IF esql_err < 0 THEN
                        -- Registro Duplicado
			BEGIN
                           ON EXCEPTION SET esql_err, eisam_err
                           -- No pudo actualizar el registro
                           END EXCEPTION
		           UPDATE inbqa SET inbqafpro = TODAY,
			 		    inbqahora = l_hora,
				            inbqanreq = 0
		                      WHERE inbqacalm = new_inaracalm
			                AND inbqacart = new_inaracart;
			END
                   ELSE
                        RAISE exception esql_err, eisam_err;
                   END IF
                   END EXCEPTION
                   -- inserta solicitud de reposicion
		   LET l_hora = CURRENT;
                   INSERT INTO inbqa 
                        VALUES(new_inaracalm,new_inaracart,TODAY,l_hora,0);
               END
            ELSE
               IF new_inarastot > new_inarasmin THEN
                   BEGIN
                      ON EXCEPTION SET esql_err, eisam_err
                      -- No pudo borrar el registro
                      END EXCEPTION
                       -- elimina solicitud de reposicion
                      DELETE FROM inbqa WHERE inbqacalm = new_inaracalm
			                  AND inbqacart = new_inaracart;
                     END
               END IF
            END IF
       END IF
END PROCEDURE;

-- TR_UP_INARA_BQA
DROP TRIGGER tr_up_inara_bqa

create trigger "tbsai".tr_up_inara_bqa update on "tbsai".inara referencing old as old new as new                                                                                                                                                                
    for each row
        (
execute procedure "tbsai".sp_up_inara_bqa(new.inaracalm ,new.inaracart ,new.inarasmin ,new.inarastot ,old.inarasmin ,old.inarastot ));                                                                                       



