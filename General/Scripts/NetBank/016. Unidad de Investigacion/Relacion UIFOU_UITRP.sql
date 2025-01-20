select * from uitrp ORDER BY uitrpfpro DESC ;
select * from uifou ORDER BY uifounfor DESC ;

select * 
from uitrp a, uifou b
where a.uitrpnfor = b.uifounfor
ORDER BY uifoufpro DESC ;



