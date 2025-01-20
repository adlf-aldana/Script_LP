--------------------------------------------------------------------------------------------------------------------------
--/*************************** BAC FECHA DE CORTE 30/09/2020 CREDITOS  63 Campos ********************************************/
--------------------------------------------------------------------------------------------------------------------------
--------- CABECERA-----------------------------
--1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63
--COD_AGENCIA,DESCIPCION_COD_AGENCIA,NRO_CODEUDORES,TIPO_IDENTIFICACION,GENERO,NRO_ID_INT,NOMBRE_COMPLETO,CI_DEUDOR,NOMBRE_CONY,CI_CONY,CUENTA,FECHA_OP,MONEDA,MONTO_DES_ORIG,FECHA_DESEMB,ESTADO,MONTO_APROB,TIPO_TECNOLOGIA,TASA,PLAZO,SALDO_ORIG,SALDO_BS,K_DIFERIDO_ORIG,NRO_REPROG,PREV_ESP_BS,PREV_CICL_BS,PROD_DEV_$US,PROD_SUSP,PRODUCTO,VC_GTIA_ORIGEN,VNR_GTIA_ORIGEN,TIPO_GTIA,CALIF_ENT,DESC_OBJ_CRED,GRUPO_ACT_ECO,ACT_ECO,DEST_CRED,DIAS_INCUMP,FECHA_INCUMP,CRED_ANTERIOR,FEC_ULT_REPROG,SALDO_REPRO_BS,FECHA_CASTIGO,NRO_CUOTAS,TIP_CUOTA,CUENTA_CTBLE,TIPO_CRED,CLASIF_CREDITO,PONDERACION_56,OFICIAL_RESP,NIVEL_AUT,INGRESO_VENTA_BS,PATRIMONIO_BS_36,PERS_OCU,INDICE,FECHA_ULT_PAG_CAP,FECHA_ULT_PAG_INT,FRECUENCIA PAGO,FECH_VENC,DIAS_GRACIA_65,DIAS_GRACIA_INT,FORMA_CALIF,CALIFICADO_POR



-----------------------------------------------------------------------
---- Correr lo siguiente antes de ejecutar el script de 95 campos------
-----------------------------------------------------------------------

/*update gbage
 set gbageddo2= ' '
where gbageddo2 is null;

update gbage
 set gbagedir2= ' '
where gbagedir2 is null;

update gbdac
 set gbdacnom2= ' '
where gbdacnom2 is null;*/
----------------------------------------
select distinct 
b.prmpragen cod_agencia, --1
qq.gbofidesc descipcion_cod_agencia, --2
(select count(gg.prdeucage) from prdeu gg
 where gg.prdeucage=a.gbagecage
 and gg.prdeutres=1)-1 nro_codeudores,--3
 jj.gbconabre tipo_identificacion, --4
 decode(a.gbagesexo,1,'M',2,'F') genero,--5
 a.gbagecage nro_id_int, --6
 a.gbagenomb nombre_completo, --7
 trim(a.gbagendid) ci_deudor, --8
(select  aa.gbagenomb
 from gbage aa
 where aa.gbagecage=ii.gbdaccony) nombre_cony, --9
 (select  aa.gbagendid
 from gbage aa
 where aa.gbagecage=ii.gbdaccony) ci_cony, --10
b.prmprnpre cuenta, --11
b.prmprfdes fecha_op,--12
decode(b.prmprcmon,1,'MN',2,'ME',3,'CMV',4,'UFV') moneda, --13
round(b.prmprmdes,2) monto_desem_ori, --14
b.prmprfdes fecha_desemb,--15
tt.prcondesc estado, --16
b.prmprmapt monto_aprobado, --17
'INDIVIDUAL' tipo_tecnologia, --18
round((c.prtsatbas+c.prtsasprd),2) tasa, --19
b.prmprplzo plazo, --20
round(b.prmprsald,2) saldo_ori, --21
round(decode(b.prmprcmon,1,b.prmprsald,2,b.prmprsald*6.86,3,b.prmprsald*6.86),2) saldo_Bs, --22
round(decode(b.prmprnpre,(select c.prmprnpre
					      from prmpr c
					      where c.prmprnpre=b.prmprnpre
					      and not exists(select *
					                     from prdip d
					                     where d.prdipnpre=b.prmprnpre)),null,
					     (select c.prmprnpre
					      from prmpr c
					      where c.prmprnpre=b.prmprnpre
					      and exists(select *
					                 from prdip d
					                 where d.prdipnpre=b.prmprnpre)),
				         decode(b.prmprnpre,(select c.prmprnpre
					                         from prmpr c
					                         where c.prmprnpre=b.prmprnpre
					                         and not exists(select *
					                                        from prtdt d
					                                        where d.prtdtnpre=b.prmprnpre
					                                        and d.prtdtccon in (420,421,424,425)
					                                        and d.prtdtpref=21
					                                        and d.prtdtmrcb=0)),(select sum(prdipcuot)
					                                                             from prdip d
					                                                             where d.prdipnpre=b.prmprnpre
					                                                             and d.prdipcarg in (420,421,424,425)),
					                        (select c.prmprnpre
					                         from prmpr c
					                         where c.prmprnpre=b.prmprnpre               
					                         and exists(select *
					                                    from prtdt d
					                                    where d.prtdtnpre=b.prmprnpre
					                                    and d.prtdtccon in (420,421,424,425)
					                                    and d.prtdtpref=21
					                                    and d.prtdtmrcb=0)),((select sum(prdipcuot)
					                                                          from prdip d
					                                                          where d.prdipnpre=b.prmprnpre
					                                                          and d.prdipcarg in (420,421,424,425))-(select sum (e.prtdtimpp*-1)
					                                                     										     from prtdt e
					                                                     										     where e.prtdtnpre=b.prmprnpre
					                                                     										     and e.prtdtpref=21
					                                                     										     and e.prtdtccon in (420,421,424,425)
					                                                     										     and e.prtdtmrcb=0)))),2) difer_k_orig, --23
b.prmprcrpg nro_reprog, --24					                                                     										     
round(n.crcecimpr/-1,2) prev_esp_bs, --25
round(n.crcecreqc,2) prev_cicl_bs, --26
round(decode(b.prmprcmon,1,b.prmprpdvg,2,b.prmprpdvg*6.86,3,b.prmprpdvg*6.86),2) prod_dev_$us, --27
uu.prhdvpsus prod_susp, --28 (en su moneda)
h.prtcrdesc producto,--29
(Select sum(ggg.crgarmont)
  		from crgar ggg
  		where ggg.crgarnopr=t.crgarnopr) vc_gtia_ori, --30
(Select sum(ggg.crgargins)
  		from crgar ggg
  		where ggg.crgarnopr=t.crgarnopr) vc_gtia_ori, --31
decode((select www.crgartipo
 		from crgar www
 		where www.crgarnopr[1,8]=b.prmprnpre
 		and www.crgarngar=(select max(ggg.crgarngar)
 		                   from crgar ggg 
 		                   where ggg.crgarnopr=www.crgarnopr 
 		                   and ggg.crgarmont>0)),null,(select www.crgartipo
 		                                                from crgar www
 		                                                where www.crgarnopr[1,8]=b.prmprnpre
 		                                                 and www.crgarngar=(select max(ggg.crgarngar)
 		                                                                    from crgar ggg 
 		                                                                    where ggg.crgarnopr=www.crgarnopr 
 		                                                                    and ggg.crgarmont=0)), (select www.crgartipo
 		from crgar www
 		where www.crgarnopr[1,8]=b.prmprnpre
 		and www.crgarngar=(select max(ggg.crgarngar)
 		                   from crgar ggg 
 		                   where ggg.crgarnopr=www.crgarnopr 
 		                   and ggg.crgarmont>0)),(select www.crgartipo
 		from crgar www
 		where www.crgarnopr[1,8]=b.prmprnpre
 		and www.crgarngar=(select max(ggg.crgarngar)
 		                   from crgar ggg 
 		                   where ggg.crgarnopr=www.crgarnopr 
 		                   and ggg.crgarmont>0))) tipo_gtia,--32
a.gbagecalf calif_ent, --33
f.prcondesc desc_obj_cred, --34
rr.gbcaecate grupo_act_eco, --35
rr.gbcaeciiu act_eco, --36
b.prmprciiu dest_cred, --37
((select e.gbpmtfdia
  from gbpmt e)-b.prmprfinc) dias_incump, --38
b.prmprfinc fecha_incump, --39
'' cred_anterior, --40
b.prmprfrpg fec_ult_reprog, --41
round(decode(b.prmprcmon,1,vv.prrnvsald,2,vv.prrnvsald*6.86,3,vv.prrnvsald*6.86),2)saldo_repro_bs, --42
decode(b.prmprstat,(select prmprstat
					from prmpr t
					where t.prmprnpre=b.prmprnpre
					and t.prmprstat!=7),null,(select prmprstat
											  from prmpr t
											  where t.prmprnpre=b.prmprnpre
											  and t.prmprstat=7),b.prmprfsta) fecha_castigo, --43
(select count(*)
 from prppg z
 where z.prppgnpre=b.prmprnpre) nro_cuotas, --44
 TRIM(e.prcondesc) tip_cuota, --45
 decode(b.prmprstat,2,g.prtpmkcvg,3,g.prtpmkcvg,5,g.prtpmkcv2,6,g.prtpmkcej,7,g.prtpmkcad) cuenta_ctble, --46
 q.gbconabre tipo_cred, --47
decode((ss.gbcaecate),(select sss.gbcaecate
                       from gbcae sss
                       where sss.gbcaeciiu=b.prmprciiu
                       and sss.gbcaecate in('A','B','C','D','E','F','G')),'Productivo',(select sss.gbcaecate
                                                                                  from gbcae sss
                                                                                  where sss.gbcaeciiu=b.prmprciiu
                                                                                  and sss.gbcaecate in('H')),'Comercial',(select sss.gbcaecate
                                                                                                                          from gbcae sss
                                                                                                                          where sss.gbcaeciiu=b.prmprciiu
                                                                                                                          and sss.gbcaecate in('I','J','K','L','M','N','O',
                                                                                                                          'P','Q','R','S','T','U','V','W','X','Y','Z')),'Servicio') clasificacion, -- 48
trim(decode(h.prtcrtcre,(select hh.prtcrtcre
					     from prtcr hh
					     where hh.prtcrtcre=b.prmprtcre
					     and hh.prtcrtcre in(101,102,107)),'I',
						 (select hh.prtcrtcre
					     from prtcr hh
					     where hh.prtcrtcre=b.prmprtcre
					     and b.prmprstat in(2,3)
						 and hh.prtcrtcre in(205,301,302,303,401,407,409,411,501,502,503,504,505,506,507,508,509,511,512,513,514,515,516,518)),'IV',
						 (select hh.prtcrtcre
					     from prtcr hh
					     where hh.prtcrtcre=b.prmprtcre
					     and b.prmprstat in(5,6)
						 and hh.prtcrtcre in(205,301,302,303,401,407,409,411,501,502,503,504,505,506,507,508,509,511,512,513,514,515,516,518)),'VI',
						 (select hh.prtcrtcre
					     from prtcr hh
					     where hh.prtcrtcre=b.prmprtcre
					     and b.prmprstat in(7)
						 and hh.prtcrtcre in(205,301,302,303,401,407,409,411,501,502,503,504,505,506,507,508,509,511,512,513,514,515,516,518)),'I',
						 (select hh.prtcrtcre
					     from prtcr hh
					     where hh.prtcrtcre=b.prmprtcre
					     and b.prmprstat in(2,3,5,6)
						 and hh.prtcrtcre in(1,3,7,105,201,202,203,204,221,223,305,306,307,309,310,311,313,314,315,317,318,319,321,326,410,519,405)),'VI',
						 (select hh.prtcrtcre
					     from prtcr hh
					     where hh.prtcrtcre=b.prmprtcre
					     and b.prmprstat in(7)
						 and hh.prtcrtcre in(1,3,7,105,201,202,203,204,221,223,305,306,307,309,310,311,313,314,315,317,318,319,321,326,410,519,405)),'I')) ponderacion, --49
yy.gbfirnomb oficial_resp, --50
zz.gbfircarg nivel_aut, --51
round(decode(i.gbdbicmon,1,i.gbdbitotv,2,i.gbdbitotv*6.86),2) ingreso_venta_Bs, --52
round(decode(i.gbdbicmon,1,i.gbdbipatr,2,i.gbdbipatr*6.86),2) patrimonio_Bs_36, --53
i.gbdbicper pers_ocu, --54
round(i.gbdbiinde,9) indice, --55
j.prtdtftra fecha_ult_pag_cap, --56
k.prtdtftra fecha_ult_pag_int, --57
b.prmprppgk frecuencia_pago, --58
b.prmprfvac fech_venc, --59
b.prmprgrac dias_gracia_65, --60
b.prmprgrac dias_gracia_int, --61
'AUTOMATICA' forma_calif, --62
'ENTIDAD' calificado_por --63
from gbage a,
prmpr b,
prtsa c,
prcon d,
prcon e,
prcon f,
prtpm g,
prtcr h,
outer gbdbi i,
outer prtdt j,
outer prtdt k,
outer lcmlc l,
gbcon m,
outer crcec n,
gbcon q,
gbcon hh,
gbdac ii,
outer prtdt mm,
outer prtdt nn,
gbcae rr,
gbcae ss,
prcon tt,
outer prhdv uu,
gbpmt pp,
outer  prrnv vv,
cropr ww,
outer gbfir yy,
outer gbfir zz,
outer prcgc oo,
gbofi qq,
gbdpt ll,
gbprv kk,
gbcon jj,
outer crgar t
where a.gbagecage=b.prmprcage
and b.prmprnpre=c.prtsanpre
and b.prmpruplz=d.prconcorr
and d.prconpref=3
and b.prmprfpag=e.prconcorr
and e.prconpref=2
and b.prmprdest=f.prconcorr
and f.prconpref=50
and b.prmprtcre=g.prtpmtcre
and b.prmprcmon=g.prtpmcmon
and b.prmprtcre=h.prtcrtcre
and b.prmprstat in(2,3,5,6,7)
and a.gbagecage=i.gbdbicage
and b.prmprnpre=j.prtdtnpre
and b.prmprnpre=k.prtdtnpre
and a.gbagecage=l.lcmlccage
and b.prmprlncr=l.lcmlcnrlc
and b.prmprcclf=m.gbconcorr
and m.gbconpfij=80
and b.prmprnpre=n.crcecnbco
and l.lcmlcstat=1
and l.lcmlcmrcb=0
and c.prtsafvig=(select max(r.prtsafvig)
				 from prtsa r
				 where r.prtsanpre=c.prtsanpre)
and i.gbdbifech=(select max(w.gbdbifech)
				 from gbdbi w
				 where w.gbdbicage=i.gbdbicage)
and j.prtdtftra=(select max(x.prtdtftra)
				 from prtdt x
				 where x.prtdtnpre=b.prmprnpre
				 and x.prtdtpref=20
				 and x.prtdtccon=1
				 and x.prtdtmrcb=0)
and k.prtdtftra=(select max(y.prtdtftra)
				 from prtdt y
				 where y.prtdtnpre=b.prmprnpre
				 and y.prtdtpref=20
				 and y.prtdtccon=2
				 and y.prtdtmrcb=0)	
and n.crcecfech=(select o.gbpmtfdia
				 from gbpmt o)
and q.gbconpfij=80
and q.gbconcorr=b.prmprcclf
and a.gbageciiu=rr.gbcaeciiu
and b.prmprciiu=ss.gbcaeciiu
and tt.prconpref=4
and a.gbagecage=ii.gbdaccage
and hh.gbconcorr=a.gbagetper
and hh.gbconpfij=1
and b.prmprnpre=mm.prtdtnpre
and b.prmprnpre=nn.prtdtnpre
and mm.prtdtftra=(select min(z.prtdtftra)
				 from prtdt z
				 where z.prtdtnpre=b.prmprnpre
				 and z.prtdtpref=20
				 and z.prtdtccon=1
				 and z.prtdtmrcb=0)
and nn.prtdtftra=(select min(w.prtdtftra)
				 from prtdt w
				 where w.prtdtnpre=b.prmprnpre
				 and w.prtdtpref=20
				 and w.prtdtccon=2
				 and w.prtdtmrcb=0)	
and b.prmprstat=tt.prconcorr
and uu.prhdvfdia=pp.gbpmtfdia
and uu.prhdvnpre= b.prmprnpre
and vv.prrnvnpre=b.prmprnpre
and vv.prrnvcrpg >0
and b.prmprfrpg=vv.prrnvfreg
and b.prmprnpre=ww.croproper
and b.prmprrseg=yy.gbfircfun
and b.prmprautp=zz.gbfircfun 
and b.prmprnpre=oo.prcgcnpre
and oo.prcgcmrcb=0
and oo.prcgccarg in(26,27,28,210,211,212,213,214,215,216,217,218,219,220,221,240,241,242,243,244,245,246,247)
and qq.gbofinofi=b.prmpragen
and qq.gbofidpto=ll.gbdptdpto
and qq.gboficprv=kk.gbprvcprv
and jj.gbconpfij=4
and jj.gbconcorr=a.gbagetdid
and b.prmprnpre= t.crgarnopr[1,8]
order by b.prmprnpre;

--and b.prmprnpre in(15410088,15046189,10046709,15000051)
