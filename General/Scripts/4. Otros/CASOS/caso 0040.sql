/* PROGRAMAS */
select a.admdtmodn,b.admoddesc,a.admdtmprn,c.admprdesc,a.admdtmdtn,a.admdtdesc,a.admdtnprg,a.admdtnpnb,a.admdtstat
from admdt a,admod b,admpr c
where a.admdtmodn=b.admodmodn
and a.admdtmodn=c.admprmodn
and a.admdtmprn=c.admprmprn
--and a.admdtmodn=2
and (a.admdtnprg like '%337%'
or a.admdtnpnb like '%337%')
order by 1,3,5;

SELECT prmprnpre,
	prmprcage,
	prmprstat,
	prmprtcre,
	prmprcmon,
	prmprplzo,
	prmprgrac,
	prmprsald,
	prmprmdes,
	prmprfpvc,
	prmprctac,
	prmprpdvg,
	prmprfinc
FROM prmpr 
WHERE prmprnpre IN (10047560,10047111,15410079,15201139)

SELECT *FROM prcon ORDER BY 1,2

SELECT *
FROM prces 
WHERE prcesnpre IN (15201139)
ORDER BY 1

SELECT  *
FROM prste
WHERE prstenpre = 15201139



