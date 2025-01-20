--declaracion jurada de prestamos desembolsados
select distinct
a.gbagecage cod_cli,
TRIM(a.gbagenomb) nombre,
TRIM(a.gbagendid) num_doc,
round((((select e.gbpmtfdia
    from  gbpmt e)-a.gbagefnac)/365),0) edad,
decode(a.gbagesexo,1,'M',2,'F',null) sexo,
b.prmprnpre num_prestamo,
b.prmprfdes fecha_desembolso,
c.prtcrtcre tipo_credito,
TRIM(c.prtcrdesc) descripcion_cre,
b.prmprcmon moneda,
round(b.prmprsald,2) saldo,
b.prmprstat estado,
d.gbdbifech fecha_declaracion,
d.gbdbiifij ingresos_fijos,
d.gbdbiivar ingresos_variables,
d.gbdbitact total_activos,
d.gbdbitpas total_pasivos,
d.gbdbipatr patrimonio,
d.gbdbiisal asalariado,
d.gbdbiporc porcentaje_ing,
d.gbdbitotv total_ventas,
d.gbdbicper cant_personas,
d.gbdbiinde indice_tam_empresa,
d.gbdbitpre tam_empresa,
(Select count(*)
    from gblab f
    where f.gblabcage=a.gbagecage
    and f.gblabmrcb=0) cant_act,
decode (e.gblabmpri,1,'PRINCIPAL','SECUNDARIA') actividad,
decode(e.gblabtcar,1,'PROPIETARIO',2,'GERENTE',3,'EJECUTIVO',4,'EMPLEADO',5,'OBRERO',6,'EVENTUAL',7,'INDEPENDIENTE',99,'NO APLICA') tip_cargo,
TRIM(e.gblabdcar) cargo
from gbage a, prmpr b, prtcr c, outer gbdbi d, outer gblab e
where a.gbagecage = b.prmprcage
and b.prmprtcre = c.prtcrtcre
and a.gbagecage = d.gbdbicage
and a.gbagecage = e.gblabcage
and e.gblabmrcb = 0
and b.prmprstat in (2,3,5,6,7)
and b.prmprfdes between '2020-01-01' and '2021-12-31'
and d.gbdbifech=(select max(w.gbdbifech)
                 from gbdbi w
                 where w.gbdbicage=d.gbdbicage)
order by 1,7;