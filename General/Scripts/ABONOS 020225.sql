SELECT tetrnntra,
	--tetrnftra,
	tetrnstat,
	--tetrnfsta,
	tetrnimpo,
	--tetrnfpro,
	TRIM(tetrntxmd),
	TRIM(tetrnntro),
	TRIM(tetrnromd),
	tetrnntrx,
	tetrncage,
	TRIM(tetrnnomb),
	TRIM(tetrnnomx),
	TRIM(tetrnglos),
	tetrnnvia,
	*
FROM tetrn
WHERE tetrnstat IN (203,202,201,200)
AND tetrnftra = '2025-02-02'
ORDER BY 1;

SELECT *
FROM tetrn
WHERE tetrnstat = 204
AND tetrnftra = '2025-01-01'
ORDER BY tetrnfpro

SELECT *
FROM tetrn
WHERE tetrnntra IN (381314,400337)

UPDATE tetrn
SET tetrnstat = 202,
tetrnnvia = 3051962225,
tetrncage=363677
WHERE tetrnntra IN (381314)

select * from ach_orders

SELECT *
FROM teces
WHERE tecesntra IN (381314)--,400337)

SELECT *FROM teces WHERE tecesnces = 685989

DELETE teces
WHERE tecesntra = 381314

INSERT INTO teces (tecesnces,tecesntra,tecesttra,tecesform,teceseant,tecesfant,teceshant,teceseact,tecesfact,teceshact,tecesdesc,tecesuser,teceshora,tecesfpro) VALUES (685989,381314,2,'A',201,'2025-02-02','09:15:00',202,'2025-02-03','14:07:11','REGISTRANDO ABONO CUENTA: 3051962225                                                                                                                                                                                                                                                                        ','ADM','14:07:11','2025-02-04');
INSERT INTO teces (tecesnces,tecesntra,tecesttra,tecesform,teceseant,tecesfant,teceshant,teceseact,tecesfact,teceshact,tecesdesc,tecesuser,teceshora,tecesfpro) VALUES (685990,381314,2,'A',202,'2025-02-03','14:07:12',202,'2025-02-03','14:07:41','REGISTRANDO ABONO CUENTA: 3051962225                                                                                                                                                                                                                                                                        ','ADM','14:07:41','2025-02-04');
INSERT INTO teces (tecesnces,tecesntra,tecesttra,tecesform,teceseant,tecesfant,teceshant,teceseact,tecesfact,teceshact,tecesdesc,tecesuser,teceshora,tecesfpro) VALUES (685991,381314,2,'A',203,'2025-02-03','14:07:41',203,'2025-02-03','14:13:03','REGISTRANDO ABONO CUENTA: 3051962225                                                                                                                                                                                                                                                                        ','   ','14:13:03','2025-02-04');


SELECT *
FROM catrn
WHERE catrnncta = 3051962225          

SELECT *
FROM teces
WHERE tecesntra IN (381314,400337)

SELECT *
FROM teces
WHERE tecesfpro = '2025-02-04';

UPDATE teces
SET 
WHERE tecesntra IN (381314)
AND tecesfant = ''

SELECT *
FROM teach
WHERE teachtxmd = '14262502024442308748'

UPDATE teach
SET teachttra = 0
WHERE teachtxmd = '14262502024442308748'

INSERT INTO teach (teachcomd,teachtxmd,teachttra) VALUES (2,'14262502024442308748',1);

SELECT *
FROM capig
WHERE capigimpo = 8000.00
AND capigfpig = '2025-02-02'

UPDATE tetrn
SET tetrnnpig = 8911139


SELECT *
FROM tetrn
WHERE tetrnntra IN (381191 ,
381193  ,
381194  ,
381195 ,
381196  ,
380303  ,
380797	) 

UPDATE tetrn
SET tetrnstat = 103
WHERE tetrnntra IN (381191,381193,381194)

SELECT *
FROM teces
WHERE tecesntra IN (381191,381193,381194)

UPDATE teces
SET teceseact = 103
WHERE tecesntra IN (381191,381193,381194)

-----------------------------------------------------------
--02/02/25
-- CAIDA
-- 1. ACEPTAR
NTRA. 380819
STAT. 202
IMPO. 500
ACH.  14262502024441983867
CUENTA. 9051064349
NOMBRE. Jacob Carballo Tirina

-- 2. NO HACER NADA
NTRA. 380835
STAT. 202
IMPO. 120
ACH.  14262502024443351329
CUENTA. 8151125632
NOMBRE. OJOPI ARRIAZA GLENAR MIYALY

-- 3. NO HACER NADA
NTRA. 380842
STAT. 202
IMPO. 800
ACH.  14262502024444347627
CUENTA. 3051800881
NOMBRE. ROGER CORTEZ

-- 3. NO HACER NADA
NTRA. 380842
STAT. 202
IMPO. 800
ACH.  14262502024444347627
CUENTA. 3051800881
NOMBRE. ROGER CORTEZ

-- 4. ACEPTAR
NTRA. 380846
STAT. 202
IMPO. 953.99
ACH.  14262502024444660694
CUENTA. 3051471460
NOMBRE. SIVILA PEREZ VICTOR MARIO

-- 5. ACEPTAR
NTRA. 380849
STAT. 202
IMPO. 17.5
ACH.  14262502024444813504
CUENTA. 3051978377
NOMBRE. ZURITA GUTIERREZ MARIA ELENA

-- 6. ACEPTAR
NTRA. 380873
STAT. 202
IMPO. 50
ACH.  14262502024446397389
CUENTA. 3051979515
NOMBRE. U. E. Diario Monta?o

-- 7. ACEPTAR
NTRA. 380883
STAT. 202
IMPO. 132
ACH.  14262502024446821369
CUENTA. 9051060638
NOMBRE. SUAREZ MEZA RENILDO ANTONIO

-- 8. NO HACER NADA
NTRA. 380888
STAT. 202
IMPO. 2000
ACH.  14262502024447068117
CUENTA. 3051634579
NOMBRE. Anell Wendy Dalenz Soliz

-- 9. ACEPTAR
NTRA. 381062
STAT. 202
IMPO. 200
ACH.  14262502024441263821
CUENTA. 3051623984          
NOMBRE. DAVID RODRIGUEZ BUSTAMANTE

-- 10. ACEPTAR
NTRA. 381314
STAT. 202
IMPO. 4000
ACH.  14262502024442308748
CUENTA. 3051962225
NOMBRE. KELLY ALICIA ARTIGAS GARCIA

-- 11. ACEPTAR
NTRA. 382546
STAT. 202
IMPO. 50
ACH.  14262502024443563172
CUENTA. 3051675145
NOMBRE. SUYO DE ALBA ROSA VICTORIA

-- 12. ACEPTAR
NTRA. 382657
STAT. 202
IMPO. 40
ACH.  14262502024443706739
CUENTA. 3051675145 
NOMBRE. SUYO DE ALBA ROSA VICTORIA

-- 13. ACEPTAR
NTRA. 384221
STAT. 202
IMPO. 37
ACH.  14262502024444792809
CUENTA.  3051978377
NOMBRE. ZURITA GUTIERREZ MARIA ELENA

-- 14. ACEPTAR
NTRA. 384382
STAT. 202
IMPO. 150
ACH.  14262502024444878576
CUENTA.  3051966790 
NOMBRE. CAMACHO VILLARROEL GUEYSA

-- 15. ACEPTAR
NTRA. 385156
STAT. 202
IMPO. 700
ACH.  14262502024445442046
CUENTA. 9051253884
NOMBRE. SAAVEDRA CUELLAR JHAN LUCAS

-- 16. ACEPTAR
NTRA. 388201
STAT. 202
IMPO. 22.5
ACH.  14262502024446877119
CUENTA. 3051978377 
NOMBRE. ZURITA GUTIERREZ MARIA ELENA

-- 17. ACEPTAR
NTRA. 389189
STAT. 202
IMPO. 174
ACH.  14262502024447732327
CUENTA.  3051778167
NOMBRE. ROJAS ARGOTE GIOVANA CINTHIA
