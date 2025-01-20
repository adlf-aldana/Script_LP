---------------- REPORTE DE SEGUROS TODO RIESGO NACIONAL SEGUROS-------------------------------
select distinct 
		gbdacnomb nombre, --1
		gbdacape1 ap_paterno, --2
		gbdacape2 ap_materno, --3
		gbdacape3 ap_casada, --4
		prdeucage cod_cliente, --5
		prdeunpre nro_prestamo, --6
		--gbagetdid tipo_id,
        decode(gbagetdid,1,'I',10,'I',3,'E') tipo_id, --7  
		gbagendid[1,12] nro_id, --8
       	gbagendid[13,20] extension, --9
       	gbagenaci[1,3] nacionalidad, --10
       	gbagefnac fecha_nac, --11
 		--prdeutres tipo_dudor,
   		decode(gbagecage,(select d.prdeucage
						from prdeu d
						where d.prdeunpre=prmprnpre
						and d.prdeucage=prmprcage),'D',(select e.prdeucage
												        from prdeu e
                                        				where e.prdeunpre=prmprnpre
                                        					and e.prdeucage=gbagecage
                                        					and e.prdeucage!=prmprcage),'C'), --12
		--gbagesexo genero,
       	decode(gbagesexo,1,'M',2,'F') genero, --13
      	mpageporc porcentaje, --14
      	prmprfdes fecha_desemb, --15
      	prmprmdes monto_desemb, --16
		--prmprsald saldo,
		--prdifsald saldo_dif,
      	decode(prmprnpre,(select b.prmprnpre
      	                   from prmpr b
      	                   where b.prmprnpre=prmprnpre
      	                   and b.prmprnpre=prdifnpre),(prdifsald + prmprsald),prmprnpre,prmprsald)saldo_tot, --17
		--prmprtcre tipo_credito,
		--prmprcclf cclf,
        decode(prmprcclf,2,'VIVIENDA',17,'VIVIENDA',27,'VIVIENDA',28,'VIVIENDA',29,'VIVIENDA',3,'CONSUMO',4,'CONSUMO',5,'CONSUMO',6,'CONSUMO'), --18
       	gbpmtfdia fecha_corte, --19
       	prmprcmon moneda, --20
       	prcgcmont porcentaje_cargo, --21
       	round((gbpmtfdia-gbagefnac)/365,2) edad,--22
       	prcgccarg cargo,--23
       	gbofidesc plaza,--24
		--'Cartera propia',
       	decode(prmprnmod,17,'Cartera Propia',50,'Cartera en administracion'),--24
       	prcgcmrcb marca_baja,--25
       	prmprfpvc fecha_vencido,--26
       	decode(prmprstat,2,'VIGENTE',3,'VIGENTE LARGO PLAZO',5,'VENCIDO',6,'EJECUCION'),--27
       	round((select g.prtdtimpp*-1
       			from prtdt g
       			where g.prtdtnpre=e.prtdtnpre
       				and g.prtdtftra=e.prtdtftra
       				and g.prtdtntra=e.prtdtntra
       				and g.prtdtmrcb=0
       				and g.prtdtimpp!=0
       				and g.prtdtccon in(26,27,210,211,212,213,214,215,216,217,218,219,
       									220,221,240,241,242,243,244,245,246,247,
       									315,320,321,322,815,820,821,822)),2) imp_desgravamen,--28
	   round((select g.prtdtimpp*-1 
       		from prtdt g
       		where g.prtdtnpre=e.prtdtnpre
       		and g.prtdtftra=e.prtdtftra
       		and g.prtdtntra=e.prtdtntra
       		and g.prtdtmrcb=0
       		and g.prtdtccon in(412,413)),2) imp_todoriesgo --29
from gbdac,prdeu,prmpr,gbage, prcgc,outer mpage,gbpmt,gbofi,outer prdif, prtdt e
where prdeucage=gbdaccage 
	and prdeunpre=prmprnpre
	and prmprnpre=e.prtdtnpre
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
	and e.prtdtftra=(select max(f.prtdtftra)
                 from prtdt f
                 where f.prtdtnpre=e.prtdtnpre
                 and f.prtdtmrcb=0
                 and f.prtdtimpp!=0
                 and f.prtdtccon in(26,27,210,211,212,213,214,215,216,217,
                 218,219,220,221,240,241,242,243,244,245,246,247,412,413,
                 315,320,321,322,815,820,821,822))
 --   and prmprnpre in(15410088,15046189,10046709,15000051)
	order by 6;