SELECT fehfefreg FECHA,
    fehfeiddf NRO_REG,
    fehfenfac NRO_FAC,
    fehfestat || ' - ' || fehfetres ESTADO,
    fehfemtot IMPORTE     
FROM fehfe
WHERE fehfestat = 101
AND fehfefreg >= '2025-01-17'

unload TO fehfe_22100.txt
SELECT *
FROM fehfe
WHERE fehfeiddf = 22100;

unload TO felvt_22100.txt
SELECT *
FROM felvt
WHERE felvtnufg = 22100;

SELECT fehfefreg FECHA,
    fehfeiddf NRO_REG,
    fehfenfac NRO_FAC,
    fehfestat || ' - ' || fehfetres ESTADO,
    fehfemtot IMPORTE,
    fehfemrcb,
    fehfecmot, 
    fehfefuli,
    fehfeccuf, 
    fehfecufd,
    fehfeifee
FROM fehfe
WHERE fehfeiddf IN (22100);

-- VOLVIENDO A MANDAR LA FACTURA AL SIN
UPDATE fehfe 
SET fehfestat = 100, 
fehfemrcb = 0,
fehfecmot = NULL, 
fehfefuli = NULL,
fehfeccuf = NULL, 
fehfecufd = NULL,
fehfeifee = NULL
WHERE fehfeiddf IN (22100);