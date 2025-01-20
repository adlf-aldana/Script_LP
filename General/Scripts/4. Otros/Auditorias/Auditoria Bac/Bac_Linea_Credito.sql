/*  LINEAS DE CREDITO - BAC 10 CAMPOS */
select b.prmprlncr nro_linea,
b.prmprnpre nro_operacion,
a.gbagenomb nombre_deudor,
c.lcmlcfini fecha_inicio_linea,
c.lcmlcfven fecha_venc_linea,
c.lcmlcagen cod_agencia,
c.lcmlcmori MONTO_LINEA_ORIGINAL,
decode(c.lcmlccmon,1,c.lcmlcmut1,2,c.lcmlcmut2)saldo_linea,
b.prmprfdes fecha_desembolso,
decode(c.lcmlccmon,1,'Bs',2,'$us') moneda
from gbage a,prmpr b,lcmlc c
where a.gbagecage=b.prmprcage
and b.prmprlncr=c.lcmlcnrlc
and b.prmprstat in (2,3,4,5,6,7)
and c.lcmlcmrcb=0
order by 1,2

SELECT *FROM lcmlc ORDER BY lcmlcfini DESC 