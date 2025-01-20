SELECT * 
FROM ipcon;

SELECT * 
FROM ipctl;

SELECT * 
FROM ipdet;

SELECT * 
FROM ipexc;

SELECT * 
FROM ipexg;

SELECT * 
FROM ipext;

-- dolares a Bs
SELECT *
FROM ipfcv
WHERE ipfcvfpro = '2023-06-01'
ORDER BY ipfcvfpro;

SELECT *
FROM ipime
ORDER BY ipimefpro DESC;

SELECT * 
FROM ipitf;

SELECT * 
FROM ipith
ORDER BY ipithfpro DESC ;

SELECT * 
FROM iplco;

SELECT * 
FROM iplva;

SELECT * 
FROM iplvd
WHERE iplvdnfac = 92;

SELECT * 
FROM iplvt
WHERE iplvtnfac = 92
ORDER BY iplvtfpro DESC ;

SELECT * 
FROM ipmre;

SELECT * 
FROM ipoiv;

SELECT * 
FROM ipord;

SELECT * 
FROM ippme;

SELECT * 
FROM iprau;

SELECT * 
FROM iprau_sai;

SELECT * 
FROM ipret;

SELECT * 
FROM ipruc;

SELECT iptdctdoc, iptdcdesc FROM iptdc;

SELECT *FROM gbcon ORDER BY 1
SELECT * 
FROM iplvt
ORDER BY iplvtfpro DESC ;

SELECT *
FROM camca
ORDER BY camcafpro DESC 