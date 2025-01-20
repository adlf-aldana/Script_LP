
/*PARA VER FECHA DE LA INSTANCIA GBPMT*/
select TRIM(a.gbpmtnomb) gbpmtnomb,a.gbpmtfdia,a.gbpmttcof,a.gbpmttcco,a.gbpmttcve,a.gbpmtiiva
from gbpmt a;

SELECT *FROM admdt 

/* REPLACE ADMDT */   -- PARA INSTANCIAS DE PRUEBA        
update admdt a
set a.admdtnprg=REPLACE(a.admdtnprg,'/u/tbsai/','/backup/tbsai/');

SELECT *
FROM cnnbk

/* REPLACE CNNBK */   -- PARA INSTANCIAS DE PRUEBA 
--tbase@mlptcp1                 
update cnnbk a 
set a.cnnbkhost='tbase@cm07';

/* ADUSR - SAI */
select a.*
from adusr a
where a.adusrusrn IN('VAE','VSM','AMY')
order by 1;

select *
from adcry a
where a.adcryusrn='AMY'
--MSL
select a.*
from adusr a
where a.adusrnomb like '%LUIS%'
order by 1;

SELECT *FROM gbage WHERE gbagenomb LIKE '%YAMIL%'


UPDATE adrhc SET adrhcclav='Clave123*' WHERE adrhcuser='AMY';

/* HABILITAR LIMPIEZA CLAVE USUARIO - SAI */
update adusr a
set a.adusrmlog=0,a.ADUSRCLAV =NULL,a.adusrmrcb=0,a.ADUSRCLAV ="Clave123*",a.adusrfcla='2022-01-01'
where a.adusrusrn='GPC';

/* HABILITAR USUARIO - SAI */
update adusr a
set a.adusrmlog=0,a.adusrmrcb=0--,a.ADUSRCLAV ="Clave123*",a.adusrfcla='2022-01-01'
where a.adusrusrn IN ('ZCE','AMY');

SELECT *FROM gbage WHERE GBAGENOMB LIKE '%steffa%MELGAR%';

SELECT *FROM admop WHERE ADMOPUSRN ='SMG' ORDER BY 2,3,4;
--1 MODULO GENERAL
SELECT *FROM admod;
--1 1 REPORTES Y CONSULTAS
SELECT *FROM admpr ORDER BY 1,2;
--1 1 1 CONSULTA DE AGENDA
SELECT *FROM admdt WHERE admdtdesc LIKE '%Ingresos%' order BY 1,2,3;
SELECT *FROM admdt WHERE admdtnprg LIKE '%sum%' order BY 1,2,3;

/* BASE UPGRADE */
select *from adctl;

/* PERMISOS */
SELECT *FROM ADUSR WHERE adusrusrn= 'AMY';

SELECT *FROM ADUSR WHERE adusrusrn= 'MSL';
--UPDATE adusr set ADUSRSTAT ='A' WHERE ADUSRUSRN ='AMY';

/*update SAI, -- POSTEO */
select *
from cntcn a
where cntcnfreg<='2020-11-30'
and cntcnpost=0;

update cntcn set cntcnpost=9
where cntcnfreg<='2020-11-30'
and cntcnpost=0;

/* ADMTD - PROGRAMAS SAI */
select a.admdtmodn,b.admoddesc,a.admdtmprn,c.admprdesc,a.admdtmdtn,a.admdtdesc,a.admdtnprg,a.admdtstat
from admdt a,admod b,admpr c
where a.admdtmodn=b.admodmodn
and a.admdtmodn=c.admprmodn
and a.admdtmprn=c.admprmprn
--AND a.admdtdesc LIKE '%ngreso%'
--and a.admdtmodn=9
and a.admdtnprg like '%sum%'
order by 1,3,5;

SELECT *FROM admod

