-- Reporte que contiene información contable
-- CNDTR Ult_mod By AMY 13-12-2021
select a.cndtrcnta cta_ctble,
  trim(a.cndtrglos) glosa,
  a.cndtrfdoc fecha,
  round(a.cndtrimpi,2) importe,
  a.cndtrcmon mon,
  CAST(a.cndtrcamb AS char(4)) || '00000000000003' tipo_cambio_N
from cndtr a
--where a.cndtrfdoc between '{fei}' and '{fef}' 
where a.cndtrfdoc between '2022-01-01' and '2022-05-20' 
and a.cndtrmrcb=0
order by 3,1,2;