SELECT *FROM admod ORDER BY 1,2;
SELECT SUM(total_impi) AS total
FROM (
  --3 CONTABILIDAD
  SELECT SUM(cndtrimpi) AS total_impi
  FROM cndtr
  WHERE cndtrcnta = '21401130' 
  AND cndtrplaz = 30 
  AND cndtragen = 30
  AND cndtrmorg = 3
  --AND cntcnftra >= '2023-01-01'
  UNION ALL
  --5 CAJAS DE AHORRO
  SELECT SUM(catcnimpi) AS total_impi
  FROM catcn
  WHERE catcncctb = '21401130'
  AND catcnplaz = 30
  AND catcnagen = 30
  AND catcnftra >= '2023-01-01'
  UNION ALL
  --6 CAJAS
  SELECT SUM(cjtcnimpi) AS total_impi
  FROM cjtcn
  WHERE cjtcncctb = '21401130'
  AND cjtcnplaz = 30
  AND cjtcnagen = 30
  AND cjtcnftra >= '2023-01-01'
  -- 7 DPF
  UNION ALL
  SELECT SUM(pftcnimpi) AS total_impi
  FROM pftcn
  WHERE pftcncctb = '21401130'
  AND pftcnplaz = 30
  AND pftcnagen = 30
  AND pftcnftra >= '2023-01-01'
  --8 BOLETAS DE GARANTIA
  UNION ALL
  SELECT SUM(bgtcnimpi) AS total_impi
  FROM bgtcn
  WHERE bgtcncctb = '21401130'
  AND bgtcnplaz = 30
  AND bgtcnagen = 30
  AND bgtcnftra >= '2023-01-01'
  --17 PRESTAMOS COMERCIALES
  UNION ALL
  SELECT SUM(prtcnimpi) AS total_impi
  FROM prtcn
  WHERE prtcncctb = '21401130'
  AND prtcnplaz = 30
  AND prtcnagen = 30
  AND prtcnftra >= '2023-01-01'
) AS SALDO_MODULO;

-- CONTABLE
SELECT sum(cndtrimpi)
FROM cndtr
WHERE cndtrcnta = '21401130'
AND cndtrplaz = 30
AND cndtragen = 30;