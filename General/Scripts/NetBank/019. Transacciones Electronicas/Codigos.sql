-- CODIGO ERRRORES ACH
SELECT *
FROM tecon 
WHERE teconcomd = 2
AND teconpref = 11
ORDER BY 1,2,3

-- ESTADO TRANSACCION ENVIO
SELECT *
FROM tecon 
WHERE teconcomd = 1
AND teconpref = 5
ORDER BY 1,2,3