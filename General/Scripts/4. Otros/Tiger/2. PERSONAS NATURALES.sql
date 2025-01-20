SELECT *FROM admod ORDER BY 1,2;
SELECT SUM(total_impi) AS total
FROM (
  --3 CONTABILIDAD
  SELECT SUM(cndtrimpi) AS total_impi
  FROM cndtr
  WHERE cndtrcnta = '13505211' 
  --AND cndtrplaz = 30 
  --AND cndtragen = 30
  AND cndtrmorg = 3
  --AND cntcnftra >= '2023-01-01'
  UNION ALL
  --5 CAJAS DE AHORRO
  SELECT SUM(catcnimpi) AS total_impi
  FROM catcn
  WHERE catcncctb = '13505211'
  --AND catcnplaz = 30
  --AND catcnagen = 30
  AND catcnftra >= '2023-01-01'
  UNION ALL
  --6 CAJAS
  SELECT SUM(cjtcnimpi) AS total_impi
  FROM cjtcn
  WHERE cjtcncctb = '13505211'
  --AND cjtcnplaz = 30
  ---AND cjtcnagen = 30
  AND cjtcnftra >= '2023-01-01'
  -- 7 DPF
  UNION ALL
  SELECT SUM(pftcnimpi) AS total_impi
  FROM pftcn
  WHERE pftcncctb = '13505211'
  --AND pftcnplaz = 30
  --AND pftcnagen = 30
  AND pftcnftra >= '2023-01-01'
  --8 BOLETAS DE GARANTIA
  UNION ALL
  SELECT SUM(bgtcnimpi) AS total_impi
  FROM bgtcn
  WHERE bgtcncctb = '13505211'
  --AND bgtcnplaz = 30
  --AND bgtcnagen = 30
  AND bgtcnftra >= '2023-01-01'
  --17 PRESTAMOS COMERCIALES
  UNION ALL
  SELECT *--SUM(prtcnimpi) AS total_impi
  FROM prtcn
  WHERE prtcncctb = '13505211'
  --AND prtcnplaz = 30
  --AND prtcnagen = 30
  AND prtcnftra >= '2023-01-01'
) AS SALDO_MODULO;

-- CONTABLE
SELECT sum(cndtrimpi)
FROM cndtr
WHERE cndtrcnta like '13505211'
AND cndtrmorg = 3
and cndtrmrcb = 0
and cndtrcmon = 2;
AND cndtrplaz = 30
AND cndtragen = 30;

select *from balance;
t2 -> select *from crctl
t3 -> select *from gbofi
t0 -> select *from gbpmt

select *
from prtdt
where prtdtnpre = 10042666
and prtdtftra >= '2023-05-01'

select *
from prtcn
where prtcnnpre = 10042666
and prtcnftra >= '2023-05-01'