/* SEGUROS */ --Ult. Modif  17/05/2021 by MVS
select distinct a.prmprcage cod_cli,
	TRIM(f.gbagenomb) nombre,
	a.prmprnpre prestamo,
	a.prmprcmon mon,
	b.prtcrtcre tcre,TRIM(b.prtcrdesc) descrip,
	TRIM(g.prcondesc) estado,
	c.prtdtftra fech_trans,
	c.prtdthora hora,
	a.prmprplaz suc,
	a.prmpragen agen,
	d.prcgpcctb cta_ctblele,
	c.prtdtccon cobro,
	TRIM(c.prtdtdesc) descrip_cobro,
	d.prcgpmont porcentaje,
	round((c.prtdtimpp*-1),2) importe_orig,
	round(decode(a.prmprcmon,1,c.prtdtimpp*-1,2,((c.prtdtimpp*-1)*6.86),3,((c.prtdtimpp*-1)*6.86)),2) importe_bs,
	round(a.prmprsald,2) saldo,
	round(decode(a.prmprnpre,(select c.prmprnpre
					      from prmpr c
					      where c.prmprnpre=a.prmprnpre
					      and not exists(select *
					                     from prdip d
					                     where d.prdipnpre=a.prmprnpre
					                     and d.prdipcarg in (420,421,424,425))),round(a.prmprsald,2),
					     (select c.prmprnpre
					      from prmpr c
					      where c.prmprnpre=a.prmprnpre
					      and exists(select *
					                 from prdip d
					                 where d.prdipnpre=a.prmprnpre)),
				                     decode(a.prmprnpre,(select c.prmprnpre
					                                     from prmpr c
					                                     where c.prmprnpre=a.prmprnpre
					                                     and not exists(select *
					                                                    from prtdt d
					                                                    where d.prtdtnpre=a.prmprnpre
					                                                    and d.prtdtccon in (420,421,424,425)
					                                                    and d.prtdtpref=21
					                                                    and d.prtdtmrcb=0)),((select sum(prdipcuot)
					                                                                           from prdip d
					                                                                           where d.prdipnpre=a.prmprnpre
					                                                                           and d.prdipcarg in (420,421,424,425)
					                                                                           and d.prdipmrcb=0)+a.prmprsald),
					                                    (select c.prmprnpre
					                                     from prmpr c
					                                     where c.prmprnpre=a.prmprnpre               
					                                     and exists(select *
					                                                from prtdt d
					                                                where d.prtdtnpre=a.prmprnpre
					                                                and d.prtdtccon in (420,421,424,425)
					                                                and d.prtdtpref=21
					                                                and d.prtdtmrcb=0)),(((select sum(prdipcuot)
					                                                                        from prdip d
					                                                                        where d.prdipnpre=a.prmprnpre
					                                                                        and d.prdipcarg in (420,421,424,425)
					                                                                        and d.prdipmrcb=0)-(select sum (e.prtdtimpp*-1)
					                                                     										from prtdt e
					                                                     										where e.prtdtnpre=a.prmprnpre
					                                                     										and e.prtdtpref=21
					                                                     										and e.prtdtccon in (420,421,424,425)
					                                                     										and e.prtdtmrcb=0))+a.prmprsald))),2) saldo_c_difer,
decode(month(k.gbpmtfdia),1,'ENERO',2,'FEBRERO',3,'MARZO',4,'ABRIL',5,'MAYO',6,'JUNIO',
7,'JULIO',8,'AGOSTO',9,'SEPTIEMBRE',10,'OCTUBRE',11,'NOVIEMBRE',12,'DICIEMBRE') mes,
decode(a.prmprnpre,(select b.prmprnpre
					from prmpr b
					where b.prmprnpre=a.prmprnpre
					and not exists(select *
					               from prdip d
					               where d.prdipnpre=a.prmprnpre
					               and d.prdipfreg between k.gbpmtfdia - day(gbpmtfdia)+1  and k.gbpmtfdia)),'N',
				   (select b.prmprnpre
					from prmpr b
					where b.prmprnpre=a.prmprnpre
					and exists(select *
					           from prdip d
					           where d.prdipnpre=a.prmprnpre
					           and d.prdipfreg between k.gbpmtfdia - day(gbpmtfdia)+1  and k.gbpmtfdia)),'S') Diferido,
e.prtdtftra fec_ult_pago_seg,
round((select g.prtdtimpp*-1 
       from prtdt g
       where g.prtdtnpre=e.prtdtnpre
       and g.prtdtftra=e.prtdtftra
       and g.prtdtntra=e.prtdtntra
       and g.prtdtmrcb=0
       and g.prtdtimpp!=0
       and g.prtdtccon in(26,27,210,211,212,213,214,215,216,217,218,219,
       220,221,240,241,242,243,244,245,246,247,
       315,320,321,322,815,820,821,822)),2) imp_desgravamen,
round((select g.prtdtimpp*-1 
       from prtdt g
       where g.prtdtnpre=e.prtdtnpre
       and g.prtdtftra=e.prtdtftra
       and g.prtdtntra=e.prtdtntra
       and g.prtdtmrcb=0
       and g.prtdtccon in(412,413)),2) imp_todoriesgo,
decode(a.prmprnmod,17,'CARTERA PROPIA',50,'CARTERA EN ADM.') cartera
from prmpr a,prtcr b,prtdt c,outer prcgp d,prtdt e,gbage f,prcon g,gbpmt k
where a.prmprtcre=b.prtcrtcre
and a.prmprnpre=c.prtdtnpre
and c.prtdtccon=d.prcgpcarg
and a.prmprnpre=e.prtdtnpre
and a.prmprcage=f.gbagecage
and a.prmprstat=g.prconcorr
and g.prconpref=4
and c.prtdtmrcb=0
and c.prtdtimpp!=0
--and c.prtdtftra=e.prtdtftra
--and a.prmprnmod=50
and a.prmprnpre=1808004
and e.prtdtftra=(select max(f.prtdtftra)
                 from prtdt f
                 where f.prtdtnpre=e.prtdtnpre
                 and f.prtdtmrcb=0
                 and f.prtdtimpp!=0
                 and f.prtdtccon in(26,27,210,211,212,213,214,215,216,217,
                 218,219,220,221,240,241,242,243,244,245,246,247,412,413,
                 315,320,321,322,815,820,821,822))
and c.prtdtftra between k.gbpmtfdia-day(gbpmtfdia)+1  and k.gbpmtfdia
order by 3,8,9,13;

select *from prmpr where prmprmrcb = 0 and prmprstat = 2 and prmprnpre =1808004;
select *from prdeu where prdeunpre=1808004;
select *from prtdt where prtdtnpre =1808004;
select *from prcon order by 1,2;
select *from prcon order by 1,2;