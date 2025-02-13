--22646

SELECT fehfestat,fehfenfac, fehfemtot,*
FROM fehfe
WHERE fehfeiddf IN (22646)

UPDATE fehfe
SET fehfestat = 400,
fehfecres = 0,
fehfetres = 'OK',
fehfeccuf = '',
fehfecufd = ''
WHERE fehfeiddf = 22646

SELECT *
FROM felvt
WHERE felvtnufg IN (22646)

UPDATE felvt
SET felvtccuf = ''
WHERE felvtnufg IN (22646)
