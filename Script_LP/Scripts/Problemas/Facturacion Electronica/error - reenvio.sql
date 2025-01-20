SELECT fehfefreg FECHA,
    fehfeiddf NRO_REG,
    fehfenfac NRO_FAC,
    fehfestat || ' - ' || fehfetres ESTADO,
    fehfemtot IMPORTE     
FROM fehfe
WHERE fehfeiddf IN (21929,
21928,
21927,
21926,
21925);

-- VOLVIENDO A MANDAR LA FACTURA AL SIN
UPDATE fehfe 
SET fehfestat = 100, 
fehfemrcb = 0,
fehfecmot = NULL, 
fehfefuli = NULL,
fehfeccuf = NULL, 
fehfecufd = NULL,
fehfeifee = NULL
WHERE fehfeiddf IN (21929,
21928,
21927,
21926,
21925);