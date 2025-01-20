-- ERROR: ERROR DE CALCULO SUBTOTAL POR PARTE DEL FACTURADOR AXON
SELECT fedfestot,
	fedfestat,
	*
FROM fedfe
WHERE fedfeiddf = 4720;
-- ERROR: ERROR DE CALCULO SUBTOTAL POR PARTE DEL FACTURADOR AXON
UPDATE fedfe 
SET fedfestot = 4739.53393 --subTotal 4739.60000
WHERE  fedfeiddf = 4720;

SELECT fehfestat,
	fehfemrcb,
	fehfecmot, 
	fehfefuli,
	fehfeccuf, 
	fehfecufd,
	fehfeifee,
	fehfenfac
FROM fehfe
WHERE fehfeiddf = 4720; 

-- VOLVIENDO A MANDAR LA FACTURA AL SIN
UPDATE fehfe 
SET fehfestat = 100, --101
fehfemrcb = 0, --0
fehfecmot = NULL, --NULL
fehfefuli = NULL, --NULL
fehfeccuf = NULL, --NULL
fehfecufd = NULL, --NULL
fehfeifee = NULL --NULL
WHERE fehfeiddf = 4720;

-- ERROR: ERROR DE CALCULO MontoTotalMoneda POR PARTE DEL FACTURADOR AXON
SELECT fehfemtmo,
	fehfemtot
FROM fehfe
WHERE fehfeiddf = 4720; 

-- ERROR: ERROR DE CALCULO MontoTotalMoneda POR PARTE DEL FACTURADOR AXON
UPDATE fehfe
SET fehfemtmo = 33034.99 --monto total moneda 680.00000
--SET fehfemtot = 4739.53 --montoTotal 4739.60000
WHERE fehfeiddf = 4720;

-- VOLVIENDO A MANDAR LA FACTURA AL SIN
UPDATE fehfe 
SET fehfestat = 100, 
fehfemrcb = 0,
fehfecmot = NULL, 
fehfefuli = NULL,
fehfeccuf = NULL, 
fehfecufd = NULL,
fehfeifee = NULL
WHERE fehfeiddf = 4720;

-----------------------------------------------------------
