SELECT *FROM gagop
SELECT *FROM prmpr
SELECT *FROM prcgc WHERE prcgccarg = 417

SELECT *
FROM prmpr, gagop
WHERE prmprnpre = gagopnopr
AND gagoptgar = 27
AND prmprstat IN (2, 3, 5, 6, 7)

SELECT prmprnpre N_PRESTAMO,
	prmprcage COD_CLI,
	prmprfdes FECHA_DESEMBOLSO,
	prmprtcre TIPO_CRED,
	TRIM(prtcrdesc) DESCRIPCION,
	prmprcmon MONEDA,
	gagoptgar TIPO_GARANTIA,
	gbagenomb NOMBRE_CLIENTE
--	prcgccarg CARGO
FROM prmpr INNER JOIN gagop
 	ON prmprnpre = gagopnopr
inner JOIN gbage
	ON prmprcage = gbagecage
INNER JOIN prcgc
 	ON prmprnpre = prcgcnpre
INNER JOIN prtcr
	ON prmprtcre = prtcrtcre
WHERE prmprstat IN (2, 3, 5, 6, 7)
AND prmprmrcb = 0
AND gagoptgar = 27
AND gagopmrcb = 0
-- AND prmprtcre = 
-- AND gagopstat
AND prcgccarg <> 417
ORDER BY 1


