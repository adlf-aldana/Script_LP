SELECT distinct prmprnpre || ','
FROM prppg, prmpr
WHERE prmprnpre = prppgnpre
AND prmprdeba = 'S'
AND (prppgfech > '2023-05-15'
AND prppgfech < '2023-05-31');