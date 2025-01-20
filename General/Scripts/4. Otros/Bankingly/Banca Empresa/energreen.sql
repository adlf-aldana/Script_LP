-- BANCA EMPRESA
-- cod_User: 80893
-- firmante: 42882
-- Admin 1: admin1
-- pass:	Clave123*
-- preg:	prueba
SELECT *
FROM camca
WHERE camcacage = 80893

-- BANCA PERSONA
-- cod_User: 42882
-- user: leonardo.yamil
-- pass: Clave123*
-- preg: prueba
SELECT *
FROM camca
WHERE camcacage = 42882;

SELECT *
FROM gbage
WHERE gbagecage = 42882 

select * from adlog
where adloguser='DVN'
and adloglgin='informix'
AND adlogfpro='2023-07-13';

select * from adlog
where adloguser IN ('AMY','ZCE','DVN')
and adloglgin='informix'
AND adlogfpro>='2023-07-13';

SELECT *
FROM prppg
WHERE prppgnpre = 10047730

SELECT *
FROM tetrn
WHERE tetrnntra = 136595

SELECT *
FROM tecon
ORDER BY 1,2


SELECT *
FROM capig
WHERE capigncta = 3051786762
AND capigstat = 0

SELECT *
FROM catrn
WHERE catrnncta = 3051786762
ORDER BY 2;

SELECT *FROM catmv ORDER BY 1,2;

SELECT *FROM cnplc WHERE cnplccnta = 21201130