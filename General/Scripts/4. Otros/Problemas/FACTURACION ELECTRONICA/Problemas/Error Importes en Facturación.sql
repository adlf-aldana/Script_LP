-- ERROR: ERROR DE CALCULO SUBTOTAL POR PARTE DEL FACTURADOR AXON
SELECT fedfestot,
	fedfestat,
	*
FROM fedfe
WHERE fedfeiddf IN (5368);
1574 1576
-- ERROR: ERROR DE CALCULO SUBTOTAL POR PARTE DEL FACTURADOR AXON
UPDATE fedfe 
SET fedfestot = 97.55864 --subTotal 97.56000
WHERE  fedfeiddf = 5368;

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
WHERE fehfeiddf IN (5215, 5222);

-- ERROR: ERROR DE CALCULO MontoTotalMoneda POR PARTE DEL FACTURADOR AXON
SELECT fehfemtmo,
	fehfemtot
FROM fehfe
WHERE fehfeiddf = 5368; 

-- ERROR: ERROR DE CALCULO MontoTotalMoneda POR PARTE DEL FACTURADOR AXON
UPDATE fehfe
SET fehfemtmo = 286.96  --monto total moneda 286.94000
--SET fehfemtot =  --montoTotal 
WHERE fehfeiddf = 5368;

-- VOLVIENDO A MANDAR LA FACTURA AL SIN
UPDATE fehfe 
SET fehfestat = 100, 
fehfemrcb = 0,
fehfecmot = NULL, 
fehfefuli = NULL,
fehfeccuf = NULL, 
fehfecufd = NULL,
fehfeifee = NULL
WHERE fehfeiddf = 5893;

-----------------------------------------------------------
