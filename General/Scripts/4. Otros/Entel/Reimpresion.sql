@set codAgen = 30
@set codCuenta = 249254295
@set fecha = 34230406
;
SELECT (SELECT max(cobpvepvid)+1 
	FROM cobpve) AS cobpvepvid,
	(SELECT cobrepdosi
	FROM cobrep
	WHERE cobrepagen = 34
	AND cobrepccta = 034001513
	AND cobrepfech = 20230825) AS cobpvedosi,
	(SELECT cobreprent
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825) AS cobpverent,
	(SELECT cobrepdepa
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825) AS cobpvedepa,
	(SELECT cobrepciud
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825) AS cobpveciud,
	(SELECT cobrepagen
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825) AS cobpveagen,
	(SELECT ROUND(cobrepimpo,2)
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825) AS cobpveimpt,
	(SELECT cobrepoper
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825) AS cobpveoper,
	(SELECT cobrepfech
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825) AS cobpvefech,
	(SELECT cobrephora
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825) AS cobpvehora,
	(SELECT cobrepesta
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825) AS cobpvetran,
	(SELECT cobreptipp
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825) AS cobpvetcob, 
	(SELECT cobrepccta
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825) AS cobpveccta, 
	(SELECT cobrepraso
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825) AS cobpvenomf, 
	(SELECT cobrepnnit
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825) AS cobpvenitf, 
	'' AS cobpveobse, 
	'' AS cobpvemens, 
	(SELECT cobrepperi
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825) AS cobpveperi, 
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
WHERE cobrepagen = 34
AND cobrepccta = 034001513
AND cobrepfech = 20230825;

--INSERT INTO
INSERT INTO cobpve
    (cobpvepvid, cobpvedosi, cobpverent, cobpvedepa, cobpveciud, cobpveagen, cobpveimpt, cobpveoper, cobpvefech, cobpvehora, cobpvetran, cobpvetcob, cobpveccta, cobpvenomf, cobpvenitf, cobpveobse, cobpvemens, cobpveperi, cobpvetipf, cobpveurev, cobpvefrev, cobpvehrev, cobpveserv, cobpvenrev, cobpvecmon, cobpventra, cobpvemod, cobpvencta, cobpvemrcb, cobpveltra, cobpveimpr, cobpveuimp, cobpvefimp, cobpvehimp, cobpvecanl)
VALUES((SELECT max(cobpvepvid)+1 from cobpve),-- cobpvepvid
	(SELECT cobrepdosi
	FROM cobrep
	WHERE cobrepagen = 34
	AND cobrepccta = 034001513
	AND cobrepfech = 20230825),--cobpvedosi
	(SELECT cobreprent
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825),--cobpverent
	(SELECT cobrepdepa
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825),--cobpvedepa
	(SELECT cobrepciud
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825),--cobpveciud
	(SELECT cobrepagen
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825),--cobpveagen
	(SELECT ROUND(cobrepimpo,2)
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825),--cobpveimpt
	(SELECT cobrepoper
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825),--cobpveoper
	(SELECT cobrepfech
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825),--cobpvefech
	(SELECT cobrephora
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825),--cobpvehora
	(SELECT cobrepesta
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825),--cobpvetran, 
	(SELECT cobreptipp
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825),--cobpvetcob, 
	(SELECT cobrepccta
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825),--cobpveccta, 
	(SELECT cobrepraso
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825),--cobpvenomf, 
	(SELECT cobrepnnit
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825),--cobpvenitf, 
	'',--cobpveobse, 
	'',--cobpvemens, 
	(SELECT cobrepperi
	FROM cobrep
	WHERE cobrepagen= 34
	AND cobrepccta= 034001513
	AND cobrepfech = 20230825),--cobpveperi, 
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
-- si la impresora falla pero ya hay registro en la cobpve, se debe cambiar a 0 el campo cobpveimpr
update cobpve a
--set a.cobpveimpr=0
where a.cobpverent=251247022;

SELECT *
FROM cobpve
--ORDER BY cobpvepvid DESC 
WHERE cobpverent = (SELECT *--cobreprent
					FROM cobrep
					WHERE cobrepfech = 20230825
					WHERE cobreprent = 034001513--cobrepccta = 34001513 --Codigo
					AND cobrepfech = 20230825) -- Fecha
					--AND cobreprent = 1669764 --N Fac
					AND cobrepagen = 80); --Cod Agencia

-- CASO 2
SELECT *
FROM cobrep
WHERE cobrepfech = 20230825
AND cobrepagen = 34;

WHERE cobrepccta = 034001513
AND cobrepfech = 20230825
AND cobrepagen = 34;
----------------------------------------
select *
from cobrep ORDER BY cobrepcoid DESC 
where cobrepagen= :codAgen
and cobrepccta= :codCuenta--249475544 ;
--and cobrepoper='MSS';

SELECT *
FROM cobrep
WHERE cobrepagen= 31
AND cobrepfech LIKE '%2023%'
---------------
SELECT *
FROM cobrep
WHERE cobrepfech LIKE '%202305%'

SELECT *
FROM cobrep
WHERE cobrepagen= 90
AND cobrepccta = 034001513

select*
from coberr
WHERE coberrfech LIKE '02/05/2023'

---------------
--- errores
select*
from coberr
where coberrfech='08/06/2022'
and coberrccta=250923391;--249475544;

select *
from cobpve a
where a.cobpvefech='20230304'
--a.cobpveoper='MSS'
and a.cobpveccta= 251506864
order by cobpvepvid DESC;

select *
from cobpve a
where a.cobpvefech='20220609'
--a.cobpveoper='MSS'
--and a.cobpveccta=249475544 
order by cobpvepvid DESC;

select *
from cobpve a
where a.cobpveagen = 31;

select *
from cobpve a
--where a.cobpvefech='20220609'
--and cobpveccta=250923391 
order by cobpvepvid DESC;
