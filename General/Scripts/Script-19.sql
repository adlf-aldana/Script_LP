SELECT *
FROM camca
WHERE camcancta = 3051003061

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 3051003061
AND catrnstat = 0

SELECT *
FROM camca
WHERE camcancta = 8051014925

SELECT sum(catrnimpo)
FROM catrn
WHERE catrnncta = 8051014925
AND catrnstat = 0

select a.camcancta,a.camcastat,a.camcaacan,a.camcasant,a.camcasact,a.camcafpig,a.camcafumv
from camca a
where a.camcancta in (8051013414,3052001291);

SELECT *
FROM camca
WHERE camcancta = 3051920851