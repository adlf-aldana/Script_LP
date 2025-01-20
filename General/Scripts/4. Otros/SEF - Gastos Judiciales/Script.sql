SELECT *
FROM hclgas
WHERE operpre=18100419
AND transac = (SELECT MAX(transac)
				FROM hclgas
				WHERE operpre = 18100419)
                           
SELECT SUM(monto),SUM(prevision)
FROM hclgas
WHERE operpre = 18100419
AND estado = 0



SELECT *FROM tetrn WHERE tetrnfpro >= '2023-10-01' ORDER BY tetrnfpro DESC 
SELECT *FROM catrn WHERE catrnfpro >= '2023-10-01'
SELECT *FROM tetrn WHERE tetrntorg = 27650751
