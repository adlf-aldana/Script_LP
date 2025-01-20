-- ERROR: ERROR DE CALCULO SUBTOTAL POR PARTE DEL FACTURADOR AXON
SELECT fedfestot,
	fedfestat,
	*
FROM fedfe
WHERE fedfeiddf IN (22100);


-- ERROR: ERROR DE CALCULO SUBTOTAL POR PARTE DEL FACTURADOR AXON
UPDATE fedfe 
SET fedfestot = 17.16976 --subTotal 17.17
WHERE  fedfeiddf = 22100;

SELECT fehfestat,
	fehfemrcb,
	fehfecmot, 
	fehfefuli,
	fehfeccuf, 
	fehfecufd,
	fehfeifee,
	fehfenfac
FROM fehfe
WHERE fehfeiddf = 5226; 

SELECT *FROM fehfe WHERE fehfestat = 105

unload TO fehfe_facturas_baja_villazon.txt
SELECT *FROM fehfe WHERE fehfeiddf IN (5214,
5216,
5217,
5218,
5219,
5220,
5221,
5224,
5225,
5226,
5227,
5228,
5229,
5230,
5231)

-- VOLVIENDO A MANDAR LA FACTURA AL SIN
UPDATE fehfe 
SET fehfestat = 100, --101
fehfemrcb = 0, --0
fehfecmot = NULL, --NULL
fehfefuli = NULL, --NULL
fehfeccuf = NULL, --NULL
fehfecufd = NULL, --NULL
fehfeifee = NULL --NULL
WHERE fehfeiddf IN (22100);

-- ERROR: ERROR DE CALCULO MontoTotalMoneda POR PARTE DEL FACTURADOR AXON
SELECT fehfemtmo,
	fehfemtot
FROM fehfe
WHERE fehfeiddf = 22100; 

-- ERROR: ERROR DE CALCULO MontoTotalMoneda POR PARTE DEL FACTURADOR AXON
UPDATE fehfe
SET fehfemtmo = 119.68  --monto total moneda 119.66
--SET fehfemtot =  --montoTotal 
WHERE fehfeiddf = 22100;

-- VOLVIENDO A MANDAR LA FACTURA AL SIN
UPDATE fehfe 
SET fehfestat = 100, 
fehfemrcb = 0,
fehfecmot = NULL, 
fehfefuli = NULL,
fehfeccuf = NULL, 
fehfecufd = NULL,
fehfeifee = NULL
WHERE fehfeiddf = 22100;

-----------------------------------------------------------
