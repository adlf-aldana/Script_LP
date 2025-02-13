select *
from cndtr a
where a.cndtrfdoc='2025-01-31'
--and a.cndtrntra=94
--and a.cndtritem=90
and (a.cndtrimpi=3409.89
or a.cndtrimpi=-3409.89);

select *
from cndtr a
where a.cndtrfdoc='2025-01-31'
AND cndtrcnta = 13806163;

SELECT *
FROM prtcn
WHERE prtcncctb =13806163
AND prtcnftra >= '2024-01-01'

SELECT *
FROM cnhtr
WHERE cnhtrntra = 779

select *
from cndtr a
where a.cndtrntra = 779

SELECT *
FROM prdif
WHERE prdifsald=2633.26