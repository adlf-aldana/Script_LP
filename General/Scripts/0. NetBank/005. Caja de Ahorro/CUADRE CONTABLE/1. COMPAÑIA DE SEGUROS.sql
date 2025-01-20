
--** COMPAÑIA DE SEGUROS
--** 21201110

-- SALDO MODULO
SELECT SUM(total_impi) AS total
FROM (
  SELECT SUM(catcnimpi) AS total_impi
  FROM catcn
  WHERE catcncctb = '21201110'
  UNION ALL
  SELECT SUM(pftcnimpi)
  FROM pftcn
  WHERE pftcncctb = '21201110'
) AS SALDO_MODULO;

-- SALDO CONTABLE
SELECT *--sum(cndtrimpi)
FROM cndtr
WHERE cndtrcnta = '21201110';

---------------------------------------------------

SELECT *FROM pftcn WHERE pftcncctb = '21201110'
SELECT *FROM pftrn WHERE pftrnndep = 330026081800000

SELECT *FROM camca WHERE camcacage = 357471
SELECT *FROM catrn WHERE catrnncta = 3051906764
SELECT *FROM catcn WHERE catcnncta = 3051906764

SELECT *FROM pfcon ORDER BY 1,2