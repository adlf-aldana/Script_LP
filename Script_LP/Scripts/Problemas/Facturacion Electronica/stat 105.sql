SELECT fehfestat,fehfenfac, fehfemtot,*
FROM fehfe
WHERE fehfeiddf IN (22066)

--CORRELATIVO FACTURA
SELECT *
FROM fecdf
WHERE fecdfgest = 2025;


UPDATE fehfe
SET fehfestat = 400,
fehfecres = 0,
fehfetres = 'OK',
fehfeccuf = '4510A7F2FE17BED2BC32B14824EF61ED275D408C24672C4C07CF51F74',
fehfecufd = 'BQVVDKcKwQUJBNzDQ4Njk2Q0EyNEY=QmUhUEJCU0JaVUFI1MTQzRThDRUZGN'
WHERE fehfeiddf = 22066

