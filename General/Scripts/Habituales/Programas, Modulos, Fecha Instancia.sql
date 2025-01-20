/* BASE UPGRADE */
select *from adctl;

select *--*admodnser a
from admod a

/*PARA VER FECHA DE LA INSTANCIA GBPMT*/
select a.gbpmtnemp,a.gbpmtfdia,a.gbpmttcof,a.gbpmttcco,a.gbpmttcve,a.gbpmttufv
from gbpmt a;

/* PROGRAMAS */
select a.admdtmodn,b.admoddesc,a.admdtmprn,c.admprdesc,a.admdtmdtn,a.admdtdesc,a.admdtnprg,a.admdtnpnb,a.admdtstat
from admdt a,admod b,admpr c
where a.admdtmodn=b.admodmodn
and a.admdtmodn=c.admprmodn
and a.admdtmprn=c.admprmprn
and a.admdtmodn=1
and (a.admdtnprg like '%001e%'
or a.admdtnpnb like '%001e%')
order by 1,3,5;

/* UPGRADE MENU */
SELECT *FROM admod;
SELECT *FROM admdt WHERE admdtstat=2;
SELECT *FROM admpr WHERE admprdesc LIKE '%depre%' ORDER BY 1,2;

/*PARA VER FECHA DE LA INSTANCIA GBPMT*/
select *
from gbpmt a;

/* REPLACE */   -- PARA INSTANCIAS DE PRUEBA        
update admdt a
set a.admdtnprg=REPLACE(a.admdtnprg,'/disco2/bexe/','/backup/bexe/');
--where a.admdtmodn=8;

/* REPLACE */   -- PARA INSTANCIAS DE PRUEBA        
update admdt a
set a.admdtnprg=REPLACE(a.admdtnprg,'/u/bexe/','/backup/bexe/');

/* REPLACE */   -- PARA LINEA         
update admdt a
set a.admdtnprg=REPLACE(a.admdtnprg,'/backup/bexe/','/disco2/bexe/')
where a.admdtmodn=8;

update admdt a
set a.admdtnprg=REPLACE(a.admdtnprg,'/u/bexe/','/disco2/bexe/');

/*PARA VER FECHA Y HORA EN LA QUE FUE HABILITADO EL D�A gbhtc*/
select *
from gbhtc
