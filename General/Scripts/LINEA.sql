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
