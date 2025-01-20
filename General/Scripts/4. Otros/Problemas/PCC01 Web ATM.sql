SELECT *FROM uifou WHERE uifouuser = 'ATM'

SELECT *FROM uifou WHERE uifounfor IN (31658,31684)
SELECT *FROM uitrp WHERE uitrpnfor IN (31658,31684)

SELECT uitrpfreg,
	uitrpnomb,
	uitrpmorg,
	uitrpntra,
	uitrpdesc,
	uitrpimpo,
	uitrpplaz,
	uitrpagen,
	uitrpuser
FROM uitrp 
WHERE uitrpuser = 'ATM' 
--AND uitrpfreg >= '2023-09-01'

SELECT *FROM admod

SELECT *FROM catrn WHERE catrnncta = 3051963968 AND catrnftra = '2023-09-05'

SELECT *FROM uitrp WHERE uitrpcage = 359160

SELECT *FROM catmv ORDER BY 1,2,3;

SELECT *FROM camca WHERE camcacage = 359160
SELECT *FROM gbage WHERE gbagecage = 359160

SELECT *FROM camca WHERE camcancta = 3051950818
SELECT *FROM capig WHERE capigncta = 3051950818 AND capigstat = 0
SELECT *FROM catrn WHERE catrnncta = 3051950818
SELECT *FROM uitrp WHERE uitrpcage = 359160 AND uitrpuser = 'WEB' ORDER BY uitrpfpro 
SELECT *FROM uifou WHERE uifoucage = 359160