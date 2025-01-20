---------------- REPORTE DE SEGUROS TODO RIESGO NACIONAL SEGUROS-------------------------------
select gbdacnomb nombre,
		gbdacape1 ap_paterno,
		gbdacape2 ap_materno,
		gbdacape3 ap_casada,
		prdeucage cod_cliente,
		prdeunpre nro_prestamo,
--		gbagetdid tipo_id,
        decode(gbagetdid,1,'I',10,'I',3,'E')tipo_id,
		gbagendid[1,12] nro_id,
       	gbagendid[13,20] extension,
       	gbagenaci[1,3] nacionalidad,
       	gbagefnac fecha_nac,
 --      	prdeutres tipo_dudor,
   		decode(gbagecage,(select d.prdeucage
												   from prdeu d
												   where d.prdeunpre=prmprnpre
												   and d.prdeucage=prmprcage),'D',(select e.prdeucage
												                                          from prdeu e
                                        												  where e.prdeunpre=prmprnpre
                                        												  and e.prdeucage=gbagecage
                                        												  and e.prdeucage!=prmprcage),'C'),
--      gbagesexo genero,
       	decode(gbagesexo,1,'M',2,'F') genero,
      	mpageporc porcentaje,
      	prmprfdes fecha_desemb,
      	prmprmdes monto_desemb,
--      	prmprsald saldo,
--      	prdifsald saldo_dif,
      	decode(prmprnpre,(select b.prmprnpre
      	                   from prmpr b
      	                   where b.prmprnpre=prmprnpre
      	                   and b.prmprnpre=prdifnpre),(prdifsald + prmprsald),prmprnpre,prmprsald)saldo_tot,
--       	prmprtcre tipo_credito,
--       	prmprcclf cclf,
        decode(prmprcclf,2,'VIVIENDA',17,'VIVIENDA',27,'VIVIENDA',28,'VIVIENDA',29,'VIVIENDA',3,'CONSUMO',4,'CONSUMO',5,'CONSUMO',6,'CONSUMO'),
       	gbpmtfdia fecha_corte,
       	prmprcmon moneda,
       	prcgcmont porcentaje_cargo,
       	round((gbpmtfdia-gbagefnac)/365,2) edad,
       	prcgccarg cargo,
       	gbofidesc plaza,
--       	'Cartera propia',
       	decode(prmprnmod,17,'Cartera Propia',50,'Cartera en administracion'),
       	prcgcmrcb marca_baja,
       	prmprfpvc fecha_vencido,
       	decode(prmprstat,2,'VIGENTE',3,'VIGENTE LARGO PLAZO',5,'VENCIDO',6,'EJECUCION')
from gbdac,prdeu,prmpr,gbage, prcgc,outer mpage,gbpmt,gbofi,outer prdif
where prdeucage=gbdaccage 
	and prdeunpre=prmprnpre
	and prdeucage=gbagecage 
	and prdeunpre=prcgcnpre 
	and prdeunpre=mpagenpre 
	and prdeucage=mpagecage
 	and prmprstat in(2,3,5,6)
    and prdeutres=1
	and prcgccarg in(412,413)
	and prcgcmrcb=0
	and mpageporc>0
	and prmprplaz=gbofinofi
	and prmprnpre=prdifnpre
	and prdifcarg in(420,421,424,425)
	and prdifmrcb=0
 --   and prmprnpre in(15410088,15046189,10046709,15000051)
	order by 6
