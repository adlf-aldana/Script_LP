SELECT *
FROM tdmtd
WHERE tdmtdnomb LIKE '%RONALD%'
AND tdmtdapel LIKE '%MORALES%'

SELECT *
FROM tdmtd
WHERE tdmtdntrj = '%600009048%'

SELECT *
FROM tdage
WHERE tdagentrj = 600009048--600002948 

SELECT *
FROM tdpan
WHERE tdpanntrj = 600008219                                        

SELECT *
FROM tdpan
WHERE tdpanpano LIKE '%8188'

-- RONALD GAMBOA
SELECT *
FROM tdmtd
WHERE tdmtdntrj = 600008819

SELECT *
FROM tdtct 
WHERE tdtctntrj = 600008819

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051913664
AND catrnftra = '2022-05-23'

SELECT *
FROM camca
WHERE camcancta  = 3051913664

select *
FROM catrn
WHERE catrnncta = 3051913664
SELECT COUNT(catrnimpo)
FROM catrn
WHERE catrnncta = 3051913664
AND catrnftra = '2022-05-23'

--LIMITES X TARJETA
SELECT *
FROM tdmax

INSERT INTO tdmax 
VALUES('600008819',10,438,30,1760,'PRUEBA',0,'AMY','13:04:15','13/04/2023',10,438,30,1760,'05/04/2023','05/04/2023',NULL,NULL)
VALUES(''		  , 0, 0 ,0 ,0   , 0, '', 0, '', '', '', '', '', '');
