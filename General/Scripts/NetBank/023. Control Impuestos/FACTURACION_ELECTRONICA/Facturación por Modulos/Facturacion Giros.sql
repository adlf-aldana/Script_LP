-- comisiones de giros
SELECT UNIQUE 15,"015"||"-"||"000"||"-"||LPAD(grcgpccgo,4,"0"),grcgpdesc, grcgpctbl
FROM grcgp, cnrip
WHERE grcgpctbl BETWEEN cnripcini AND  cnripcfin
  AND grcgpcfis="S";
  
SELECT *FROM iplvt WHERE iplvtnfac = 28 27 WHERE iplvtmodn = 15 ORDER BY iplvtfpro DESC ;
SELECT *FROM iplvt ORDER BY iplvtfpro DESC ;

SELECT *FROM fehfe

SELECT *FROM admod ORDER BY 1

SELECT *FROM camca WHERE camcacage = 359160

SELECT *FROM grcgp ORDER BY 1

SELECT *FROM cndtr WHERE cndtrcnta IN (
54501103,
54501203,
54501101,
54501201,
54105201,
54105101,
54501103,
54501203,
54501101,
54501201,
54501107,
54501207,
54105201,
54105201,
54501103,
54501203,
54501101,
54501201,
54105201,
54105101,
54501103,
54501203,
54501101,
54501201, 
54105201,  
54105101,   
54501103,    
54501203,     
54501101,      
54501201,       
54105201,        
54105101);

UNLOAD TO ferci_giros.txt SELECT *FROM ferci WHERE fercicpro LIKE '015-%';
LOAD FROM ferci_giros.txt INSERT INTO ferci;

INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0001   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0002   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0003   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0004   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0005   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0006   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0007   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0008   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0009   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0010   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0011   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0012   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0013   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0014   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0025   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0026   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0027   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0028   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0029   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0030   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0040   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0041   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0042   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0043   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0044   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0045   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0051   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0052   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0053   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0054   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0055   ','71190               ');
INSERT INTO ferci (fercinnit,fercicpro,fercicimp) VALUES ('1009387022     ','015-000-0056   ','71190               ');

SELECT *FROM fehfe