SELECT camcasact, camcafpig FROM camca WHERE camcacage = 359160;
select *from capig where capigncta = 3051920851 and capigstat = 0
SELECT sum(catrnimpo) FROM catrn WHERE catrnncta = 3051920851 AND catrnstat = 0;

SELECT * 
FROM catrn 
WHERE catrnncta = 3051920851 
and catrnftra >= '2023-11-10'
ORDER BY 2 desc;

SELECT * 
FROM catcn 
WHERE catcnncta = 3051920851 
and catcnftra >= '2023-11-10'
ORDER BY 2 desc;

SELECT *FROM tetrn WHERE tetrnabmd = 'MLD' AND tetrnftra >= '2023-01-01'
SELECT *FROM tetrn WHERE tetrncage = 359160 AND tetrnftra = '2023-11-10'
SELECT *FROM tdtrn WHERE tdtrnntrj = 600009048 AND tdtrnfpro = '2023-11-10'
SELECT *FROM tdmtd WHERE tdmtdcage = 359160;

/***************************************************************/

SELECT *FROM camca WHERE camcacage = 359792

SELECT tetrnnvia,tetrnimpt,tetrncage,*
FROM tetrn
WHERE tetrnntra in (381166,--BCP NO TIENE SALDO -OK 100
					389317)--BCP NO TIENE SALDO -OK 155)

SELECT camcasact,camcafpig,* 
FROM camca 
WHERE camcancta IN (8051270177, 3051557056)

SELECT tetrnntra NUM_TRANSF,
	tetrnstat ESTADO_TRANSF,
	tetrnimpt MONTO_TRANSAC,
	'BCP' PARTICIPANTE,
	camcancta CUENTA,
	camcacage COD_CLI,
	camcasact SALDO_ACTUAL,
	camcafpig SALDO_PIGNORADO
FROM tetrn,camca
WHERE tetrnnvia = camcancta 
AND tetrnntra IN (381166,389317)

-- UIF
SELECT *FROM gbage WHERE gbagecage = 27001
SELECT *FROM camca WHERE camcacage = 27001
SELECT *FROM catrn WHERE catrnncta = 3051983085 ORDER BY 2

SELECT *FROM cjtrn WHERE cjtrnfpro

SELECT *FROM uiotd
SELECT *FROM uioth