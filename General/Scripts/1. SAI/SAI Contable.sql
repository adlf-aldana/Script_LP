SELECT *	
FROM cntcn
WHERE cntcnntra = 11921
AND cntcnmodn = 4
AND cntcnpost = 0

SELECT *
FROM cntcn
WHERE cntcnpost = 9

UPDATE cntcn
SET cntcnpost = 9
WHERE cntcnntra = 11921
AND cntcnmodn = 4
AND cntcnpost = 0

select a.admdtmodn,b.admoddesc,a.admdtmprn,c.admprdesc,a.admdtmdtn,a.admdtdesc,a.admdtnprg,a.admdtstat
from admdt a,admod b,admpr c
where a.admdtmodn=b.admodmodn
and a.admdtmodn=c.admprmodn
and a.admdtmprn=c.admprmprn
--and a.admdtmodn=9
and a.admdtnprg like '%337%'
order by 1,3,5;