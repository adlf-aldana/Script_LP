SELECT *FROM temds

SELECT *FROM itecon

INSERT INTO temds ( temdscsmd,temdscomd,temdsnucx,temdstsev,temdsmodn,temdsncta,temdsceif,temdsuser,temdshora,temdsfpro) 
VALUES (1001,1,'TRANSFERENCIA ENTRE CUENTAS',1,4,'12201301',75003,'AMY','13:25:29','2023-10-12' )

No se pudo actualizar en itecon INSERT INTO temds ( temdscsmd,temdscomd,temdsnucx,temdstsev,temdsmodn,temdsncta,temdsceif,temdsuser,temdshora,temdsfpro) 
VALUES (1001,1,'TRANSFERENCIA ENTRE CUENTAS',1,4,'12201301',75003,'AMY','15:17:23','12/10/2023' )

INSERT INTO temds (temdscsmd,temdscomd,temdsnucx,temdscrsm,temdstsev,temdsmodn,temdsncta,temdsceif,temdsctef,temdsctne,temdsuser,temdshora,temdsfpro) VALUES (1001,1,'TRANSFERENCIA ENTRE CUENTAS                                                               ',NULL,1,4,'12201301        ','75003               ',NULL,NULL,'VSM                 ','11:21:28','2019-12-18');
INSERT INTO temds (temdscsmd,temdscomd,temdsnucx,temdscrsm,temdstsev,temdsmodn,temdsncta,temdsceif,temdsctef,temdsctne,temdsuser,temdshora,temdsfpro) VALUES (1001,2,'TRANSFERENCIA ENTRE CUENTAS                                                               ','                    ',1,4,'12201301        ','75003               ','                    ','                                                                                          ','ADM                 ','08:00:00','2020-08-25');
INSERT INTO temds (temdscsmd,temdscomd,temdsnucx,temdscrsm,temdstsev,temdsmodn,temdsncta,temdsceif,temdsctef,temdsctne,temdsuser,temdshora,temdsfpro) VALUES (1001,3,'TRANSFERENCIA ENTRE CUENTAS                                                               ',NULL,1,4,'12201301        ','75003               ',NULL,NULL,'GPC                 ','18:23:10','2020-10-20');


 INSERT INTO temds ( temdscsmd,temdscomd,temdsnucx,temdstsev,temdsmodn,temdsncta,temdsceif,temdsuser,temdshora,temdsfpro) 
 VALUES (1001,1,'TRANSFERENCIA ENTRE CUENTAS',1,4,'12201301',75003,'AMY','15:32:16','2023-10-12' )


DELETE temds
WHERE temdscsmd = 1001

SELECT *
FROM tecon 
WHERE teconpref = 15
AND teconcomd = 0

DELETE tecon
WHERE teconpref = 15
AND teconcomd = 0
