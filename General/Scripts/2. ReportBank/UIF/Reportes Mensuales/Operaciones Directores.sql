/* TRANS. USUARIO INTERNO (EMPLEADO)*/
---SE AGREGAN 2 COLUMNAS Nomb_Tit y CI_Titular -ZCE 0202024
--1 /*OPERACIONES VENTANILLA - DEPOSITO*/

select decode(c.catrnndoc, null, c.catrnntra,c.catrnndoc) as nro_trans,c.catrnftra fecha,'' num_cta_origen,b.camcancta num_cta_destino,a.gbagecage cod_cli,
        TRIM(a.gbagenomb) nombre,TRIM(a.gbagendid) ci,TRIM(d.catcadesc) producto_asociado,'VENTANILLA' canal_trans,
        'DEPOSITO' desc_trans,c.catrnplaz suc,c.catrnagen agen,round(sum(c.catrnimpo*-1),2) imp_orig,
        c.catrncmon mon, round(decode(c.catrncmon,1,sum(c.catrnimpo*-1),2,(sum(c.catrnimpo*-1)*6.86)),2) imp_BS,
        TRIM(c.catrnglos) descrip,'LA PROMOTORA E.F.V' banco, TRIM(a.gbagenomb) Nomb_Tit, TRIM(a.gbagendid) CI_Titular
        
from gbage a,camca b,catrn c,catca d,catmv e
where a.gbagecage=b.camcacage
and b.camcancta=c.catrnncta
and b.camcatpca=d.catcatpca
and c.catrnpref=e.catmvpref
and c.catrncorr=e.catmvcorr
--and b.camcastat=1
and c.catrnftra between '{ini}' and '{fin}'
and (c.catrnimpo*-1)>0
and c.catrnpref=51
and c.catrncorr=1
and c.catrnstat=0
--and a.gbagecage in (33536,360586,32901,41082,77261,365261)--41082,77261,365261
and a.gbagecage in (33536,360586,32901,41082,77261,365261)
group by 1,2,4,5,6,7,8,11,12,14,16,17,18,19
--order by 2
UNION
--2 /*OPERACIONES PLATAFORMA - DEPOSITO*/
select c.catrnntra nro_trans,c.catrnftra fecha,'' num_cta_origen,b.camcancta num_cta_destino,a.gbagecage cod_cli,
        TRIM(a.gbagenomb) nombre,(a.gbagendid) ci,TRIM(d.catcadesc) producto_asociado,'PLATAFORMA' canal_trans,
        'DEPOSITO' desc_trans,c.catrnplaz suc,c.catrnagen agen,round(sum(c.catrnimpo*-1),2) imp_orig,c.catrncmon mon,
        round(decode(c.catrncmon,1,sum(c.catrnimpo*-1),2,(sum(c.catrnimpo*-1)*6.86)),2) imp_BS,
        TRIM(c.catrnglos) descrip,'LA PROMOTORA E.F.V' banco, TRIM(a.gbagenomb) Nomb_Tit, TRIM(a.gbagendid) CI_Titular
        
from gbage a,camca b,catrn c,catca d,catmv e
where a.gbagecage=b.camcacage
and b.camcancta=c.catrnncta
and b.camcatpca=d.catcatpca
and c.catrnpref=e.catmvpref
and c.catrncorr=e.catmvcorr
--and b.camcastat=1
and c.catrnftra between  '{ini}' and '{fin}'
and (c.catrnimpo*-1)>0
and c.catrnpref=2
and c.catrncorr in(1,2)
and c.catrnstat=0
and a.gbagecage in (33536,360586,32901,41082,77261,365261)
group by 1,2,4,5,6,7,8,11,12,14,16,17,18,19
--order by 2;
UNION
--3 /*OPERACIONES VENTANILLA - RETIRO*/
select decode(c.catrnndoc, null, c.catrnntra,c.catrnndoc) as nro_trans,c.catrnftra fecha,b.camcancta num_cta_origen,'' num_cta_destino,a.gbagecage cod_cli,
        TRIM(a.gbagenomb) nombre,TRIM(a.gbagendid) ci,TRIM(d.catcadesc) producto_asociado,'VENTANILLA' canal_trans,
        'RETIRO' desc_trans,c.catrnplaz suc,c.catrnagen agen,round(sum(c.catrnimpo),2) imp_orig,c.catrncmon mon,
        round(decode(c.catrncmon,1,sum(c.catrnimpo),2,(sum(c.catrnimpo)*6.86)),2) imp_BS,
        TRIM(e.catmvdesc) descrip,'LA PROMOTORA E.F.V' banco,TRIM(a.gbagenomb) Nomb_Tit, TRIM(a.gbagendid) CI_Titular
        
from gbage a,camca b,catrn c,catca d,catmv e
where a.gbagecage=b.camcacage
and b.camcancta=c.catrnncta
and b.camcatpca=d.catcatpca
and c.catrnpref=e.catmvpref
and c.catrncorr=e.catmvcorr
and b.camcastat=1
and c.catrnftra between '{ini}' and '{fin}'
and c.catrnimpo>0
and c.catrnpref=51
and c.catrncorr=2
and c.catrnstat=0
and a.gbagecage in (33536,360586,32901,41082,77261,365261)
group by 1,2,3,4,5,6,7,8,11,12,14,16,17,18,19
UNION
--4 _1/*OPERACIONES ATM - RETIRO*/ --PENDIENTE SABER DE QUE BACNO SE HIZO EL RETIRO EN ATM
select decode(c.catrnndoc, null, c.catrnntra,c.catrnndoc) as nro_trans,c.catrnftra fecha,b.camcancta num_cta_origen,'' num_cta_destino,a.gbagecage cod_cli,
        TRIM(a.gbagenomb) nombre,TRIM(a.gbagendid) ci,TRIM(d.catcadesc) producto_asociado,'ATM' canal_trans,'RETIRO' desc_trans,
        c.catrnplaz suc,c.catrnagen agen,round(sum(c.catrnimpo),2) imp_orig,c.catrncmon mon,
        round(decode(c.catrncmon,1,sum(c.catrnimpo),2,(sum(c.catrnimpo)*6.86)),2) imp_BS,
        TRIM(e.catmvdesc) descrip,'LA PROMOTORA E.F.V' banco, TRIM(a.gbagenomb) Nomb_Tit, TRIM(a.gbagendid) CI_Titular
        
from gbage a,camca b,catrn c,catca d,catmv e
where a.gbagecage=b.camcacage
and b.camcancta=c.catrnncta
and b.camcatpca=d.catcatpca
and c.catrnpref=e.catmvpref
and c.catrncorr=e.catmvcorr
and b.camcastat=1
and c.catrnftra between '{ini}' and '{fin}'
and c.catrnimpo>0
and c.catrnpref=15
and c.catrncorr=1
and c.catrnstat=0
and a.gbagecage in (33536,360586,32901,41082,77261,365261)
group by 1,2,3,4,5,6,7,8,11,12,14,16,17,18,19
UNION
--4_2 /* OPERACIONES ATM - DEPOSITO */ 
select decode(c.catrnndoc, null, c.catrnntra,c.catrnndoc) as nro_trans,c.catrnftra fecha,'' num_cta_origen,b.camcancta num_cta_destino,a.gbagecage cod_cli,
        TRIM(a.gbagenomb) nombre,TRIM(a.gbagendid) ci,TRIM(d.catcadesc) producto_asociado,'ATM' canal_trans,'DEPOSITO' desc_trans,
        c.catrnplaz suc,c.catrnagen agen,abs(round(sum(c.catrnimpo),2)) imp_orig,c.catrncmon mon,
        abs(round(decode(c.catrncmon,1,sum(c.catrnimpo),2,(sum(c.catrnimpo)*6.86)),2)) imp_BS,
        TRIM(e.catmvdesc) descrip,'LA PROMOTORA E.F.V' banco, TRIM(a.gbagenomb) Nomb_Tit, TRIM(a.gbagendid) CI_Titular
        
from gbage a,camca b,catrn c,catca d,catmv e
where a.gbagecage=b.camcacage
and b.camcancta=c.catrnncta
and b.camcatpca=d.catcatpca
and c.catrnpref=e.catmvpref
and c.catrncorr=e.catmvcorr
--and b.camcastat=1
and c.catrnftra between '{ini}' and '{fin}'
and abs(c.catrnimpo)>0
and c.catrnpref=16
and c.catrncorr=63
and c.catrnstat=0
and a.gbagecage in (33536,360586,32901,41082,77261,365261)
--and a.gbagecage = 359160
group by 1,2,3,4,5,6,7,8,11,12,14,16,17,18,19
UNION
--5 /*OPERACIONES CONTABILIDAD - DEPOSTIO SALARIO*/
select decode(c.catrnndoc, null, c.catrnntra,c.catrnndoc) as nro_trans,c.catrnftra fecha,b.camcancta num_cta_origen,'' num_cta_destino,a.gbagecage cod_cli,
        TRIM(a.gbagenomb) nombre,TRIM(a.gbagendid) ci,TRIM(d.catcadesc) producto_asociado,'CONTABILIDAD' canal_trans,
        'SALARIO' desc_trans,c.catrnplaz suc,c.catrnagen agen,round(sum(ABS(c.catrnimpo)),2) imp_orig,
        c.catrncmon mon,round(decode(c.catrncmon,1,sum(ABS(c.catrnimpo)),2,(sum(ABS(c.catrnimpo))*6.86)),2) imp_BS,
        TRIM(e.catmvdesc) descrip,'LA PROMOTORA E.F.V' banco, TRIM(a.gbagenomb) Nomb_Tit, TRIM(a.gbagendid) CI_Titular
        
from gbage a,camca b,catrn c,catca d,catmv e
where a.gbagecage=b.camcacage
and b.camcancta=c.catrnncta
and b.camcatpca=d.catcatpca
and c.catrnpref=e.catmvpref
and c.catrncorr=e.catmvcorr
--and b.camcastat=1
and c.catrnftra between '{ini}' and '{fin}'
and (c.catrnimpo*-1)>0
and c.catrnpref=52
and c.catrncorr in (105,106,107)
and c.catrnstat=0
and a.gbagecage in (33536,360586,32901,41082,77261,365261)
group by 1,2,3,4,5,6,7,8,11,12,14,16,17,18,19
UNION
--6 /*OPERACIONES PLATAFORMA - DEBITO*/
select decode(c.catrnndoc, null, c.catrnntra,c.catrnndoc) as nro_trans,c.catrnftra fecha,b.camcancta num_cta_origen,'' num_cta_destino,a.gbagecage cod_cli,
        TRIM(a.gbagenomb) nombre,TRIM(a.gbagendid) ci, TRIM(d.catcadesc) producto_asociado,
        'PLATAFORMA' canal_trans,'DEBITO' desc_trans,c.catrnplaz suc,c.catrnagen agen,round(sum(c.catrnimpo),2) imp_orig,
        c.catrncmon mon,round(decode(c.catrncmon,1,sum(c.catrnimpo),2,(sum(c.catrnimpo)*6.86)),2) imp_BS,
        TRIM(c.catrnglos) descrip,'LA PROMOTORA E.F.V' banco,TRIM(a.gbagenomb) Nomb_Tit, TRIM(a.gbagendid) CI_Titular
        
from gbage a,camca b,catrn c,catca d,catmv e
where a.gbagecage=b.camcacage
and b.camcancta=c.catrnncta
and b.camcatpca=d.catcatpca
and c.catrnpref=e.catmvpref
and c.catrncorr=e.catmvcorr
and b.camcastat=1
and c.catrnftra between '{ini}' and '{fin}'
and c.catrnimpo>0
and c.catrnpref=1
and c.catrncorr in(1,2,3)
and c.catrnstat=0
and a.gbagecage in (33536,360586,32901,41082,77261,365261)
group by 1,2,3,4,5,6,7,8,11,12,14,16,17,18,19
--order by 2,1
UNION
--7 /*OPERACIONES: TRANSACCIONES ELECTRONICAS - DEBITO*/
select decode(c.catrnndoc, null, c.catrnntra,c.catrnndoc) as nro_trans,c.catrnftra fecha,b.camcancta num_cta_origen, tetrnnctx num_cta_destino,a.gbagecage cod_cli,
        TRIM(a.gbagenomb) nombre,TRIM(a.gbagendid) ci,TRIM(d.catcadesc) producto_asociado,'TRANS. ELECTRONICAS' canal_trans,
        'DEBITO' desc_trans,c.catrnplaz suc,c.catrnagen agen,round(sum(c.catrnimpo),2) imp_orig,c.catrncmon mon,
        round(decode(c.catrncmon,1,sum(c.catrnimpo),2,(sum(c.catrnimpo)*6.86)),2) imp_BS,TRIM(e.catmvdesc) descrip,
        decode(f.tetrncenx,1001,'B. BNB',1003,'B. MERCANTIL',1004,'B. CENTRAL DE BOLIVIA',1005,'B. DE CREDITO',
                           1007,'B. DE LA NACION ARGENTINA',1008,'B. DO BRASIL',1009,'B. BISA',1014,'B. UNION',1016,'B. ECONOMICO',
                           1017,'B. SOL',1018,'B. GANADERO',1033,'B. FIE',1034,'B. FORTALEZA',1035,'B. FASSIL',1036,'B. PRODEM',
                           3001,'COOP. JESUS NAZARENO',3002,'COOP. SAN MARTIN DE PORRES',3003,'COOP. FATIMA',3004,'COOP. LA MERCED',
                           3005,'COOP. SAN PEDRO',3006,'COOP. LOYOLA',3007,'COOP. CATEDRAL TARIJA',3010,'COOP. SAN ANTONIO',
                           3012,'COOP. INCA HUASI',3026,'COOP. EL CHOROLQUE',null,'LA PROMOTORA E.F.V.',3029,'COOP. GRAN CHACO',
                           3025,'COOP. SAN MATEO',3043,'COOP. SAN CARLOS BORROMEO',75003,'LA PROMOTORA E.F.V',
                           74002,'B. PYME ECOFUTURO',74003,'B. PYME DE LA COMUNIDAD',27002,'CIDRE IFD')banco,
                           TRIM(f.tetrnnomx) Nomb_Tit, TRIM(f.tetrnndix) CI_Titular
                           
from gbage a,camca b,catrn c,catca d,catmv e, tetrn f
where a.gbagecage=b.camcacage
and b.camcancta=c.catrnncta
and b.camcatpca=d.catcatpca
and c.catrnpref=e.catmvpref
and c.catrncorr=e.catmvcorr
and c.catrnndoc=f.tetrnntra
--and b.camcastat=1
and c.catrnftra between  '{ini}' and '{fin}'
and (c.catrnimpo)>0
and c.catrnpref=10
and e.catmvcorr IN (20, 30)
and c.catrnstat=0
and a.gbagecage in (33536,360586,32901,41082,77261,365261)
group by 1,2,3,4,5,6,7,8,11,12,14,16,17,18,19
--order by 2,1
UNION
--8 /*OPERACIONES: TRANSACCIONES ELECTRONICAS - ABONO*/
select decode(c.catrnndoc, null, c.catrnntra,c.catrnndoc) as nro_trans,c.catrnftra fecha, tetrnnctx  num_cta_origen, b.camcancta  num_cta_destino,a.gbagecage cod_cli,
        TRIM(a.gbagenomb) nombre, TRIM(a.gbagendid) ci, TRIM(d.catcadesc) producto_asociado,
        'TRANS. ELECTRONICAS' canal_trans, 'ABONO' desc_trans, c.catrnplaz suc, c.catrnagen agen,
        abs(round(sum(c.catrnimpo),2)) imp_orig, b.camcacmon mon,
        --round(decode(c.catrncmon,1,sum(c.catrnimpo),2,(sum(c.catrnimpo)*6.86)),2) imp_BS15,
        abs(round (decode(b.camcacmon,1,c.catrnimpo,c.catrnimpo*c.catrncbio),2)) imp_BS,TRIM(e.catmvdesc) descrip,
        decode(f.tetrncenx,1001,'B. BNB',1003,'B. MERCANTIL',1004,'B. CENTRAL DE BOLIVIA',1005,'B. DE CREDITO',
                           1007,'B. DE LA NACION ARGENTINA',1008,'B. DO BRASIL',1009,'B. BISA',1014,'B. UNION',
                           1016,'B. ECONOMICO',1017,'B. SOL',1018,'B. GANADERO',1033,'B. FIE',1034,'B. FORTALEZA',
                           1035,'B. FASSIL',1036,'B. PRODEM',3001,'COOP. JESUS NAZARENO',3002,'COOP. SAN MARTIN DE PORRES',
                           3003,'COOP. FATIMA',3004,'COOP. LA MERCED',3005,'COOP. SAN PEDRO',3006,'COOP. LOYOLA',
                           3007,'COOP. CATEDRAL TARIJA',3010,'COOP. SAN ANTONIO',3012,'COOP. INCA HUASI',
                           3026,'COOP. EL CHOROLQUE',null,'LA PROMOTORA E.F.V.',3029,'COOP. GRAN CHACO',
                           3025,'COOP. SAN MATEO',3043,'COOP. SAN CARLOS BORROMEO',75003,'LA PROMOTORA E.F.V',
                           74002,'B. PYME ECOFUTURO',74003,'B. PYME DE LA COMUNIDAD',27002,'CIDRE IFD')banco,
                            TRIM(f.tetrnnomx) Nomb_Tit, TRIM(f.tetrnndix) CI_Titular
                           
from gbage a,camca b,catrn c,catca d,catmv e, tetrn f
where a.gbagecage=b.camcacage
and b.camcancta=c.catrnncta
and b.camcatpca=d.catcatpca
and c.catrnpref=e.catmvpref
and c.catrncorr=e.catmvcorr
and c.catrnndoc=f.tetrnntra
and b.camcastat=1
and c.catrnftra between '{ini}' and '{fin}'
and (c.catrnimpo*-1)>0
and c.catrnpref=10
and e.catmvcorr IN (21, 31)
and c.catrnstat=0
and a.gbagecage in (33536,360586,32901,41082,77261,365261)
group by 1,2,3,4,5,6,7,8,11,12,14,15,16,17,18,19
UNION
--9 /*OPERACIONES: PRESTAMOS COMERCIALES - COBRO PRESTAMO*/
select decode(c.catrnndoc, null, c.catrnntra,c.catrnndoc) as nro_trans,c.catrnftra fecha,b.camcancta num_cta_origen, '' num_cta_destino,a.gbagecage cod_cli,
        TRIM(a.gbagenomb) nombre,TRIM(a.gbagendid) ci,TRIM(d.catcadesc) producto_asociado,'PRESTAMOS COMERCIALES' canal_trans,
        'COBRO PRESTAMO' desc_trans,c.catrnplaz suc,c.catrnagen agen,round(sum(c.catrnimpo),2) imp_orig,
        c.catrncmon mon,round(decode(c.catrncmon,1,sum(c.catrnimpo),2,(sum(c.catrnimpo)*6.86)),2) imp_BS,
        e.catmvdesc descrip,'LA PROMOTORA E.F.V' banco,TRIM(a.gbagenomb) Nomb_Tit, TRIM(a.gbagendid) CI_Titular
        
from gbage a,camca b,catrn c,catca d,catmv e, prmpr f
where a.gbagecage=b.camcacage
and b.camcancta=c.catrnncta
and b.camcatpca=d.catcatpca
and c.catrnpref=e.catmvpref
and c.catrncorr=e.catmvcorr
and e.catmvcorr=f.prmprviac
and b.camcastat=1
and c.catrnftra between '{ini}' and '{fin}'
and (c.catrnimpo)>0
and c.catrnpref=70
and e.catmvcorr in (2,5)
and c.catrnstat=0
and a.gbagecage in (33536,360586,32901,41082,77261,365261)
group by 1,2,3,4,5,6,7,8,11,12,14,16,17,18,19
UNION
--11 /*TRANSF ELECT - TRASPASO ENTRE CUENTAS - DEBITO*/
select decode(a.catrnndoc, null, a.catrnntra,a.catrnndoc) as NRO_TRANS,a.catrnftra FECHA,b.catrnncta cta_ori, a.catrnncta cta_Dest,
        c.camcacage COD_CLI,TRIM(d.gbagenomb) NOMBRE,TRIM(d.gbagendid) CI, TRIM(g.catcadesc) producto_asociado,
        decode(a.catrnuser,(select u.adusrusrn
                            from adusr u 
                            where u.adusrusrn=a.catrnuser
                            and u.adusrusrn !='WEB'),'PLATAFORMA',(select u.adusrusrn
                                                                    from adusr u 
                                                                    where u.adusrusrn=a.catrnuser 
                                                                    and u.adusrusrn ='WEB'),'TRANS. ELECTRONICAS')CANAL_TRANS,
        'DEBITO' DESC_TRANS, b.catrnplaz SUC,b.catrnagen AGEN,b.catrnimpo IMP_ORIGEN,c.camcacmon MONEDA, 
        round(decode(c.camcacmon,1,b.catrnimpo,2,b.catrnimpo*6.86),2) IMP_BS, TRIM(e.catmvdesc) DESCRIP,'LA PROMOTORA E.F.V' banco,
        TRIM(f.gbagenomb) Nomb_Tit, TRIM(f.gbagendid) CI_Titular
        
from catrn a,catrn b, camca c, gbage d,camca cc, gbage f, catmv e, catca g
where a.catrnuser='WEB'
and a.catrnntra=b.catrntorg
and b.catrnncta=c.camcancta
and c.camcacage=d.gbagecage
and c.camcatpca=g.catcatpca
and a.catrnstat=0
and b.catrnpref=e.catmvpref
and b.catrncorr=e.catmvcorr
and a.catrnncta=cc.camcancta
and cc.camcacage= f.gbagecage
and a.catrnftra between '{ini}' and '{fin}'
and d.gbagecage in (33536,360586,32901,41082,77261,365261)
UNION
--12 /*TRANSF ELECT - TRASPASO ENTRE CUENTAS - ABONO*/
select decode(a.catrnndoc, null, a.catrnntra,a.catrnndoc) as NRO_TRANS,a.catrnftra FECHA,b.catrnncta cta_ori, a.catrnncta cta_Dest,
        cc.camcacage COD_CLI,TRIM(f.gbagenomb) NOMBRE,TRIM(f.gbagendid) CI,TRIM(g.catcadesc) producto_asociado,
        decode(a.catrnuser,(select u.adusrusrn
                            from adusr u 
                            where u.adusrusrn=a.catrnuser
                            and u.adusrusrn !='WEB'),'PLATAFORMA',(select u.adusrusrn
                                                                    from adusr u 
                                                                    where u.adusrusrn=a.catrnuser 
                                                                    and u.adusrusrn ='WEB'),'TRANS. ELECTRONICAS')CANAL_TRANS,
        'ABONO' DESC_TRANS, b.catrnplaz SUC,b.catrnagen AGEN,b.catrnimpo IMP_ORIGEN,c.camcacmon MONEDA, 
        round(decode(c.camcacmon,1,b.catrnimpo,2,b.catrnimpo*6.86),2) IMP_BS, e.catmvdesc DESCRIP,'LA PROMOTORA E.F.V' banco,
        TRIM(d.gbagenomb) Nomb_Tit, TRIM(d.gbagendid) CI_Titular
        
from catrn a,catrn b, camca c, gbage d,camca cc, gbage f, catmv e, catca g
where a.catrnuser='WEB'
and a.catrnntra=b.catrntorg
and b.catrnncta=c.camcancta
and c.camcacage=d.gbagecage
and cc.camcatpca=g.catcatpca
and a.catrnstat=0
and b.catrnpref=e.catmvpref
and b.catrncorr=e.catmvcorr
and a.catrnncta=cc.camcancta
and cc.camcacage= f.gbagecage
and catmvpref<>51 and catmvcorr <>20
and a.catrnftra between '{ini}' and '{fin}'
and f.gbagecage in (33536,360586,32901,41082,77261,365261)
UNION
--13 /*OPERACIONES - DPF*/
select distinct c.pfthdntra nro_trans, c.pfthdftra fecha, pfthdncta num_cta_origen, CAST(pfthdndep as char(20)) num_cta_origen,  
        a.gbagecage cod_cli, TRIM(a.gbagenomb) nombre, TRIM(a.gbagendid) ci,TRIM(d.pftdpdesc) producto_asociado,
        decode(pfthdmdes,5,'PLATAFORMA',6,'VENTANILLA',7,'PLATAFORMA') canal_trans,
        'DPF' desc_trans,c.pfthdplza suc, c.pfthdagen agen, round(sum(ABS(c.pfthdimpt)),2) imp_orig, 
        c.pfthdcmon mon, round(decode(c.pfthdcmon,1,sum(ABS(c.pfthdimpt)),2,(sum(ABS(c.pfthdimpt))*6.86)),2) imp_BS,
        decode(f.catrnmorg,7,TRIM(f.catrnglos),TRIM(c.pfthdglos)) descrip,'LA PROMOTORA E.F.V' banco,  --c.pfthdglos 
        TRIM(a.gbagenomb) Nomb_Tit, TRIM(a.gbagendid) CI_Titular

from gbage a, pfmdp b,pfthd c,pftdp d,catmv e, outer catrn f  
where a.gbagecage = b.pfmdpcage
and b.pfmdpndep = c.pfthdndep
and b.pfmdptdep = d.pftdptdep
and e.catmvpref = 58
and c.pfthdttrn = e.catmvcorr
and c.pfthdntra = f.catrnndoc
and f.catrnmorg = 7
and c.pfthdftra between  '{ini}' and '{fin}'
and a.gbagecage in (33536,360586,32901,41082,77261,365261)
group by 1,2,3,4,5,6,7,8,9,11,12,14,16,17,18,19
UNION
--14 /*OPERACIONES VENTANILLA - DEPOSITO A TERCEROS*/
select decode(c.catrnndoc, null, c.catrnntra,c.catrnndoc) as nro_trans,a.uitrpfreg fecha,'' num_cta_origen, CAST(a.uitrpnopr as char(20))  num_cta_destino,
        a.uitrpcage cod_cli, TRIM(a.uitrpnomb) nombre, TRIM(a.uitrpndid) ci,TRIM(d.catcadesc) producto_asociado,
        'VENTANILLA' canal_trans,'DEPOSITO' desc_trans,
        a.uitrpplaz suc,a.uitrpagen agen,round(sum(uitrpimpo),2) imp_orig, uitrpcmon mon,
        round(decode(uitrpcmon,1,sum(uitrpimpo),2,(sum(uitrpimpo)*6.86)),2) imp_BS,
        TRIM(uitrpdesc) descrip,'LA PROMOTORA E.F.V' banco,
        (select TRIM(x.gbagenomb)
                from gbage x
                where x.gbagecage=b.camcacage) Nomb_Tit, (select TRIM(x.gbagendid)
                                                                from gbage x
                                                                where x.gbagecage=b.camcacage) CI_Titular

from uitrp a,camca b,catrn c,catca d,catmv e 
where a.uitrpnopr = b.camcancta
and a.uitrpntra = c.catrnndoc
and b.camcatpca=d.catcatpca
and c.catrnpref=e.catmvpref
and c.catrncorr=e.catmvcorr
and c.catrnftra between '{ini}' and '{fin}'
and (c.catrnimpo*-1)>0
and c.catrnpref=51
and c.catrncorr=1
and c.catrnstat=0
and a.uitrpcage in (33536,360586,32901,41082,77261,365261)
and a.uitrpcage not in (select gbagecage
                        from gbage a
                        where a.gbagecage = b.camcacage)
group by 1,2,4,5,6,7,8,11,12,14,16,17,18,19
UNION
--15 /* TRANSFERENCIA - TRASPASO ENTRE CUENTAS - DEBITO */
select decode(a.catrnndoc, null, a.catrnntra,a.catrnndoc) as NRO_TRANS,a.catrnftra FECHA,b.catrnncta cta_ori, a.catrnncta cta_Dest,
        c.camcacage COD_CLI,TRIM(d.gbagenomb) NOMBRE,TRIM(d.gbagendid) CI, TRIM(g.catcadesc) producto_asociado,
        decode(a.catrnuser,(select u.adusrusrn
                            from adusr u 
                            where u.adusrusrn=a.catrnuser
                            and u.adusrusrn !='WEB'),'PLATAFORMA',(select u.adusrusrn
                                                                    from adusr u 
                                                                    where u.adusrusrn=a.catrnuser 
                                                                    and u.adusrusrn ='WEB'),'TRANS. ELECTRONICAS')CANAL_TRANS,
        'TRASPASO ENTRE CUENTAS' DESC_TRANS, b.catrnplaz SUC,b.catrnagen AGEN,b.catrnimpo IMP_ORIGEN,c.camcacmon MONEDA, 
        round(decode(c.camcacmon,1,b.catrnimpo,2,b.catrnimpo*6.86),2) IMP_BS, TRIM(e.catmvdesc) DESCRIP,
        'LA PROMOTORA E.F.V' banco,TRIM(f.gbagenomb) Nomb_Tit, TRIM(f.gbagendid) CI_Titular
        
from catrn a,catrn b, camca c, gbage d,camca cc, gbage f, catmv e, catca g
where a.catrnuser<>'WEB'
and a.catrnntra=b.catrntorg
and b.catrnncta=c.camcancta
and c.camcacage=d.gbagecage
and c.camcatpca=g.catcatpca
and a.catrnstat=0
and a.catrnpref = 3 and a.catrncorr = 1
and b.catrnpref=e.catmvpref
and b.catrncorr=e.catmvcorr
and a.catrnncta=cc.camcancta
and cc.camcacage= f.gbagecage
and a.catrnftra between '{ini}' and '{fin}'
--and c.camcatpca in (3,15,38,39,40,41)
and d.gbagecage in (33536,360586,32901,41082,77261,365261)
UNION
--16 /* TRANSFERENCIA - TRASPASO ENTRE CUENTAS */
select a.catrnntra NRO_TRANS,a.catrnftra FECHA, a.catrnncta cta_ori,  b.catrnncta cta_Dest,
        cc.camcacage COD_CLI,TRIM(f.gbagenomb) NOMBRE,TRIM(f.gbagendid) CI, TRIM(g.catcadesc) producto_asociado,
        decode(a.catrnuser,(select u.adusrusrn
                            from adusr u 
                            where u.adusrusrn=a.catrnuser
                            and u.adusrusrn !='WEB'),'PLATAFORMA',(select u.adusrusrn
                                                                    from adusr u 
                                                                    where u.adusrusrn=a.catrnuser 
                                                                    and u.adusrusrn ='WEB'),'TRANS. ELECTRONICAS')CANAL_TRANS,
        'TRASPASO ENTRE CUENTAS|ABONO' DESC_TRANS, b.catrnplaz SUC,b.catrnagen AGEN,b.catrnimpo IMP_ORIGEN,c.camcacmon MONEDA, 
        round(decode(c.camcacmon,1,b.catrnimpo,2,b.catrnimpo*6.86),2) IMP_BS, TRIM(e.catmvdesc) DESCRIP,
        'LA PROMOTORA E.F.V' banco,TRIM(d.gbagenomb) Nomb_Tit, TRIM(d.gbagendid) CI_Titular
        
from catrn a,catrn b, camca c, gbage d,camca cc, gbage f, catmv e, catca g
where a.catrnuser<>'WEB'
and a.catrnntra=b.catrntorg
and b.catrnncta=c.camcancta
and c.camcacage=d.gbagecage
and cc.camcatpca=g.catcatpca
and a.catrnstat=0
and a.catrnpref = 3 and a.catrncorr = 1
and b.catrnpref=e.catmvpref
and b.catrncorr=e.catmvcorr
and a.catrnncta=cc.camcancta
and cc.camcacage= f.gbagecage
and a.catrnftra between  '{ini}' and '{fin}'
--and c.camcatpca in (3,15,38,39,40,41)
and d.gbagecage in (33536,360586,32901,41082,77261,365261)
ORDER BY 2,1