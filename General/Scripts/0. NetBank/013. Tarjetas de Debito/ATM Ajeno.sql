-- ATM's AJENOS
unload to tdtrn_otro_ATM.txt
SELECT * 
FROM tdtrn
WHERE tdtrnfpro BETWEEN '2023-09-18' AND '2023-09-22'
--WHERE tdtrnfpro BETWEEN '30-06-2023' AND '30-06-2023'
AND tdtrnttrn = 4;

SELECT *
FROM prcgc
WHERE prcgcnpre =10043720 