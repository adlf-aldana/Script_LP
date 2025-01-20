SELECT --ipfcvnreg,
	ipfcvfreg,
	ipfcvmodn,
	ipfcvnopr,
	ipfcvntra,
	--ipfcvcmon,
	ipfcvimon,
	ipfcvtcam,
	ipfcvimpt,
	ipfcvimpt,
	ipfcvnfac,
	ipfcvmrcb,
	ipfcvuser,
	ipfcvhora,
	ipfcvnomb
FROM ipfcv
ORDER BY ipfcvfpro DESC ;

SELECT *FROM ipfcv
WHERE ipfcvnfac IN (105)--(331,338)
AND ipfcvntra = 27650434;
AND ipfcvanio = 2023;

SELECT *
FROM ipfcv
ORDER BY ipfcvfpro DESC;


select * 
from ipfcv
where ipfcvfreg="2023-06-15"
AND ipfcvanio = 2023
AND ipfcvnopr = 3051787900      
order by 1 DESC;

select * 
from ipfcv
where ipfcvnfac = '331'
AND ipfcvfreg = "2023-06-15"
order by 1 DESC;


SELECT *FROM camca WHERE camcancta = 3051662617
SELECT *FROM gbage WHERE gbagecage = 45613

SELECT *FROM ipime WHERE ipimefreg = '2023-06-15'

SELECT *
FROM admdt
WHERE admdtmodn = 96;

SELECT *
FROM informix.ipfcv
WHERE ipfcvnfac = 331

INSERT INTO admdt (admdtmodn,admdtmprn,admdtmdtn,admdtdesc,admdtnprg,admdtnimg,admdtstat,admdttama,admdtlibr,admdtnpnb) 
VALUES (96,7,11,'Registro de Transacciones de Compra de M','fglgo /backup/bexe/ip378                     ',NULL,'1',1,'ipt378                                                                                              ','PHP/IPT378.html                         ');



  select ipfcvnreg,
  	ipfcvnopr,
  	ipfcvnfac,
  	ipfcvntra,
  	ipfcvcmon,
  	ipfcvbimp,
  	ipfcvpref,
  	ipfcvcorr,
  	ipfcvdope,
  	ipfcvnomb 
  from ipfcv
   where ipfcvfreg="2023-06-15"
  order by 1 descM
  
  SELECT *
  FROM ipime
  WHERE ipimenfac IN(475,
486)
AND ipimefreg = '2023-06-21' 
