/**/ -- Se realizó el cambio en la estructura y script para consolidar información enviada con el archivo nro_oper_cr_l
-- Ult. Modif. 20/04/2022  By. VSM
-- 29/04/2022 - Se agrego el cambio de crgarfpro comparando solo año y mes
SELECT DISTINCT  
a.gagarcage COD_CLI, --1
trim(f.gbagenomb) nombre, --2
b.gagopnopr nro_operacion, --3
d.crgarnopr nro_oper_cr_l, --4
c.gbtgacsup tipo_garantia, --5 
b.gagopfreg fec_reg, --6
b.gagopngar nro_garantia, --7
a.gagarcmon moneda, --8
round(decode(d.crgarcmon,1,(SELECT sum(e.crgargins)
							FROM crgar e
							WHERE e.crgarnopr=d.crgarnopr
							and e.crgartipo=d.crgartipo),(SELECT (sum(e.crgargins*6.86))
														  FROM crgar e
														  WHERE e.crgarnopr=d.crgarnopr
														  and e.crgartipo=d.crgartipo)),2) total_gtia_x_tip_bs, --9
round(decode(d.crgarcmon,1,d.crgargins,d.crgargins*6.86),2) valor_gtia_x_oper_bs, --10
trim(e.gacondesc) modulo, --11
a.gagaruser usuario, --12
trim(a.gagarnpar) nPar, --13
a.gagarfpar fecha_par, --14
TRIM(a.gagardesc) descripcion, --15
a.gagarplaz plaza, --16
a.gagarfvto fecha_venc, --17
a.gagarvrep valor_reposicion, --18
--a.gagarvcoa valor_comercial --19
d.crgarmont valor_comercial, --19
(SELECT sum(e.gagopgfin)
FROM gagop e
WHERE e.gagopngar=a.gagarngar) valor_instit --20
FROM gagar a,gagop b,gbtga c,crgar d,gacon e,outer gbage f
WHERE a.gagarngar=b.gagopngar
and b.gagoptgar=c.gbtgactga
and (b.gagopnopr=d.crgarnopr[1,8]
or b.gagopnopr=d.crgarnopr[6,8])
and c.gbtgacsup=d.crgartipo
and b.gagopgfin=d.crgargins  
and e.gaconpref = 31
and e.gaconcorr=d.crgarnmod
and a.gagarcage=f.gbagecage
--PRESTAMOS				 			 
and ((exists (SELECT *
		      FROM prmpr pr
			  WHERE pr.prmprnpre=b.gagopnopr
			  and pr.prmprstat in (2,3,5,6))
--o CON BG			
or (exists (SELECT *
		    FROM bgmbg bg
			WHERE bg.bgmbgnbol=b.gagopnopr
			and bg.bgmbgstat in (1,2,3,4)
			and bg.bgmbgmrcb=0))))
/*and ( YEAR(d.crgarfpro) >= YEAR((SELECT g.gbpmtfdia
					          		FROM gbpmt g))
	AND MONTH(d.crgarfpro) >= MONTH((SELECT g.gbpmtfdia
					          		FROM gbpmt g)))*/
and a.gagarstat=0
and a.gagarmrcb=0
and b.gagopstat=0
and b.gagopmrcb=0
--and c.gbtgacsup='HI1'
--and d.crgarcmon=2
--and b.gagopnopr in(10048029,10048032,12)
--and d.crgarnopr in(180073693)
--group by 1,2,3
order by 3,6,5,7,10;
