SELECT *FROM admod ORDER BY 1,2;
SELECT SUM(total_impi) AS total
FROM (
  --3 CONTABILIDAD
--  SELECT SUM(cndtrimpi) AS total_impi
  --FROM cndtr
  --WHERE cndtrcnta = '21201130' 
  --AND cndtrplaz = 90
  --AND cndtragen = 90
  --AND cndtrmorg = 3
  --AND cntcnfdoc >= '2025-02-06'
  --UNION ALL
  --5 CAJAS DE AHORRO
  SELECT SUM(abs(catcnimpi)) AS total_impi
  FROM catcn
  WHERE catcncctb = '21201130'
  AND catcnplaz = 90
--  AND catcnagen = 90
  AND catcnftra >= '2025-01-01'
  UNION ALL
  --6 CAJAS
  SELECT SUM(cjtcnimpi) AS total_impi
  FROM cjtcn
  WHERE cjtcncctb = '21201130'
  AND cjtcnplaz = 90
--  AND cjtcnagen = 90
  AND cjtcnftra >= '2025-01-01'
  -- 7 DPF
  UNION ALL
  SELECT SUM(pftcnimpi) AS total_impi
  FROM pftcn
  WHERE pftcncctb = '21201130'
  AND pftcnplaz = 90
--  AND pftcnagen = 90
  AND pftcnftra >= '2025-01-01'
  --8 BOLETAS DE GARANTIA
  UNION ALL
  SELECT SUM(bgtcnimpi) AS total_impi
  FROM bgtcn
  WHERE bgtcncctb = '21201130'
  AND bgtcnplaz = 90
--  AND bgtcnagen = 90
  AND bgtcnftra >= '2025-01-01'
  --17 PRESTAMOS COMERCIALES
  UNION ALL
  SELECT SUM(prtcnimpi) AS total_impi
  FROM prtcn
  WHERE prtcncctb = '21201130'
  AND prtcnplaz = 90
--  AND prtcnagen = 90
  AND prtcnftra >= '2025-01-01'
) AS SALDO_MODULO;

-- CONTABLE
SELECT sum(cndtrimpi)
FROM cndtr
WHERE cndtrcnta = '21201130'
AND cndtrplaz = 90
AND cndtragen = 90;