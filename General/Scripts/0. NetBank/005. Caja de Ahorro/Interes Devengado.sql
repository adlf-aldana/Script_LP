select a.camcancta,
round(a.camcaiacu,2) iacu,
round(decode(a.camcacmon,1,sum(b.caigdintg),2,sum((b.caigdintg)*6.86)),2) Int_degBS,
round(decode(a.camcacmon,1,sum((b.caigdintg)/6.86),2,sum(b.caigdintg)),2) Int_deg$us,
round(sum(b.caigdintg),2) Int_dev_orig
from camca a,outer caigd b
where a.camcancta=b.caigdncta
and a.camcastat in(1,2,3)
and a.camcacmon=2
--and a.camcancta=3051000032
and b.caigdfech between '2021-10-01' and '2021-10-31'
group by 1,2,a.camcacmon
order by 1;

select *From camca where camcancta=3051000032;
select *from caigd where caigdncta=3051000032 and caigdcmon =1;