-- CC/Parametros/Mant. Cargos parametros
unload TO cccgp_Contact.txt
SELECT * 
FROM cccgp;

-- TIPOS DE MOVIMIENTO
unload TO cctmv_Contact.txt
SELECT *
FROM cctmv
ORDER BY 1,2;

-- CC/PARAMETROS/TIPOS DE CUENTAS CORRIENTES
unload TO cctcc.txt
SELECT * 
FROM cctcc;

-- CC/PARAMETROS/TIPOS DE CUENTAS CORRIENTES - CUENTAS CORRIENTES DE CAPITALIZACION
unload TO cccca_Contact.tx
SELECT * 
FROM cccca;

-- CC/PARAMETROS/TIPOS PIGNORACION
unload TO cctpg_Contact.txt
SELECT * 
FROM cctpg;

-- TIPOS DE CHEQUERAS
unload TO cctch_Contact.txt
SELECT * 
FROM cctch;

-- NIVELES DE TASAS DE INTERES
unload TO ccniv_contact.txt
SELECT *
FROM ccniv;

-- Mant. Parametros Especiales
unload TO cctmv_Contact.txt
SELECT *
FROM cctmv
--WHERE cctmvpref = 10
ORDER BY 1,2;

-- Mant. Parametros Generales
unload TO ccctl_Contact.txt
SELECT * 
FROM ccctl;

-- CC/PARAMETROS/MOTIVOS DE BLOQUEO
unload TO ccblq_Contact.txt 
SELECT *
FROM ccblq;

-- CC/PARAMETROS/MANTENIMIENTO DE CONCEPTOS
unload TO cccon_Contact.txt
SELECT * 
FROM cccon;

-- CC/PARAMETROS/MANTENIMIENTO CONCEPTOS - PREF 6 -> GLOSA
unload TO ccglo_Contact.txt
SELECT * 
FROM ccglo;

-- PLAN DE CUENTAS NECESARIOS PARA CUENTAS CORRIENTES
unload TO cnplc.txt
SELECT *FROM cnplc WHERE cnplccnta IN ('54103101','54103102','18307131','54103103','21105101','22111103'
										,'24199101','21102130','21102230','21402130'
										,'21402230','21101140','21101240','21102140'
										,'21102240','21402140','21402240')
-- FALTA
SELECT *FROM cnplc WHERE cnplccnta = '13102101'

unload TO cnplc_Contact.txt
SELECT *FROM cnplc WHERE cnplccnta IN (
'54103101',
'54103102',
'18307131',
'54103103',
'21105101',
'22111103',
'24199101',
'21102130',
'21102230',
'21402130',
'21402230',
'21101140',
'21101240',
'21102140',
'21102240',
'21402140',
'21402240',
'21101130',
'21101230');