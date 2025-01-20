/*PROCESO PARA CUENTAS ESPECIALES, PERSONAS NATURALES Y PERSONAS JURIDICAS */ --Ultima mod 03/09/2021 -- CES.
/*ANTES DE CORRER EL SCRIPT SE DEBE CAMBIAR LA FECHA DE TRANS. 
-- 03/11/2021 -- CES
-- 31/12/2021 -- CES -- INsertar Glosa y cantidad de trans. Cargos ATM's
--AL MES ej/ '2020-07-01' and '2020-07-31'  por  '2020-10-01' and '2020-10-31'*/
-- se Agrega la columna de fecha de registro de producto  -- 11/04/2022  -- by VSM
SELECT DISTINCT 
	a.gbagecage CODCLI,--1
	TRIM(a.gbagenomb) NOMBRE,--2
	TRIM(a.gbagendid) IDENT,--3
	TRIM(a.gbagenruc) NIT,--4
	b.camcancta CUENTA,--5
	b.camcafapt FAPERT,--6
	((select a.gbpmtfdia 
  		from gbpmt a)-b.camcafapt) DIAS,--7
	b.camcastat ST,--8
	TRIM(d.cacondesc) STATUS,--9
	b.camcacmon COD_MON,--10
	TRIM(decode(b.camcacmon,1,'BOLIVIANOS',2,'DOLARES',3,'UFV',4,'CMV')) MON_ORIG,--11
	round((b.camcasact *-1),2) SALDO_ORIG,--12
	b.camcatpca TIP_PROD,--13
	(select count(*)
 		from camca p
		where p.camcacage=a.gbagecage
 		and p.camcastat in (1,2)
		and p.camcatpca=b.camcatpca) CANT_PROD,--14
	decode(b.camcancta,(select camcancta
							from camca r
							where r.camcancta=b.camcancta
							and exists (select *
											from caprm s
											where s.caprmncta=b.camcancta)),'REG',
						(select camcancta
							from camca r
							where r.camcancta=b.camcancta
							and not exists (select *
												from caprm s
												where s.caprmncta=b.camcancta)),'NoREG') REGISTRADO,--15
	j.caprmfreg FE_REG_PROD,--16
	round(((j.caprmffin-j.caprmfini)/30),0) PROM_MES_CALC,--17
	j.caprmdprd PROM_MES_REG,--18
	round(decode(b.camcatpca,
				(select cc.catcatpca
					from catca cc
			      	where cc.catcatpca= b.camcatpca
			      	and cc.catcatpca not in(select p.caprptpca
			      							from caprp p
			                              	where p.caprptpca=cc.catcatpca)
					and b.camcatasa=0), i.canidtasa,
					(select cc.catcatpca
						from catca cc
				      	where cc.catcatpca=b.camcatpca
				      	and cc.catcatpca not in(select p.caprptpca
                                              from caprp p
                                              where p.caprptpca=cc.catcatpca)
		      			and b.camcatasa>0), b.camcatasa,
		      		(select cc.catcatpca
						from catca cc
                      	where cc.catcatpca= b.camcatpca
                      	and cc.catcatpca in(select p.caprptpca
                      						from caprp p
                                          	where p.caprptpca=cc.catcatpca)), i.canidtasa), 2) TASA_PROD,--19
	decode(b.camcacmon,
		1, decode(cg.caigdtasa,
					0, ca.cacaptasa,
					NULL, decode(b.camcatpca, 1, 2, cg.caigdtasa),
					cg.caigdtasa),
		i.canidtasa) TASA_PAGADA,--20
	(SELECT count(*)
		FROM ( SELECT DISTINCT caigdfech
				FROM caigd cx
				WHERE cx.caigdncta = b.camcancta
					AND cx.caigdfech BETWEEN '{ini}' AND '{fin}'
					AND cx.caigdstat = 1
					AND cx.caigdtpca = b.camcatpca
					AND cx.caigdcmon = b.camcacmon)
	) TASA_PAGADA_ULT_DIAS,--21
	decode(b.camcancta,(select camcancta
						from camca r
						where r.camcancta=b.camcancta
						and exists (select *
									from catpv s
									where s.catpvncta=b.camcancta
									and s.catpvmrcb=0)),'S',
						(select camcancta
					 		from camca r
					 		where r.camcancta=b.camcancta
					 		and not exists (select *
								     			from catpv s --tasas preferenciales
								     			where s.catpvncta=b.camcancta)),'N') TASA_PREF,--22
	g.caproanio,--23
	g.capronmes,--24
	ROUND(g.caprompro,2) CAPROMPRO_ORIG,--25
	ROUND(cp.caprpmmin, 2) MONTO_MIN_PERMITIDO,--26
	ROUND(cp.caprpmmax, 2) MONTO_MAX_PERMITIDO,--27
	sum((select count(j.catrnncta) --Retiros en CAJAS
			from catrn j
			where j.catrnncta=b.camcancta
			and j.catrnfpro between '{ini}' and '{fin}'
			and j.catrnimpo>0
			and j.catrnpref=51
			and j.catrncorr=2 
			and j.catrnstat=0)+(select count(j.catrnncta) --Retiros en ATM/POS/+ CARGOS
									from catrn j
									where j.catrnncta=b.camcancta
									and j.catrnfpro between '{ini}' and '{fin}'
									and j.catrnimpo>0
									and j.catrnpref=15
									and j.catrncorr between 1 and 28
									and j.catrncorr not in (15)  
									and j.catrnstat=0)+(select count(j.catrnncta) --Transf. ACH
															from catrn j
															where j.catrnncta=b.camcancta
															and j.catrnfpro between '{ini}' and '{fin}'
															and j.catrnimpo>0
															and j.catrnpref=10
															and j.catrncorr in(20,30) 
															and j.catrnstat=0)+(select count(j.catrnncta) --Transf. BxI
																					from catrn j
																					where j.catrnncta=b.camcancta
																					and j.catrnfpro between '{ini}' and '{fin}'
																					and j.catrnimpo>0
																					and j.catrnpref=3
																					and j.catrncorr=1 
																					and j.catrnstat=0)+(select count(j.catrnncta) --Pago Serv. (Viva/Tigo/Entel)
																											from catrn j
																											where j.catrnncta=b.camcancta
																											and j.catrnfpro between '{ini}' and '{fin}'
																											and j.catrnimpo>0
																											and j.catrnpref=52
																											and j.catrncorr in (120,121,122) 
																											and j.catrnstat=0)+(select count(j.catrnncta) --Pago de Credito
																																	from catrn j
																																	where j.catrnncta=b.camcancta
																																	and j.catrnfpro between '{ini}' and '{fin}'
																																	and j.catrnimpo>0
																																	and j.catrnpref=70
																																	and j.catrncorr=2 
																																	and j.catrnstat=0)+(select count(j.catrnncta) --Debito por Contabilidad
																																							from catrn j
																																							where j.catrnncta=b.camcancta
																																							and j.catrnfpro between '{ini}' and '{fin}'
																																							and j.catrnimpo>0
																																							and j.catrnpref=1
																																							and j.catrncorr=1 
																																							and j.catrnstat=0)) CANT_TRX,--28
round(decode(b.camcatpca,1,(g.caprompro*round(decode(b.camcatpca,(select cc.catcatpca
					      		from catca cc
					      		where cc.catcatpca=b.camcatpca
					      		and cc.catcatpca not in(select p.caprptpca
						                              from caprp p
						                              where p.caprptpca=cc.catcatpca)
					      		and b.camcatasa=0),i.canidtasa,(select cc.catcatpca
                                   					      			from catca cc
                                					      			where cc.catcatpca= b.camcatpca
                                					      			and cc.catcatpca not in(select p.caprptpca
																                              from caprp p
																                              where p.caprptpca=cc.catcatpca)
                                					      			and b.camcatasa>0),b.camcatasa),2)*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						 2,(g.caprompro*round(decode(b.camcatpca,(select cc.catcatpca
					      											from catca cc
														      		where cc.catcatpca=b.camcatpca
														      		and cc.catcatpca not in(select p.caprptpca
																                              from caprp p
																                              where p.caprptpca=cc.catcatpca)
														      		and b.camcatasa=0),i.canidtasa,(select cc.catcatpca
                               					      												from catca cc
								                                					      			where cc.catcatpca= b.camcatpca
								                                					      			and cc.catcatpca not in(select p.caprptpca
																								                              from caprp p
																								                              where p.caprptpca=cc.catcatpca)
								                                					      			and b.camcatasa>0),b.camcatasa),2)*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						 21,(g.caprompro*4.2*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						 26,(g.caprompro*3.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						 27,(g.caprompro*3.8*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						 29,(g.caprompro*4.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						 34,(g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						 35,(g.caprompro*2.0*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						 36,(g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						 37,(g.caprompro*4.0*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						 38,(g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						 39,(g.caprompro*2.0*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						 40,(g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						 41,(g.caprompro*4.0*(select day(a.gbpmtfdia) from gbpmt a)/36000)),2) IMP_PAG_CALC_ORIG,--29
round((h.catrnimpo*-1),2) IMP_PAG_PROD_ORIG,--30
TRIM((select catrnglos
	  from catrn 
	  where catrnncta=b.camcancta 
	  and catrnpref = 10
	  and catrncorr = 1
	  and catrnstat = 0
	  and catrnftra = (select gbpmtfdia 
					   from gbpmt))) GLOSA,--31
round((decode(b.camcatpca,1,(g.caprompro*round(decode(b.camcatpca,(select cc.catcatpca
					      		from catca cc
					      		where cc.catcatpca=b.camcatpca
					      		and cc.catcatpca not in(select p.caprptpca
						                              from caprp p
						                              where p.caprptpca=cc.catcatpca)
					      		and b.camcatasa=0),i.canidtasa,(select cc.catcatpca
                                   					      			from catca cc
                                					      			where cc.catcatpca= b.camcatpca
                                					      			and cc.catcatpca not in(select p.caprptpca
																                              from caprp p
																                              where p.caprptpca=cc.catcatpca)
                                					      			and b.camcatasa>0),b.camcatasa),2)*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						  2,(g.caprompro*round(decode(b.camcatpca,(select cc.catcatpca
					      		from catca cc
					      		where cc.catcatpca=b.camcatpca
					      		and cc.catcatpca not in(select p.caprptpca
						                              from caprp p
						                              where p.caprptpca=cc.catcatpca)
					      		and b.camcatasa=0),i.canidtasa,(select cc.catcatpca
                                   					      			from catca cc
                                					      			where cc.catcatpca= b.camcatpca
                                					      			and cc.catcatpca not in(select p.caprptpca
																                              from caprp p
																                              where p.caprptpca=cc.catcatpca)
                                					      			and b.camcatasa>0),b.camcatasa),2)*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						  21,(g.caprompro*4.2*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						  26,(g.caprompro*3.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						  27,(g.caprompro*3.8*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						  29,(g.caprompro*4.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						  34,(g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						  35,(g.caprompro*2.0*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						  36,(g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						  37,(g.caprompro*4.0*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						  38,(g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						  39,(g.caprompro*2.0*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						  40,(g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						  41,(g.caprompro*4.0*(select day(a.gbpmtfdia) from gbpmt a)/36000))-(h.catrnimpo*-1)),2) DIF_ORIG,--32
b.camcariva RET_IVA,--33
round(decode(b.camcariva,'N',null,'S',(decode(b.camcatpca,1,(g.caprompro*round(decode(b.camcatpca,(select cc.catcatpca
					      																			from catca cc
																						      		where cc.catcatpca=b.camcatpca
																						      		and cc.catcatpca not in(select p.caprptpca
																								                              from caprp p
																								                              where p.caprptpca=cc.catcatpca)
																						      		and b.camcatasa=0),i.canidtasa,(select cc.catcatpca
                                   					      																			from catca cc
																                                					      			where cc.catcatpca= b.camcatpca
																                                					      			and cc.catcatpca not in(select p.caprptpca
																																                              from caprp p
																																                              where p.caprptpca=cc.catcatpca)
																                                					      			and b.camcatasa>0),b.camcatasa),2)*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						                                  2,(g.caprompro*round(decode(b.camcatpca,(select cc.catcatpca
					      																			from catca cc
																						      		where cc.catcatpca=b.camcatpca
																						      		and cc.catcatpca not in(select p.caprptpca
																								                              from caprp p
																								                              where p.caprptpca=cc.catcatpca)
																						      		and b.camcatasa=0),i.canidtasa,(select cc.catcatpca
                               					      																				from catca cc
																                                					      			where cc.catcatpca= b.camcatpca
																                                					      			and cc.catcatpca not in(select p.caprptpca
																																                              from caprp p
																																                              where p.caprptpca=cc.catcatpca)
																                                					      			and b.camcatasa>0),b.camcatasa),2)*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						                                  21,(g.caprompro*4.2*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						                                  26,(g.caprompro*3.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						                                  27,(g.caprompro*3.8*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						                                  29,(g.caprompro*4.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
														  34,(g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
														  35,(g.caprompro*2.0*(select day(a.gbpmtfdia) from gbpmt a)/36000),
														  36,(g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
														  37,(g.caprompro*4.0*(select day(a.gbpmtfdia) from gbpmt a)/36000),
														  38,(g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
														  39,(g.caprompro*2.0*(select day(a.gbpmtfdia) from gbpmt a)/36000),
														  40,(g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
														  41,(g.caprompro*4.0*(select day(a.gbpmtfdia) from gbpmt a)/36000))-(h.catrnimpo*-1))*0.13),2) CAL_IVA,--34
round(decode(b.camcariva,'N',(decode(b.camcatpca,1,(g.caprompro*round(decode(b.camcatpca,(select cc.catcatpca
					      																	from catca cc
																				      		where cc.catcatpca=b.camcatpca
																				      		and cc.catcatpca not in(select p.caprptpca
																						                              from caprp p
																						                              where p.caprptpca=cc.catcatpca)
																				      		and b.camcatasa=0),i.canidtasa,(select cc.catcatpca
                                   					      																		from catca cc
															                                					      			where cc.catcatpca= b.camcatpca
															                                					      			and cc.catcatpca not in(select p.caprptpca
																															                              from caprp p
																															                              where p.caprptpca=cc.catcatpca)
															                                					      			and b.camcatasa>0),b.camcatasa),2)*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						                         2,(g.caprompro*round(decode(b.camcatpca,(select cc.catcatpca
					      																	from catca cc
																				      		where cc.catcatpca=b.camcatpca
																				      		and cc.catcatpca not in(select p.caprptpca
																						                              from caprp p
																						                              where p.caprptpca=cc.catcatpca)
																				      		and b.camcatasa=0),i.canidtasa,(select cc.catcatpca
                                   					      																		from catca cc
															                                					      			where cc.catcatpca= b.camcatpca
															                                					      			and cc.catcatpca not in(select p.caprptpca
																															                              from caprp p
																															                              where p.caprptpca=cc.catcatpca)
															                                					      			and b.camcatasa>0),b.camcatasa),2)*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						                         21,(g.caprompro*4.2*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						                         26,(g.caprompro*3.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						                         27,(g.caprompro*3.8*(select day(a.gbpmtfdia) from gbpmt a)/36000),
						                         29,(g.caprompro*4.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
												 34,(g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
												 35,(g.caprompro*2.0*(select day(a.gbpmtfdia) from gbpmt a)/36000),
												 36,(g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
												 37,(g.caprompro*4.0*(select day(a.gbpmtfdia) from gbpmt a)/36000),
												 38,(g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
												 39,(g.caprompro*2.0*(select day(a.gbpmtfdia) from gbpmt a)/36000),
												 40,(g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000),
												 41,(g.caprompro*4.0*(select day(a.gbpmtfdia) from gbpmt a)/36000))-(h.catrnimpo*-1)),
						 'S',(decode(b.camcatpca,1,((g.caprompro*round(decode(b.camcatpca,(select cc.catcatpca
					      																	from catca cc
																				      		where cc.catcatpca=b.camcatpca
																				      		and cc.catcatpca not in(select p.caprptpca
																						                              from caprp p
																						                              where p.caprptpca=cc.catcatpca)
																				      		and b.camcatasa=0),i.canidtasa,(select cc.catcatpca
                                   					      																	from catca cc
														                                					      			where cc.catcatpca= b.camcatpca
														                                					      			and cc.catcatpca not in(select p.caprptpca
																														                              from caprp p
																														                              where p.caprptpca=cc.catcatpca)
														                                					      			and b.camcatasa>0),b.camcatasa),2)*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(((g.caprompro*2*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(h.catrnimpo*-1))*0.13)),
						                         2,((g.caprompro*round(decode(b.camcatpca,(select cc.catcatpca
                                   					      								   from catca cc
														                                   where cc.catcatpca= b.camcatpca
														                                   and cc.catcatpca not in(select p.caprptpca
																												   from caprp p
																												   where p.caprptpca=cc.catcatpca)
																				      	   and b.camcatasa=0),i.canidtasa,(select cc.catcatpca
                               					      																		from catca cc
														                                					      			where cc.catcatpca= b.camcatpca
														                                					      			and cc.catcatpca not in(select p.caprptpca
																														                            from caprp p
																														                            where p.caprptpca=cc.catcatpca)
														                                					      			and b.camcatasa>0),b.camcatasa),2)*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(((g.caprompro*2*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(h.catrnimpo*-1))*0.13)),
						                         21,((g.caprompro*4.2*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(((g.caprompro*4.2*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(h.catrnimpo*-1))*0.13)),
						                         26,((g.caprompro*3.5*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(((g.caprompro*3.5*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(h.catrnimpo*-1))*0.13)),
						                         27,((g.caprompro*3.8*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(((g.caprompro*3.8*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(h.catrnimpo*-1))*0.13)),
						                         29,((g.caprompro*4.5*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(((g.caprompro*4.5*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(h.catrnimpo*-1))*0.13)),
												 34,((g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(((g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(h.catrnimpo*-1))*0.13)),
												 35,((g.caprompro*2.0*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(((g.caprompro*2.0*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(h.catrnimpo*-1))*0.13)),
												 36,((g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(((g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(h.catrnimpo*-1))*0.13)),
												 37,((g.caprompro*4.0*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(((g.caprompro*4.0*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(h.catrnimpo*-1))*0.13)),
												 38,((g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(((g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(h.catrnimpo*-1))*0.13)),
												 39,((g.caprompro*2.0*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(((g.caprompro*2.0*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(h.catrnimpo*-1))*0.13)),
												 40,((g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(((g.caprompro*2.5*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(h.catrnimpo*-1))*0.13)),
												 41,((g.caprompro*4.0*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(((g.caprompro*4.0*(select day(a.gbpmtfdia) from gbpmt a)/36000)-(h.catrnimpo*-1))*0.13)))-(h.catrnimpo*-1))),2) X_PAGAR--35
from gbage a,camca b,catca c,cacon d,cacon e,caniv f,capro g,catrn h,canid i,outer caprm j, OUTER caprp cp, OUTER cacap ca, OUTER caigd cg
where a.gbagecage = b.camcacage
--and a.gbagecage=60048
and b.camcatpca=c.catcatpca
and b.camcastat in(1,2,3)
and b.camcastat = d.caconcorr
and d.caconpref = 4
and b.camcamane = e.caconcorr
and e.caconpref = 3
and b.camcatpca = f.canivtpca
and b.camcacmon = f.canivcmon
and f.canivmrcb = 0
and b.camcancta = g.caproncta
and b.camcancta = h.catrnncta
and b.camcatpca = i.canidtpca
and b.camcacmon = i.canidcmon
and i.canidmrcb = 0
and b.camcancta = j.caprmncta
and b.camcatpca in (1,2,21,26,27,29,34,35,36,37,38,39,40,41)
and g.caproanio = (select year(b.gbpmtfdia)
				 from gbpmt b)
and g.capronmes = (select month(b.gbpmtfdia)
				 from gbpmt b)
and h.catrnftra = (select b.gbpmtfdia
				 from gbpmt b)
and h.catrnpref = 10
and h.catrncorr = 1
AND ca.cacapncta = b.camcancta
AND ca.cacapanio = year('{fin}')
AND ca.cacapnmes = month('{fin}')
AND cg.caigdncta = b.camcancta
AND cg.caigdtpca = b.camcatpca
AND cg.caigdcmon = b.camcacmon
AND cg.caigdfech = (SELECT max(caigdfech)
					FROM caigd
					WHERE YEAR(caigdfech) = YEAR('{fin}')
					AND MONTH(caigdfech) = MONTH('{fin}')
					AND caigdncta = b.camcancta)
AND cp.caprptpca = b.camcatpca
GROUP by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,29,30,31,32,33,34,35
ORDER by 1, 6;