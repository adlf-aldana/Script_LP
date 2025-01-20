SELECT *FROM afmae
WHERE afmaecodi='02-00018';
-
SELECT DISTINCT 
a.afmaecodi CODIGO,
d.aftipdscr TIPO,
a.afmaedscr DESCRIPCION,
a.afmaevomn VALOR_ORIGINAL,
a.afmaefreg FECHA_REGISTRO,
a.afmaefcom FECHA_INCORPORACION,
a.afmaefide FECHA_INICIO_DEPRECIACION,
a.afmaevida VIDA_UTIL_MESES,
a.afmaevidu VIDA_UTIL_USADA,
(a.afmaevida - a.afmaevidu)  VIDA_UTIL,
b.afcondesc ESTADO,
a.afmaedgmn DEPRECIACION_MES,
a.afmaemgmn MEJORA_GESTION_MN
FROM afmae a, afcon b, aftip d
WHERE b.afconpref = 3
AND a.afmaestat= b.afconcorr
AND a.afmaetipo = d.aftiptipo
AND a.afmaemrcb = 0
AND a.afmaecodi ='02-00019'
ORDER BY 1;

SELECT *from afdep;

SELECT *FROM afeta;

SELECT *FROM afcon ORDER BY 1,2;

SELECT *FROM AFTIP;

SELECT *from afmae WHERE AFMAECODI IN ('02-00019','02-00032');
SELECT *from afmae WHERE AFMAECODI=;
