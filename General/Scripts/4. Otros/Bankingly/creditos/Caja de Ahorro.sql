SELECT *
FROM gbage
WHERE gbagecage = 65466
ORDER BY gbagefpro DESC 

-- 19277 Dolares alberto.cartagena
-- 362308 Bolivianos

SELECT *
FROM camca
WHERE camcacage IN (359160, 362305)

UPDATE camca
SET camcacage = 362305
WHERE camcancta = 3052434366

SELECT *
FROM cafir
WHERE cafirncta = 3052434366

UPDATE cafir
SET cafircage = 362305
WHERE cafirncta = 3052434366
--AND cafircage = 359160
--AND cafirstat = 0

SELECT *
FROM camca
WHERE camcastat = 1
AND camcacmon = 2
AND camcatpca = 1
AND camcasact > '-30000.00'
ORDER BY camcasact

