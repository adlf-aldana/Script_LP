-- VERIFICANDO QUE NO EXISTE EN LA COBPVE
SELECT *
FROM cobpve
ORDER BY cobpvepvid DESC 
WHERE cobpverent = (SELECT cobreprent
					FROM cobrep
					WHERE cobrepccta = 250469900--Codigo
					AND cobrepfech = 20230825 -- Fecha
					AND cobreprent = 03401513--N Fac
					AND cobrepagen = 34); --Cod Agencia


SELECT cobrepagen agencia,
--	cobrepccta ,
	cobrepfech fecha,
	cobrepimpo importe,
	cobrepnnit nit,
	cobreprent nro_factura,
	cobrepraso nombre
FROM cobrep 
WHERE cobrepfech = 20230825 -- Fecha
AND cobrepagen = 34
AND cobreprent = 03401513 --N Fac


----------------------------------------
-- DATOS QUE SE INSERTARAN
SELECT (SELECT max(cobpvepvid)+1 
	FROM cobpve) AS cobpvepvid,
	(SELECT cobrepdosi
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34) AS cobpvedosi,
	(SELECT cobreprent
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34) AS cobpverent,
	(SELECT cobrepdepa
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34) AS cobpvedepa,
	(SELECT cobrepciud
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34) AS cobpveciud,
	(SELECT cobrepagen
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34) AS cobpveagen,
	(SELECT ROUND(cobrepimpo,2)
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34) AS cobpveimpt,
	(SELECT cobrepoper
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34) AS cobpveoper,
	(SELECT cobrepfech
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34) AS cobpvefech,
	(SELECT cobrephora
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34) AS cobpvehora,
	(SELECT cobrepesta
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34) AS cobpvetran,
	(SELECT cobreptipp
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34) AS cobpvetcob, 
	(SELECT cobrepccta
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34) AS cobpveccta, 
	(SELECT cobrepraso
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34) AS cobpvenomf, 
	(SELECT cobrepnnit
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34) AS cobpvenitf, 
	'' AS cobpveobse, 
	'' AS cobpvemens, 
	(SELECT cobrepperi
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34) AS cobpveperi, 
	'ENTEL' AS cobpvetipf, 
	'' AS cobpveurev, 
	'' AS cobpvefrev, 
	'' AS cobpvehrev, 
	'POS' AS cobpveserv, 
	'' AS cobpvenrev, 
	'' AS cobpvecmon, 
	'' AS cobpventra, 
	'' AS cobpvemod, 
	'' AS cobpvencta, 
	0 AS cobpvemrcb, 
	(SELECT
	max(cobpveltra)+1
	FROM cobpve) AS cobpveltra, 
	0 AS cobpveimpr, 
	'' AS cobpveuimp, 
	'' AS cobpvefimp, 
	'' AS cobpvehimp, 
	'CAJ' AS cobpvecanl
FROM cobrep
WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34;

--INSERT INTO
INSERT INTO cobpve
    (cobpvepvid, cobpvedosi, cobpverent, cobpvedepa, cobpveciud, cobpveagen, cobpveimpt, cobpveoper, cobpvefech, cobpvehora, cobpvetran, cobpvetcob, cobpveccta, cobpvenomf, cobpvenitf, cobpveobse, cobpvemens, cobpveperi, cobpvetipf, cobpveurev, cobpvefrev, cobpvehrev, cobpveserv, cobpvenrev, cobpvecmon, cobpventra, cobpvemod, cobpvencta, cobpvemrcb, cobpveltra, cobpveimpr, cobpveuimp, cobpvefimp, cobpvehimp, cobpvecanl)
VALUES((SELECT max(cobpvepvid)+1 from cobpve),-- cobpvepvid
	(SELECT cobrepdosi
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34),--cobpvedosi
	(SELECT cobreprent
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34),--cobpverent
	(SELECT cobrepdepa
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34),--cobpvedepa
	(SELECT cobrepciud
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34),--cobpveciud
	(SELECT cobrepagen
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34),--cobpveagen
	(SELECT ROUND(cobrepimpo,2)
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34),--cobpveimpt
	(SELECT cobrepoper
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34),--cobpveoper
	(SELECT cobrepfech
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34),--cobpvefech
	(SELECT cobrephora
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34),--cobpvehora
	(SELECT cobrepesta
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34),--cobpvetran, 
	(SELECT cobreptipp
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34),--cobpvetcob, 
	(SELECT cobrepccta
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34),--cobpveccta, 
	(SELECT cobrepraso
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34),--cobpvenomf, 
	(SELECT cobrepnnit
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34),--cobpvenitf, 
	'',--cobpveobse, 
	'',--cobpvemens, 
	(SELECT cobrepperi
	FROM cobrep
	WHERE cobrepccta = 250469900--Codigo
	AND cobrepfech = 20230825 -- Fecha
	AND cobreprent = 03401513 --N Fac
	AND cobrepagen = 34),--cobpveperi, 
	'ENTEL',--cobpvetipf, 
	null,--cobpveurev, 
	null,--cobpvefrev, 
	null,--cobpvehrev, 
	'POS',--cobpveserv, 
	null,--cobpvenrev, 
	null,--cobpvecmon, 
	null,--cobpventra, 
	null,--cobpvemod, 
	null,--cobpvencta, 
	0,--cobpvemrcb, 
	(SELECT
	max(cobpveltra)+1
	FROM cobpve),--cobpveltra, 
	0,--cobpveimpr, 
	null,--cobpveuimp, 
	null,--cobpvefimp, 
	null,--cobpvehimp, 
	'CAJ');--cobpvecanl)

-----------------------------------------


