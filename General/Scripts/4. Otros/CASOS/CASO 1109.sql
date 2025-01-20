-- CASO 1109
SELECT *FROM prtdt WHERE prtdtnpre = 10040811 AND (prtdtftra = '2020-03-10' or prtdtftra = '2020-04-09')   ORDER BY 5
SELECT *FROM prcon ORDER BY 1,2
-- VIA 400
SELECT prhtrntra, prhtrnpre, prhtrftra, prhtrttrn, prhtrtcob, prhtrndoc, prhtrcvia, prhtrnvia, prhtrimpt, prhtrmvia, prhtrtcam, prhtrimpo, prhtrcmon, prhtrmdes, prhtrtdes, prhtrfreg, prhtrtcof, prhtrmpag, prhtrreve, prhtrusra, prhtrfaut, prhtrmrcb, prhtrplaz, prhtragen, prhtruser, prhtrhora, prhtrfpro, prhtrcage, prhtrnomb, prhtrndid, prhtrtres, prhtrglos, prhtrstat, prhtrfrev 
FROM prhtr WHERE prhtrnpre = 10040811 ORDER BY 3;

SELECT prhtrntra, prhtrnpre, prhtrftra, prhtrttrn, prhtrtcob, prhtrndoc, prhtrcvia, prhtrnvia, prhtrimpt, prhtrmvia, prhtrtcam, prhtrimpo, prhtrcmon, prhtrmdes, prhtrtdes, prhtrfreg, prhtrtcof, prhtrmpag, prhtrreve, prhtrusra, prhtrfaut, prhtrmrcb, prhtrplaz, prhtragen, prhtruser, prhtrhora, prhtrfpro, prhtrcage, prhtrnomb, prhtrndid, prhtrtres, prhtrglos, prhtrstat, prhtrfrev 
FROM prhtr WHERE prhtrnpre = 10043950 ORDER BY 3;