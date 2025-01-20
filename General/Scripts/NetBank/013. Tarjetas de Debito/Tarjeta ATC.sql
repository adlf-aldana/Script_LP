SELECT *
FROM tdmtd
WHERE tdmtdntrj = 600008819;

UPDATE tdmtd
SET tdmtdfexp = '2025-04-30'--2025-01-31
WHERE tdmtdntrj = '600008819';

SELECT *
FROM camca
WHERE camcacage = 358244
AND camcastat = 1