-- TRANSACCIONES QUE TIENEN FORMULARIO PCC01
--SCRIPT 1 -- 181 FORMULARIOS / VENTANILLA - DEPOSITO
select c.catrnndoc NUM_TRAN,--1
	c.catrnftra FECHA,--2
	c.catrnhora HORA_FORM,--3
	'' NUM_CTA_ORI,--4
	'' NOMB_CTA_ORI,--5
	b.camcancta NUM_CTA_DES,--6
	TRIM(a.gbagenomb) NOMBRE_CTA_DES,--7
	h.uifoucage COD_CLI,--8
	TRIM(h.uifounomb) NOMBRE,--9
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, 1, LENGTH(h.uifoundid) - 2)),
						TRIM(h.uifoundid)) DOCUMENTO_IDENTIDAD,--10
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, LENGTH(h.uifoundid) - 1, LENGTH(h.uifoundid))),
						NULL) EXPEDIDO,--11
--	d.catcadesc PRODUCTO_ASOCIADO,--12
	'CAJA DE AHORRO' PRODUCTO_ASOCIADO,--12
	'VENTANILLA' CANAL_TRAN,--13
	TRIM(e.catmvdesc) DESC_TRAN,--14
	'DEPOSITO EN CUENTA DEL PASIVO' DESC_TRAN_ASFI,--15
	decode(c.catrnplaz ,20,'LA PAZ',
						30,'COCHABAMBA',
						50,'POTOSI',
						80,'BENI',
						90,'PANDO') SUCURSAL,--16
	TRIM(f.gbofidesc) AGENCIA,--17
	round(decode(c.catrncmon,1,((c.catrnimpo*-1)/(select n.gbpmttcof from gbpmt n)),
							2,(c.catrnimpo*-1),2))IMPORTE_SUS,--18
	round(decode(c.catrncmon,2,((c.catrnimpo*-1)*(select n.gbpmttcof from gbpmt n)),
							1,(c.catrnimpo*-1),2))IMPORTE_BS,--19				
	decode(c.catrncmon,1,'MN',2,'ME') MONEDA,	--20
	round(sum(c.catrnimpo*-1),2) IMP_MON_ORIG, --21
	h.uifoumtra MOTIVO, --22
	g.uitrpotra ORIGEN,--23
	g.uitrpdtra DESTINO,--24
	TRIM(a.gbagenomb) NOMBRE_APELLIDO_BEN,--25
	a.gbagecage COD_CLI_BEN,--26
	g.uitrpnfor OPER_PCC,--27
	'INGRESO' TIPO_OPERACION,--28
	c.catrnglos GLOSA,--29 
	decode(a.gbagetper,1,'Persona Natural',
						'Persona Juridica') TIPO_PERSONA,--30
	a.gbageciiu COD_ACT_ECO--31
from gbage a, camca b, catrn c, catca d, catmv e, gbofi f, uitrp g, uifou h, outer uidpe j
where a.gbagecage=b.camcacage
and b.camcancta=c.catrnncta
and b.camcatpca=d.catcatpca
and c.catrnpref=e.catmvpref
and c.catrncorr=e.catmvcorr
and c.catrnagen=f.gbofinofi
AND c.catrnndoc=g.uitrpntra
--and g.uitrpntra=h.uifountra
AND g.uitrpnfor = h.uifounfor 
and H.uifounfor=j.uidpenfor
and c.catrnftra between '2023-01-01' and '2023-07-31'
and (c.catrnimpo*-1)>0
and c.catrnpref=51
and c.catrncorr=1
and c.catrnstat=0
--AND b.camcancta = 3052292885
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,22,23,24,25,26,27,29,30,31;
union;
-- SCRIPT 2 -- 132 FRORMULARIO / VENTANILLA - RETIRO
select c.catrnndoc NUM_TRAN,--1
	c.catrnftra FECHA,--2
	c.catrnhora HORA_FORM,--3
	b.camcancta NUM_CTA_ORI,--4
	TRIM(a.gbagenomb) NOMB_CTA_ORI,--5
	'' NUM_CTA_DES,--6
	'' NOMBRE_CTA_DES,--7
	h.uifoucage COD_CLI,--8
	TRIM(h.uifounomb) NOMBRE,--9
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, 1, LENGTH(h.uifoundid) - 2)),
						TRIM(h.uifoundid)) DOCUMENTO_IDENTIDAD,--10
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, LENGTH(h.uifoundid) - 1, LENGTH(h.uifoundid))),
						NULL) EXPEDIDO,--11
	'CAJA DE AHORRO' PRODUCTO_ASOCIADO,--12
	'VENTANILLA' CANAL_TRAN,--13
	TRIM(e.catmvdesc) DESC_TRAN,--14
	'RETIRO EN CUENTA DEL PASIVO' DESC_TRAN_ASFI,--15
	decode(c.catrnplaz ,20,'LA PAZ',
						30,'COCHABAMBA',
						50,'POTOSI',
						80,'BENI',
						90,'PANDO') SUCURSAL,--16
	f.gbofidesc AGENCIA,--17
	round(decode(c.catrncmon,1,((c.catrnimpo)/(select n.gbpmttcof from gbpmt n)),
							2,(c.catrnimpo),2))IMPORTE_SUS,--18
	round(decode(c.catrncmon,2,((c.catrnimpo)*(select n.gbpmttcof from gbpmt n)),
							1,(c.catrnimpo),2))IMPORTE_BS,--19				
	decode(c.catrncmon,1,'MN',2,'ME') MONEDA,	--20
	round(sum(c.catrnimpo),2) IMP_MON_ORIG, --21
	h.uifoumtra MOTIVO, --22
	g.uitrpotra ORIGEN,--23
	g.uitrpdtra DESTINO,--24
	TRIM(a.gbagenomb) NOMBRE_APELLIDO_BEN,--25
	a.gbagecage COD_CLI_BEN,--26
	uifounfor OPER_PCC,--27
	'EGRESO' TIPO_OPERACION,--28
	c.catrnglos GLOSA,--29 *?
	decode(a.gbagetper,1,'Persona Natural',
					'Persona Juridica') TIPO_PERSONA,--30
	a.gbageciiu COD_ACT_ECO--31
From gbage a,camca b,catrn c,catca d,catmv e, gbofi f,uitrp g,uifou h,outer uidpe J
where a.gbagecage=b.camcacage
and b.camcancta=c.catrnncta
and b.camcatpca=d.catcatpca
and c.catrnpref=e.catmvpref
and c.catrncorr=e.catmvcorr
and c.catrnagen=f.gbofinofi
AND c.catrnndoc=g.uitrpntra
--and g.uitrpntra=h.uifountra
AND g.uitrpnfor = h.uifounfor 
and h.uifounfor=j.uidpenfor
and c.catrnftra between '2023-01-01' and '2023-07-31'
and c.catrnimpo>0
and c.catrnpref=51
and c.catrncorr=2
and c.catrnstat=0
and b.camcancta = 3051779446
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,22,23,24,25,26,27,29,30,31;
union;
-- SCRIPT 6 -- 7 FORMULARIOS / TETRN - DEBITO
SELECT DISTINCT c.tetrnntra NUM_TRAN,--1
	c.tetrnftra FECHA,--2
	c.tetrnhora HORA_FORM,--3
	h.uifounopr NUM_CTA_ORI,--4
	TRIM(h.uifounomb) NOMB_CTA_ORI,--5
	'' NUM_CTA_DES,--6
	'' NOMBRE_CTA_DES,--7
	h.uifoucage COD_CLI,--8
	TRIM(h.uifounomb) NOMBRE,--9
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, 1, LENGTH(h.uifoundid) - 2)),
						TRIM(h.uifoundid)) DOCUMENTO_IDENTIDAD,--10
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, LENGTH(h.uifoundid) - 1, LENGTH(h.uifoundid))),
						NULL) EXPEDIDO,--11
	'TRANS. ELECTRONICAS' PRODUCTO_ASOCIADO,--12
	'TRANS. ELECTRONICAS' CANAL_TRAN,--13
	TRIM(d.catmvdesc) DESC_TRAN,--14
	''DESC_TRAN_ASFI,--15
	decode(c.tetrnplaz ,20,'LA PAZ',
						30,'COCHABAMBA',
						50,'POTOSI',
						80,'BENI',
						90,'PANDO') SUCURSAL,--16
	f.gbofidesc AGENCIA,--17
	round(decode(h.uifoucmon,1,((h.uifouimpo)/(select n.gbpmttcof from gbpmt n)),
							2,(h.uifouimpt),2))IMPORTE_SUS,--18
	round(decode(h.uifoucmon,2,((h.uifouimpt)*(select n.gbpmttcof from gbpmt n)),
							1,(h.uifouimpo),2))IMPORTE_BS,--19				
	decode(h.uifoucmon,1,'MN',2,'ME') MONEDA,	--20
	round(sum(h.uifouimpo),2) IMP_MON_ORIG, --21
	h.uifoumtra MOTIVO, --22
	h.uifoudesc ORIGEN,--23
	h.uifoudetr DESTINO,--24
	TRIM(a.gbagenomb) NOMBRE_APELIIDO_BEN,--25
	a.gbagecage COD_CLI_BEN,--26
	h.uifounfor OPER_PCC,--27
	'EGRESO' TIPO_OPERACION,--28
	c.tetrnglos GLOSA,--29 *?
	decode(a.gbagetper,1,'Persona Natural',
						'Persona Juridica') TIPO_PERSONA,--30
	a.gbageciiu COD_ACT_ECO--31
from gbage a, tetrn c, catmv d, gbofi f, uifou h, outer uidpe j--, catmv e
where   c.tetrnntra= h.uifountra
		and c.tetrnftra=h.uifoufreg
		and h.uifounfor=j.uidpenfor
		and c.tetrnagen=f.gbofinofi
		and c.tetrnipre=d.catmvpref
		and c.tetrnicor= d.catmvcorr
		and h.uifoucage=a.gbagecage
		and c.tetrnftra between '2023-01-01' and '2023-07-31'		
		and c.tetrnipre=10
		and c.tetrnicor in (30,31) -- ABONO: 31 -  DEPOSITO: 30
--		and h.uifoupref= e.catmvpref
--		and h.uifoucorr= e.catmvcorr
		and h.uifoumrcb = 0
--		AND c.tetrnntra = 92425
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,22,23,24,25,26,27,29,30,31
UNION
--SCRIPT 17-- TRANSFERENCIAS ELECTRONICAS -DEBITO
select CAST (h.uifountra AS NUMERIC(16)) NUM_TRAN,--1
	h.uifoufreg FECHA,--2
	h.uifouhora HORA_FORM,--3
	h.uifounopr NUM_CTA_ORI,--4
	TRIM(h.uifounomb) NOMB_CTA_ORI,--5
	c.tetrnnctx NUM_CTA_DES,--6
	TRIM(c.tetrnnomx) NOMBRE_CTA_DES,--7 --NOMBRE TITULAR
	a.gbagecage COD_CLI,--8
	TRIM(h.uifounomb) NOMBRE,--9
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, 1, LENGTH(h.uifoundid) - 2)),
						TRIM(h.uifoundid)) DOCUMENTO_IDENTIDAD,--10
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, LENGTH(h.uifoundid) - 1, LENGTH(h.uifoundid))),
						NULL) EXPEDIDO,--11
	'TRANSFERENCIA' PRODUCTO_ASOCIADO,--12
	'TRANS. ELECTRONICAS' CANAL_TRAN,--13
	TRIM(h.uifoudesc) DESC_TRAN,--14
	''DESC_TRAN_ASFI,--15
	decode(h.uifouplaz ,20,'LA PAZ',
						30,'COCHABAMBA',
						50,'POTOSI',
						80,'BENI',
						90,'PANDO') SUCURSAL,--16
	f.gbofidesc AGENCIA,--17
	round(decode(c.tetrncmon,1,((c.tetrnimpo)/(select n.gbpmttcof from gbpmt n)),
							2,(c.tetrnimpo),2))IMPORTE_SUS,--18
	round(decode(c.tetrncmon,2,((c.tetrnimpo)*(select n.gbpmttcof from gbpmt n)),
							1,(c.tetrnimpo),2))IMPORTE_BS,--19				
	decode(c.tetrncmon,1,'MN',2,'ME') MONEDA,	--20
	round(sum(c.tetrnimpo),2) IMP_MON_ORIG, --21
	TRIM(h.uifoudesc) MOTIVO, --22
	TRIM(h.uifoumtra) ORIGEN,--23
	TRIM(h.uifoudetr) DESTINO,--24
	TRIM(a.gbagenomb) NOMBRE_APELIIDO_BEN,--25
	a.gbagecage COD_CLI_BEN,--26
	h.uifounfor OPER_PCC,--27
	'EGRESO' TIPO_OPERACION,--28
	'' GLOSA,--29 *?
	decode(a.gbagetper,1,'Persona Natural',
						'Persona Juridica') TIPO_PERSONA,--30
	a.gbageciiu COD_ACT_ECO--31
from gbage a, tetrn c, gbofi f, uifou h, uitrp j
where c.tetrnntra = uitrpntra
		and j.uitrpntra = h.uifountra
		and c.tetrnnvia = uitrpnopr
		and j.uitrpnopr = h.uifounopr
		and j.uitrpcage = a.gbagecage
		and c.tetrnftra = h.uifoufreg
		and h.uifouncaj = j.uitrpncaj
		and h.uifoumrcb = 0
		and h.uifouagen= f.gbofinofi
		and h.uifoufreg between '2023-01-01' and '2023-07-31'	
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,22,23,24,25,26,27,29,30,31
UNION
--SCRIPT 10-- 53 FORMULARIOS: DPF - DEPOSITO
SELECT c.pfthdtdes NUM_TRAN,--1
	c.pfthdftra FECHA,--2
	c.pfthdhora HORA_FORM,--3
	'' NUM_CTA_ORI,--4
	'' NOMB_CTA_ORI,--5
	h.uifounopr NUM_CTA_DES,--6
	TRIM(h.uifounomb) NOMBRE_CTA_DES,--7 --NOMBRE TITULAR
	h.uifoucage COD_CLI,--8
	TRIM(h.uifounomb) NOMBRE,--9
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, 1, LENGTH(h.uifoundid) - 2)),
						TRIM(h.uifoundid)) DOCUMENTO_IDENTIDAD,--10
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, LENGTH(h.uifoundid) - 1, LENGTH(h.uifoundid))),
						NULL) EXPEDIDO,--11
	'DPF' PRODUCTO_ASOCIADO,--12
	'VENTANILLA' CANAL_TRAN,--13
	h.uifoudesc DESC_TRAN,--14
	''DESC_TRAN_ASFI,--15
	decode(h.uifouplaz ,20,'LA PAZ',
						30,'COCHABAMBA',
						50,'POTOSI',
						80,'BENI',
						90,'PANDO') SUCURSAL,--16
	f.gbofidesc AGENCIA,--17
	round(decode(c.pfthdcmon,1,((c.pfthdimpt*-1)/(select n.gbpmttcof from gbpmt n)),
							2,(c.pfthdimpt*-1),2))IMPORTE_SUS,--18
	round(decode(c.pfthdcmon,2,((c.pfthdimpt*-1)*(select n.gbpmttcof from gbpmt n)),
							1,(c.pfthdimpt*-1),2))IMPORTE_BS,--19				
	decode(c.pfthdcmon,1,'MN',2,'ME') MONEDA,	--20
	round(sum(c.pfthdimpt*-1),2) IMP_MON_ORIG, --21
	h.uifoudetr MOTIVO, --22
	h.uifoudesc ORIGEN,--23
	h.uifoudetr DESTINO,--24
	TRIM(a.gbagenomb) NOMBRE_APELIIDO_BEN,--25
	a.gbagecage COD_CLI_BEN,--26
	h.uifounfor OPER_PCC,--27
	'INGRESO' TIPO_OPERACION,--28
	TRIM(h.uifoudesc) GLOSA,--29 *? 
	decode(a.gbagetper,1,'Persona Natural',
						'Persona Juridica') TIPO_PERSONA,--30
	a.gbageciiu COD_ACT_ECO--31
from gbage a, pfthd c, gbofi f, uifou h, outer uidpe j
where   c.pfthdtdes= h.uifountra
		and h.uifounfor= j.uidpenfor
		and c.pfthdndep=h.uifounopr
		and c.pfthdagen= f.gbofinofi
		and h.uifoucage=a.gbagecage
		and h.uifoufreg between '2023-01-01' and '2023-07-31'	
		and h.uifoupref = 999
		and h.uifoucorr = 999	
		and h.uifoumrcb = 0 
		AND (c.pfthdimpp*-1)>0
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,22,23,24,25,26,27,29,30,31
UNION
--SCRIPT 11-- 5 FORMULARIOS: DPF - RETIRO
select c.pfthdtdes NUM_TRAN,--1
	c.pfthdftra FECHA,--2
	c.pfthdhora HORA_FORM,--3
	h.uifounopr NUM_CTA_ORI,--4
	TRIM(h.uifounomb) NOMB_CTA_ORI,--5
	'' NUM_CTA_DES,--6
	'' NOMBRE_CTA_DES,--7
	h.uifoucage COD_CLI,--8
	TRIM(h.uifounomb) NOMBRE,--9
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, 1, LENGTH(h.uifoundid) - 2)),
						TRIM(h.uifoundid)) DOCUMENTO_IDENTIDAD,--10
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, LENGTH(h.uifoundid) - 1, LENGTH(h.uifoundid))),
						NULL) EXPEDIDO,--11
	'DPF' PRODUCTO_ASOCIADO,--12
	'VENTANILLA' CANAL_TRAN,--13
	h.uifoudesc DESC_TRAN,--14
	''DESC_TRAN_ASFI,--15
	decode(h.uifouplaz ,20,'LA PAZ',
						30,'COCHABAMBA',
						50,'POTOSI',
						80,'BENI',
						90,'PANDO') SUCURSAL,--16
	f.gbofidesc AGENCIA,--17
	round(decode(c.pfthdcmon,1,((c.pfthdimpt)/(select n.gbpmttcof from gbpmt n)),
							2,(c.pfthdimpt),2))IMPORTE_SUS,--18
	round(decode(c.pfthdcmon,2,((c.pfthdimpt)*(select n.gbpmttcof from gbpmt n)),
							1,(c.pfthdimpt),2))IMPORTE_BS,--19				
	decode(c.pfthdcmon,1,'MN',2,'ME') MONEDA,	--20
	round(sum(c.pfthdimpt),2) IMP_MON_ORIG, --21
	trim(h.uifoudetr) MOTIVO, --22
	trim(h.uifoudesc) ORIGEN,--23
	trim(h.uifoudetr) DESTINO,--24
	TRIM(a.gbagenomb) NOMBRE_APELIIDO_BEN,--25
	a.gbagecage COD_CLI_BEN,--26
	h.uifounfor OPER_PCC,--27
	'EGRESO' TIPO_OPERACION,--28
	h.uifoudesc GLOSA,--29 *? 
	decode(a.gbagetper,1,'Persona Natural',
						'Persona Juridica') TIPO_PERSONA,--30
	a.gbageciiu COD_ACT_ECO--31
from gbage a, pfthd c, gbofi f, uifou h, outer uidpe j
where   c.pfthdtdes= h.uifountra
		and h.uifounfor= j.uidpenfor
		and c.pfthdndep=h.uifounopr
		and c.pfthdagen= f.gbofinofi
		and h.uifoucage=a.gbagecage
		and h.uifoufreg between '2023-01-01' and '2023-07-31'	
		and h.uifoupref = 999
		and h.uifoucorr = 999	
		and h.uifoumrcb = 0 
		AND (c.pfthdimpp)>0
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,22,23,24,25,26,27,29,30,31
UNION
--SCRIPT 8 -- 82 FORMULARIOS: COMPRA/VENTA DIVISAS
select distinct c.cjtrnndoc NUM_TRAN,--1
	c.cjtrnftra FECHA,--2
	c.cjtrnhora HORA_FORM,--3
	h.uifounopr NUM_CTA_ORI,--4
	h.uifounomb NOMB_CTA_ORI,--5
	'' NUM_CTA_DES,--6
	'' NOMBRE_CTA_DES,--7 --NOMBRE TITULAR
	h.uifoucage COD_CLI,--8
	h.uifounomb NOMBRE,--9
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, 1, LENGTH(h.uifoundid) - 2)),
						TRIM(h.uifoundid)) DOCUMENTO_IDENTIDAD,--10
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, LENGTH(h.uifoundid) - 1, LENGTH(h.uifoundid))),
						NULL) EXPEDIDO,--11
	decode(c.cjtrnmorg,5,'CAJA DE AHORRRO',
					6,'COMPRA-VENTA',
					7,'DPF',
					17,'PRESTAMOS',
					50,'CARTERA ADM',
					66,'TRANS. ELECTRONICAS') PRODUCTO_ASOCIADO,--12
	decode(c.cjtrnmorg,5,'CAJA DE AHORRO',
					6,'CAJA',
					7,'PLATAFORMA',
					17,'CARTERA',
					50,'CARTERA',
					66,'TRANS. ELECTRONICAS') CANAL_TRAN,--13
	TRIM(c.cjtrngls1) DESC_TRAN,--14
	''DESC_TRAN_ASFI,--15
	decode(c.cjtrnplaz ,20,'LA PAZ',
						30,'COCHABAMBA',
						50,'POTOSI',
						80,'BENI',
						90,'PANDO') SUCURSAL,--16
	f.gbofidesc AGENCIA,--17
	round(decode(c.cjtrncmon ,1,((c.cjtrnimpo)/(select n.gbpmttcof from gbpmt n)),
							2,(c.cjtrnimpo),2))IMPORTE_SUS,--18
	round(decode(c.cjtrncmon,2,((c.cjtrnimpo)*(select n.gbpmttcof from gbpmt n)),
							1,(c.cjtrnimpo),2))IMPORTE_BS,--19				
	decode(c.cjtrncmon,1,'MN',2,'ME') MONEDA,	--20
	round(sum(c.cjtrnimpo),2) IMP_MON_ORIG, --21
	h.uifoudetr MOTIVO, --22
	h.uifoudesc ORIGEN,--23
	h.uifoudetr DESTINO,--24
	TRIM(a.gbagenomb) NOMBRE_APELIIDO_BEN,--25
	a.gbagecage COD_CLI_BEN,--26
	h.uifounfor OPER_PCC,--27
	'INGRESO' TIPO_OPERACION,--28 *******?
	TRIM(c.cjtrngls1) GLOSA,--29 *******?
	decode(a.gbagetper,1,'Persona Natural',
						'Persona Juridica') TIPO_PERSONA,--30
	a.gbageciiu COD_ACT_ECO--31
from gbage a, cjtrn c, gbofi f, uifou h, outer uidpe j
where   c.cjtrnndoc= h.uifountra
		and h.uifounfor=j.uidpenfor
		AND c.cjtrnmorg=h.uifoumorg
		and c.cjtrnagen=f.gbofinofi
		and c.cjtrnmorg=6
		and h.uifoucage=a.gbagecage
		and c.cjtrnftra between '2023-01-01' and '2023-07-31'	
		and h.uifoumrcb = 0 --and uifounfor=24141
		AND c.cjtrnimpo>0
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,22,23,24,25,26,27,29,30,31
UNION
--SCRIPT 9 -- 9 FORMULARIOS: prhtr - uifou
select distinct c.prhtrntra NUM_TRAN,--1
	c.prhtrftra FECHA,--2
	c.prhtrhora HORA_FORM,--3
	'' NUM_CTA_ORI,--4
	'' NOMB_CTA_ORI,--5
	h.uifounopr NUM_CTA_DES,--6
	trim(h.uifounomb) NOMBRE_CTA_DES,--7 --NOMBRE TITULAR
	h.uifoucage COD_CLI,--8
	trim(h.uifounomb) NOMBRE,--9
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, 1, LENGTH(h.uifoundid) - 2)),
						TRIM(h.uifoundid)) DOCUMENTO_IDENTIDAD,--10
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, LENGTH(h.uifoundid) - 1, LENGTH(h.uifoundid))),
						NULL) EXPEDIDO,--11
	'PRESTAMOS' PRODUCTO_ASOCIADO,--12
	DECODE (prhtrcvia,1,'VENTANILLA',5,'CAJA DE AHORRO') CANAL_TRAN,--13
	trim(c.prhtrglos) DESC_TRAN,--14
	''DESC_TRAN_ASFI,--15
	decode(c.prhtrplaz ,20,'LA PAZ',
						30,'COCHABAMBA',
						50,'POTOSI',
						80,'BENI',
						90,'PANDO') SUCURSAL,--16
	f.gbofidesc AGENCIA,--17
	round(decode(c.prhtrcmon,1,((c.prhtrimpo)/(select n.gbpmttcof from gbpmt n)),
							2,(c.prhtrimpo),2))IMPORTE_SUS,--18
	round(decode(c.prhtrcmon,2,((c.prhtrimpo)*(select n.gbpmttcof from gbpmt n)),
							1,(c.prhtrimpo),2))IMPORTE_BS,--19				
	decode(c.prhtrcmon,1,'MN',2,'ME') MONEDA,	--20
	round(sum(c.prhtrimpo),2) IMP_MON_ORIG, --21
	h.uifoudetr MOTIVO, --22
	h.uifoudesc ORIGEN,--23
	h.uifoudetr DESTINO,--24
	TRIM(a.gbagenomb) NOMBRE_APELIIDO_BEN,--25
	a.gbagecage COD_CLI_BEN,--26
	h.uifounfor OPER_PCC,--27
	'INGRESO' TIPO_OPERACION,--28 *******?
	c.prhtrglos GLOSA,--29 *******? 
	decode(a.gbagetper,1,'Persona Natural',
						'Persona Juridica') TIPO_PERSONA,--30
	a.gbageciiu COD_ACT_ECO--31
from gbage a, prhtr c, gbofi f, uifou h, outer uidpe j
where   c.prhtrntra= h.uifountra
		and h.uifounfor=j.uidpenfor
		AND c.prhtrnpre=h.uifounopr
		and c.prhtragen=f.gbofinofi
		and c.prhtrmrcb = 0
		and h.uifoumrcb = 0
		and h.uifoucage=a.gbagecage
		and h.uifoupref= 999
		and h.uifoucorr= 999
		and c.prhtrftra between '2023-01-01' and '2023-07-31'		
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,22,23,24,25,26,27,29,30,31
UNION 
--SCRIPT 12-- 17 FORMULARIOS: USUARIOS FINANCIEROS - DEPOSITOS
select distinct c.catrnndoc NUM_TRAN,--1
	h.uifoufreg FECHA,--2
	h.uifouhora HORA_FORM,--3
	'' NUM_CTA_ORI,--4
	'' NOMB_CTA_ORI,--5
	h.uifounopr NUM_CTA_DES,--6
	'' NOMBRE_CTA_DES,--7 --NOMBRE TITULAR
	h.uifoucage COD_CLI,--8
	h.uifounomb NOMBRE,--9
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, 1, LENGTH(h.uifoundid) - 2)),
						TRIM(h.uifoundid)) DOCUMENTO_IDENTIDAD,--10
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, LENGTH(h.uifoundid) - 1, LENGTH(h.uifoundid))),
						NULL) EXPEDIDO,--11
	'CAJA DE AHORRO' PRODUCTO_ASOCIADO,--12
	'VENTANILLA' CANAL_TRAN,--13
	'DEPOSITO' DESC_TRAN,--14
	''DESC_TRAN_ASFI,--15
	decode(c.catrnplaz ,20,'LA PAZ',
						30,'COCHABAMBA',
						50,'POTOSI',
						80,'BENI',
						90,'PANDO') SUCURSAL,--16
	f.gbofidesc AGENCIA,--17
	round(decode(c.catrncmon,1,((c.catrnimpo*-1)/(select n.gbpmttcof from gbpmt n)),
							2,(c.catrnimpo*-1),2))IMPORTE_SUS,--18
	round(decode(c.catrncmon,2,((c.catrnimpo*-1)*(select n.gbpmttcof from gbpmt n)),
							1,(c.catrnimpo*-1),2))IMPORTE_BS,--19				
	decode(c.catrncmon,1,'MN',2,'ME') MONEDA,	--20
	round(sum(c.catrnimpo*-1),2) IMP_MON_ORIG, --21
	c.catrnglos MOTIVO, --22
	h.uifoumtra ORIGEN,--23
	h.uifoudetr DESTINO,--24
	TRIM(a.gbagenomb) NOMBRE_APELIIDO_BEN,--25
	a.gbagecage COD_CLI_BEN,--26
	uifounfor OPER_PCC,--27
	'INGRESO' TIPO_OPERACION,--28
	c.catrnglos GLOSA,--29 *?
	decode(a.gbagetper,1,'Persona Natural',
						'Persona Juridica') TIPO_PERSONA,--30
	a.gbageciiu COD_ACT_ECO--31
FROM gbage a, camca b, catrn c, gbofi f,  uifou h, outer uidpe j
--from catrn a, uifou b, gbofi e, outer uidpe c
WHERE a.gbagecage=b.camcacage
AND b.camcancta=c.catrnncta  
AND c.catrnndoc= h.uifountra
		and c.catrnncta=h.uifounopr
		AND c.catrnmorg= h.uifoumorg
		and c.catrnpref=h.uifoupref 
		and c.catrncorr=h.uifoucorr 
	--	and h.uifoucage=a.gbagecage
		and uifoufreg between '2023-01-01' and '2023-07-31'	
		and uifoumrcb = 0 
		AND c.catrnpref = 51
		AND c.catrncorr = 1
		and c.catrnagen= f.gbofinofi
		and h.uifounfor=j.uidpenfor
		and uifoucage not in  (select a.gbagecage
							   from gbage a  )
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,22,23,24,25,26,27,29,30,31
UNION
--SCRIPT 13-- 10 FORMULARIOS: DPF - DEPOSITOS
select distinct c.pfthdntra NUM_TRAN,--1
	h.uifoufreg FECHA,--2
	c.pfthdhora HORA_FORM,--3
	'' NUM_CTA_ORI,--4
	'' NOMB_CTA_ORI,--5
	h.uifounopr NUM_CTA_DES,--6
	trim(h.uifounomb) NOMBRE_CTA_DES,--7 --NOMBRE TITULAR
	h.uifoucage COD_CLI,--8
	trim(h.uifounomb) NOMBRE,--9
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, 1, LENGTH(h.uifoundid) - 2)),
						TRIM(h.uifoundid)) DOCUMENTO_IDENTIDAD,--10
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, LENGTH(h.uifoundid) - 1, LENGTH(h.uifoundid))),
						NULL) EXPEDIDO,--11
	'DPF' PRODUCTO_ASOCIADO,--12
	'VENTANILLA' CANAL_TRAN,--13
	'DEPOSITO' DESC_TRAN,--14
	'' DESC_TRAN_ASFI,--15
	decode(h.uifouplaz ,20,'LA PAZ',
						30,'COCHABAMBA',
						50,'POTOSI',
						80,'BENI',
						90,'PANDO') SUCURSAL,--16
	f.gbofidesc AGENCIA,--17
	round(decode(h.uifoucmon,1,((h.uifouimpo)/(select n.gbpmttcof from gbpmt n)),
							2,(h.uifouimpo),2))IMPORTE_SUS,--18
	round(decode(h.uifoucmon,2,((h.uifouimpo)*(select n.gbpmttcof from gbpmt n)),
							1,(h.uifouimpo),2))IMPORTE_BS,--19				
	decode(h.uifoucmon,1,'MN',2,'ME') MONEDA,	--20
	round(sum(h.uifouimpo),2) IMP_MON_ORIG, --21
	h.uifoudesc MOTIVO, --22
	h.uifoumtra ORIGEN,--23
	h.uifoudetr DESTINO,--24
	TRIM(a.gbagenomb) NOMBRE_APELIIDO_BEN,--25
	a.gbagecage COD_CLI_BEN,--26
	h.uifounfor OPER_PCC,--27
	'INGRESO' TIPO_OPERACION,--28
	h.uifoudesc GLOSA,--29 *? 
	decode(a.gbagetper,1,'Persona Natural',
						'Persona Juridica') TIPO_PERSONA,--30
	a.gbageciiu COD_ACT_ECO--31
from gbage a, pfthd c, gbofi f, uifou h, outer uidpe j
where   c.pfthdntra = h.uifountra
		and c.pfthdftra = h.uifoufreg
		and h.uifoucage=a.gbagecage
		and h.uifoufreg between '2023-01-01' and '2023-07-31'	
		and h.uifoumrcb = 0 
		and h.uifouagen= f.gbofinofi
		and h.uifounfor= j.uidpenfor
		and h.uifoupref=999
		and h.uifoucorr=999
		AND h.uifoumorg = 34
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,22,23,24,25,26,27,29,30,31
UNION
--SCRIPT 18-- 6 FORMULARIO: RETIRO CON CHEQUE/OPERACIONES CONTABILIDAD/CLIENTE
select distinct c.catrnntra NUM_TRAN,--1
	h.uifoufreg FECHA,--2
	h.uifouhora HORA_FORM,--3
	h.uifounopr NUM_CTA_ORI,--4
	'' NOMB_CTA_ORI,--5
	'' NUM_CTA_DES,--6
	'' NOMBRE_CTA_DES,--7 --NOMBRE TITULAR
	h.uifoucage COD_CLI,--8
	h.uifounomb NOMBRE,--9
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, 1, LENGTH(h.uifoundid) - 2)),
						TRIM(h.uifoundid)) DOCUMENTO_IDENTIDAD,--10
	decode(h.uifoutdid,1,TRIM(SUBSTR(h.uifoundid, LENGTH(h.uifoundid) - 1, LENGTH(h.uifoundid))),
						NULL) EXPEDIDO,--11
	'CAJA DE AHORRRO' PRODUCTO_ASOCIADO,--12
	decode (catrncorr,2,'VENTANILLA',3,'PLATAFORMA') CANAL_TRAN,--13
	e.catmvdesc DESC_TRAN,--14
	''DESC_TRAN_ASFI,--15
	decode(h.uifouplaz ,20,'LA PAZ',
						30,'COCHABAMBA',
						50,'POTOSI',
						80,'BENI',
						90,'PANDO') SUCURSAL,--16
	f.gbofidesc AGENCIA,--17
	round(decode(c.catrncmon,1,((c.catrnimpo)/(select n.gbpmttcof from gbpmt n)),
							2,(c.catrnimpo),2))IMPORTE_SUS,--18
	round(decode(c.catrncmon,2,((c.catrnimpo)*(select n.gbpmttcof from gbpmt n)),
							1,(c.catrnimpo),2))IMPORTE_BS,--19				
	decode(c.catrncmon,1,'MN',2,'ME') MONEDA,	--20
	round(sum(c.catrnimpo),2) IMP_MON_ORIG, --21
	c.catrnglos MOTIVO, --22
	h.uifoumtra ORIGEN,--23
	h.uifoudetr DESTINO,--24
	TRIM(a.gbagenomb) NOMBRE_APELIIDO_BEN,--25
	a.gbagecage COD_CLI_BEN,--26
	uifounfor OPER_PCC,--27
	'' TIPO_OPERACION,--28
	c.catrnglos GLOSA,--29 *?
	decode(a.gbagetper,1,'Persona Natural',
					 'Persona Juridica') TIPO_PERSONA,--30
	a.gbageciiu COD_ACT_ECO--31
from gbage a, camca b, catrn c, catmv e, gbofi f, uifou h, outer uidpe j
where a.gbagecage=b.camcacage
and b.camcancta=c.catrnncta
AND c.catrnntra= h.uifountra
		and c.catrnncta=h.uifounopr
		and c.catrnpref = e.catmvpref
		and c.catrncorr = e.catmvcorr
		and h.uifoufreg between '2023-01-01' and '2023-07-31'	
		AND c.catrnpref = 1
		AND c.catrncorr IN (2,3)
		and c.catrnagen= f.gbofinofi
		and h.uifounfor= j.uidpenfor
		and h.uifoumrcb = 0
		and h.uifoumorg = 34 
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,22,23,24,25,26,27,29,30,31
ORDER BY 2,23,1;