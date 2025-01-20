--ANEXO III.1 
/* BASE DE DATOS CAJA DE AHORRO - AE */  --03/10/2021
select distinct 
	a.gbagecage nro_socio, --1
	a.gbagenomb NOMBRE_Y_APELLIDO, --2
	TRIM(a.gbagendid[1,12]) NRO_CEDULA_DE_IDENTIDAD,--3
	a.gbagenruc NRO_NIT,--4
	a.gbagefnac FECHA_DE_NACIMIENTO,--5
	b.camcafapt FECHA_DE_APERTURA,--6
	b.camcancta NRO_CTA_SISTEMA, --7
	b.camcafumv FECHA_ULTIMO_MOVIMIENTO,--8
	b.camcastat ESTADO,--9 h.cacondesc ESTADO,--9
	b.camcafpig MONTO_PIGNORADO,--10
	round((b.camcasact *-1),2) SALDO_EN_SU_MONEDA,--11
	round(decode(b.camcacmon,1, (b.camcasact *-1), 2,((b.camcasact *-1)* (select gbpmttcof
																			from gbpmt) )), 2) SALDO_BS,--12
	b.camcacmon MONEDA,--13
	b.camcaagen CODIGO_AGENCIA,--14
	'' CANTIDAD_CERT_APORTACION,--15
	'' IMPORTE_CERT_APORTACION,--16
	round(decode(b.camcatpca,(select cc.catcatpca
						      from catca cc
						      where cc.catcatpca= b.camcatpca
						      and cc.catcatpca not in(select p.caprptpca
						                              from caprp p
						                              where p.caprptpca=cc.catcatpca)
					      							  and b.camcatasa=0),
					      	d.canidtasa,
					      	(select cc.catcatpca
  							from catca cc
    					    where cc.catcatpca=b.camcatpca
    					    and cc.catcatpca not in(select p.caprptpca
                                                    from caprp p
                                                    where p.caprptpca=cc.catcatpca)
													and b.camcatasa>0),
							b.camcatasa,
							(select cc.catcatpca
                            from catca cc
							where cc.catcatpca= b.camcatpca
							and cc.catcatpca in(select p.caprptpca
						                        from caprp p
						                        where p.caprptpca=cc.catcatpca)),d.canidtasa),2) TASA_DE_INTERES--17
from gbage a,camca b,catca c,canid d,cacon e,capro f,gbofi g,cacon h,outer catcm i,gbcon j,outer gbcon k
where a.gbagecage=b.camcacage
and b.camcatpca=c.catcatpca 
and b.camcatpca=d.canidtpca
and b.camcacmon=d.canidcmon
and b.camcamane=e.caconcorr
and b.camcancta=f.caproncta
and b.camcaagen=g.gbofinofi
and b.camcastat=h.caconcorr
and h.caconpref=4
and b.camcatpca=i.catcmtpca
and b.camcacmon=i.catcmcmon
and j.gbconpfij=1
and a.gbagetper=j.gbconcorr
and a.gbagesexo=k.gbconcorr
and k.gbconpfij=2
and b.camcastat in(1,2,3)
and d.canidmrcb=0
and e.caconpref=3
and f.capronmes=(select month(a.gbpmtfdia)
				 from  gbpmt a)
and f.caproanio=(select year(a.gbpmtfdia)
				 from  gbpmt a)
order by 1, 2;
