SELECT prmprnpre,
	prmprcage,
	prmprtcre,
	prmprcmon,
	prmprplzo,
	prmprgrac,
	prmprsald,
	prmprmdes,
	prmprfpvc,
	prmprctac,
	prmprpdvg,
	prmprfinc,
	camcasact
FROM prmpr, camca
WHERE prmprstat IN (2, 3, 5, 6, 7)
AND prmprdeba = 'S'
AND camcancta = prmprctac
-------------------------
SELECT * FROM prmpr WHERE prmprcage = 39139

--850748
SELECT *FROM prtdt WHERE prtdtnpre = 10047560 ORDER BY prtdtfpro
--
SELECT *FROM prtdt WHERE prtdtnpre = 10040797
-------------------------------------------
